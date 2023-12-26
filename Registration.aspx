<%@ Page Title="" Language="C#" MasterPageFile="~/APA/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="APA_Sameen.APA.Registration" %>

<asp:Content ID="MyContent" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <h1> 2016 AMERICAN PYSCHOLOGICAL ASSOCIATION ANNUAL CONVENTION </h1> 
    <table> 
 <tr>
     <th colspan="7"> REGISTRATION INSTRUCTIONS: </th> </tr> 
     </table> 
    <table> 
 <tr> 
     <td style="text-align:initial; font-size:14px;">For immediate confirmation of your registration, complete the online convention registration form  
                at www.apa.org/convention. You may register online beginning on April 15, 2016, at 10:00 a.m. EDT 
                through August 7,2016, the last day of the convention. </td> 

        </tr> 
        <tr> <td style="text-align:initial;font-size:14px;"> If you prefer to send your registration form to APA, you may complete the registration form and send to APA. 
            Print legibly,using a black pen, entering information in the space allowed. Each individual attending convention activities must register using a seperate form  
            Send the Advance Registration Form to American Psychological Association,  
            Attn:Finance/2016 Convention, 750 first street, NE, Washington, DC 20002-4242.  </td> 
        </tr> 
        <tr> 
            <td style="text-align:initial; font-weight: bold;font-size:14px;">REGISTRATION FORMS SENT BY MAIL MUST BE RECEIVED AT APA BY JULY 7,2016</td> 
        </tr> 
</table> 
    <br /> 
         <h3 > ADVANCE REGISTRATION FORM </h3> 
    <br /> 
    <table> 
         <tr> <td style="width: 158px; height: 40px;">APA Member Number</td> 
            <td style="height: 40px;"><asp:TextBox ID="txtapanum" runat="server" Width="170px"></asp:TextBox></td> </tr> 
      </table> 
    <table> 
        <tr> 
            <td><img src="Images/required star.gif" /></td> 
            <td style="width: 70px">Name:</td><td><asp:TextBox ID="txtName" runat="server" Width="509px" MaxLength="50"></asp:TextBox></td>  
         <td> <asp:RequiredFieldValidator ID="valName" runat="server" ErrorMessage="Required" Display="Dynamic" CssClass="red" ControlToValidate="txtName" SetFocusOnError="True"></asp:RequiredFieldValidator> </td> 

        </tr> 
        </table>
    <table>
        <tr> 
            <td style="width: 138px">MailingAddress:</td><td style="width: 70px"><asp:TextBox ID="txtMailAdd" runat="server" Width="509px" MaxLength="50"></asp:TextBox></td> 
         <tr><td style="width: 138px">City</td><td style="width: 70px"><asp:TextBox ID="Txtcity" runat="server" Width="509px"></asp:TextBox></td></tr> 
             <tr><td style="width:138px">State</td><td style="width: 70px"><asp:TextBox ID="txtstate" runat="server" Width="509px" CssClass="offset-sm-0" ></asp:TextBox></td></tr> 
            <tr><td style="width:138px">Country</td><td style="width: 70px"><asp:TextBox ID="TxtCountry" runat="server" Width="509px"></asp:TextBox></td></tr> 
             <tr><td style="width:138px">Zip</td><td style="width: 70px"><asp:TextBox ID="txtzip" runat="server" Width="509px"></asp:TextBox></td></tr> 
        </table> 
    <table><tr> 
            <td style="width: 115px">Cellphone</td> 
        <td><asp:TextBox ID="txtphone" runat="server" Width="509px" CssClass="offset-sm-0"></asp:TextBox></td></tr> 
    </table> 
    <table> 
        <tr> 
            <td style="width: 141px">Email Address</td> 
            <td style="width: 70px"><asp:TextBox ID="txtEmail" runat="server" Width="509px"></asp:TextBox></td> 
        </tr> 
    </table> 
    <br /> 
<table> 
    <tr><td style="width: 228px; height: 29px;">Institution Name</td><td style="width: 70px; height: 29px;"><asp:TextBox ID="txtInstName" runat="server" Width="420px"></asp:TextBox></td></tr> 
 <tr><td style="width:228px">Institution Code </td><td style="width: 70px"><asp:TextBox ID="txtinstcode" runat="server" Width="420px" ></asp:TextBox></td></tr> 
