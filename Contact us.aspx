<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact us.aspx.cs" Inherits="GYM_Mgt_System.Contact_us" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
            <div class="row">
                <div class="col-md-10">
                    <center>
                        <h2>CONTACT US HERE</h2>
                        
                    </center>

                
            
             <div class="row">
                <div class="col-md-10">
                   
                    <asp:Label ID="Label1" runat="server" Text="Label">Username</asp:Label>
                    <div class="form-group"> 
                    
                    <asp:TextBox CSSClass="form-control" ID="TextBox1"
                        runat="server"></asp:TextBox>
                  </div>
                
                     <asp:Label ID="Label2" runat="server" Text="Label">Message</asp:Label>
                     <div class="form-group"> 

                    <asp:TextBox CSSClass="form-control" ID="TextBox2"
                        runat="server"></asp:TextBox>

            </div>
                     <div class="form-group"> 
                         <asp:Button class="btn btn-info btn-block" ID="Button1" runat="server" Text="Submit response" OnClick="Button1_Click" />
                         </div>
                </div>
                 </div>
          
             

           
                  

                     <a href="Home.aspx">Back to Homepage</a> <br><br>

                </div>
           </div>
           <div class="row">
              <div class="col-md-5">
                   <center>
                      <h2>ADDRESS</h2>
                   </center>
               
                   <span class="fas fa-phone-alt"></span>
                   <span class="text">+254790651823</span>
                </div>
               </div>
               
                     
                    
                  <div class="row">
                      <div class="col-md-5">
                   <span class="fas fa-envelope"></span>
                   <span class="text">getfithere21@gmail.com</span>
                      </div>
                   </div>
             

         <div class="row">
             <div class="col-4">
                 <a href="#"><span style="font-size:36px" class="fab fa-twitter"></span></a>
                 <a href="#"><span style="font-size:36px;color:darkblue" class="fab fa-instagram"></span></a>
                 <a href="#"><span style="font-size:36px;color:red" class="fab fa-youtube"></span></a>
             </div>
         </div>
        </div>


</asp:Content>


