﻿using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using Comp229_TeamProject.Models;
using System.Web.Security;

namespace Comp229_TeamProject.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (FormsAuthentication.Authenticate(Email.Text,Password.Text))
            //{
            //    FormsAuthentication.RedirectFromLoginPage(Email.Text, true);
            //}
        }
        protected void LogIn(object sender, EventArgs e)
        {
            //this code is from textbook
            Session["username"] = this.Email.Text.Trim();
            //Response.Redirect("~/Home.aspx");
            if (FormsAuthentication.Authenticate(Email.Text, Password.Text))
            {
                FormsAuthentication.RedirectFromLoginPage(Email.Text, true);
            }
            
            {
                //// Validate the user password
                //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                //var signinManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();

                //// This doen't count login failures towards account lockout
                //// To enable password failures to trigger lockout, change to shouldLockout: true
                //var result = signinManager.PasswordSignIn(Email.Text, Password.Text, RememberMe.Checked, shouldLockout: false);

                //switch (result)
                //{
                //    case SignInStatus.Success:
                //        IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                //        break;
                //    case SignInStatus.LockedOut:
                //        Response.Redirect("/Account/Lockout");
                //        break;
                //    case SignInStatus.RequiresVerification:
                //        Response.Redirect(String.Format("/Account/TwoFactorAuthenticationSignIn?ReturnUrl={0}&RememberMe={1}", 
                //                                        Request.QueryString["ReturnUrl"],
                //                                        RememberMe.Checked),
                //                          true);
                //        break;
                //    case SignInStatus.Failure:
                //    default:
                //        FailureText.Text = "Invalid login attempt";
                //        ErrorMessage.Visible = true;
                //        break;
                //}
            }
        }

    }
}