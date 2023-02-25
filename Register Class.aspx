<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register Class.aspx.cs" Inherits="GYM_Mgt_System.Register_Class" %>
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
                                    <h4>Register Classes</h4>
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

                            <div class="col-md-4">
                                <asp:Label ID="Label3" runat="server" Text="Label">ID</asp:Label>
                             <div class="form-group">
                                 <div class="input-group">
                                     <asp:TextBox CssClass="form-control"  ID="TextBox3" 
                                         runat="server"></asp:TextBox>
                                     
                                 </div>
                             </div>


                            </div>


                            <div class="col-md-4">
                                <asp:Label ID="Label1" runat="server" Text="Label">Username</asp:Label>
                             <div class="form-group">
                                 <div class="input-group">
                                     <asp:TextBox CssClass="form-control"  ID="TextBox1" 
                                         runat="server"></asp:TextBox>
                                     
                                 </div>
                             </div>


                            </div>

                            <div class="col-md-4">
                                <asp:Label ID="Label2" runat="server" Text="Label">Choose Class</asp:Label>
                             <div class="form-group">
                                 <asp:TextBox CssClass="form-control"  ID="TextBox2" 
                                         runat="server"></asp:TextBox>
                                   
                                 </div>
                            </div>

                            

                            </div>
                        
                          <div class="row">
                              

                            <div class="col">
                                <div class="form-group">
                                     <center>
                                        <asp:Button class="btn btn-dark" ID="Button1"
                                            runat="server" Text="Register" OnClick="Button1_Click" />
                                     </center>
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
                                    <h4>My Schedule</h4>
                                </center>
                            </div>
                        </div>

               

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                           </div>
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GYM MGT SYSTEMConnectionString %>" SelectCommand="SELECT * FROM [Classes]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered"
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                       
                                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True" />
                                        <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                        <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
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
