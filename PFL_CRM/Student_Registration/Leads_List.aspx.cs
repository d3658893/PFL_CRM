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
    public partial class Leads_List : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Role"] != null)
            {
                int role = (int)HttpContext.Current.Session["Role"];

                if (role != null)
                {
                    // Step 2: Check the "Role" session value
                    if (role != 1 && role != 6 && role != 3)
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
        public static List<Dictionary<string, object>> GET_LEADS()
        {
            PFL_CRM.Student_Registration.Std_Registration std = new Std_Registration();
            DataTable items = std.GET_LEADS();
            return DT_to_DictionaryList(items);
        }

        [WebMethod]
        public static List<Dictionary<string, object>> DELETE_LEAD(string id)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.DELETE_LEAD(id);
            return DT_to_DictionaryList(items);
        }

        [WebMethod]
        public static List<Dictionary<string, object>> Leads_Uploader(List<LeadsData> Filebase64)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.Leads_Uploader( Filebase64 );
            return DT_to_DictionaryList(items);
        }

        public class LeadsData
        {
            public int Date { get; set; }
            public string First_Name { get; set; }
            public string Last_Name { get; set; }
            public string Email { get; set; }
            public string Contact_Number { get; set; }
            public string Region { get; set; }
            public string Intended_Country { get; set; }
            public string Intended_Institute { get; set; }
            public string Counsellor_Name { get; set; }

        }


    }
}