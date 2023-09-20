using BLL;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace TaskTracker_2._0
{
    public partial class Register : System.Web.UI.Page
    {
        [Obsolete]
        LoginBO objLoginBO = new LoginBO();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [Obsolete]
        protected void RegisterForm_Click(object sender, EventArgs e)
        {
            try
            {
                string name, email, password, otp, photourl;
                name = UserName.Text.Trim();
                email = Email.Text.Trim();
                password = Password.Text.Trim();
                otp = Otp1.Text + Otp2.Text + Otp3.Text + Otp4.Text + Otp5.Text + Otp6.Text;


                //Image upload code start

                string ImagePath = Convert.ToString(ConfigurationManager.AppSettings["ImageUploadPath"]);
                string DirPath = Server.MapPath(ImagePath);
                photourl = Path.GetFileName(FileUpload1.PostedFile.FileName);

                //image upload code end

                using (DataSet ds = objLoginBO.SaveRegister("Check", name, email, password, otp, photourl))
                {
                    if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                    {
                        string Status = (ds.Tables[0].Rows[0]["com"].ToString());
                        if (Status == "0")
                        {
                            using (DataSet dts = objLoginBO.SaveRegister("Insert", name, email, password, otp, photourl))
                            {
                                if (dts != null && dts.Tables.Count > 0 && dts.Tables[0].Rows.Count > 0)
                                {
                                    string Statusin = (dts.Tables[0].Rows[0]["com"].ToString());

                                    if (Statusin == "1")
                                    {
                                        if ((DirPath.Trim() != null) && (DirPath.Trim() != string.Empty))
                                        {
                                            DirectoryInfo ImageFolder = Directory.CreateDirectory(DirPath);
                                            if (!(ImageFolder.Exists))
                                                ImageFolder.Create();
                                        }
                                        string path = string.Concat(DirPath + "\\" + photourl);
                                        FileUpload1.PostedFile.SaveAs(path);

                                        ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('success','Registered Successfully')});", true);
                                        return;
                                    }
                                    else
                                    {

                                        ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('error','Something Wrong., Please try again.!')});", true);
                                        return;
                                    }
                                }
                            }
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this.Page, GetType(), "AlertMessage", "$(function(){AlertMessage('warning','Email Already Exists')});", true);
                            return;
                        }
                    }
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}