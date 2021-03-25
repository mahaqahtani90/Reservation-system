<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="FS.ascx.cs" Inherits="SSDCBookingSystem.FS.FS" %>


<style type="text/css">
    .auto-style1 {
        height: 26px;
    }
    .auto-style2 {
        width: 278px;
    }
    .auto-style3 {
        height: 26px;
        width: 278px;
    }
    .auto-style4 {
        height: 68px;
    }
    .auto-style5 {
        width: 278px;
        height: 68px;
    }
    .auto-style6 {
        width: 126px;
    }
    .auto-style7 {
        width: 126px;
        height: 68px;
    }
    .auto-style8 {
        height: 26px;
        width: 126px;
    }
    .auto-style9 {
        width: 153px;
    }
    .auto-style10 {
        height: 68px;
        width: 153px;
    }
    .auto-style11 {
        height: 26px;
        width: 153px;
    }
    .auto-style12 {
        width: 153px;
        height: 64px;
    }
    .auto-style13 {
        width: 278px;
        height: 64px;
    }
</style>
<header>

   <h1>Full Simulation Form </h1> 
 
</header>
<body> 
<div id="FS">
<table class="auto-style1" >

 <tbody > 
 
 <%----//================================= General Information ======================================= --%>   
<tr>
    <td class="auto-style9"> </td>  
    <th>
        <br />
        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="X-Large" Text="General Information" ForeColor="#003399"></asp:Label> 
        <br />
        <br />
    </th>
    <th class="auto-style6"> </th> </tr>
    


<tr>
<td class="auto-style9"><asp:Label ID="Label2" runat="server" Text="Start Date:"></asp:Label></td>
<td class="auto-style2">
    <br />
    <asp:Calendar ID="CalendarStartDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" CellPadding="1" DayNameFormat="Shortest">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#009999" ForeColor="#CCFF99" Font-Bold="True" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
    <br /> &nbsp;
    <asp:customvalidator ID="CalendarStartDateV" ForeColor="Red" runat="server"  onservervalidate="DateCustVal_Validate" errorMessage="Please make a selection for start date!"  ></asp:customvalidator>

    </td>
     <td class="auto-style6">
        <asp:Label ID="Label34" runat="server" Text="End Date:"></asp:Label></td>
    <td>
        <asp:Calendar ID="CalendarEndDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
            <WeekendDayStyle BackColor="#CCCCFF" />
        </asp:Calendar>
         &nbsp;
    <asp:customvalidator ID ="CalendarEndDateV"  ForeColor="Red" runat="server" onservervalidate= "DateCustVal_Validate" errorMessage="Please make a selection for end date!"  ></asp:customvalidator>
<%-- <asp:calendar id="startCalendar" cssclass="startDate" onselectionchanged="Selection_Changed" runat="server" >
<asp:customvalidator id="dateCustVal" onservervalidate="DateCustVal_Validate" >
    runat="server">

protected void DateCustVal_Validate(object source, ServerValidateEventArgs args)
{            
    if (startCalendar.SelectedDate == null 
        || startCalendar.SelectedDate == new DateTime(0001, 1, 1, 0, 0, 0))
    {
        args.IsValid = false;
    }
    else
    {
        args.IsValid = true;
    }
} --%>
    </td>
</tr>

