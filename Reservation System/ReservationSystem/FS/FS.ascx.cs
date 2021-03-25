using System;
using System.ComponentModel;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;
using System.Text;
using System.Text.RegularExpressions;
using System.Collections;
using System.Windows;
using System.Web.UI.WebControls;

namespace SSDCBookingSystem.FS
{
    [ToolboxItemAttribute(false)]
    public partial class FS : WebPart
    {
        // Uncomment the following SecurityPermission attribute only when doing Performance Profiling on a farm solution
        // using the Instrumentation method, and then remove the SecurityPermission attribute when the code is ready
        // for production. Because the SecurityPermission attribute bypasses the security check for callers of
        // your constructor, it's not recommended for production purposes.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public FS()
        {
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        string ChBoxListSittingtxt = "";
       
        protected void ChBoxListBRiefing0_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void TBoxAllergies_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }


        protected void TBoxTitle_TextChanged(object sender, EventArgs e)
        {

        }

        protected void RButtonListSimScenarioMode_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Scenario_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {

        }

        protected void ButSScenario_Click(object sender, EventArgs e)
        { }


        //   Response.Redirect("~/EventFlow.ascx");

        //private void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        //{

        //    args.IsValid = this.ChBoxListSitting

        //}

        protected void CustomValidator1_ServerValidate(Object source, ServerValidateEventArgs args)
        {

            args.IsValid = true;
        }
        protected void DateCustVal_Validate(object source, ServerValidateEventArgs args)
        {
            if ((CalendarStartDate.SelectedDate == null
                || CalendarStartDate.SelectedDate == new DateTime(0001, 1, 1, 0, 0, 0)) || (CalendarEndDate.SelectedDate == null
                || CalendarEndDate.SelectedDate == new DateTime(0001, 1, 1, 0, 0, 0)))
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
        protected void ButSave_Click(object sender, EventArgs e)
        {


            //Page.Validate();
            if (Page.IsValid)
            {
                foreach (ListItem li in ChBoxListSitting.Items)
                {
                    if (li.Selected)
                    {
                        ChBoxListSittingtxt = li.Value;
                        ChBoxListSittingtxt = ", ";
                    }
                }


                using (SPSite osite = new SPSite("http://pmcraspwft01:26311/Pages/"))
                {

                    using (SPWeb oweb = osite.OpenWeb())
                        try
                        {



                            SPList calendarList = oweb.Lists["Fullsimulation"];
                            SPListItem newItem = calendarList.Items.Add();

                            // newItem["Title"] = TBoxTitle.Text;
                            //newItem["Start Date"] = 
                            string a = CalendarStartDate.SelectedDate.ToShortDateString();
                            string b = CalendarEndDate.SelectedDate.ToShortDateString();
                            //newItem["End Date"] = CalendarEndDate.SelectedDate;
                            newItem["Start Time"] = "" + a + " " + DDnListTime.Text;
                            newItem["End Time"] = "" + b + " " + DDnListTimeEnd.Text;
                            newItem["Institution"] = DDownListInstitution.SelectedValue;
                            newItem["TBoxOther"] = TBoxOther.Text;
                            newItem["Level of the participant"] = TBoxLevelOP.Text;
                            newItem["No. students"] = TBoxNUMP.Text;
                            newItem["No. Group"] = TBoxNoGroup.Text;
                            newItem["Instructor"] = TBoxInstructor.Text;
                            newItem["Email"] = TBoxEmail.Text;
                            newItem["Phone"] = TBoxPhone.Text;
                            newItem["Scenario title"] = TBoxScenarioT.Text;
                            newItem["Scenario Authorship"] = DDownListScenAuthorship.SelectedValue;
                            newItem["Event Flow"] = TBoxEventFlow.Text;
                            newItem["Prerequisite knowledge"] = TBoxPRKnowledge.Text;
                            newItem["Objectives"] = TBoxObjectives.Text;
                            newItem["Patient Name"] = TBoxPationtName.Text;
                            newItem["Patient Gender"] = DropDownListGender.SelectedValue;
                            newItem["Age"] = TBoxAge.Text;
                            newItem["Weight"] = TBoxWeight.Text;
                            newItem["Height"] = TBoxHeight.Text;
                            newItem["Nationality"] = TBoxNationality.Text;
                            newItem["BMI"] = TBoxBMI.Text;
                            newItem["Religion"] = TBoxReligion.Text;
                            newItem["Marital Status"] = TBoxMStatus.Text;
                            newItem["Time of day and location of patient encounter"] = TBoxTODPEncounter.Text;
                            newItem["Nature of the Encounter"] = TBoxNEncounter.Text;
                            newItem["Surgical History"] = TBoxSHistory.Text;
                            newItem["Past Medical History"] = TBoxPMHistory.Text;
                            newItem["Regular Medications and frequency"] = TBoxRMFrequency.Text;
                            newItem["Allergies"] = TBoxAllergies.Text;
                            newItem["Current Physical Exam Findings"] = TBoxCPExamF.Text;
                            newItem["EFSitting"] = ChBoxListSittingtxt;
                            newItem["Medications & IV Fluids"] = ChBoxListMedicalIVFluids.SelectedValue;
                            newItem["Diagnostic Results"] = ChBoxListDiagResult.SelectedValue;
                            newItem["Medical Devices"] = ChBoxListMedicalDev.SelectedValue;
                            newItem["Manikin Type"] = RButtonListManikkinType.SelectedValue;
                            newItem["Manikin Accessories"] = ChBoxListManikinAcce.SelectedValue;
                            newItem["Mode for running Simulation Scenario"] = RButtonListSimScenarioMode.SelectedValue;
                            // newItem["BRIEFING"] = RButtonListBriefing.SelectedValue;
                            newItem["Brief Description of Patients Current Situation Scenario Narrative"] = TBoxBriefing.Text;
                            newItem["DEBRIEFING"] = TBoxDEBriefing.Text;
                            newItem["Tools of Assessment & Evaluation"] = RButtonListTAssEva.SelectedValue;




                            newItem.Update();
                            // calendarList.Update();


                            // TBoxTitle.Text = "";
                            CalendarStartDate.VisibleDate = CalendarStartDate.TodaysDate;
                            CalendarEndDate.VisibleDate = CalendarEndDate.TodaysDate;
                            DDnListTime.Text = "";
                            DDnListTimeEnd.Text = "";
                            DDownListInstitution.Text = "";
                            TBoxOther.Text = "";
                            TBoxLevelOP.Text = "";
                            TBoxNUMP.Text = "";
                            TBoxNoGroup.Text = "";
                            TBoxInstructor.Text = "";

                            TBoxEmail.Text = "";
                            TBoxPhone.Text = "";
                            TBoxScenarioT.Text = "";
                            DDownListScenAuthorship.SelectedIndex = -1;
                            TBoxEventFlow.Text = "";
                            TBoxPRKnowledge.Text = "";
                            TBoxObjectives.Text = "";
                            TBoxPationtName.Text = "";
                            DropDownListGender.Text = "";
                            TBoxAge.Text = "";
                            TBoxWeight.Text = "";
                            TBoxHeight.Text = "";
                            TBoxNationality.Text = "";
                            TBoxBMI.Text = "";
                            TBoxReligion.Text = "";
                            TBoxMStatus.Text = "";
                            TBoxTODPEncounter.Text = "";
                            TBoxNEncounter.Text = "";
                            TBoxSHistory.Text = "";
                            TBoxPMHistory.Text = "";
                            TBoxRMFrequency.Text = "";
                            TBoxAllergies.Text = "";
                            TBoxCPExamF.Text = "";
                            ChBoxListSitting.SelectedIndex = -1;
                            ChBoxListMedicalIVFluids.SelectedIndex = -1;
                            ChBoxListDiagResult.SelectedIndex = -1;
                            ChBoxListMedicalDev.SelectedIndex = -1;
                            RButtonListManikkinType.SelectedIndex = -1;
                            ChBoxListManikinAcce.SelectedIndex = -1;
                            RButtonListSimScenarioMode.SelectedIndex = -1;
                            RButtonListBriefing.SelectedIndex = -1;
                            TBoxBriefing.Text = "";
                            TBoxDEBriefing.Text = "";
                            RButtonListTAssEva.SelectedIndex = -1;

                        }


                        catch (Exception a)
                        {
                            throw new Exception(a.Message);
                        }

                }
                this.Label111.ForeColor = System.Drawing.Color.Green;
                this.Label111.Text = "Your request submited successfully";
            }
            else
            {
                this.Label111.ForeColor = System.Drawing.Color.Red;
                this.Label111.Text = "You need to fill all requires fileds!";
            }
        }





        protected void DDownListInstitution_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (e.Equals("Other"))
            {
                OtherLabel.Visible = true;
                TBoxOther.Visible = true;
            }
        }

        protected void TBoxLevelOP_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TBoxOther_TextChanged(object sender, EventArgs e)
        {

        }


        protected void TBoxScenarioT_TextChanged(object sender, EventArgs e)
        {
            //if (TBoxScenarioT.Text.Equals(""))
            //{
            //    string script = "<script language='javascript'>alert('" + "required please " + "')</script>";
            //    Page.ClientScript.RegisterClientScriptBlock(GetType(), "Register", script);
            //}

        }
    }
}
