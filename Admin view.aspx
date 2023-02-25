<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin view.aspx.cs" Inherits="GYM_Mgt_System.Admin_view" %>
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
                                        <h5>View Latest</h5>
                                    </center>
                                </div>
                            </div>
                           
                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>

                        </div>

                        

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GYM MGT SYSTEMConnectionString %>" SelectCommand="SELECT * FROM [Contact]"></asp:SqlDataSource>
                            <div class="col">
                                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                     <Columns>
                                         <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                                         <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
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