<tr> 
<td class="auto-style10"><asp:Label ID="Label3" runat="server" Text="Start Time:"></asp:Label></td>
<td class="auto-style5">
    <asp:DropDownList ID="DDnListTime" runat="server" Height="22px" Width="221px" >
        <asp:ListItem Value="08:00 AM">08:00 AM</asp:ListItem>
        <asp:ListItem Value="09:00 AM">09:00 AM</asp:ListItem>
        <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
        <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
        <asp:ListItem Value="12:00 PM">12:00 PM</asp:ListItem>
        <asp:ListItem Value="13:00 PM">01:00 PM</asp:ListItem>
        <asp:ListItem Value="14:00 PM">02:00 PM</asp:ListItem>
        <asp:ListItem Value="15:00 PM">03:00 PM</asp:ListItem>
        <asp:ListItem Value="16:00 PM">04:00 PM</asp:ListItem>
        <asp:ListItem Value="17:00 PM">05:00 PM</asp:ListItem>
        <asp:ListItem Value="18:00 PM">06:00 PM</asp:ListItem>
        <asp:ListItem Value="19:00 PM">07:00 PM</asp:ListItem>
        <asp:ListItem Value="20:00 PM">08:00 PM</asp:ListItem>
    </asp:DropDownList> &nbsp;   
    <asp:RequiredFieldValidator ID="DDnListTimeV" runat="server" ForeColor="Red" errorMessage="Please make a start time selection!" ControlToValidate="DDnListTime"> </asp:RequiredFieldValidator>
     
    </td>
    <td class="auto-style7"><asp:Label ID="Label4" runat="server" Text="End Time:"></asp:Label></td>
    <td class="auto-style4"> 
        <asp:DropDownList ID="DDnListTimeEnd" runat="server" Height="22px" Width="221px">
        <asp:ListItem Value="08:00 AM">08:00 AM</asp:ListItem>
        <asp:ListItem Value="09:00 AM">09:00 AM</asp:ListItem>
        <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
        <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
        <asp:ListItem Value="12:00 PM">12:00 PM</asp:ListItem>
        <asp:ListItem Value="13:00 PM">01:00 PM</asp:ListItem>
        <asp:ListItem Value="14:00 PM">02:00 PM</asp:ListItem>
        <asp:ListItem Value="15:00 PM">03:00 PM</asp:ListItem>
        <asp:ListItem Value="16:00 PM">04:00 PM</asp:ListItem>
        <asp:ListItem Value="17:00 PM">05:00 PM</asp:ListItem>
        <asp:ListItem Value="18:00 PM">06:00 PM</asp:ListItem>
        <asp:ListItem Value="19:00 PM">07:00 PM</asp:ListItem>
        <asp:ListItem Value="20:00 PM">08:00 PM</asp:ListItem>
    </asp:DropDownList>
        &nbsp; 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" errorMessage="Please make a end time selection!" ControlToValidate="DDnListTimeEnd"> </asp:RequiredFieldValidator>
     
    </td>
</tr> 


    
<tr> 
<td class="auto-style9"><asp:Label ID="lable" runat="server" Text="Institution:"></asp:Label></td>
<td class="auto-style2">
    <br />
    <asp:DropDownList ID="DDownListInstitution" runat="server" Height="22px" Width="221px" style="margin-left: 0px" >
        <asp:ListItem Value="College of Nursing">College of Nursing</asp:ListItem>
        <asp:ListItem Value="College of Pharmacy">College of Pharmacy</asp:ListItem>
        <asp:ListItem Value="College of Health and Rehabilitation Sciences">College of Health and Rehabilitation Sciences</asp:ListItem>
        <asp:ListItem Value="College of Dentistry">College of Dentistry</asp:ListItem>
        <asp:ListItem Value="College of Medicine">College of Medicine</asp:ListItem>
        <asp:ListItem Value="Foundation Year">Foundation Year</asp:ListItem>
        <asp:ListItem Value="Other">Other</asp:ListItem>
        
    </asp:DropDownList>
    &nbsp;
         <asp:RequiredFieldValidator ID="DDownListInstitutionV" runat="server" errorMessage="Institution Required!"  ForeColor="Red" Text="**" ControlToValidate="DDownListInstitution"> </asp:RequiredFieldValidator>
     
    <br /> </td>
    <td> 
    <asp:Label ID="OtherLabel" runat="server" Text="Other:"></asp:Label></td>
     <td>   <asp:TextBox  ID="TBoxOther" runat="server" Width="218px" OnTextChanged="TBoxOther_TextChanged"></asp:TextBox>
</td>    
</tr>

<tr> 
<td class="auto-style9"><asp:Label ID="lable0" runat="server" Text="Level of the participant:"></asp:Label></td>
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxLevelOP" runat="server" Width="218px" OnTextChanged="TBoxLevelOP_TextChanged"></asp:TextBox>
     &nbsp;
         <asp:RequiredFieldValidator ID="TBoxLevelOPV" runat="server" ForeColor="Red" errorMessage="Level of the participant Required!"  Text="**" ControlToValidate="TBoxLevelOP"> </asp:RequiredFieldValidator>
      
    <br />
</td>    
</tr>
    
<tr>
<td class="auto-style9"><asp:Label ID="lable1" runat="server" Text="No. Participant:"></asp:Label></td>    
<td class="auto-style2"> 
    <br />
    <asp:TextBox ID="TBoxNUMP" runat="server" Width="218px" TextMode="Number"></asp:TextBox>   
  &nbsp;
         <asp:RequiredFieldValidator ID="TBoxNUMPV" runat="server"   errorMessage="No. Participant Required!"  ForeColor="Red" Text="**" ControlToValidate="TBoxNUMP"> </asp:RequiredFieldValidator>
     <br />
    </td> 
</tr>

<tr>
<td class="auto-style9"><asp:Label ID="lable2" runat="server" Text="No. Group:"></asp:Label></td>    
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxNoGroup" runat="server" TextMode="Number"  Width="218px"></asp:TextBox>

     &nbsp;
         <asp:RequiredFieldValidator ID="TBoxNoGroupV" runat="server"  errorMessage="No. Group Required!" Text="**" ForeColor="Red"  ControlToValidate="TBoxNoGroup"> </asp:RequiredFieldValidator>
    
    <br />
