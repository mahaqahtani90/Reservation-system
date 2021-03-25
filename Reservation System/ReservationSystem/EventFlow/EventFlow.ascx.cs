using System;
using System.ComponentModel;
using System.Web.UI.WebControls.WebParts;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using Microsoft.SharePoint;
using System.Security;


namespace SSDCBookingSystem.EventFlow
{
    [ToolboxItemAttribute(false)]
    public partial class EventFlow : WebPart
    {
        // Uncomment the following SecurityPermission attribute only when doing Performance Profiling on a farm solution
        // using the Instrumentation method, and then remove the SecurityPermission attribute when the code is ready
        // for production. Because the SecurityPermission attribute bypasses the security check for callers of
        // your constructor, it's not recommended for production purposes.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public EventFlow()
        {
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

      
         protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            { 
            
                BindEventData();
            }
            

        }

  
        public void BindEventData()
        {
            try
            {
                using (SPSite site = new SPSite(SPContext.Current.Web.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        SPList list = web.Lists.TryGetList("EventFlow");
                        SPListItemCollection coll = list.GetItems();
                        DataTable dt = coll.GetDataTable();
                        EventGridView.DataSource = dt;
                        EventGridView.DataBind();
                    }
                }
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }

        }

        protected void EventGridView_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            try
            {


                using (SPSite site = new SPSite(SPContext.Current.Web.Url))
                {
                    using (SPWeb web = site.OpenWeb())
                    {
                        if (e.CommandName.Equals("Insert"))
                        {
                            TextBox txtCBTitle = (TextBox)EventGridView.FooterRow.FindControl("txtTitle");
                            TextBox txtCBStepTitle = (TextBox)EventGridView.FooterRow.FindControl("txtStepTitle");
                            TextBox txtCBSStepParameters = (TextBox)EventGridView.FooterRow.FindControl("txtStepParameters");
                            
                            TextBox txtCBLearnerAction = (TextBox)EventGridView.FooterRow.FindControl("txtLearnerAction");
                            TextBox txtCBStepTriggerRoleDistribution = (TextBox)EventGridView.FooterRow.FindControl("txtStepTriggerRoleDistribution");
                            
                            TextBox txtCBStepTime = (TextBox)EventGridView.FooterRow.FindControl("txtStepTime");
                            TextBox txtCBGoStep = (TextBox)EventGridView.FooterRow.FindControl("txtGoStep");
                            TextBox txtCBGoStepE = (TextBox)EventGridView.FooterRow.FindControl("txtGoStepE");
                            TextBox txtCBFSID = (TextBox)EventGridView.FooterRow.FindControl("txtFSID");
                            SPList list = web.Lists.TryGetList("EventFlow");
                            // SPListItemCollection coll = list.GetItems();
                            SPListItemCollection myColl = list.Items;
                            SPListItem item = myColl.Add();
                            item["Title"] = txtCBTitle.Text;
                            item["StepTitle"] = txtCBStepTitle.Text;
                            item["StepParameters"] = txtCBSStepParameters.Text;
                            item["LearnersAction"] = txtCBLearnerAction.Text;
                            item["StepTriggerRoleDistribution"] = txtCBStepTriggerRoleDistribution.Text;
                            item["StepTime"] = txtCBStepTime.Text;
                            item["IfSoGoToStep"] = txtCBGoStep.Text;
                            item["IfElseToStep"] = txtCBGoStepE.Text;
                            item.Update();
                            Label2.Text = "Event Flow added, you can add more. Once done Click on Finish";
                            btnFinish.Visible = true;

                          
                        }
                       


                    }
                }
            }


            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //should be redirected to user page, where will show list of his bookings.
            
            Page.Response.AddHeader("REFRESH", "1;URL=ThankYou.aspx");
        }



         
    }
}
