<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EventFlow.ascx.cs" Inherits="SSDCBookingSystem.EventFlow.EventFlow" %>

<style>
    .tdwidth
    {
        text-align:left;
        width:136px;
    }
     .tdtextwidth
    {
        text-align:left;
        width:300px;
    }
</style>
<div>
    <table witdh="100%">
        <tr>
            <td align="center">
                <%--Temp Label, Hide this label--%>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" ForeColor="Red" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</div>

<br />
<br />


<asp:GridView ID="EventGridView" DataKeyNames="ID" Width="100%"  onrowcommand="EventGridView_RowCommand"  ShowHeader="true" runat="server" AutoGenerateColumns="False"  ShowFooter="True">
    <Columns>
        <asp:TemplateField>
            <HeaderTemplate>
           <table width="100%" cellpadding="0" cellspacing="0">
            <tr>

             <td class="tdwidth" >
            Step Title
            </td>
            <td class="tdwidth">
                 StepParameters
            </td>
             <td class="tdwidth" >
            Learner's Action
            </td>
            <td class="tdwidth">
            Step Trigger <br />
                RoleDistribution
            </td>
            <td class="tdwidth">
            Step Time
            </td>
            <td class="tdwidth">
            If so go to step
            </td>
            <td class="tdwidth">
             If else to step
            </td>
           
           
            </tr>
            </table>
                </HeaderTemplate>
            <ItemTemplate>
                <%--Unhide comment to display current Data--%>
            <%--<table width="100%" cellpadding="0" cellspacing="0">
            <tr>
            <td >
            <%#Eval("Title") %>
            </td>
              <td >
            <%#Eval("StepTitle") %>
            </td>
                 <td  >
            <%#Eval("StepParameters") %>
            </td>
             <td>
            <%#Eval("LearnersAction") %>
            </td>
            <td>
            <%#Eval("StepTriggerRoleDistribution") %>
            </td>
            <td>
            <%#Eval("StepTime") %>
            </td>
            <td>
             <%#Eval("IfSoGoToStep") %> 
            </td>
              <td>
            <%#Eval("IfElseToStep") %> 
                </td>
              
           
            </tr>
            </table>--%>

            </ItemTemplate>
            <FooterTemplate>
                <table width="100%">
                    <tr>
                        
                        <td class="tdtextwidth">
                            <asp:TextBox ID="txtStepTitle" runat="server"></asp:TextBox>
                        </td>
                        <td class="tdtextwidth">
                             <asp:TextBox ID="txtStepParameters" runat="server"></asp:TextBox>
                            
                        </td>
                        <td class="tdtextwidth">
                            <asp:TextBox ID="txtLearnerAction" runat="server"></asp:TextBox>
                        </td>
                        <td class="tdtextwidth">
                             <asp:TextBox ID="txtStepTriggerRoleDistribution" runat="server"></asp:TextBox>
                            
                        </td>
                        <td class="tdtextwidth">
                            <asp:TextBox ID="txtStepTime" runat="server"></asp:TextBox>
                        </td>
                        <td class="tdtextwidth">
                            <asp:TextBox ID="txtGoStep" runat="server"></asp:TextBox>
                        </td>
                        <td class="tdtextwidth">
                            <asp:TextBox ID="txtGoStepE" runat="server"></asp:TextBox>
                        </td>

                       
                        
                    </tr>
                    <tr>
                        <td colspan="7" align="center" style=" text-align:center">
                            <br />
                            <asp:Button ID="btnSave" Width="75px" runat="server" Text="Add" CommandName="Insert" />
                        </td>
                    </tr>
                </table>

            </FooterTemplate>
        </asp:TemplateField>
    </Columns>
  <%--  <EmptyDataTemplate>
            <table width="100%" cellpadding="0" cellspacing="0">
            <tr>
            <td >
            Title
            </td>
             <td >
            Step Title
            </td>
             <td  >
            Learner's Action
            </td>
            <td  >
            Step Time
            </td>
            <td>
            If so go to step
            </td>
            <td>
             If else to step
            </td>
           
           
            </tr>
            </table>
            <table>
                    <tr>
                        <td>
                             <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStepTitle" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLearnerAction" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStepTime" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGoStep" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGoStepE" runat="server"></asp:TextBox>
                        </td>
                       <td>
                           <asp:Button ID="btnSave" runat="server" Text="Add" CommandName="Empty" />
                       </td>
                        
                    </tr>
                </table>


    </EmptyDataTemplate>
    <EmptyDataTemplate>
            <table width="100%" cellpadding="0" cellspacing="0">
            <tr>
            <td >
            Title
            </td>
             <td >
            Step Title
            </td>
             <td  >
            Learner's Action
            </td>
            <td  >
            Step Time
            </td>
            <td>
            If so go to step
            </td>
            <td>
             If else to step
            </td>
           
           
            </tr>
            </table>
            <table>
                    <tr>
                        <td>
                             <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStepTitle" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLearnerAction" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStepTime" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGoStep" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGoStepE" runat="server"></asp:TextBox>
                        </td>
                       <td>
                           <asp:Button ID="btnSave" runat="server" Text="Add" CommandName="Empty" />
                       </td>
                        
                    </tr>
                </table>


    </EmptyDataTemplate>--%>
    
    
    <%--<EmptyDataTemplate>
            <table width="100%" cellpadding="0" cellspacing="0">
            <tr>
            <td >
            Title
            </td>
             <td >
            Step Title
            </td>
             <td  >
            Learner's Action
            </td>
            <td  >
            Step Time
            </td>
            <td>
            If so go to step
            </td>
            <td>
             If else to step
            </td>
           
           
            </tr>
            </table>
            <table>
                    <tr>
                        <td>
                             <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStepTitle" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLearnerAction" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtStepTime" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGoStep" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGoStepE" runat="server"></asp:TextBox>
                        </td>
                       <td>
                           <asp:Button ID="btnSave" runat="server" Text="Add" CommandName="Empty" />
                       </td>
                        
                    </tr>
                </table>


    </EmptyDataTemplate>--%>
</asp:GridView>

<div>
    <table width="100%">
        <tr>
            <td align="center">

                <asp:Button ID="btnFinish" Visible="false" runat="server" Text="Finish" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    
</div>
