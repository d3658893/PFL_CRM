using Ecosystem.Models;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Data.Entity.Migrations.Model;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace PFL_CRM.Student_Registration
{
    public class Std_Registration
    {
        private string sql = string.Empty;
        DBAccess _dbAccess = new DBAccess();
        private DataSet _dataSet = new DataSet();
        public DataTable GET_ALL_USERS()
        {
            DBAccess acess = new DBAccess();

            if (_dataSet.Tables.Contains("tbl_get_all_users"))
                _dataSet.Tables.Remove("tbl_get_all_users");
            acess.selectStoredProcedure(_dataSet, "sp_get_All_Users", "tbl_get_all_users");
            DataTable dt = _dataSet.Tables["tbl_get_all_users"];

            return dt;
        }
        public DataTable GET_ALL_UNIVERSITIES()
        {
            DBAccess acess = new DBAccess();

            if (_dataSet.Tables.Contains("tbl_get_all_universities"))
                _dataSet.Tables.Remove("tbl_get_all_universities");
            acess.selectStoredProcedure(_dataSet, "sp_get_Universities", "tbl_get_all_universities");
            DataTable dt = _dataSet.Tables["tbl_get_all_universities"];

            return dt;
        }
        public DataTable GET_UNIVERSITIES(string country_name)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@country_name", country_name);

            if (_dataSet.Tables.Contains("tbl_get_universities"))
                _dataSet.Tables.Remove("tbl_get_universities");
            acess.selectStoredProcedure(_dataSet, "sp_get_University_ById", param, "tbl_get_universities");
            DataTable dt = _dataSet.Tables["tbl_get_universities"];

            return dt;
        }
        public DataTable GET_STUDY_COUNTRY(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);


            if (_dataSet.Tables.Contains("tbl_get_country"))
                _dataSet.Tables.Remove("tbl_get_country");
            acess.selectStoredProcedure(_dataSet, "sp_get_studyCountry", param, "tbl_get_country");
            DataTable dt = _dataSet.Tables["tbl_get_country"];

            return dt;
        }
        public DataTable GET_APPLIED_UNIVERSITIES(string id)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", id);

            if (_dataSet.Tables.Contains("tbl_get_appliedUniversities"))
                _dataSet.Tables.Remove("tbl_get_appliedUniversities");
            acess.selectStoredProcedure(_dataSet, "sp_AppliedUniversities_InProcess", param,"tbl_get_appliedUniversities");
            DataTable dt = _dataSet.Tables["tbl_get_appliedUniversities"];

            return dt;
        }
        public DataTable GetRegPaymentFull_Status(string id)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", id);
            if (_dataSet.Tables.Contains("GetRegPaymentFull_Status"))
                _dataSet.Tables.Remove("GetRegPaymentFull_Status");
            acess.selectStoredProcedure(_dataSet, "sp_GetRegPaymentFull_Status", param, "GetRegPaymentFull_Status");
            DataTable dt = _dataSet.Tables["GetRegPaymentFull_Status"];

            return dt;
        }
        public DataTable GetPassportED(string id)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", id);
            if (_dataSet.Tables.Contains("GetPassportED"))
                _dataSet.Tables.Remove("GetPassportED");
            acess.selectStoredProcedure(_dataSet, "sp_GetPassportED", param, "GetPassportED");
            DataTable dt = _dataSet.Tables["GetPassportED"];

            return dt;
        }
        public DataTable GET_InProcessMasterStatuses(string id,string UniId)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", id);
            param.Add("@UniId", UniId);
            if (_dataSet.Tables.Contains("GET_InProcessMasterStatuses"))
                _dataSet.Tables.Remove("GET_InProcessMasterStatuses");
            acess.selectStoredProcedure(_dataSet, "sp_Get_InProcess_MasterStatuses",param, "GET_InProcessMasterStatuses");
            DataTable dt = _dataSet.Tables["GET_InProcessMasterStatuses"];

            return dt;
        }
        public DataTable GET_CONVERSION_STAFF()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@username", HttpContext.Current.Session["Username"]);
            param.Add("@userCountry", HttpContext.Current.Session["country"]);

            if (_dataSet.Tables.Contains("tbl_get_conversionStaff"))
                _dataSet.Tables.Remove("tbl_get_conversionStaff");
            acess.selectStoredProcedure(_dataSet, "sp_get_ConversionStaff",param, "tbl_get_conversionStaff");
            DataTable dt = _dataSet.Tables["tbl_get_conversionStaff"];

            return dt;
        }
        public DataTable GET_SALES_STAFF()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@username", HttpContext.Current.Session["Username"]);
            param.Add("@userCountry", HttpContext.Current.Session["country"]);

            if (_dataSet.Tables.Contains("tbl_get_SalesStaff"))
                _dataSet.Tables.Remove("tbl_get_SalesStaff");
            acess.selectStoredProcedure(_dataSet, "sp_get_SalesStaff", param, "tbl_get_SalesStaff");
            DataTable dt = _dataSet.Tables["tbl_get_SalesStaff"];

            return dt;
        }
        public DataTable GET_STUDY_COUNTRIES()
        {
            DBAccess acess = new DBAccess();

            if (_dataSet.Tables.Contains("tbl_get_countries"))
                _dataSet.Tables.Remove("tbl_get_countries");
            acess.selectStoredProcedure(_dataSet, "sp_get_studyCountries", "tbl_get_countries");
            DataTable dt = _dataSet.Tables["tbl_get_countries"];

            return dt;
        }
        public DataTable GET_STUDY_LEVELS()
        {
            DBAccess acess = new DBAccess();

            if (_dataSet.Tables.Contains("GET_STUDY_LEVLES"))
                _dataSet.Tables.Remove("GET_STUDY_LEVLES");
            acess.selectStoredProcedure(_dataSet, "sp_get_studyLevels", "GET_STUDY_LEVLES");
            DataTable dt = _dataSet.Tables["GET_STUDY_LEVLES"];

            return dt;
        }
        public DataTable GET_ROLES()
        {
            DBAccess acess = new DBAccess();

            if (_dataSet.Tables.Contains("GET_ROLES"))
                _dataSet.Tables.Remove("GET_ROLES");
            acess.selectStoredProcedure(_dataSet, "sp_get_All_Roles", "GET_ROLES");
            DataTable dt = _dataSet.Tables["GET_ROLES"];

            return dt;
        }
        public DataTable GET_COUNTRIES()
        {
            DBAccess acess = new DBAccess();

            if (_dataSet.Tables.Contains("GET_COUNTRIES"))
                _dataSet.Tables.Remove("GET_COUNTRIES");
            acess.selectStoredProcedure(_dataSet, "sp_get_Countries", "GET_COUNTRIES");
            DataTable dt = _dataSet.Tables["GET_COUNTRIES"];

            return dt;
        }
        public DataTable GET_LIVE_STUDENTS_ConversionManagerPendingApproval()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@userCountry", HttpContext.Current.Session["country"]);

            if (_dataSet.Tables.Contains("GET_LIVE_STUDENTS_ConversionManagerPendingApproval"))
                _dataSet.Tables.Remove("GET_LIVE_STUDENTS_ConversionManagerPendingApproval");
            acess.selectStoredProcedure(_dataSet, "sp_get_LiveStudents_ConversionManagerPendingApproval",param, "GET_LIVE_STUDENTS_ConversionManagerPendingApproval");
            DataTable dt = _dataSet.Tables["GET_LIVE_STUDENTS_ConversionManagerPendingApproval"];

            return dt;
        }
        public DataTable Get_InProcessStatuses(string StdId, string UniId)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@StdId", StdId);
            param.Add("@UniId", UniId);
            param.Add("@StaffId", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Get_InProcessStatuses"))
                _dataSet.Tables.Remove("Get_InProcessStatuses");
            acess.selectStoredProcedure(_dataSet, "sp_Get_InProcessStudent_Statuses",param, "Get_InProcessStatuses");
            DataTable dt = _dataSet.Tables["Get_InProcessStatuses"];
            return dt;
        }
        public DataTable GET_LIVE_STUDENTS_InProcess()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@StaffId", HttpContext.Current.Session["Username"]);
            param.Add("@userCountry", HttpContext.Current.Session["country"]);


            if (_dataSet.Tables.Contains("GET_LIVE_STUDENTS_InProcess"))
                _dataSet.Tables.Remove("GET_LIVE_STUDENTS_InProcess");
            acess.selectStoredProcedure(_dataSet, "sp_get_LiveStudents_InProcess",param, "GET_LIVE_STUDENTS_InProcess");
            DataTable dt = _dataSet.Tables["GET_LIVE_STUDENTS_InProcess"];

            return dt;
        }
        public DataTable GET_LIVE_STUDENTS_ConversionManagerApproved()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@userCountry", HttpContext.Current.Session["country"]);

            if (_dataSet.Tables.Contains("GET_LIVE_STUDENTS_ConversionManagerApproved"))
                _dataSet.Tables.Remove("GET_LIVE_STUDENTS_ConversionManagerApproved");
            acess.selectStoredProcedure(_dataSet, "sp_get_LiveStudents_ConversionManagerApproved",param, "GET_LIVE_STUDENTS_ConversionManagerApproved");
            DataTable dt = _dataSet.Tables["GET_LIVE_STUDENTS_ConversionManagerApproved"];

            return dt;
        }
        public DataTable GET_LIVE_STUDENTS_Financial_PendingApproval()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@userCountry", HttpContext.Current.Session["country"]);

            if (_dataSet.Tables.Contains("GET_LIVE_STUDENTS_Financial_PendingApproval"))
                _dataSet.Tables.Remove("GET_LIVE_STUDENTS_Financial_PendingApproval");
            acess.selectStoredProcedure(_dataSet, "sp_get_LiveStudents_FinancialPendingApproval",param, "GET_LIVE_STUDENTS_Financial_PendingApproval");
            DataTable dt = _dataSet.Tables["GET_LIVE_STUDENTS_Financial_PendingApproval"];

            return dt;
        }
        public DataTable GET_ARCHIVAL_STUDENTS()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@userCountry", HttpContext.Current.Session["country"]);

            if (_dataSet.Tables.Contains("GET_ARCHIVAL_STUDENTS"))
                _dataSet.Tables.Remove("GET_ARCHIVAL_STUDENTS");
            acess.selectStoredProcedure(_dataSet, "sp_get_ArchivalStudents",param, "GET_ARCHIVAL_STUDENTS");
            DataTable dt = _dataSet.Tables["GET_ARCHIVAL_STUDENTS"];

            return dt;
        }
        public DataTable GET_LIVE_STUDENTS_SalesManagerPendingApproval()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@userCountry", HttpContext.Current.Session["country"]);

            if (_dataSet.Tables.Contains("GET_LIVE_STUDENTS_SalesManagerPendingApproval"))
                _dataSet.Tables.Remove("GET_LIVE_STUDENTS_SalesManagerPendingApproval");
            acess.selectStoredProcedure(_dataSet, "sp_get_LiveStudents_SalesManagerPendingApproval",param, "GET_LIVE_STUDENTS_SalesManagerPendingApproval");
            DataTable dt = _dataSet.Tables["GET_LIVE_STUDENTS_SalesManagerPendingApproval"];

            //Tip: Add column in existing table and assign value to it

            //dt.Columns.Add(new DataColumn("Session", typeof(string)));            

            //// Step 3: Set a specific column in each row to a session value
            //string sessionValue = HttpContext.Current.Session["Username"] as string;

            //if (!string.IsNullOrEmpty(sessionValue))
            //{
            //    foreach (DataRow row in dt.Rows)
            //    {
            //        row["Session"] = sessionValue; // Replace "YourExistingColumn" with the actual column name you want to set.
            //    }
            //}
            return dt;
        }
        public DataTable GET_LIVE_STUDENTS()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@userCountry", HttpContext.Current.Session["country"]);

            if (_dataSet.Tables.Contains("GET_LIVE_STUDENTS"))
                _dataSet.Tables.Remove("GET_LIVE_STUDENTS");
            acess.selectStoredProcedure(_dataSet, "sp_get_LiveStudents",param, "GET_LIVE_STUDENTS");
            DataTable dt = _dataSet.Tables["GET_LIVE_STUDENTS"];

            return dt;
        }
        public DataTable GET_ALL_PFL_OFFICES()
        {
            DBAccess acess = new DBAccess();
            //Hashtable param = new Hashtable();
            //param.Add("@Id", ID);

            if (_dataSet.Tables.Contains("GET_All_Offices"))
                _dataSet.Tables.Remove("GET_All_Offices");
            acess.selectStoredProcedure(_dataSet, "sp_get_All_PFL_Offices", "GET_All_Offices");
            DataTable dt = _dataSet.Tables["GET_All_Offices"];

            return dt;
        }
        public DataTable GET_PFL_OFFICES(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);

            if (_dataSet.Tables.Contains("GET_Offices"))
                _dataSet.Tables.Remove("GET_Offices");
            acess.selectStoredProcedure(_dataSet, "sp_get_PFL_Offices", param, "GET_Offices");
            DataTable dt = _dataSet.Tables["GET_Offices"];

            return dt;
        }
        public DataTable DELETE_LIVE_STUDENT(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);

            if (_dataSet.Tables.Contains("DELETE_LIVE_STUDENT"))
                _dataSet.Tables.Remove("DELETE_LIVE_STUDENT");
            acess.selectStoredProcedure(_dataSet, "sp_delete_LiveStudent", param, "DELETE_LIVE_STUDENT");
            DataTable dt = _dataSet.Tables["DELETE_LIVE_STUDENT"];

            return dt;
        }
        public DataTable Revive_STUDENT(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Revive_STUDENT"))
                _dataSet.Tables.Remove("Revive_STUDENT");
            acess.selectStoredProcedure(_dataSet, "sp_ReviveStudent", param, "Revive_STUDENT");
            DataTable dt = _dataSet.Tables["Revive_STUDENT"];
            return dt;
        }
        public DataTable ApproveBySales_STUDENT(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("ApproveBySales_STUDENT"))
                _dataSet.Tables.Remove("ApproveBySales_STUDENT");
            acess.selectStoredProcedure(_dataSet, "sp_SalesManager_Approval", param, "ApproveBySales_STUDENT");
            DataTable dt = _dataSet.Tables["ApproveBySales_STUDENT"];

            return dt;
        }
        public DataTable ApproveByFinance_STUDENT(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("ApproveByFinance_STUDENT"))
                _dataSet.Tables.Remove("ApproveByFinance_STUDENT");
            acess.selectStoredProcedure(_dataSet, "sp_finance_Approval", param, "ApproveByFinance_STUDENT");
            DataTable dt = _dataSet.Tables["ApproveByFinance_STUDENT"];
            return dt;
        }
        public DataTable ApproveByCounseler_STUDENT(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Counseler_Approval_STUDENT"))
                _dataSet.Tables.Remove("Counseler_Approval_STUDENT");
            acess.selectStoredProcedure(_dataSet, "sp_Counseler_Approval", param, "Counseler_Approval_STUDENT");
            DataTable dt = _dataSet.Tables["Counseler_Approval_STUDENT"];

            return dt;
        }
        public DataTable RejectByFinance_STUDENT(string ID, string comment)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);
            param.Add("@comment", comment);

            if (_dataSet.Tables.Contains("RejectByFinance_STUDENT"))
                _dataSet.Tables.Remove("RejectByFinance_STUDENT");
            acess.selectStoredProcedure(_dataSet, "sp_Finance_Reject", param, "RejectByFinance_STUDENT");
            DataTable dt = _dataSet.Tables["RejectByFinance_STUDENT"];

            return dt;
        }
        public DataTable FinanceStatusUpdate(string ID, string PaymentType, string PaidAmount, string paymentdeadline, string method,
            string Bank_Reciept, string Comments)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@PaymentType", PaymentType);
            param.Add("@PaidAmount", PaidAmount);
            param.Add("@paymentdeadline", paymentdeadline);
            param.Add("@method", method);
            param.Add("@Bank_Reciept", Bank_Reciept);
            param.Add("@Comments", Comments);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);
            param.Add("@UserCountry", HttpContext.Current.Session["country"]);

            if (_dataSet.Tables.Contains("FinanceStudentFee"))
                _dataSet.Tables.Remove("FinanceStudentFee");
            acess.selectStoredProcedure(_dataSet, "sp_Finance_StudentFee_Update", param, "FinanceStudentFee");
            DataTable dt = _dataSet.Tables["FinanceStudentFee"];

            return dt;
        }
        public DataTable Get_FinanceStudentFee_Reciept(string StdId)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@StdId", StdId);

            if (_dataSet.Tables.Contains("Get_FinanceStatusesReciept"))
                _dataSet.Tables.Remove("Get_FinanceStatusesReciept");
            acess.selectStoredProcedure(_dataSet, "sp_Get_FinanceStudentFee_Reciept", param, "Get_FinanceStatusesReciept");
            DataTable dt = _dataSet.Tables["Get_FinanceStatusesReciept"];
            return dt;
        }
        public DataTable GetFinance_StudentFee_Statuses(string StdId)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@StdId", StdId);

            if (_dataSet.Tables.Contains("Get_FinanceStatuses"))
                _dataSet.Tables.Remove("Get_FinanceStatuses");
            acess.selectStoredProcedure(_dataSet, "sp_Get_FinanceStudentFee_Statuses", param, "Get_FinanceStatuses");
            DataTable dt = _dataSet.Tables["Get_FinanceStatuses"];
            return dt;
        }
        public DataTable InProcessStudent_StatusUpdate(string ID, string UniId,string Status, string Comments, string appId, string studId,
            string Fees, string Scholarship, string OAdate, string CASDeadline, string Fullfilment, string IntakeSem, string IntakeYear
            , string TravelDate, string GVisaDate, string VisaNo, string CASNo, string AmountP, string PRNo, string PDate, string CourseSD
            , string CourseED)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@UniId", UniId);
            param.Add("@status", Status);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);
            param.Add("@comment", Comments);
            param.Add("@studId", studId);
            param.Add("@appId", appId);
            param.Add("@Fees", Fees);
            param.Add("@Scholarship", Scholarship);
            param.Add("@OAdate", OAdate);
            param.Add("@CASDeadline", CASDeadline);
            param.Add("@Fullfilment", Fullfilment);
            param.Add("@IntakeSem", IntakeSem);
            param.Add("@IntakeYear", IntakeYear);
            param.Add("@TravelDate", TravelDate);
            param.Add("@GVisaDate", GVisaDate);
            param.Add("@VisaNo", VisaNo);
            param.Add("@CASNo", CASNo);
            param.Add("@AmountP", AmountP);
            param.Add("@PRNo", PRNo);
            param.Add("@PDate", PDate);
            param.Add("@CourseSD", CourseSD);
            param.Add("@CourseED", CourseED);

            if (_dataSet.Tables.Contains("InProcessStudent_StatusUpdate"))
                _dataSet.Tables.Remove("InProcessStudent_StatusUpdate");
            acess.selectStoredProcedure(_dataSet, "sp_UpdateStatus_InProcessStudent", param, "InProcessStudent_StatusUpdate");
            DataTable dt = _dataSet.Tables["InProcessStudent_StatusUpdate"];
            return dt;
        }
        public DataTable AllocateStudent(string ID, string StaffId, string Comments)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@StaffId", StaffId);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);
            param.Add("@comment", Comments);

            if (_dataSet.Tables.Contains("AllocateStudent"))
                _dataSet.Tables.Remove("AllocateStudent");
            acess.selectStoredProcedure(_dataSet, "sp_Allocate_Student_ConversionStaff", param, "AllocateStudent");
            DataTable dt = _dataSet.Tables["AllocateStudent"];

            return dt;
        }
        public DataTable RejectBySales_STUDENT(string ID, string comment)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);
            param.Add("@comment", comment);

            if (_dataSet.Tables.Contains("RejectBySales_STUDENT"))
                _dataSet.Tables.Remove("RejectBySales_STUDENT");
            acess.selectStoredProcedure(_dataSet, "sp_Sales_Reject", param, "RejectBySales_STUDENT");
            DataTable dt = _dataSet.Tables["RejectBySales_STUDENT"];

            return dt;
        }
        public DataTable RejectByCounseler_STUDENT(string ID, string comment)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);
            param.Add("@Modified_By", HttpContext.Current.Session["Username"]);
            param.Add("@comment", comment);

            if (_dataSet.Tables.Contains("Counseler_Reject_STUDENT"))
                _dataSet.Tables.Remove("Counseler_Reject_STUDENT");
            acess.selectStoredProcedure(_dataSet, "sp_Counseler_Reject", param, "Counseler_Reject_STUDENT");
            DataTable dt = _dataSet.Tables["Counseler_Reject_STUDENT"];

            return dt;
        }
        public DataTable DELETE_LEAD(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Id", ID);

            if (_dataSet.Tables.Contains("DELETE_LEAD"))
                _dataSet.Tables.Remove("DELETE_LEAD");
            acess.selectStoredProcedure(_dataSet, "sp_delete_Lead", param, "DELETE_LEAD");
            DataTable dt = _dataSet.Tables["DELETE_LEAD"];

            return dt;
        }
        public DataTable LIVE_STUDENT_REGISTRATION(string name, string sir_name, string DOB, string gender, string mobile, string email, string nationality, string residence,
            string marital_status, string paddress, string caddress, string employement_status, string monthly_income, string student_type, string pfl_office,
            string study_countries, string study_level, string intake_year, string intake_semester, string intake_month, string study_universities, string study_universities_id,
            string passport_no, string passport_auth, string passport_poi, string passport_doi, string passport_doe, string source, string source_detail, string interview_type,
            string interview_name, string interview_date, string follow_up, string counceler, string ucas_no, string ucas_id, string ucas_password, string accomodation,
            string ability_fee, string primary_officer_no, string payment_type, string reg_fee, string Payment_Method, string Bank_Reciept, string Disclaimer, string Reg_No)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@name", name);
            param.Add("@sir_name", sir_name);
            param.Add("@DOB", DOB);
            param.Add("@Gender", gender);
            param.Add("@Mobile_No", mobile);
            param.Add("@Email", email);
            param.Add("@Nationality", nationality);
            param.Add("@Residence_Country", residence);
            param.Add("@Marital_Status", marital_status);
            param.Add("@Permanent_Address", paddress);
            param.Add("@Current_Address", caddress);
            param.Add("@Employment_Status", employement_status);
            param.Add("@Monthly_Income", monthly_income);
            param.Add("@Student_Type", student_type);
            param.Add("@PFL_Office", pfl_office);
            param.Add("@Study_Countries", study_countries);
            param.Add("@Study_Level", study_level);
            param.Add("@Intake_Year", intake_year);
            param.Add("@Intake_Semester", intake_semester);
            param.Add("@Intake_Month", intake_month);
            param.Add("@Study_Universities", study_universities);
            param.Add("@Study_Universities_Id", study_universities_id);
            param.Add("@Passport_No", passport_no);
            param.Add("@Passport_Auth", passport_auth);
            param.Add("@Passport_POI", passport_poi);
            param.Add("@Passport_DOI", passport_doi);
            param.Add("@Passport_DOE", passport_doe);
            param.Add("@Source", source);
            param.Add("@Source_Detail", source_detail);
            param.Add("@Interview_Type", interview_type);
            param.Add("@Interview_Name", interview_name);
            param.Add("@Interview_DateTime", interview_date);
            param.Add("@Follow_Up", follow_up);
            param.Add("@Counceler", counceler);
            param.Add("@UCAS_No", ucas_no);
            param.Add("@UCAS_ID", ucas_id);
            param.Add("@UCAS_Password", ucas_password);
            param.Add("@Accomodation", accomodation);
            param.Add("@Ability_PayFee", ability_fee);
            param.Add("@Primary_OfficerContact", primary_officer_no);
            param.Add("@Payment_Type", payment_type);
            param.Add("@Reg_Fee", reg_fee);
            param.Add("@Payment_Method", Payment_Method);
            param.Add("@Bank_Reciept", Bank_Reciept);
            param.Add("@Disclaimer", Disclaimer);
            //param.Add("@Ref_No", Reg_No);
            param.Add("@Ref_No", "pfl-Ref" + DateTime.Now.ToString("ddMMyyhhmmss"));
            param.Add("@Reciept_No", "pfl-Reciept-" + DateTime.Now.ToString("ddMMyyhhmmss"));
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);


            if (_dataSet.Tables.Contains("Live_Student_Registration"))
                _dataSet.Tables.Remove("Live_Student_Registration");
            acess.selectStoredProcedure(_dataSet, "sp_Live_Student_Registration", param, "Live_Student_Registration");
            DataTable dt = _dataSet.Tables["Live_Student_Registration"];

            return dt;
        }
        public DataTable LIVE_STUDENT_UPDATE(string name, string sir_name, string DOB, string gender, string mobile, string email, string nationality, string residence,
        string marital_status, string paddress, string caddress, string employement_status, string monthly_income, string student_type, string pfl_office,
        string study_countries, string study_level, string intake_year, string intake_semester, string intake_month, string study_universities, string study_universities_id,
        string passport_no, string passport_auth, string passport_poi, string passport_doi, string passport_doe, string source, string source_detail, string interview_type,
        string interview_name, string interview_date, string follow_up, string counceler, string ucas_no, string ucas_id, string ucas_password, string accomodation,
        string ability_fee, string primary_officer_no, string payment_type, string reg_fee, string Payment_Method, string Bank_Reciept, string Disclaimer, string Student_Id
        ,string payment_deadline, string Visa_Refusal, string refusal_Year, string refusal_Country, string Payment_Currency,string TotalReg_Fee)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@name", name);
            param.Add("@sir_name", sir_name);
            param.Add("@DOB", DOB);
            param.Add("@Gender", gender);
            param.Add("@Mobile_No", mobile);
            param.Add("@Email", email);
            param.Add("@Nationality", nationality);
            param.Add("@Residence_Country", residence);
            param.Add("@Marital_Status", marital_status);
            param.Add("@Permanent_Address", paddress);
            param.Add("@Current_Address", caddress);
            param.Add("@Employment_Status", employement_status);
            param.Add("@Monthly_Income", monthly_income);
            param.Add("@Student_Type", student_type);
            param.Add("@PFL_Office", pfl_office);
            param.Add("@Study_Countries", study_countries);
            param.Add("@Study_Level", study_level);
            param.Add("@Intake_Year", intake_year);
            param.Add("@Intake_Semester", intake_semester);
            param.Add("@Intake_Month", intake_month);
            param.Add("@Study_Universities", study_universities);
            param.Add("@Study_Universities_Id", study_universities_id);
            param.Add("@Passport_No", passport_no);
            param.Add("@Passport_Auth", passport_auth);
            param.Add("@Passport_POI", passport_poi);
            param.Add("@Passport_DOI", passport_doi);
            param.Add("@Passport_DOE", passport_doe);
            param.Add("@Source", source);
            param.Add("@Source_Detail", source_detail);
            param.Add("@Interview_Type", "");
            param.Add("@Interview_Name", interview_name);
            param.Add("@Interview_DateTime", interview_date);
            param.Add("@Follow_Up", follow_up);
            param.Add("@Counceler", counceler);
            param.Add("@UCAS_No", ucas_no);
            param.Add("@UCAS_ID", ucas_id);
            param.Add("@UCAS_Password", ucas_password);
            param.Add("@Accomodation", accomodation);
            param.Add("@Ability_PayFee", ability_fee);
            param.Add("@Primary_OfficerContact", primary_officer_no);
            param.Add("@Payment_Type", payment_type);
            param.Add("@Reg_Fee", reg_fee);
            param.Add("@Payment_Method", Payment_Method);
            param.Add("@Bank_Reciept", Bank_Reciept);
            param.Add("@Payment_Currency", Payment_Currency);
            param.Add("@TotalReg_Fee", TotalReg_Fee);
            param.Add("@Disclaimer", Disclaimer);
            //param.Add("@Ref_No", "PFL-Ref" + DateTime.Now.ToString("ddMMyyhhmmss"));
            //param.Add("@Reciept_No", "pfl-Reciept-" + DateTime.Now.ToString("ddMMyyhhmmss"));
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);
            param.Add("@UserCountry", HttpContext.Current.Session["country"]);
            param.Add("@Student_Id", Student_Id);
            param.Add("@Visa_Refusal", Visa_Refusal);
            param.Add("@refusal_Year", refusal_Year);
            param.Add("@refusal_Country", refusal_Country);
            param.Add("@payment_deadline", payment_deadline);


            if (_dataSet.Tables.Contains("Live_Student_Update"))
                _dataSet.Tables.Remove("Live_Student_Update");
            acess.selectStoredProcedure(_dataSet, "sp_Live_Student_Update", param, "Live_Student_Update");
            DataTable dt = _dataSet.Tables["Live_Student_Update"];

            return dt;
        }
        public DataTable Insert_Leads(string name, string sir_name, string mobile, string email, string nationality, string residence,
            string pfl_office, string study_countries, string study_universities, string study_universities_id, string study_level, string intake_year, string intake_semester, string intake_month,
            string source, string source_detail, string Status)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@name", name);
            param.Add("@sir_name", sir_name);
            param.Add("@Email", email);
            param.Add("@Mobile_No", mobile);
            param.Add("@Residence_Country", residence);
            param.Add("@Nationality", nationality);
            param.Add("@PFL_Office", pfl_office);
            param.Add("@Study_Countries", study_countries);
            param.Add("@Study_Universities", study_universities);
            param.Add("@Study_Universities_Id", study_universities_id);
            param.Add("@Study_Level", study_level);
            param.Add("@Intake_Year", intake_year);
            param.Add("@Intake_Semester", intake_semester);
            param.Add("@Intake_Month", intake_month);
            param.Add("@Source", source);
            param.Add("@Source_Detail", source_detail);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);
            param.Add("@lead_status", Status);

            if (_dataSet.Tables.Contains("tbl_Insert_Leads"))
                _dataSet.Tables.Remove("tbl_Insert_Leads");
            acess.selectStoredProcedure(_dataSet, "sp_Insert_Leads", param, "tbl_Insert_Leads");
            DataTable dt = _dataSet.Tables["tbl_Insert_Leads"];

            return dt;
        }
        public DataTable Update_Leads(string name, string sir_name, string mobile, string email, string nationality, string residence,
             string pfl_office, string study_countries, string study_universities, string study_universities_id, string study_level, string intake_year, string intake_semester, string intake_month,
             string source, string source_detail,string Status, string lead_id)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@name", name);
            param.Add("@sir_name", sir_name);
            param.Add("@Email", email);
            param.Add("@Mobile_No", mobile);
            param.Add("@Residence_Country", residence);
            param.Add("@Nationality", nationality);
            param.Add("@PFL_Office", pfl_office);
            param.Add("@Study_Countries", study_countries);
            param.Add("@Study_Universities", study_universities);
            param.Add("@Study_Universities_Id", study_universities_id);
            param.Add("@Study_Level", study_level);
            param.Add("@Intake_Year", intake_year);
            param.Add("@Intake_Semester", intake_semester);
            param.Add("@Intake_Month", intake_month);
            param.Add("@Source", source);
            param.Add("@Source_Detail", source_detail);
            param.Add("@Status", Status);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);
            param.Add("@Lead_Id", lead_id);

            if (_dataSet.Tables.Contains("tbl_update_Leads"))
                _dataSet.Tables.Remove("tbl_update_Leads");
            acess.selectStoredProcedure(_dataSet, "sp_update_Lead", param, "tbl_update_Leads");
            DataTable dt = _dataSet.Tables["tbl_update_Leads"];

            return dt;
        }
        public DataTable Student_Document_Upload(string ID, string filename, string base64, string type, string description)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@ID", ID);
            param.Add("@filename", filename);
            param.Add("@base64", base64);
            param.Add("@type", type);
            param.Add("@discription", description);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Document_Upload"))
                _dataSet.Tables.Remove("Document_Upload");
            acess.selectStoredProcedure(_dataSet, "sp_Upload_Document", param, "Document_Upload");
            DataTable dt = _dataSet.Tables["Document_Upload"];

            return dt;
        }
        public DataTable Get_Student_Documents(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@ID", ID);

            if (_dataSet.Tables.Contains("StudentDocuments"))
                _dataSet.Tables.Remove("StudentDocuments");
            acess.selectStoredProcedure(_dataSet, "sp_get_student_Documents", param, "StudentDocuments");
            DataTable dt = _dataSet.Tables["StudentDocuments"];

            return dt;
        }
        public DataTable LiveStudent_ById(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Student_id", ID);

            if (_dataSet.Tables.Contains("Student_ById"))
                _dataSet.Tables.Remove("Student_ById");
            acess.selectStoredProcedure(_dataSet, "sp_get_LiveStudent_ById", param, "Student_ById");
            DataTable dt = _dataSet.Tables["Student_ById"];

            return dt;
        }
        public DataTable Live_Student_Uploader(string Filebase64)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            string[] words = Filebase64.Split(',');
            byte[] data = System.Convert.FromBase64String(words[1]);
            string uniqueFileName = "filename-" + DateTime.Now.ToString("ddMMyyhhmmss");
            DataTable errors = new DataTable();
            //DataRow dr = errors.NewRow();
            //errors.Rows[0][0] = "Some Value"; errors.Rows.Add(dr);


            DataTable dt = new DataTable();
            try
            {
                File.WriteAllBytes(@Path.Combine(HttpContext.Current.Server.MapPath("~"), @"D:\PFL_CRM__App\PFL_CRM__App\assets\media\StudentsUploader\" + uniqueFileName + ".csv"), data);
                var path = Path.Combine(HttpContext.Current.Server.MapPath("~"), @"D:\PFL_CRM__App\PFL_CRM__App\assets\media\StudentsUploader\");

                OleDbConnection con = null;
                //con = new OleDbConnection("Provider=Microsoft.JET.OLEDB.4.0;Data Source=\"" + path + "\";Properties='Excel 8.0;HDR=YES;IMEX=1;TypeGuessRows=0;ImportMixedTypes=Text';");
                con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=\"" + path + "\";Extended Properties='text;HDR=YES;FMT=Delimited(,)';");
                //con = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0;Data Source=\"" + path + "\";Extended Properties='Excel 12.0;HDR=YES;IMEX=1;TypeGuessRows=0;ImportMixedTypes=Text';");

                DataSet ExcelDataSet = new DataSet();
                con.Open();
                DataTable dts = con.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);

                string getExcelSheetName = dts.Rows[dts.Rows.Count - 1]["Table_Name"].ToString();
                OleDbCommand ExcelCommand = new OleDbCommand(@"SELECT * FROM [" + getExcelSheetName + @"]", con);
                //OleDbCommand ExcelCommand = new OleDbCommand(@"SELECT * FROM [Sheet1$]", con);
                OleDbDataAdapter ExcelAdapter = new OleDbDataAdapter(ExcelCommand);
                ExcelAdapter.Fill(ExcelDataSet);
                con.Close();
                File.Delete(@Path.Combine(HttpContext.Current.Server.MapPath("~"), @"assets\media\StudentsUploader\" + uniqueFileName + ".csv"));
                if (ExcelDataSet.Tables[0].Rows.Count > 0)
                {
                    //  errors = CheckDataExternal(ExcelDataSet.Tables[0]);
                    if (true)
                    {
                        DataTable Dtvalues = ExcelDataSet.Tables[0];
                        for (int i = 0; i < Dtvalues.Rows.Count; i++)
                        {
                            DataRow row1 = Dtvalues.Rows[i];
                            int columnCount = Dtvalues.Columns.Count;
                            string[] columns = new string[columnCount];
                            param.Add("@name", Dtvalues.Rows[i][0].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@DOB", Dtvalues.Rows[i][1].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Gender", Dtvalues.Rows[i][2].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Mobile_No", Dtvalues.Rows[i][3].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Email", Dtvalues.Rows[i][4].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Nationality", Dtvalues.Rows[i][6].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Residence_Country", Dtvalues.Rows[i][5].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Marital_Status", Dtvalues.Rows[i][7].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Permanent_Address", Dtvalues.Rows[i][8].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Current_Address", Dtvalues.Rows[i][9].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Employment_Status", Dtvalues.Rows[i][10].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Monthly_Income", (int)Dtvalues.Rows[i][11]);
                            param.Add("@Student_Type", Dtvalues.Rows[i][12].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@PFL_Office", Dtvalues.Rows[i][13].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Study_Countries", Dtvalues.Rows[i][14].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Study_Level", Dtvalues.Rows[i][15].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Intake_Year", (int)Dtvalues.Rows[i][16]);
                            param.Add("@Intake_Semester", Dtvalues.Rows[i][17].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Intake_Month", Dtvalues.Rows[i][18].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Study_Universities", Dtvalues.Rows[i][19].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Study_Universities_Id", Dtvalues.Rows[i][20].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Passport_No", Dtvalues.Rows[i][21].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Passport_Auth", Dtvalues.Rows[i][22].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Passport_POI", Dtvalues.Rows[i][23].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Passport_DOI", Dtvalues.Rows[i][24].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Passport_DOE", Dtvalues.Rows[i][25].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Source", Dtvalues.Rows[i][26].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Source_Detail", Dtvalues.Rows[i][27].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Interview_Type", Dtvalues.Rows[i][28].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Interview_Name", Dtvalues.Rows[i][29].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Interview_DateTime", Dtvalues.Rows[i][30].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Follow_Up", Dtvalues.Rows[i][31].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Counceler", Dtvalues.Rows[i][32].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@UCAS_No", Dtvalues.Rows[i][33].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@UCAS_ID", Dtvalues.Rows[i][34].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@UCAS_Password", Dtvalues.Rows[i][35].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Accomodation", Dtvalues.Rows[i][36].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Ability_PayFee", Dtvalues.Rows[i][37].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Primary_OfficerContact", Dtvalues.Rows[i][38].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Payment_Type", Dtvalues.Rows[i][39].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Reg_Fee", (int)Dtvalues.Rows[i][40]);
                            param.Add("@Disclaimer", Dtvalues.Rows[i][41].ToString().Trim().Replace("-", "").Replace("'", "`"));
                            param.Add("@Ref_No", "pfl-" + DateTime.Now.ToString("ddMMyyhhmmss"));
                            param.Add("@Created_By", HttpContext.Current.Session["Username"]);


                            if (_dataSet.Tables.Contains("Live_Student_Registration"))
                                _dataSet.Tables.Remove("Live_Student_Registration");
                            acess.selectStoredProcedure(_dataSet, "sp_Live_Student_Registration", param, "Live_Student_Registration");
                            dt = _dataSet.Tables["Live_Student_Registration"];
                            param.Remove("@name");
                            param.Remove("@DOB");
                            param.Remove("@Gender");
                            param.Remove("@Mobile_No");
                            param.Remove("@Email");
                            param.Remove("@Nationality");
                            param.Remove("@Residence_Country");
                            param.Remove("@Marital_Status");
                            param.Remove("@Permanent_Address");
                            param.Remove("@Current_Address");
                            param.Remove("@Employment_Status");
                            param.Remove("@Monthly_Income");
                            param.Remove("@Student_Type");
                            param.Remove("@PFL_Office");
                            param.Remove("@Study_Countries");
                            param.Remove("@Study_Level");
                            param.Remove("@Intake_Year");
                            param.Remove("@Intake_Semester");
                            param.Remove("@Intake_Month");
                            param.Remove("@Study_Universities");
                            param.Remove("@Study_Universities_Id");
                            param.Remove("@Passport_No");
                            param.Remove("@Passport_Auth");
                            param.Remove("@Passport_POI");
                            param.Remove("@Passport_DOI");
                            param.Remove("@Passport_DOE");
                            param.Remove("@Source");
                            param.Remove("@Source_Detail");
                            param.Remove("@Interview_Type");
                            param.Remove("@Interview_Name");
                            param.Remove("@Interview_DateTime");
                            param.Remove("@Follow_Up");
                            param.Remove("@Counceler");
                            param.Remove("@UCAS_No");
                            param.Remove("@UCAS_ID");
                            param.Remove("@UCAS_Password");
                            param.Remove("@Accomodation");
                            param.Remove("@Ability_PayFee");
                            param.Remove("@Primary_OfficerContact");
                            param.Remove("@Payment_Type");
                            param.Remove("@Reg_Fee");
                            param.Remove("@Disclaimer");
                            param.Remove("@Ref_No");
                            param.Remove("@Created_By");

                        }
                    }

                }
                return dt;

            }
            catch (Exception )
            {
                return errors;

            }

        }
        public class LeadsData
        {
            public string Contact_Number { get; set; }
            public string Counsellor_Name { get; set; }
            public DateTime Date { get; set; }
            public string Email { get; set; }
            public string Intended_Country { get; set; }
            public string Intended_Institute { get; set; }
            public string Name { get; set; }
            public string Region { get; set; }
        }
        //lEADS
        public DataTable GET_LEADS()
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@userCountry", HttpContext.Current.Session["country"]);
            param.Add("@userId", HttpContext.Current.Session["UserId"]);

            if (_dataSet.Tables.Contains("GET_LEADS"))
                _dataSet.Tables.Remove("GET_LEADS");
            acess.selectStoredProcedure(_dataSet, "sp_get_LiveStudents_Leads",param, "GET_LEADS");
            DataTable dt = _dataSet.Tables["GET_LEADS"];

            return dt;
        }
        public DataTable User_ById(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);

            if (_dataSet.Tables.Contains("User_ById"))
                _dataSet.Tables.Remove("User_ById");
            acess.selectStoredProcedure(_dataSet, "sp_get_User_ById", param, "User_ById");
            DataTable dt = _dataSet.Tables["User_ById"];

            return dt;
        }
        public DataTable Lead_ById(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@Lead_id", ID);

            if (_dataSet.Tables.Contains("Lead_ById"))
                _dataSet.Tables.Remove("Lead_ById");
            acess.selectStoredProcedure(_dataSet, "sp_get_Lead_ById", param, "Lead_ById");
            DataTable dt = _dataSet.Tables["Lead_ById"];

            return dt;
        }
        public DataTable Leads_Uploader(List<Leads_List.LeadsData> Filebase64)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            DataTable dt = new DataTable();

            string a = Filebase64[0].Contact_Number;
            for (int LeadsIndex = 0; LeadsIndex < Filebase64.Count(); LeadsIndex++)
            {
                param.Add("@name", Filebase64[LeadsIndex].First_Name);
                param.Add("@sir_name", Filebase64[LeadsIndex].Last_Name ?? "");
                param.Add("@Email", Filebase64[LeadsIndex].Email.ToString().Trim());
                param.Add("@Mobile_No", Filebase64[LeadsIndex].Contact_Number.ToString().Trim().Replace("-", "").Replace("'", "`"));
                param.Add("@PFL_Office", Filebase64[LeadsIndex].Region.Substring(Filebase64[LeadsIndex].Region.LastIndexOf('-') + 1).ToString().Trim());
                param.Add("@Study_Countries", Filebase64[LeadsIndex].Intended_Country.Substring(Filebase64[LeadsIndex].Intended_Country.LastIndexOf('-') + 1).ToString().Trim());
                param.Add("@Source", "Inquiry (Call, SMS, Social Media)");
                param.Add("@Created_By", Filebase64[LeadsIndex].Counsellor_Name.ToString().Trim().Replace("-", "").Replace("'", "`"));

                if (_dataSet.Tables.Contains("Leads_Uploader"))
                    _dataSet.Tables.Remove("Leads_Uploader");
                acess.selectStoredProcedure(_dataSet, "sp_Insert_Leads_Uploader", param, "Leads_Uploader");
                dt = _dataSet.Tables["Leads_Uploader"];

                param.Clear();
            }


            return dt;


        }
        public DataTable INSERT_UNIVERSITY(string country, string name)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@country", country);
            param.Add("@name", name);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Insert_University"))
                _dataSet.Tables.Remove("Insert_University");
            acess.selectStoredProcedure(_dataSet, "sp_Insert_University", param, "Insert_University");
            DataTable dt = _dataSet.Tables["Insert_University"];

            return dt;
        }
        public DataTable UPDATE_UNIVERSITY(string ID, string name, string country)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);
            param.Add("@name", name);
            param.Add("@country", country);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Update_University"))
                _dataSet.Tables.Remove("Update_University");
            acess.selectStoredProcedure(_dataSet, "sp_Update_University", param, "Update_University");
            DataTable dt = _dataSet.Tables["Update_University"];

            return dt;
        }
        public DataTable UPDATE_ROLE(string id,string name, string designation, string country, string role, string user_name, string password, string location, string email,
            string phone, string active)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", id);
            param.Add("@name", name);
            param.Add("@designation", designation);
            param.Add("@country", country);
            param.Add("@role", role);
            param.Add("@user_name", user_name);
            param.Add("@password", password);
            param.Add("@location", location);
            param.Add("@email", email);
            param.Add("@phone", phone);
            if (active == "on") { active = "true"; }
            else if (active == "off") { active = "false"; }
            param.Add("@active", active);
            param.Add("@Updated_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Update_UserRole"))
                _dataSet.Tables.Remove("Update_UserRole");
            acess.selectStoredProcedure(_dataSet, "sp_Update_UserRole", param, "Update_UserRole");
            DataTable dt = _dataSet.Tables["Update_UserRole"];

            return dt;
        }
        public DataTable INSERT_ROLE(string name, string designation, string country, string role, string user_name, string password, string location, string email,
            string phone, string active)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@name", name);
            param.Add("@designation", designation);
            param.Add("@country", country);
            param.Add("@role", role);
            param.Add("@user_name", user_name);
            param.Add("@password", password);
            param.Add("@location", location);
            param.Add("@email", email);
            param.Add("@phone", phone);
            if (active == "on") { active = "true"; }
            else if (active == "off") { active = "false"; }
            param.Add("@active", active);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Insert_UserRole"))
                _dataSet.Tables.Remove("Insert_UserRole");
            acess.selectStoredProcedure(_dataSet, "sp_Insert_UserRole", param, "Insert_UserRole");
            DataTable dt = _dataSet.Tables["Insert_UserRole"];

            return dt;
        }
        public DataTable INSERT_COUNTRY(string name)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@name", name);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Student_ById"))
                _dataSet.Tables.Remove("Student_ById");
            acess.selectStoredProcedure(_dataSet, "sp_Insert_Country", param, "Student_ById");
            DataTable dt = _dataSet.Tables["Student_ById"];

            return dt;
        }
        public DataTable UPDATE_COUNTRY(string ID, string name)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);
            param.Add("@name", name);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Update_Country"))
                _dataSet.Tables.Remove("Update_Country");
            acess.selectStoredProcedure(_dataSet, "sp_Update_Country", param, "Update_Country");
            DataTable dt = _dataSet.Tables["Update_Country"];

            return dt;
        }
        public DataTable GET_UNIVERSITY_BY_ID(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);
            if (_dataSet.Tables.Contains("University_Id"))
                _dataSet.Tables.Remove("University_Id");
            acess.selectStoredProcedure(_dataSet, "sp_get_University_Id", param, "University_Id");
            DataTable dt = _dataSet.Tables["University_Id"];

            return dt;
        }
        public DataTable GET_COUNTRY_BY_ID(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);
            if (_dataSet.Tables.Contains("studyCountry_Id"))
                _dataSet.Tables.Remove("studyCountry_Id");
            acess.selectStoredProcedure(_dataSet, "sp_get_studyCountry_Id", param, "studyCountry_Id");
            DataTable dt = _dataSet.Tables["studyCountry_Id"];

            return dt;
        }
        public DataTable DELETE_UNIVERSITY(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Delete_University"))
                _dataSet.Tables.Remove("Delete_University");
            acess.selectStoredProcedure(_dataSet, "sp_Delete_University", param, "Delete_University");
            DataTable dt = _dataSet.Tables["Delete_University"];

            return dt;
        }
        public DataTable DELETE_USER(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Delete_User"))
                _dataSet.Tables.Remove("Delete_User");
            acess.selectStoredProcedure(_dataSet, "sp_Delete_User", param, "Delete_User");
            DataTable dt = _dataSet.Tables["Delete_User"];

            return dt;
        }
        public DataTable DELETE_COUNTRY(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Delete_Country"))
                _dataSet.Tables.Remove("Delete_Country");
            acess.selectStoredProcedure(_dataSet, "sp_Delete_Country", param, "Delete_Country");
            DataTable dt = _dataSet.Tables["Delete_Country"];

            return dt;
        }
        public DataTable DELETE_OFFICE(string ID)
        {
            DBAccess acess = new DBAccess();
            Hashtable param = new Hashtable();
            param.Add("@id", ID);
            param.Add("@Created_By", HttpContext.Current.Session["Username"]);

            if (_dataSet.Tables.Contains("Delete_Office"))
                _dataSet.Tables.Remove("Delete_Office");
            acess.selectStoredProcedure(_dataSet, "sp_Delete_Office", param, "Delete_Office");
            DataTable dt = _dataSet.Tables["Delete_Office"];

            return dt;
        }

        // Reports

        // Conversion Desk Report
        public DataTable GET_CONVERSIONDESK_REPORT()
        {
            DBAccess acess = new DBAccess();
            //Hashtable param = new Hashtable();
            //param.Add("@userCountry", HttpContext.Current.Session["country"]);
            //param.Add("@userId", HttpContext.Current.Session["UserId"]);

            if (_dataSet.Tables.Contains("GET_CONVERSIONDESK_REPORT"))
                _dataSet.Tables.Remove("GET_CONVERSIONDESK_REPORT");
            acess.selectStoredProcedure(_dataSet, "sp_get_ConversionDesk_Report", /*param,*/ "GET_CONVERSIONDESK_REPORT");
            DataTable dt = _dataSet.Tables["GET_CONVERSIONDESK_REPORT"];

            return dt;
        }

    }
}