<tr><td style="width:228px">Institution Address</td><td style="width: 70px"><asp:TextBox ID="txtAddress" runat="server" Width="420px"></asp:TextBox></td></tr> 
 </table> 
    <br /> <br /> 
    <table> 
        <tr><th colspan="7">Membership CodeMembership Code</th> </tr> 
        </table> 
    <table> 
        <tr> 
            <td colspan="7"> 
                <asp:RadioButton ID="APAMember" Text="&nbsp;Member" runat="server" GroupName="Membership" />&nbsp;&nbsp; 
                <asp:RadioButton ID="APAFellow" Text="&nbsp;Fellow" runat="server" GroupName="Membership" />&nbsp;&nbsp; 
                <asp:RadioButton ID="APAAssociate" Text="&nbsp;Associate" runat="server" GroupName="Membership" />&nbsp;&nbsp; 
                <asp:RadioButton ID="NonMember" Text="&nbsp;NonMember" runat="server" GroupName="Membership" />&nbsp;&nbsp; 
                <asp:RadioButton ID="APAInternationalAffair" Text="&nbsp;InternationalAffair" runat="server" GroupName="Membership" />&nbsp;&nbsp; 
            </td> 
        </tr> 
        </table> 
    <br /> 
    <table> 
        <tr><td style="width:228px">Registration Fee</td><td style="width: 70px"><asp:TextBox ID="txtRegFee" runat="server" Width="416px"></asp:TextBox></td></tr> 
    </table> 
    <br /> 
        <table><tr> 
                    <td colspan="5"><h2 style="width: 341px">First APA Convention<asp:CheckBox ID="ChkYes" runat="server" Text="Yes" /> <asp:CheckBox ID="ChkNo" runat="server" Text="No" /></h2></td><td colspan="5">&nbsp;</td> 
           </tr> 
            <tr> 
            <td colspan="5"><h2 style="width: 341px">Early Career Psychologist<asp:CheckBox ID="CheckEarYes" runat="server" Text="Yes" /> <asp:CheckBox ID="CheckearNo" runat="server" Text="No" /></h2></td><td colspan="5">&nbsp;</td> 
             </tr> 
            </table> 
    <table><tr> 
    <td colspan="5"><h2 style="width: 341px">Request Program Book<asp:CheckBox ID="ChkBookYes" runat="server" Text="Yes" /> <asp:CheckBox ID="ChkBookNo" runat="server" Text="No" /></h2></td><td colspan="5">&nbsp;</td> 
      </tr>   </table>   
    <br /> 
    <table> 
         <tr> 
                    <th colspan="7" style="height: 14px">Accessibility Options </th>
                </tr> 
                <tr> 
                    <td colspan="5">Please indicate if you require specific aid or service to fully participate.</td> 
                </tr> 
                <tr> 
                    <td colspan="5"><asp:CheckBox ID="chkAudioAid" runat="server" Text="Audio Aid" /> <asp:CheckBox ID="chkVisualAid" runat="server" Text="Visual Aid" /> <asp:CheckBox ID="chkMobileAid" runat="server" Text="Mobile Aid" /> <asp:CheckBox ID="chkothers" runat="server" Text="Others" /></td> 
                </tr> 
        </table> 
    <br /> 
    <br /> 
       <table> 
        <tr> 
             <td style="width: 196px">Total Fees Due</td> 
            <td style="width: 70px"><asp:TextBox ID="txtfee" runat="server" Width="420px"></asp:TextBox></td> 
        </tr> 
       </table> 
      <br /> 
    <br /> 
    <table> 
        <tr> 
            <th colspan="7" style="height: 14px">Credit Card Payment authorization </th> 
            </tr> 
        <tr> 
            <td colspan="5"><asp:CheckBox ID="ChkVISA" runat="server" Text="VISA" /> <asp:CheckBox ID="ChkMaster" runat="server" Text="Master Card" /> <asp:CheckBox ID="ChkAmerican" runat="server" Text="American Express" /> <asp:CheckBox ID="CheckBox4" runat="server" Text="Others" /></td> 
        </tr> 
         <tr><td style="width: 138px; height: 29px;">Name on Card</td><td style="width: 70px; height: 29px;"><asp:TextBox ID="Txtnamecard" runat="server" Width="474px"></asp:TextBox></td></tr> 
             <tr><td style="width:138px">Fee to be Charged $</td><td style="width: 70px"><asp:TextBox ID="TxtFeed" runat="server" Width="474px" ></asp:TextBox></td></tr> 
            <tr><td style="width:138px">Address on Card</td><td style="width: 70px"><asp:TextBox ID="Txtcardadd" runat="server" Width="474px"></asp:TextBox></td></tr> 
             <tr><td style="width:138px">Card Number</td><td style="width: 70px"><asp:TextBox ID="Txtcardnum" runat="server" Width="474px"></asp:TextBox></td></tr> 
    </table> 
    <br /> 
    <table> 
          <tr> 
                 <td colspan="5"><asp:CheckBox ID="ChkClear" runat="server" Text="If the information provided is correct" /></td> 
                </tr> 
    </table> 
    <p> 
        <asp:Button ID="CmdSubmit" runat="server" Text="SUBMIT" CssClass="btn btn-primary" OnClick="CmdSubmit_Click" />&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="CmdCancel" runat="server" OnClick="CmdCancel_Click">CANCEL</asp:LinkButton> 
</p> 

</asp:Content>
