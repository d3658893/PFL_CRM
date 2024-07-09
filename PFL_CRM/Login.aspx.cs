using Ecosystem.Models;
using Newtonsoft.Json.Linq;
using PFL_CRM.Helper;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PFL_CRM
{
    public partial class Login : System.Web.UI.Page
    {
        private DataSet _dataSet = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static string DecryptStringAES(string cipherText)
        {
            var keybytes = Encoding.UTF8.GetBytes("8080808080808080");
            var iv = Encoding.UTF8.GetBytes("8080808080808080");

            var encrypted = Convert.FromBase64String(cipherText);
            var decriptedFromJavascript = DecryptStringFromBytes(encrypted, keybytes, iv);
            return string.Format(decriptedFromJavascript);
        }

        private static string DecryptStringFromBytes(byte[] cipherText, byte[] key, byte[] iv)
        {
            // Check arguments.  
            if (cipherText == null || cipherText.Length <= 0)
            {
                throw new ArgumentNullException("cipherText");
            }
            if (key == null || key.Length <= 0)
            {
                throw new ArgumentNullException("key");
            }
            if (iv == null || iv.Length <= 0)
            {
                throw new ArgumentNullException("key");
            }

            // Declare the string used to hold  
            // the decrypted text.  
            string plaintext = null;

            // Create an RijndaelManaged object  
            // with the specified key and IV.  
            using (var rijAlg = new RijndaelManaged())
            {
                //Settings  
                rijAlg.Mode = CipherMode.CBC;
                rijAlg.Padding = PaddingMode.PKCS7;
                rijAlg.FeedbackSize = 128;

                rijAlg.Key = key;
                rijAlg.IV = iv;

                // Create a decrytor to perform the stream transform.  
                var decryptor = rijAlg.CreateDecryptor(rijAlg.Key, rijAlg.IV);

                try
                {
                    // Create the streams used for decryption.  
                    using (var msDecrypt = new MemoryStream(cipherText))
                    {
                        using (var csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
                        {

                            using (var srDecrypt = new StreamReader(csDecrypt))
                            {
                                // Read the decrypted bytes from the decrypting stream  
                                // and place them in a string.  
                                plaintext = srDecrypt.ReadToEnd();

                            }

                        }
                    }
                }
                catch
                {
                    plaintext = "keyError";
                }
            }

            return plaintext;
        }

        protected void login(object sender, EventArgs ea)
        {

            string email = string.Empty;
            string pswd = string.Empty;
            string abcd = string.Empty;
            email = username.Text;
            pswd = (string)pasword.Text;

            Encryption enc = new Encryption();
            string abc  = enc.Encrypt(pswd);
            if (!string.IsNullOrEmpty(pswd))
            {
                abcd = enc.Decrypt(abc);
            }

            exceptionAlertDiv.Visible = false;

            if (string.IsNullOrEmpty(pasword.Text))
            {
                exceptionAlertDiv.Visible = true;
                exceptionText.InnerHtml = "Please fill in the form completely.";
                //Response.Redirect("Login.aspx");
                return;
            }

            if (string.IsNullOrEmpty(username.Text))
            {
                exceptionAlertDiv.Visible = true;
                exceptionText.InnerHtml = "Email is required.";
                return;
                //Response.Redirect("Login.aspx");
            }

            if (!string.IsNullOrEmpty(username.Text) && !string.IsNullOrEmpty(pasword.Text))
            {
                DBAccess acess = new DBAccess();
                Hashtable param = new Hashtable();
                param.Add("@username", email);
                param.Add("@password", pswd);
                    if (_dataSet.Tables.Contains("tbl_login"))
                        _dataSet.Tables.Remove("tbl_login");
                    acess.selectStoredProcedure(_dataSet, "SP_Login_User", param, "tbl_login");
                    DataTable dt = _dataSet.Tables["tbl_login"];
                if (dt.Rows.Count > 0)
                {
                    SetUserSession(dt);
                    Response.Redirect("/Student_Registration/Dashboard.aspx");
                }
                else
                {
                    //Response.Redirect("Login.aspx");
                    exceptionAlertDiv.Visible = true;
                    exceptionText.InnerHtml = "Username or Password is incorrect.";

                }
                //exceptionAlertDiv.Visible = true;
                //exceptionText.InnerHtml = "Length of CNIC is not valid. Please enter a valid CNIC #.";
            }
        }
        public void SetUserSession(DataTable username)
        {
            if (username != null && username.Rows.Count > 0)
            {
                // Fetch data from the DataTable
                int UserId = (int)username.Rows[0]["Id"];
                int Role = (int)username.Rows[0]["Role"];
                string Name = username.Rows[0]["Name"].ToString();
                string Username = username.Rows[0]["Username"].ToString();
                string Designation = username.Rows[0]["Designation"].ToString();
                string Email = username.Rows[0]["Email"].ToString();
                string Office = username.Rows[0]["OfficeL"].ToString();
                string country = username.Rows[0]["country"].ToString();


                // Session management
                HttpContext.Current.Session["Username"] = Username;
                HttpContext.Current.Session["UserId"] = UserId;
                HttpContext.Current.Session["Name"] = Name;
                HttpContext.Current.Session["Role"] = Role;
                HttpContext.Current.Session["Designation"] = Designation;
                HttpContext.Current.Session["Office"] = Office;
                HttpContext.Current.Session["country"] = country;
                HttpContext.Current.Session["Email"] = Email;

            }
        }

    }
    public class User
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
    }
}