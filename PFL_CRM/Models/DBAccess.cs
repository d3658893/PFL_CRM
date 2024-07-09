using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ecosystem.Models
{
    public class DBAccess
    {
        private SqlConnection DbConn = new SqlConnection();
        private SqlDataAdapter DbAdapter = new SqlDataAdapter();
        private SqlCommand DbCommand = new SqlCommand();
        private SqlTransaction DbTran;
        private string strConnString = ConfigurationManager.ConnectionStrings["PFLConn"].ToString();

        public DBAccess()
        {
            strConnString = ConfigurationManager.ConnectionStrings["PFLConn"].ToString();
        }

        //public DBAccess(string connection)
        //{
        //    if (connection == "AdminDB")
        //    {
        //        strConnString = ConfigurationManager.ConnectionStrings["AdminDb_Test"].ToString();
        //    }
        //    else
        //    {
        //        strConnString = connection;
        //    }

        //}

        public void setConnString(string strConn)
        {
            try
            {
                strConnString = strConn;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public string getConnString()
        {
            try
            {
                return strConnString;
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        private void createConn()
        {
            try
            {

                DbConn.ConnectionString = strConnString;
                DbConn.Open();

            }
            catch (SqlException ex)
            {
                throw ex;
            }
            catch (Exception exp)
            {

                throw exp;
            }
        }
        public void closeConnection()
        {
            try
            {
                if (DbConn.State != 0)
                    DbConn.Close();
            }
            catch (SqlException ex)
            {
                throw ex;
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void beginTrans()
        {
            try
            {
                if (DbTran == null)
                {
                    if (DbConn.State == 0)
                    {
                        createConn();
                    }

                    DbTran = DbConn.BeginTransaction();
                    DbCommand.Transaction = DbTran;
                    DbAdapter.SelectCommand.Transaction = DbTran;
                    DbAdapter.InsertCommand.Transaction = DbTran;
                    DbAdapter.UpdateCommand.Transaction = DbTran;
                    DbAdapter.DeleteCommand.Transaction = DbTran;

                }

            }
            catch (SqlException ex)
            {
                throw ex;
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
        public void commitTrans()
        {
            try
            {
                if (DbTran != null)
                {
                    DbTran.Commit();
                    DbTran = null;
                }

            }
            catch (SqlException ex)
            {
                throw ex;
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }
        public void rollbackTrans()
        {
            try
            {
                if (DbTran != null)
                {
                    DbTran.Rollback();
                    DbTran = null;
                }

            }
            catch (SqlException ex)
            {
                throw ex;
            }
            catch (Exception exp)
            {
                throw exp;
            }
        }

        public void selectStoredProcedure(DataSet dSet, string spName, Hashtable param, string tblName)
        {
            try
            {
                if (DbConn.State == 0)
                {
                    createConn();
                }
                DbCommand.Connection = DbConn;
                DbCommand.CommandText = spName;
                DbCommand.CommandTimeout = 240;
                DbCommand.CommandType = CommandType.StoredProcedure;
                foreach (string para in param.Keys)
                {
                    DbCommand.Parameters.AddWithValue(para, param[para]);

                }

                DbAdapter.SelectCommand = (DbCommand);
                DbAdapter.Fill(dSet, tblName);
            }
            catch (SqlException ex)
            {

                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw ex;
            }
            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }

        public void selectStoredProcedure(DataSet dSet, string spName, SqlCommand comm, string tblName)
        {
            try
            {
                if (DbConn.State == 0)
                {
                    createConn();
                }
                DbCommand.CommandTimeout = 0;
                comm.Connection = DbConn;
                comm.CommandText = spName;
                comm.CommandTimeout = 0;
                comm.CommandType = CommandType.StoredProcedure;
                DbAdapter.SelectCommand = comm;
                DbAdapter.Fill(dSet, tblName);
                comm.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
            catch (Exception e)
            {
                comm.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw e;
            }
            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }
        public void selectStoredProcedure(DataSet dSet, string spName, string tblName)
        {
            try
            {
                if (DbConn.State == 0)
                {
                    createConn();
                }
                DbCommand.Connection = DbConn;
                DbCommand.CommandText = spName;
                DbCommand.CommandType = CommandType.StoredProcedure;
                DbAdapter.SelectCommand = DbCommand;
                DbAdapter.Fill(dSet, tblName);
            }
            catch (Exception exp)
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw exp;
            }
            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }

        public void selectQuery(DataSet dSet, string query, string tblName)
        {
            try
            {
                if (DbConn.State == 0)
                {
                    createConn();
                }
                DbCommand.CommandTimeout = 600;
                DbCommand.Connection = DbConn;
                DbCommand.CommandText = query;
                DbCommand.CommandType = CommandType.Text;
                DbAdapter = new SqlDataAdapter(DbCommand);
                DbAdapter.Fill(dSet, tblName);
            }
            catch (SqlException ex)
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw ex;
            }

            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }

        public int executeQuery(string query)
        {
            try
            {
                if (DbConn.State == 0)
                {
                    createConn();
                }
                DbCommand.Connection = DbConn;
                DbCommand.CommandText = query;
                DbCommand.CommandType = CommandType.Text;
                return DbCommand.ExecuteNonQuery();
            }

            catch (Exception exp)
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw exp;
            }
            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }
        public int executeStoredProcedure(string spName, Hashtable param)
        {
            try
            {
                if (DbConn.State == 0)
                {
                    createConn();
                }
                DbCommand.Connection = DbConn;
                DbCommand.CommandText = spName;
                DbCommand.CommandType = CommandType.StoredProcedure;
                foreach (string para in param.Keys)
                {
                    DbCommand.Parameters.AddWithValue(para, param[para]);
                }
                return DbCommand.ExecuteNonQuery();
            }

            catch (Exception exp)
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw exp;

            }
            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }
        public int returnint32(string strSql)
        {
            try
            {
                if (DbConn.State == 0)
                {

                    createConn();
                }
                else
                {
                    DbConn.Close();
                    createConn();
                }
                DbCommand.Connection = DbConn;
                DbCommand.CommandText = strSql;
                DbCommand.CommandType = CommandType.Text;
                return (int)DbCommand.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw ex;
            }
            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }
        public Int64 returnint64(string strSql)
        {
            try
            {
                if (DbConn.State == 0)
                {
                    createConn();
                }
                DbCommand.Connection = DbConn;
                DbCommand.CommandText = strSql;
                DbCommand.CommandType = CommandType.Text;
                return (Int64)DbCommand.ExecuteScalar();
            }
            catch (SqlException ex)
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw ex;
            }
            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }
        public int executeDataSet(DataSet dSet, string tblName, string strSql)
        {
            try
            {
                if (DbConn.State == 0)
                {
                    createConn();
                }

                DbAdapter.SelectCommand.CommandText = strSql;
                DbAdapter.SelectCommand.CommandType = CommandType.Text;
                SqlCommandBuilder DbCommandBuilder = new SqlCommandBuilder(DbAdapter);

                return DbAdapter.Update(dSet, tblName);
            }
            catch (SqlException ex)
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw ex;
            }
            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }
        public int executeDataSet_New(DataSet dSet, string tblName, string strSql)
        {
            try
            {
                if (DbConn.State == 0)
                {
                    createConn();
                }
                DbAdapter = new SqlDataAdapter(strSql, DbConn);
                DbAdapter.Fill(dSet, tblName);
                return DbAdapter.Update(dSet, tblName);
            }
            catch (SqlException ex)
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
                throw ex;
            }
            finally
            {
                DbCommand.Parameters.Clear();
                DbAdapter.Dispose();
                DbConn.Close();
            }
        }

        public bool checkDbConnection()
        {
            int _flag = 0;
#pragma warning disable CS0168 // Variable is declared but never used
            try
            {
                if (DbConn.State == ConnectionState.Open)
                {
                    DbConn.Close();
                }

                DbConn.ConnectionString = getConnString();
                DbConn.Open();
                _flag = 1;

            }
            catch (SqlException ex)
            {
                throw ex;
            }
            catch (Exception exp)
            {
                _flag = 0;
            }
#pragma warning restore CS0168 // Variable is declared but never used
            if (_flag == 1)
            {
                DbConn.Close();
                _flag = 0;
                return true;
            }
            else
            {
                return false;
            }

        }

    }

}
