<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Report Management.aspx.cs" Inherits="GYM_Mgt_System.Report_Management" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();

        });
    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>
                                </center>
                            </div>
                        </div>

                <div class="row">
                    <div class="col">
                        <center>
                            <img src="photos/icon.png" />
                        </center>
                    </div>
                </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                           </div>

                        <div class="row">
                            <div class="col-md-3">
                                <asp:Label ID="Label1" runat="server" Text="Label">Name</asp:Label>
                             <div class="form-group">
                                 <div class="input-group">
                                     <asp:TextBox CssClass="form-control"  ID="TextBox1" 
                                         runat="server"></asp:TextBox>
                                     <asp:Button class="btn btn-primary" ID="Button1"
                                         runat="server" Text="Go" OnClick="Button1_Click" />
                                 </div>
                             </div>


                            </div>

                            <div class="col-md-4">
                                <asp:Label ID="Label2" runat="server" Text="Label">User Email</asp:Label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control"  ID="TextBox2" 
                                         runat="server"></asp:TextBox>
                                   
                                 </div>
                            </div>

                            <div class="col-md-5">
                                <asp:Label ID="Label3" runat="server" Text="Label">Phone No</asp:Label>
                             <div class="form-group">
                                  <asp:TextBox CssClass="form-control"  ID="TextBox3" 
                                         runat="server"></asp:TextBox>
                                 
                                 
                                  
                                 </div>
                            </div>
                            

                            </div>
                        
                          <div class="row">
                              <div class="col-md-3">
                                  <div class="form-group">

                                  
                                  <asp:Button class="btn btn-info" ID="Button3" 
                                        runat="server" Text="Add Member" OnClick="Button3_Click" />
                              </div>
                                  </div>

                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:Button class="btn btn-danger" ID="Button2" 
                                        runat="server" Text="Delete Member" OnClick="Button2_Click" />
                               
                            </div>
                                </div>

                              <div class="col-md-5">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-success" ID="Button4"
                                          runat="server" Text="Update Member" OnClick="Button4_Click" />
                                  </div>
                              </div>
                        </div>
                    

                                
                            </div>
                </div>
         
        </div>
   
            <div class="col-md-7">
         <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member List</h4>
                                </center>
                            </div>
                        </div>

               

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                           </div>
                             <div class="row">
                                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GYM MGT SYSTEMConnectionString %>" SelectCommand="SELECT * FROM [Register]"></asp:SqlDataSource>

                            <div class="col">
                           <asp:GridView class="table table-striped table-bordered" ID="GridView1"
                               runat="server" AutoGenerateColumns="False" DataKeyNames="Name" DataSourceID="SqlDataSource1">
                               <Columns>
                                   <asp:BoundField DataField="Name" HeaderText="Name" ReadOnly="True" SortExpression="Name" />
                                   <asp:BoundField DataField="Phone_No" HeaderText="Phone_No" SortExpression="Phone_No" />
                                   <asp:BoundField DataField="User_Email" HeaderText="User_Email" SortExpression="User_Email" />
                               </Columns>
                                </asp:GridView>
                            </div>
                           </div>

                        </div>
                    </div>
        
        </div>
        </div>
            </div>
        
    


</asp:Content>
