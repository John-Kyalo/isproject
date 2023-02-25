<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GYM_Mgt_System.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">

                <div class="card">
                    <div class="card body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="photos/icon.png" />
                                </center>
                            </div>
                           </div> 

                         <div class="row">
                            <div class="col">
                                <center>
                                   <h3>Admin Login</h3>
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
                                <asp:Label ID="Label1" runat="server" Text="Label">Username</asp:Label>
                               <div class="form-group">
                              <asp:TextBox CSSClass="form-control" ID="TextBox1"
                                 runat="server"></asp:TextBox>
                            </div>
                            

                             <asp:Label ID="Label2" runat="server" Text="Label">Password</asp:Label>
                                 <div class="form-group">
                              <asp:TextBox CSSClass="form-control" ID="TextBox2"
                                 runat="server" TextMode="Password"></asp:TextBox>

                                </div>

                                <div class="form-group">
                     <asp:Button class="btn btn-info btn-block " ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  />

                                </div>

                                 
                            </div>
                           </div>
                        </div>
                            
                               
                    </div>
               
                
            <a href="Home.aspx"> Back to Homepage</a><br> <br>
            </div>

            </div>
        </div>
    

</asp:Content>


