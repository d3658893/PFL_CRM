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
    public partial class Leads : System.Web.UI.Page
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
        [WebMethod]
        public static List<Dictionary<string, object>> Insert_Lead(string name,string sir_name, string mobile, string email, string nationality, string residence,
            string pfl_office, string study_countries, string study_universities, string study_universities_id,
            string study_level, string intake_year, string intake_semester, string intake_month,string source, string source_detail, string Status)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.Insert_Leads(name, sir_name,mobile, email,nationality, residence, pfl_office,
             study_countries, study_universities, study_universities_id, study_level, intake_year, intake_semester, intake_month,
             source, source_detail,Status);
            return DT_to_DictionaryList(items);


        }
        [WebMethod]
        public static List<Dictionary<string, object>> Update_Lead(string name,string sir_name, string mobile, string email, string nationality, string residence,
            string pfl_office, string study_countries, string study_universities, string study_universities_id,
            string study_level, string intake_year, string intake_semester, string intake_month,string source, string source_detail,string Status,string lead_id)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.Update_Leads(name, sir_name,mobile, email,nationality, residence, pfl_office,
             study_countries, study_universities, study_universities_id, study_level, intake_year, intake_semester, intake_month,
             source, source_detail,Status, lead_id);
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
        [WebMethod]
        public static List<Dictionary<string, object>> Lead_ById(string Lead_id)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.Lead_ById(Lead_id);
            return DT_to_DictionaryList(items);
        }
    }
}