using Ecosystem.Models;
using System;
using System.Collections;
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
    public partial class Student_Registration : System.Web.UI.Page
    {

        private string sql = string.Empty;
        DBAccess _dbAccess = new DBAccess();
        private DataSet _dataSet = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["Role"] != null)
            {
                int role = (int)HttpContext.Current.Session["Role"];

                if (role != null)
                {
                    // Step 2: Check the "Role" session value
                    if (role != 1 && role != 3 && role != 4 && role != 6)
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
        public static List<Dictionary<string, object>> GET_UNIVERSITIES(string country_name)
        {

            Std_Registration std = new Std_Registration();
            DataTable items =  std.GET_UNIVERSITIES(country_name);
            return DT_to_DictionaryList(items);
        }

        [WebMethod]
        public static List<Dictionary<string, object>> GET_STUDY_COUNTRIES()
        {

            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_STUDY_COUNTRIES();
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GET_STUDY_COUNTRY(string ID)
        {

            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_STUDY_COUNTRY(ID);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GET_STUDY_LEVLES()
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_STUDY_LEVELS();
            return DT_to_DictionaryList(items);
        }
        
        [WebMethod]
        public static List<Dictionary<string, object>> GET_All_PFL_OFFICES()
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_ALL_PFL_OFFICES();
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GET_All_USER_RIGHTS()
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_ALL_USERS();
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GET_PFL_OFFICES(string ID)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_PFL_OFFICES(ID);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GET_COUNTRIES()
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_COUNTRIES();
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> GET_ROLES()
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.GET_ROLES();
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> LIVE_STUDENT_REGISTRATION(string name,string sir_name, string DOB, string gender, string mobile,
            string email, string nationality, string residence,
            string marital_status, string paddress, string caddress, string employement_status, string monthly_income, string student_type, string pfl_office,
            string study_countries, string study_level, string intake_year, string intake_semester, string intake_month, string study_universities,
            string study_universities_id,
            string passport_no, string passport_auth, string passport_poi, string passport_doi, string passport_doe, string source, string source_detail,
            string interview_type,
            string interview_name, string interview_date, string follow_up, string counceler, string ucas_no, string ucas_id, string ucas_password, string accomodation,
            string ability_fee, string primary_officer_no, string payment_type, string reg_fee ,string Payment_Method, string Bank_Reciept, string Disclaimer, string Reg_No)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.LIVE_STUDENT_REGISTRATION(name, sir_name, DOB, gender, mobile, email, nationality, residence,
             marital_status, paddress, caddress, employement_status, monthly_income, student_type, pfl_office,
             study_countries, study_level, intake_year, intake_semester, intake_month, study_universities, study_universities_id,
             passport_no, passport_auth, passport_poi, passport_doi, passport_doe, source, source_detail, interview_type,
             interview_name, interview_date, follow_up, counceler, ucas_no, ucas_id, ucas_password, accomodation,
             ability_fee, primary_officer_no, payment_type, reg_fee, Payment_Method, Bank_Reciept, Disclaimer, Reg_No);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> LIVE_STUDENT_UPDATE(string name,string sir_name, string DOB, string gender, string mobile,
            string email, string nationality, string residence,
            string marital_status, string paddress, string caddress, string employement_status, string monthly_income, string student_type, string pfl_office,
            string study_countries, string study_level, string intake_year, string intake_semester, string intake_month, string study_universities,
            string study_universities_id,
            string passport_no, string passport_auth, string passport_poi, string passport_doi, string passport_doe, string source, string source_detail,
            string interview_type,
            string interview_name, string interview_date, string follow_up, string counceler, string ucas_no, string ucas_id, string ucas_password, string accomodation,
            string ability_fee, string primary_officer_no, string payment_type, string reg_fee ,string Payment_Method, string Bank_Reciept, string Disclaimer
            , string Student_Id,string payment_deadline, string Visa_Refusal, string refusal_Year, string refusal_Country, string Payment_Currency, string TotalReg_Fee)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.LIVE_STUDENT_UPDATE(name, sir_name, DOB, gender, mobile, email, nationality, residence,
             marital_status, paddress, caddress, employement_status, monthly_income, student_type, pfl_office,
             study_countries, study_level, intake_year, intake_semester, intake_month, study_universities, study_universities_id,
             passport_no, passport_auth, passport_poi, passport_doi, passport_doe, source, source_detail, interview_type,
             interview_name, interview_date, follow_up, counceler, ucas_no, ucas_id, ucas_password, accomodation,
             ability_fee, primary_officer_no, payment_type, reg_fee, Payment_Method, Bank_Reciept, Disclaimer, Student_Id,payment_deadline,
             Visa_Refusal,refusal_Year,refusal_Country,Payment_Currency,TotalReg_Fee);
            return DT_to_DictionaryList(items);
        }
        [WebMethod]
        public static List<Dictionary<string, object>> LiveStudent_ById(string Student_id)
        {
            Std_Registration std = new Std_Registration();
            DataTable items = std.LiveStudent_ById(Student_id);
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