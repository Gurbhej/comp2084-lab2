using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//refrence the model binding library
using System.Web.ModelBinding;
namespace Week6
{
    public partial class student_details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            // connect
            var conn = new gurbhejEntities();

            //use the Student class to create a new Student Object
            Student s = new Student();

            // Fill the properties of the new student object
            s.LastName = txtLastName.Text;
            s.FirstMidName = txtFirstMidName.Text;
            s.EnrollmentDate = Convert.ToDateTime(txtEnrollment.Text);

            //save the new object to the database
            conn.Students.Add(s);
            conn.SaveChanges();

            //redirect to the students page
            Response.Redirect("students.aspx");

        }
    }
}