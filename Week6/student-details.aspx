<%@ Page Title="Student Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="student-details.aspx.cs" Inherits="Week6.student_details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <h1>Students Details</h1>

    <div class="form-group">
        <label for="txtLastName" class="col-sm-3 control-label">Last Name: </label>
        <asp:TextBox ID="txtLastName" runat="server" placeholder="Enter Last name" required type="text" /> 
        
    </div>
    <div class="form-group">
        <label for="txtFirstMidName" class="col-sm-3 control-label">First-Middle Name: </label>
        <asp:TextBox ID="txtFirstMidName" runat="server" placeholder="Enter First name" required type="text" /> 
      
    </div>
    <div class="form-group">
        <label for="txtEnrollment" class="col-sm-3 control-label">Enrollment Date: </label>
        <asp:TextBox ID="txtEnrollment" runat="server" placeholder="mm/dd/yyyy" type="required" required  />
    </div>

    <asp:button class="btn btn-success col-sm-offset-3" id="btnSave" runat="server" text="Save" OnClick="btnSave_Click" />

</asp:Content>
