using DLL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class LoginBO
    {
        LoginDAO objLoginDAO;

        [System.Obsolete]
        public LoginBO()
        {
            objLoginDAO = new LoginDAO();
        }

        public DataSet SaveRegister(string status, string Name, string Email, string Password, string Otp, string PhotoUrl)
        {
            DataSet objDataSet;
            objDataSet = objLoginDAO.SaveRegister(status, Name, Email, Password,Otp,PhotoUrl);
            return objDataSet;
        }

        public DataSet CheckUserCredential(string strLoginID, string pwd)
        {
            DataSet objDataSet;
            objDataSet = objLoginDAO.CheckUserCredential(strLoginID, pwd);
            return objDataSet;
        }


    }
}
