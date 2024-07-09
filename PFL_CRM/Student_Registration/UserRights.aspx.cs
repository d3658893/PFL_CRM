using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PFL_CRM.Student_Registration
{
    [System.Web.Script.Services.ScriptService]

    public partial class UserRights : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Role"] != null)
            {
                int role = (int)HttpContext.Current.Session["Role"];

                if (role != null)
                {
                    // Step 2: Check the "Role" session value
                    if (role != 1 && role != 2)
                    {
                        // Redirect to the dashboard or another page
                        Response.Redirect("/Student_Registration/Dashboard.aspx");
                    }
                }
            }
            else
            {
                Response.Redirect("/Login.aspx");
            }
        }
        [WebMethod]
        public static List<Dictionary<string, object>> INSERT_ROLE(string name,string designation,string country, string role, string user_name, string password, string location,
            string email, string phone, string active)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.INSERT_ROLE(name,designation,country, role, user_name, password, location,email, phone, active);
            return DT_to_DictionaryList(items); ;
        }
        [WebMethod]
        public static List<Dictionary<string, object>> DELETE_USER(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.DELETE_USER(ID);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> User_ById(string id)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.User_ById(id);
            return DT_to_DictionaryList(items);
        }

        [WebMethod]
        public static List<Dictionary<string, object>> UPDATE_ROLE(string id, string name,string designation,string country, string role, string user_name, string password, string location,
            string email, string phone, string active)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.UPDATE_ROLE(id,name,designation,country, role, user_name, password, location,email, phone, active);
            return DT_to_DictionaryList(items); ;
        }

        public static List<Dictionary<string, object>> DT_to_DictionaryList(DataTable dt)
        {
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            return rows;
        }


    }
}