using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using PFL_CRM.Student_Registration;


namespace PFL_CRM.Student_Registration
{
    
    [System.Web.Script.Services.ScriptService]

    public partial class Universities_Countries : System.Web.UI.Page
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
        public static List<Dictionary<string, object>> GET_ALL_UNIVERSITIES()
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_ALL_UNIVERSITIES();
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> INSERT_COUNTRY(string name)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.INSERT_COUNTRY(name);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> INSERT_UNIVERSITY(string country,string name)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.INSERT_UNIVERSITY(country,name);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> UPDATE_UNIVERSITY(string ID,string name,string country)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.UPDATE_UNIVERSITY(ID,name,country);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> UPDATE_COUNTRY(string ID,string name)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.UPDATE_COUNTRY(ID,name);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GET_UNIVERSITY_BY_ID(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_UNIVERSITY_BY_ID(ID);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GET_COUNTRY_BY_ID(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_COUNTRY_BY_ID(ID);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> DELETE_UNIVERSITY(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.DELETE_UNIVERSITY(ID);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> DELETE_COUNTRY(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.DELETE_COUNTRY(ID);
            return DT_to_DictionaryList(items);
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