</td>    

</tr>


<tr>
<td class="auto-style9"><asp:Label ID="lable3" runat="server" Text="Instructor:"></asp:Label></td>
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxInstructor" runat="server" Width="218px"></asp:TextBox>
     &nbsp;
         <asp:RequiredFieldValidator ID="TBoxInstructorV" runat="server" errorMessage="Instructor Required!"  ForeColor="Red" Text="**" ControlToValidate="TBoxInstructor"> </asp:RequiredFieldValidator>
    
    <br />
</td>
    </tr>
     <tr>
<td class="auto-style6"><asp:Label ID="Label1" runat="server" Text="Email:"></asp:Label></td>    
<td><asp:TextBox ID="TBoxEmail" runat="server"  Width="218px"></asp:TextBox>
     &nbsp; <br />
         <asp:RequiredFieldValidator ID="TBoxEmailV" runat="server"  ForeColor="Red"  ErrorMessage="You must enter an email address"   ControlToValidate="TBoxEmail"> </asp:RequiredFieldValidator>
    <%--ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"--%>
</td>
    
<td class="auto-style6"><asp:Label ID="lable4" runat="server" Text="Phone:"></asp:Label></td>    
<td><asp:TextBox ID="TBoxPhone" runat="server" TextMode="Number" MaxLength="10"  Width="205px"></asp:TextBox>
     &nbsp; <br />
         <asp:RequiredFieldValidator ID="TBoxPhoneV" runat="server" ForeColor="Red"  ErrorMessage="You must enter an Phone number starting by 05 "  ControlToValidate="TBoxPhone"> </asp:RequiredFieldValidator>
    <%-- ValidationExpression="^([0-9\(\)\/\+ \-]*)$"--%>
    </td>
</tr>

<tr>
<td class="auto-style11"><asp:Label ID="lable5" runat="server" Text="Scenario title:"></asp:Label></td>
<td class="auto-style3">
    <br />
    <asp:TextBox ID="TBoxScenarioT" runat="server" Width="218px"  OnTextChanged="TBoxScenarioT_TextChanged"></asp:TextBox>
    <br />
    &nbsp;
   
         <asp:RequiredFieldValidator ID="TBoxScenarioTV" runat="server" errorMessage="Scenario title Required!"  ForeColor="Red" Text="**" ControlToValidate="TBoxScenarioT"> </asp:RequiredFieldValidator>
 
</td>

<td class="auto-style8"><asp:Label ID="lable6" runat="server" Text="Scenario authorship:"></asp:Label></td>

<td class="auto-style1"><asp:DropDownList ID="DDownListScenAuthorship" runat="server" Height="22px" style="margin-left: 0px" Width="218px">
    <asp:ListItem>Author(s) of original scenario</asp:ListItem>
    <asp:ListItem>Pre-existing scenario (Laerdal/CAE/Gaumard/Other)</asp:ListItem>
    <asp:ListItem>Adapted pre-existing scenario</asp:ListItem>
</asp:DropDownList> 

     &nbsp;
         <asp:RequiredFieldValidator ID="DDownListScenAuthorshipV" runat="server" errorMessage="Scenario authorship Required!"  ForeColor="Red" Text="**" ControlToValidate="DDownListScenAuthorship"> </asp:RequiredFieldValidator>
    
</td>
    </tr>


<tr>
<td class="auto-style9"><asp:Label ID="lable7" runat="server" Text="Event Flow:"></asp:Label></td>
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxEventFlow" runat="server" TextMode="MultiLine" Width="330px"></asp:TextBox>
     &nbsp;
         <asp:RequiredFieldValidator ID="TBoxEventFlowV" runat="server" errorMessage="Event Flow Required!" ForeColor="Red" Text="**" ControlToValidate="TBoxEventFlow"> </asp:RequiredFieldValidator>
    
</td>
</tr>


<tr>
<td class="auto-style9"><asp:Label ID="lable8" runat="server" Text="Prerequisite knowledge:"></asp:Label></td>
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxPRKnowledge" runat="server" TextMode="MultiLine" Width="330px"></asp:TextBox>
 &nbsp;
         <asp:RequiredFieldValidator ID="TBoxPRKnowledgeV" runat="server" errorMessage="Prerequisite knowledge Required!" Text="**"  ForeColor="Red" ControlToValidate="TBoxPRKnowledge"> </asp:RequiredFieldValidator>
    
</td>
</tr>


