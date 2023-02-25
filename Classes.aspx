<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="GYM_Mgt_System.Classes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <section>
        <img src="photos/cold.jpg" class="img-fluid" />
    </section>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2> OUR GET FIT CLASESS</h2>
                        <p><b>More than Fascinating </b></p>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <img src="photos/FF.jpg" width="150px"/>
                    <h4>Functional Fitness</h4>
                    <p> 
                        Functional is basically focused on'constantly varied, high intesity, functional movement,'
                        drawing on exercises such as:calisthenics, Olymoic-style weightlifting,powerlifting,
                        Strongman-type events,body weight exercises, indoor rowing, aerobic exercise, running and 
                        swimming. This kind of training attempts to adapt or develop exercises which allow individuals
                        to perform the daily activities more easily without injuries.
                    </p>

                </div>

                <div class="col-md-4">
                    <img src="photos/yoga.jpg" width="150px"/>
                    <h4>Yoga</h4>
                    <p> 
                       Yoga is designed to improve the health, performance, and mental acuity of individuals
                        interested in improving their level of fitnesss. Based on the ancient fitness of hatha 
                        yoga, it blends balance, strength, flexibility and power in an efffectively format
                    </p>

                </div>

                 <div class="col-md-4">
                     <img src="photos/weights.jpg" width="150px"/>
                    <h4>Weightlifting</h4>
                    <p> 
                       The weightlifting classes incorporates the use of different lifting techniques which 
                        require the athlete to lift a loaded barbell from position A to position B. Usually it is
                        lifting it from the floor to an overhead position in an explosive manner but back and front
                        squats are part of it too. Lifting wights require a combination of maximal strength and 
                        maximal speeds.
                    </p>

           <a href="Home.aspx">Back to Homepage</a> <br><br>
                </div>
            </div>
        </div>
    </section>



</asp:Content>
