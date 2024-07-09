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
    public partial class Live_Students : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Role"] != null)
            {
                int role = (int)HttpContext.Current.Session["Role"];

                if (role != null)
                {
                    // Step 2: Check the "Role" session value
                    if (role != 1 && role != 6 && role != 3 && role != 4)
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

        [WebMethod]
        public static List<Dictionary<string, object>> Student_Document_Upload(string ID, string filename, string base64, string type, string Description)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.Student_Document_Upload(ID,filename,base64,type, Description);
            return DT_to_DictionaryList(items);
        }

        [WebMethod]
        public static List<Dictionary<string, object>> Get_Student_Documents(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.Get_Student_Documents(ID);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GET_LIVE_STUDENTS()
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_LIVE_STUDENTS();
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> DELETE_LIVE_STUDENT(string id)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.DELETE_LIVE_STUDENT(id);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> Live_Student_Uploader(string Filebase64)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.Live_Student_Uploader(Filebase64);
            return DT_to_DictionaryList(items);
        }


    }
}