<tr>
<td class="auto-style9"><asp:Label ID="lable9" runat="server" Text="Objectives:"></asp:Label></td>
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxObjectives" runat="server" TextMode="MultiLine" Width="328px"></asp:TextBox>

     &nbsp;
         <asp:RequiredFieldValidator ID="TBoxObjectivesV" runat="server" errorMessage="Objectives Required!"  ForeColor="Red" Text="**" ControlToValidate="TBoxObjectives"> </asp:RequiredFieldValidator>
    
</td>

</tr>



<%--  // ======================Patient Case ============================================= --%>

<tr>
     <td class="auto-style9"> </td>
<th>
    <br />
  
    <asp:Label ID="lable13" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Patient Case (Full Medical History) &amp;amp Background Information" ForeColor="#003399"></asp:Label>
    <br />
    </th>
</tr>


<tr>
<td class="auto-style9"><asp:Label ID="lable10" runat="server" Text="Name:"></asp:Label></td>    
             
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxPationtName" runat="server" Width="218px"></asp:TextBox>
    <br />
    <br />
    </td>    
               
<td class="auto-style6"><asp:Label ID="lable11" runat="server" Text="Gender:"></asp:Label></td>    
              
    
   
    <td class="auto-style1"><asp:DropDownList ID="DropDownListGender" runat="server" Height="22px" style="margin-left: 0px" Width="218px">
    <asp:ListItem>Female</asp:ListItem>
    <asp:ListItem>Male</asp:ListItem>
    
</asp:DropDownList> 

     &nbsp;
         <asp:RequiredFieldValidator ID="DropDownListGenderV" runat="server" errorMessage="Gender Required!"  ForeColor="Red" Text="**" ControlToValidate="DropDownListGender"> </asp:RequiredFieldValidator>
    
</td>
   
</tr>


<tr>
<td class="auto-style9"><asp:Label ID="lable12" runat="server" Text="Age:"></asp:Label></td>    
                
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxAge" runat="server" Width="218px"></asp:TextBox>
   &nbsp;
         <asp:RequiredFieldValidator ID="TBoxAgeV" runat="server" errorMessage="Age Required!"  ForeColor="Red" Text="**" ControlToValidate="TBoxAge"> </asp:RequiredFieldValidator>
    

    <br />

</td>    
               
<td class="auto-style6"><asp:Label ID="lable16" runat="server" Text="Nationality:"></asp:Label></td>    
         
<td><asp:TextBox ID="TBoxNationality" runat="server" Width="218px"></asp:TextBox>
       &nbsp;
         <asp:RequiredFieldValidator ID="TBoxNationalityV" runat="server" errorMessage="Nationality Required!" ForeColor="Red"  Text="**" ControlToValidate="TBoxNationality"> </asp:RequiredFieldValidator>
    

</td>    
</tr>


<tr>
<td class="auto-style9"><asp:Label ID="lable14" runat="server" Text="Weight: "></asp:Label></td> 
           
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxWeight" runat="server" Width="218px"></asp:TextBox>

          &nbsp;
         <asp:RequiredFieldValidator ID="TBoxWeightV" runat="server" errorMessage="Weight Required!"  ForeColor="Red" Text="**" ControlToValidate="TBoxWeight"> </asp:RequiredFieldValidator>
    

    <br />

</td> 
               
<td class="auto-style6"><asp:Label ID="lable15" runat="server" Text="Height:"></asp:Label></td> 
               
<td><asp:TextBox ID="TBoxHeight" runat="server" Width="218px"></asp:TextBox>
     &nbsp;
         <asp:RequiredFieldValidator ID="TBoxHeightV" runat="server"  errorMessage="Height Required!"  ForeColor="Red" Text="**" ControlToValidate="TBoxHeight"> </asp:RequiredFieldValidator>
    

</td> 
</tr>


<tr>
<td class="auto-style9">  <asp:Label ID="lable17" runat="server" Text="BMI: "></asp:Label></td> 
              
 <td class="auto-style2">   
     <br />
     <asp:TextBox ID="TBoxBMI" runat="server" Width="218px"></asp:TextBox>

      &nbsp;
         <asp:RequiredFieldValidator ID="TBoxBMIV" runat="server" errorMessage="BMI Required!" Text="**"   ForeColor="Red" ControlToValidate="TBoxBMI"> </asp:RequiredFieldValidator>
    
     <br />
 </td> 
               
<td class="auto-style6">    <asp:Label ID="lable18" runat="server" Text="Religion:"></asp:Label></td> 
             
<td>    <asp:TextBox ID="TBoxReligion" runat="server" Width="218px"></asp:TextBox>

         &nbsp;
         <asp:RequiredFieldValidator ID="TBoxReligionV" runat="server" errorMessage="Religion Required!" Text="**"  ForeColor="Red" ControlToValidate="TBoxReligion"> </asp:RequiredFieldValidator>
     </td> 
