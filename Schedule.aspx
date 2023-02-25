<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="GYM_Mgt_System.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
    $(document).ready(function () {
        $(".table").prepend($("<thead></thead>".append($(this).find("tr:first"))).datatable();

          });
        </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="card">
                    <div class="card body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="photos/dumbbells.jpg" width="100px" />
                            </div>
                           </div> 

                         <div class="row">
                            <div class="col">
                                <center>
                                   <h4>Find Timetable</h4>
                                </center>
                            </div>
                           </div> 
                      
                          <div class="row">
                              <div class="col text-right">
                                  <asp:Button CssClass="btn btn-info" ID="Button1" runat="server" Text="Print" />
                              </div>
                          </div>
                         <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                           </div>
                          
                           

                         <div class="row">
                             
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GYM MGT SYSTEMConnectionString %>" SelectCommand="SELECT * FROM [Schedule]"></asp:SqlDataSource>
                            <div class="col" id="DivToPrint"> 
                                <asp:GridView class="table table-striped table-bordered" 
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Schedule_Id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="Schedule_Id" HeaderText="Schedule_Id" ReadOnly="True" SortExpression="Schedule_Id" />
                                        <asp:BoundField DataField="Shedule_name" HeaderText="Shedule_name" SortExpression="Shedule_name" />
                                        <asp:BoundField DataField="Schedule_day/time" HeaderText="Schedule_day/time" SortExpression="Schedule_day/time" />
                                        <asp:BoundField DataField="Trainer" HeaderText="Trainer" SortExpression="Trainer" />
                                    </Columns>
                                </asp:GridView>

                            </div>
         
                    </div>
               </div>
        </div>

</asp:Content>
