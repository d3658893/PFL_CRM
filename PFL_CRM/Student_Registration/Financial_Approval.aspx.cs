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
    public partial class Financial_Approval : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Role"] != null)
            {
                int role = (int)HttpContext.Current.Session["Role"];

                if (role != null)
                {
                    // Step 2: Check the "Role" session value
                    if (role != 1 && role != 8)
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
        public static List<Dictionary<string, object>> GetRegPaymentFull_Status(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GetRegPaymentFull_Status(ID);
            return DT_to_DictionaryList(items);
        }

        [WebMethod]
        public static List<Dictionary<string, object>> Financial_PendingApproval()
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_LIVE_STUDENTS_Financial_PendingApproval();
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GetFinance_StudentFee_Statuses(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GetFinance_StudentFee_Statuses(ID);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> Get_FinanceStudentFee_Reciept(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.Get_FinanceStudentFee_Reciept(ID);
            return DT_to_DictionaryList(items);
        }

        [WebMethod]
        public static List<Dictionary<string, object>> FinanceStatusUpdate(string ID,string PaymentType,string PaidAmount,string paymentdeadline,
           string method, string Bank_Reciept, string Comments)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.FinanceStatusUpdate(ID,PaymentType,PaidAmount,paymentdeadline, method,Bank_Reciept, Comments);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> RejectByFinance_STUDENT(string id, string comment)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.RejectByFinance_STUDENT(id, comment);
            return DT_to_DictionaryList(items);
        }


    }
}