</tr>
<tr>
<td class="auto-style9">    <asp:Label ID="lable19" runat="server" Text="Marital Status:"></asp:Label></td>
 
 <td class="auto-style2">   
     <br />
     <asp:TextBox ID="TBoxMStatus" runat="server" Width="218px"></asp:TextBox>

      &nbsp;
         <%--<asp:RequiredFieldValidator ID="TBoxMStatusV" runat="server" errorMessage="Required!" Text="**"  ForeColor="Red" ControlToValidate="TBoxMStatus"> </asp:RequiredFieldValidator>--%>
        
     <br />
 </td>
           
</tr>
<tr>

<td class="auto-style12"><asp:Label ID="lable20" runat="server" Text="Time & location encounter:"></asp:Label></td>
<td class="auto-style13">
    <br />
    <asp:TextBox ID="TBoxTODPEncounter" runat="server" Width="218px"></asp:TextBox> 
     <br />
     &nbsp;
         <%--<asp:RequiredFieldValidator ID="TBoxTODPEncounterV" runat="server" errorMessage="Required!" Text="**"  ForeColor="Red" ControlToValidate="TBoxTODPEncounter"> </asp:RequiredFieldValidator>--%>
       
</td>
</tr>
<tr>
<td class="auto-style9"><asp:Label ID="lable21" runat="server" Text="Nature of the Encounter: "></asp:Label></td>
                               
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxNEncounter" runat="server" Width="218px"></asp:TextBox>
&nbsp;
         <%--<asp:RequiredFieldValidator ID="TBoxNEncounterV" runat="server" errorMessage="Required!" Text="**" ForeColor="Red" ControlToValidate="TBoxNEncounter"> </asp:RequiredFieldValidator>--%>
       
    <br />
</td>
</tr>
<tr>
<td class="auto-style9"><asp:Label ID="lable22" runat="server" Text="Surgical History: "></asp:Label></td>
                                           
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxSHistory" runat="server" Width="218px"></asp:TextBox>
    &nbsp;
         <%--<asp:RequiredFieldValidator ID="TBoxSHistoryV" runat="server" errorMessage="Required!" Text="**"  ForeColor="Red" ControlToValidate="TBoxSHistory"> </asp:RequiredFieldValidator>--%>
       
    <br />
</td>
</tr>
<tr>
<td class="auto-style9"><asp:Label ID="lable23" runat="server" Text="Past Medical History: "></asp:Label></td>
                                   
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxPMHistory" runat="server" Width="218px"></asp:TextBox>
    &nbsp;
         <%--<asp:RequiredFieldValidator ID="TBoxPMHistoryV" runat="server" errorMessage="Required!"   ForeColor="Red" Text="**" ControlToValidate="TBoxPMHistory"> </asp:RequiredFieldValidator>--%>
       
    <br />
</td>
</tr>
<tr>
<td class="auto-style9"><asp:Label ID="lable24" runat="server" Text="Regular Medications and frequency: "></asp:Label></td>
             
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxRMFrequency" runat="server" Width="218px"></asp:TextBox>
    &nbsp;
         <%--<asp:RequiredFieldValidator ID="TBoxRMFrequencyV" runat="server" errorMessage="Required!"  ForeColor="Red" ControlToValidate="TBoxRMFrequency"> </asp:RequiredFieldValidator>--%>
       

    <br />

</td>
</tr>
<tr>
<td class="auto-style9"><asp:Label ID="lable25" runat="server" Text="Allergies:"></asp:Label></td>
                                                      
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxAllergies" runat="server" OnTextChanged="TBoxAllergies_TextChanged" Width="218px"></asp:TextBox>
    &nbsp;
         <%--<asp:RequiredFieldValidator ID="TBoxAllergiesV" runat="server" errorMessage="Required!"  ForeColor="Red" ControlToValidate="TBoxAllergies"> </asp:RequiredFieldValidator>--%>
       

    <br />

</td>
</tr>

<tr>
<td class="auto-style9"><asp:Label ID="lable26" runat="server"  Text="Current Physical Exam Findings"></asp:Label></td>
               
<td class="auto-style2">
    <br />
    <asp:TextBox ID="TBoxCPExamF" runat="server" OnTextChanged="TBoxAllergies_TextChanged" Width="218px"></asp:TextBox> 
&nbsp;
         <%--<asp:RequiredFieldValidator ID="TBoxCPExamFV" runat="server" errorMessage="Required!" ForeColor="Red" ControlToValidate="TBoxCPExamF"> </asp:RequiredFieldValidator>--%>
       


    <br />


