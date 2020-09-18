using BrainStation23.Web.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BrainStation23.Web.Controllers
{
    public class FeedbackController : Controller
    {
        BrainStation23Entities _db;

        public FeedbackController()
        {
            _db = new BrainStation23Entities();
        }

        // GET: Feedback
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult GetFeedbackList()
        {
            object data = null;

            //data = _db.Posts
            //    .Join(_db.Comments,
            //    x => x.PostID,
            //    y => y.PostID,
            //    (x, y) => new { Post = x, Comment = y })
            //    .Select(x => new
            //    {
            //        x.Post.PostID,
            //        x.Post.PostBody,
            //        x.Post.UserType as p,
            //        x.Post.AddedDate,
            //        x.Comment.CommentID,
            //        x.Comment.CommentBody,
            //        x.Comment.PostID,
            //        x.Comment.UserType

            //    });

            return Json(data, JsonRequestBehavior.AllowGet);
        }
    }
}