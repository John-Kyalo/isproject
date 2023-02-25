<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Train schedule.aspx.cs" Inherits="GYM_Mgt_System.Train_schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Schedule Update</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                           </div>

                        <div class="row">
                            <div class="col-md-2">
                                <asp:Label ID="Label4" runat="server" Text="Label">Schedule Id</asp:Label>
                             <div class="form-group">
                                 <div class="input-group">
                                <asp:TextBox CssClass="form-control"  ID="TextBox4" 
                                         runat="server"></asp:TextBox>
                                     <asp:Button class="btn btn-dark" ID="Button4"
                                         runat="server" Text="Go" OnClick="Button4_Click" />
                                     </div>
                                 </div>
                              </div>


                        
                            <div class="col-md-3">
                                <asp:Label ID="Label1" runat="server" Text="Label">Schedule name</asp:Label>
                             <div class="form-group">
                                <asp:TextBox CssClass="form-control"  ID="TextBox1" 
                                         runat="server"></asp:TextBox>
                                    
                                 </div>
                              </div>
                            

                            

                            <div class="col-md-4">
                                <asp:Label ID="Label2" runat="server" Text="Label">Schedule day/time</asp:Label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control"  ID="TextBox2" 
                                         runat="server"></asp:TextBox>
                                   
                                 </div>
                            </div>

                            <div class="col-md-3">
                                <asp:Label ID="Label3" runat="server" Text="Label">Trainer</asp:Label>
                             <div class="form-group">
                                  <asp:TextBox CssClass="form-control"  ID="TextBox3" 
                                         runat="server"></asp:TextBox>
                                 
                                 
                                  
                                 </div>
                            </div>
                            

                            </div>
                        
                          <div class="row">

                              <div class="col-md-4">
                                  <div class="form-group">

                                  
                                      <asp:Button Class="btn btn-info" ID="Button3"
                                       runat="server" Text="Update Schedule" OnClick="Button3_Click"  />
                                      
                              </div>
                                  </div>

                              <div class="col-md-4">
                                  <div class="form-group">

                                  
                                      <asp:Button Class="btn btn-warning" ID="Button1"
                                       runat="server" Text="Add Schedule" OnClick="Button1_Click" />
                                      
                              </div>
                                  </div>

                              <div class="col-md-4">
                                  <div class="form-group">

                                  
                                      <asp:Button Class="btn btn-danger" ID="Button2"
                                       runat="server" Text="Delete Schedule" OnClick="Button2_Click" />
                                      
                              </div>
                                  </div>

                              </div>

                </div>
              
             </div>
            </div>
        </div>
</div>
</asp:Content>