</td> 
</tr>



<%---- // ======================Environmental Fidelity============================================= --%>
<tr>
     <td class="auto-style9"> </td>
<th>
    <br />
    <asp:Label ID="lable27" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Environmental Fidelity" ForeColor="#003399"></asp:Label>
    <br />
    <br />
     </th>
</tr>

<tr>
<td class="auto-style9"><asp:Label ID="lable28" runat="server" Font-Bold="False" Font-Size="Medium" Text="Sitting" ForeColor="#006666"></asp:Label></td>
<td class="auto-style2" id="r">
    <br />
    <asp:CheckBoxList ID="ChBoxListSitting" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" Width="431px">
        <asp:ListItem>Critical Care</asp:ListItem>
        <asp:ListItem>Maternity Child</asp:ListItem>
        <asp:ListItem>General Services (Surgery, EVT Medicine etc.)</asp:ListItem>
        <asp:ListItem>Ambulatory</asp:ListItem>
    </asp:CheckBoxList>
    &nbsp;
         <%--<asp:CustomValidator  ID="ChBoxListSittingv" runat="server" errorMessage="Required!"  ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"> </asp:CustomValidator>--%>
       

</td>
</tr>

<tr>
<td class="auto-style9"><asp:Label ID="lable29" runat="server" Font-Bold="False" Font-Size="Medium" Text="Medications & amp IV Fluids" ForeColor="#006666"></asp:Label></td>
<td class="auto-style2">
    <br />
    <br />
    <asp:CheckBoxList ID="ChBoxListMedicalIVFluids" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
    <asp:ListItem>Normal Saline</asp:ListItem>
    <asp:ListItem>D5W</asp:ListItem>
    <asp:ListItem>D10W</asp:ListItem>
    <asp:ListItem>Ringers Lactate</asp:ListItem>
    <asp:ListItem>Other</asp:ListItem>
    <asp:ListItem>Oral Meds(list)</asp:ListItem>
    <asp:ListItem>IVPB Meds(list)</asp:ListItem>
    <asp:ListItem>IV Meds(list)</asp:ListItem>
    <asp:ListItem>IM or SC meds (list)</asp:ListItem>
    <asp:ListItem>Blood Product (list)</asp:ListItem>
</asp:CheckBoxList>

      &nbsp;
         <%--<asp:CustomValidator ID="ChBoxListMedicalIVFluidsV" runat="server" errorMessage="Required!"  ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"> </asp:CustomValidator>--%>

       

</td>
</tr>


<tr>
<td class="auto-style9"><asp:Label ID="lable30" runat="server" Font-Bold="False" Font-Size="Medium" Text="Diagnostic Results" ForeColor="#006666"></asp:Label></td>

<td class="auto-style2">
    <br />
    <br />
    <asp:CheckBoxList ID="ChBoxListDiagResult" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
    <asp:ListItem>Laboratory Result</asp:ListItem>
    <asp:ListItem>X-ray(images)</asp:ListItem>
    <asp:ListItem>EKG</asp:ListItem>
    <asp:ListItem>MRI</asp:ListItem>
    <asp:ListItem>Ultrasound</asp:ListItem>
</asp:CheckBoxList>
  &nbsp;
         <asp:CustomValidator ID="ChBoxListDiagResultV" runat="server" errorMessage="Diagnostic Required!"  ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"> </asp:CustomValidator>
       

</td>
    </tr>


  <%---- // ======================  Medical Devices ============================================= --%>
<tr>
 <td class="auto-style9"><asp:Label ID="lable31" runat="server" Font-Bold="False" Font-Size="Medium" Text="Medical Devices" ForeColor="#006666"></asp:Label></td>
<td class="auto-style2">
    <br />
    <br />
    <asp:CheckBoxList ID="ChBoxListMedicalDev" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" Width="357px">
    <asp:ListItem>ECG</asp:ListItem>
    <asp:ListItem>Ventilator</asp:ListItem>
    <asp:ListItem>Infant incubator</asp:ListItem>
    <asp:ListItem>Anesthesia</asp:ListItem>
    <asp:ListItem>Infusion pump</asp:ListItem>
    <asp:ListItem>O2 Ipm</asp:ListItem>
    <asp:ListItem>Mechanical Ventilator</asp:ListItem>
    <asp:ListItem>Cast cutter</asp:ListItem>
    <asp:ListItem>Headlight-light source</asp:ListItem>
    <asp:ListItem>Cardiac monitor</asp:ListItem>
    <asp:ListItem>Defibrillator</asp:ListItem>
    <asp:ListItem>Crash cart</asp:ListItem>
    <asp:ListItem>Vital Signs Monitor w display</asp:ListItem>
