using ClothesShop.BU.Manage;
using ClothesShop.Web.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;

namespace ClothesShop.Web.Areas.admin.Controllers
{
    public class LoginController : Controller
    {

        //private WebMasterManage _webMasterManage = new WebMasterManage();
        private TaiKhoanManage _taiKhoanManage = new TaiKhoanManage();
        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;

        public LoginController()
        {
        }

        public LoginController(ApplicationUserManager userManager, ApplicationSignInManager signInManager)
        {
            UserManager = userManager;
            SignInManager = signInManager;
        }

        public ApplicationSignInManager SignInManager
        {
            get
            {
                return _signInManager ?? HttpContext.GetOwinContext().Get<ApplicationSignInManager>();
            }
            private set
            {
                _signInManager = value;
            }
        }

        public ApplicationUserManager UserManager
        {
            get
            {
                return _userManager ?? HttpContext.GetOwinContext().GetUserManager<ApplicationUserManager>();
            }
            private set
            {
                _userManager = value;
            }
        }



        // GET: admin/Login
        public ActionResult Index()
        {
            return View();
        }


        [HttpPost]
        [AllowAnonymous]
        [ValidateAntiForgeryToken]
        public async Task<ActionResult> UserLogin(LoginViewModel model, string returnUrl)
        {
            if (!ModelState.IsValid)
            {
                return Json(new { message = "Sai định dạng. Hãy nhập lại!", status = "warn" }, JsonRequestBehavior.AllowGet);
            }

            // This doesn't count login failures towards account lockout
            // To enable password failures to trigger account lockout, change to shouldLockout: true
            //var userFind = UserManager.FindByEmail(model.e);
            var userFind = await UserManager.FindByNameAsync(model.User);
            if (userFind == null)
                return Json(new { message = "Tài khoản không tồn tại!", status = "error" }, JsonRequestBehavior.AllowGet);
            var result = await SignInManager.PasswordSignInAsync(userFind.UserName, model.Password, model.RememberMe, shouldLockout: false);
            switch (result)
            {
                case SignInStatus.Success:
                    {
                        var getTaiKhoan = _taiKhoanManage.GetTaiKhoanByIdentity(userFind.Id);
                        if(getTaiKhoan.IsAdmin == 1)
                            return Json(new { message = "Đăng nhập thành công", status = "success" }, JsonRequestBehavior.AllowGet);
                        else
                            return Json(new { message = "Bạn không có quyền truy cập", status = "error" }, JsonRequestBehavior.AllowGet);
                    }
                case SignInStatus.LockedOut:
                    return Json(new { message = "Tài khoản của bạn đã bị khóa!", status = "error" }, JsonRequestBehavior.AllowGet);
                case SignInStatus.RequiresVerification:
                    return RedirectToAction("SendCode", new { ReturnUrl = returnUrl, RememberMe = model.RememberMe });
                case SignInStatus.Failure:
                default:
                    return Json(new { message = "Sai tên tài khoản hoặc mật khẩu!", status = "error" }, JsonRequestBehavior.AllowGet);
            }
        }

        #region Helpers
        // Used for XSRF protection when adding external logins
        private const string XsrfKey = "XsrfId";

        private IAuthenticationManager AuthenticationManager
        {
            get
            {
                return HttpContext.GetOwinContext().Authentication;
            }
        }
        #endregion
    }
}