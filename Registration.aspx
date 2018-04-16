<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="InfoReg" >
    

        <table style="width: 100%">
            <tr>
                <td style="width: 261px">
                    &nbsp;
                    <asp:Label ID="lbl" runat="server" Text="Label" Visible="False"></asp:Label>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 261px; height: 29px;">
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td style="height: 29px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="175px" ValidationGroup="val"></asp:TextBox>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red"
                    Display="Static" ControlToValidate="TextBox1" ErrorMessage="****" 
                    ValidationGroup="val"></asp:RequiredFieldValidator>
 
                     &nbsp;</td>
            </tr>
            <tr>
                 <td style="width: 261px; height: 29px;">
                    <asp:Label ID="Label1" runat="server" Text="Contact No.1"></asp:Label>
                   </td>
                <td style="height: 29px">
                    <asp:TextBox ID="TextBox2" runat="server" ValidationGroup="val" Width="175px"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red"
                    Display="Static" ControlToValidate="TextBox2" ErrorMessage="****" 
                    ValidationGroup="val"></asp:RequiredFieldValidator>
               
                    </td>
            </tr>
            <tr>
                 <td style="width: 261px; height: 29px;">
                    <asp:Label ID="Label3" runat="server" Text="Contact No.2"></asp:Label>
                </td>
                <td style="height: 29px">
                    <asp:TextBox ID="TextBox3" runat="server"  Width="175px"></asp:TextBox>
                    <!--
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red"
                        Display="Static" ControlToValidate="TextBox3" ErrorMessage="****" ValidationGroup="val"></asp:RequiredFieldValidator>
                    -->
                </td>
            </tr>
            <tr>
                 <td style="width: 261px; height: 29px;">
                    <asp:Label ID="Label4" runat="server" Text="EmailId No.1"></asp:Label>
                </td>
                <td style="height: 29px">   
                 <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="val" Width="175px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Fill...." ControlToValidate="TextBox4" ValidationGroup="val"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid EmailId" ValidationGroup="val" ControlToValidate="TextBox4" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 
                    </td>
            </tr>
            <tr>
                <td style="width: 261px; height: 29px;">
                    <asp:Label ID="Label5" runat="server" Text="EmailId No.2"></asp:Label>
                </td>
                <td style="height: 29px">     
                
                <asp:TextBox ID="TextBox5" runat="server"  Width="175px"></asp:TextBox>
                <!--
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Fill...." ControlToValidate="TextBox5" ValidationGroup="val"></asp:RequiredFieldValidator>
               
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid EmailId" ValidationGroup="val" ControlToValidate="TextBox5" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> 
                 -->
                    </td>
            </tr>
            <tr>
                <td style="width: 261px; height: 29px;">
                    <asp:Label ID="Label6" runat="server" Text="city"></asp:Label>
                </td>
                <td style="height: 29px">   
                  <asp:TextBox ID="TextBox6" runat="server" ValidationGroup="val" Width="175px"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red"
                        Display="Static" ControlToValidate="TextBox6" ErrorMessage="****" ValidationGroup="val"></asp:RequiredFieldValidator>
         
                    </td>
            </tr>
            <tr>
                <td style="width: 261px; height: 29px;">
                   
                </td>
                <td style="height: 29px"> 
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" ValidationGroup="val"
                         Text="Button" />
                    &nbsp;</td>
            </tr>
        </table>
    

</div>
   
</asp:Content>

