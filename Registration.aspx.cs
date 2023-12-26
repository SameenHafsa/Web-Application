using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace APA_Sameen.APA
{
    public partial class Registration : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)

        {

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            Page.MaintainScrollPositionOnPostBack = true;

            txtName.Focus();
        }
    protected void AddRegistrations()

    {

            // setup and create the connection to the database 
            ADODB.Connection objConnect = new ADODB.Connection();
        ADODB.Recordset objRS = new ADODB.Recordset();


        string strConnection = "Data Source=sql.elmcsis.com;Initial Catalog=APA_Sameen; User ID=e0744149; Password=Elmhurst1871; Provider=msoledbsql;";
        string SQL = "SELECT * FROM [Registrations];";


        //open the connection 
        objConnect.Open(strConnection);
        objRS.Open(SQL, objConnect, ADODB.CursorTypeEnum.adOpenStatic, ADODB.LockTypeEnum.adLockOptimistic);


        // add Registration record 
        objRS.AddNew();
            objRS.Fields["RegistrationID"].Value = Guid.NewGuid().ToString();
           
        objRS.Fields["Name"].Value = txtName.Text;

            //which Accessebility option ?
            if (chkAudioAid.Checked == true)
            {
                objRS.Fields["AudioAid"].Value = 1;
            }
            else 
            {
                objRS.Fields["AudioAid"].Value = 0;
            }
            if (chkVisualAid.Checked == true)
            {
                objRS.Fields["VisualAid"].Value = 1;
            }
            else
            {
                objRS.Fields["VisualAid"].Value = 0;
            }
             if (chkAudioAid.Checked == true)
            {
                objRS.Fields["AudioAid"].Value = 1;
            }
            else 
            {
                objRS.Fields["AudioAid"].Value = 0;
            }
            // create date and time stamp 
            objRS.Fields["DatetimeCreated"].Value = DateTime.Now;

        // save the record to the database 
        objRS.Update();


        // close the connection top the database 
        objRS.Close();
        objConnect.Close();


        // destroy the objects 
        objRS = null;
        objConnect = null;
    }

    protected void CmdSubmit_Click(object sender, EventArgs e)

    {
        Response.Redirect("Thankyou.aspx");

    }

    protected void CmdCancel_Click(object sender, EventArgs e)

    {

        Response.Redirect("https://www.soa.org/");

    }
    }
}