</asp:CheckBoxList>&nbsp;
         <%--<asp:CustomValidator ID="ChBoxListMedicalDevV" runat="server" errorMessage="Required!"  ForeColor="Red"  OnServerValidate="CustomValidator1_ServerValidate"> </asp:CustomValidator>--%>
     </td>
 </tr>

<%-- ======================Simulator(s) Required============================================= --%>
<tr>
<td class="auto-style9"> </td>
<th>
    <br />
    <asp:Label ID="lable35" runat="server" Font-Bold="True" Text="Simulator(s) Required" Font-Size="X-Large" ForeColor="#003399"></asp:Label>
         <br />
         <br />
         <th class="auto-style6"></th>
</tr>


     <tr> 
<td class="auto-style9"> <asp:Label ID="lable34" runat="server" Text="Manikin Type" Font-Bold="False" Font-Size="Medium" ForeColor="#006666"></asp:Label>
         <td class="auto-style2">
             <br />
             <asp:RadioButtonList ID="RButtonListManikkinType" runat="server" Width="310px" RepeatColumns="2" RepeatDirection="Horizontal">
    <asp:ListItem>SimMan 3G</asp:ListItem>
    <asp:ListItem>NOELLE</asp:ListItem>
    <asp:ListItem>SimBaby</asp:ListItem>
    <asp:ListItem>MegaKid</asp:ListItem>
    <asp:ListItem>NursingAnn</asp:ListItem>
    <asp:ListItem>BabyHall</asp:ListItem>
    <asp:ListItem>HPS</asp:ListItem>
</asp:RadioButtonList>
             &nbsp;
         <%--<asp:RequiredFieldValidator ID="RButtonListManikkinTypeV" runat="server" errorMessage="Required!"  ForeColor="Red" ControlToValidate="RButtonListManikkinType"> </asp:RequiredFieldValidator>--%>

   
         </td>
<td class="auto-style6">

</td>
</tr>

     <tr> 
<td class="auto-style9"><asp:Label ID="lable36" runat="server" Text="Manikin Accessories" Font-Bold="False" Font-Size="Medium" ForeColor="#006666"></asp:Label>
         <td class="auto-style2">
             <br />
             <asp:CheckBoxList ID="ChBoxListManikinAcce" runat="server" RepeatColumns="2" RepeatDirection="Horizontal">
    <asp:ListItem>IV pump</asp:ListItem>
    <asp:ListItem>Foley catheter</asp:ListItem>
    <asp:ListItem>Urine color</asp:ListItem>
    <asp:ListItem>Syringe pump</asp:ListItem>
    <asp:ListItem>ID band </asp:ListItem>
    <asp:ListItem>Allergy band </asp:ListItem>
    <asp:ListItem>IV primary line </asp:ListItem>
</asp:CheckBoxList>
        &nbsp;
         <%--<asp:CustomValidator ID="ChBoxListManikinAcceV" runat="server" errorMessage="Required!"  ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"> </asp:CustomValidator>--%>
      </td>


<td class="auto-style6"> </td> </tr> 


 <tr>
<td class="auto-style9"><asp:Label ID="lable37" runat="server" Text="Mode for running Simulation Scenario " Font-Bold="False" Font-Size="Medium" ForeColor="#006666"></asp:Label>
     <td class="auto-style2">
         <br />
         <asp:RadioButtonList ID="RButtonListSimScenarioMode" runat="server" OnSelectedIndexChanged="RButtonListSimScenarioMode_SelectedIndexChanged" RepeatColumns="2" RepeatDirection="Horizontal">
    <asp:ListItem>Manual (on the fly)</asp:ListItem>
    <asp:ListItem>Built in</asp:ListItem>
</asp:RadioButtonList>

&nbsp;
         <asp:RequiredFieldValidator ID="RButtonListSimScenarioModeV" runat="server" errorMessage="Mode for running Simulation Scenario Required!" ForeColor="Red"  ControlToValidate="RButtonListSimScenarioMode"> </asp:RequiredFieldValidator>
            
     </td>
<td class="auto-style6">  </td>
 </tr>

<%-- ======================================= Event flow ================================ --%>
     <tr>
 <td class="auto-style9"> </td>
 <th>    
     <br />
<asp:Label ID="lable38" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Event Flow" ForeColor="#003399"></asp:Label>
      <br />
      <br />
      </th>


</tr>

<tr> 
    <td class="auto-style9"> </td>
 <th> 
     <br />
     <asp:Button  ID="ButSScenario" runat="server" text="Add Scenario" Font-Bold="True" CommandName="Insert" OnClick="ButSScenario_Click" OnClientClick="window.open('OtherPage.aspx', 'OtherPage');" />
     <br />
     <br />
    </th>

     </tr>
