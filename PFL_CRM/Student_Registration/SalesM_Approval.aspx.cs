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
    public partial class SalesM_Approval: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Role"] != null)
            {
                int role = (int)HttpContext.Current.Session["Role"];

                if (role != null)
                {
                    // Step 2: Check the "Role" session value
                    if (role != 1 && role != 3)
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
        public static List<Dictionary<string, object>> SalesManager_PendingApproval()
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_LIVE_STUDENTS_SalesManagerPendingApproval();
            return DT_to_DictionaryList(items);
        }

        [WebMethod]
        public static List<Dictionary<string, object>> ApproveBySales_STUDENT(string id)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.ApproveBySales_STUDENT(id);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> RejectBySales_STUDENT(string id, string comment)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.RejectBySales_STUDENT(id, comment);
            return DT_to_DictionaryList(items);
        }


    }
}