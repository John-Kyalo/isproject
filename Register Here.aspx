<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register Here.aspx.cs" Inherits="GYM_Mgt_System.Register_Here" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">

         <div class="card">
                    <div class="card body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="photos/icon.png" />
                            </div>
                           </div> 

                         <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Register Here</h4>
                                </center>
                            </div>
                           </div> 

                         <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                           </div>

                        <div class="row">
                            <div class="col">
                                <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>
                               <div class="form-group">
                              <asp:TextBox CSSClass="form-control" ID="TextBox1"
                                 runat="server"></asp:TextBox>
                                   <asp:RegularExpressionValidator 
                                       ID="RegularExpressionValidator2" 
                                  runat="server"  ControlToValidate="TextBox1"
                                       ErrorMessage="Characters only"
                                       ForeColor="YellowGreen"
                                      ValidationExpression="^[a-zA-Z]*$" ValidationGroup="enter details"> 
                                      
                                   </asp:RegularExpressionValidator>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                    runat="server" ErrorMessage="Insert your user name" ForeColor="Red" ControlToValidate="TextBox1"
                                       ValidationGroup="enter details">

                                   </asp:RequiredFieldValidator>
                            </div>
                            
                                 <div class="row">
                            <div class="col">
                                <asp:Label ID="Label3" runat="server" Text="Label">Phone No.</asp:Label>
                               <div class="form-group">
                              <asp:TextBox CSSClass="form-control" ID="TextBox3"
                                 runat="server" TextMode="Phone"></asp:TextBox>
                                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                       ControlToValidate="TextBox3"
                                       ErrorMessage="Use a number instead" ForeColor="Red"
                                       ValidationExpression="^[0-9]{10}$" ValidationGroup="enter details">

                                   </asp:RegularExpressionValidator>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                    runat="server" ErrorMessage="Insert phone details" ForeColor="Red" ControlToValidate="TextBox3"
                                       ValidationGroup="enter details">

                                   </asp:RequiredFieldValidator>
                            </div>

                             <asp:Label ID="Label2" runat="server" Text="Label">User Email</asp:Label>
                                 <div class="form-group">
                              <asp:TextBox CSSClass="form-control" ID="TextBox2"
                                 runat="server" TextMode="Email"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                    runat="server" ErrorMessage="Insert your email" ForeColor="Red" ControlToValidate="TextBox2"
                                       ValidationGroup="enter details">

                                   </asp:RequiredFieldValidator>
                                     

                                </div>

                                <asp:Label ID="Label4" runat="server" Text="Label">Password</asp:Label>
                                 <div class="form-group">
                              <asp:TextBox CSSClass="form-control" ID="TextBox4"
                                 runat="server" TextMode="Password"></asp:TextBox>
                                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                    runat="server" ErrorMessage="Insert your password" ForeColor="Red" ControlToValidate="TextBox4"
                                       ValidationGroup="enter details">

                                   </asp:RequiredFieldValidator>
                                    

                                </div>

                                 <div class="form-group">
                                     <asp:Button class="btn btn-success btn-block "  ID="Button1" runat="server" Text="Register" 
                                          OnClick="Button1_Click" ValidationGroup="enter details" />
                 
                                     

                                </div>

                            </div>
                           </div>
                        </div>
                            </div>
                              </div> 
                    </div>
            
             <a href="Login.aspx"> Back to Login</a> <br><br>
            
            </div>
             </div>
         </div>

</asp:Content>
