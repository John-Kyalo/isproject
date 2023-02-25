<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GYM_Mgt_System.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <link rel ="stylesheet" href="StyleSheet1.css"/>
 
   <div class="container"> 
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

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
                                   <h3>User Login</h3>
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
                     <asp:Button class="btn btn-info btn-block " ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

                                </div>

                                 <div class="form-group">
                           <asp:Button class="btn btn-dark btn-block " ID="Button2" runat="server" Text="Register Here" OnClick="Button2_Click"  />
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