<tr>
    <td class="auto-style9"> </td>
 
 <th>
     <br />
     <asp:Label ID="lable32" runat="server" Font-Bold="True" Font-Size="X-Large" Text="BRIEFING" ForeColor="#003399"></asp:Label>
     <br />
     <br />
    </th>
    </tr>
     <tr>
       <td class="auto-style9"> <asp:Label ID="Label33" runat="server" Text="Have the students experienced the simulation before"></asp:Label></td> 
    <td class="auto-style2">
        <br />
        <asp:RadioButtonList ID="RButtonListBriefing" runat="server" RepeatDirection="Horizontal">
    <asp:ListItem>Yes</asp:ListItem>
    <asp:ListItem>No</asp:ListItem>
</asp:RadioButtonList>
   &nbsp;
         <asp:RequiredFieldValidator ID="RButtonListBriefingV" runat="server" errorMessage="Have the students experienced the simulation before Required!"  ForeColor="Red" Text="**" ControlToValidate="RButtonListBriefing"> </asp:RequiredFieldValidator>
           
         </td>

     </tr>

     <tr>
 <td class="auto-style9"><asp:Label ID="Label5" runat="server" Text="Brief Description of patients current situation scenario narrative"></asp:Label>
         <td class="auto-style2">
             <br />
             <asp:TextBox ID="TBoxBriefing" runat="server" TextMode="MultiLine" Width="330px"></asp:TextBox>

 &nbsp; 
         <asp:RequiredFieldValidator ID="TBoxBriefingV" runat="server" errorMessage= "Brief Description Required!"   ForeColor="Red" Text="**" ControlToValidate="TBoxBriefing"> </asp:RequiredFieldValidator>
   
         </td>
  
 <td class="auto-style6">&nbsp;</td>
</tr>
     
<tr>  <td class="auto-style9"> </td>
  <th>
      <br />
      <asp:Label ID="lable33" runat="server" Font-Bold="True" Font-Size="X-Large" Text="DEBRIEFING" ForeColor="#003399"></asp:Label>
      <br />
      <br />
    <td class="auto-style6"></td>

 </tr>
     <tr> 
 <td class="auto-style9"><asp:Label ID="Label6" runat="server" Text="(Please specify the time needed)"></asp:Label>
         <td class="auto-style2">  
             <br />
             <asp:TextBox ID="TBoxDEBriefing" runat="server" Height="55px" TextMode="MultiLine" Width="330px"></asp:TextBox>

         &nbsp; 
         <%--<asp:RequiredFieldValidator ID="TBoxDEBriefingV" runat="server" errorMessage="Required!" Text="**"   ForeColor="Red" ControlToValidate="TBoxDEBriefing"> </asp:RequiredFieldValidator>--%>
                
             <br />
         </td>

   <td class="auto-style6">  &nbsp;</td>
</tr>
   
     
     <tr>  <td class="auto-style9">  

           </td></tr> 
<tr>
   
<td class="auto-style9"><asp:Label ID="Label7" runat="server" Text="Tools of Assessment Evaluation"></asp:Label></td>
<td class="auto-style2">
    <br />
    <p>
    <asp:RadioButtonList ID="RButtonListTAssEva" runat="server" Font-Size="Small" Width="350px" >
    <asp:ListItem>I need a SSDC consultation to create assessment tools</asp:ListItem>
    <asp:ListItem>I already have my own assessment tools</asp:ListItem>
</asp:RadioButtonList>
</p>

             &nbsp; 
         <asp:RequiredFieldValidator ID="RButtonListTAssEvaV" runat="server" errorMessage= "Tools of Assessment Evaluation Required!"  ForeColor="Red" Text="**" ControlToValidate="RButtonListTAssEva"> </asp:RequiredFieldValidator>
 
</td>
</tr>


<tr>
<td class="auto-style9"> </td>
<th >
    <br />
    <br />
    <asp:Button ID="ButSave" runat="server"  Font-Bold="True" Text="Submit" OnClick="ButSave_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="ButCancel" runat="server" Font-Bold="True" Text="Cancel" /></th>
</tr>

     <tr>  <td>
   <asp:ValidationSummary id="ValidationSummary1" runat="server" 
    HeaderText="You received the following errors:" Height="145px">
   </asp:ValidationSummary>
</td>
</tr>

     <tr>
         <td></td>
        <td class="auto-style9"><asp:Label ID="Label111" runat="server" Font-Bold="False" Font-Size="Medium"   ForeColor="Red"></asp:Label></td>

     </tr>
     </tbody>
    </table>

</div>
  

</body>




