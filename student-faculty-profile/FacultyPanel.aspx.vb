Public Class StudentPanel
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents DataGrid1 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents DataGrid2 As System.Web.UI.WebControls.DataGrid
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents Label7 As System.Web.UI.WebControls.Label
    Protected WithEvents Label8 As System.Web.UI.WebControls.Label
    Protected WithEvents Label9 As System.Web.UI.WebControls.Label
    Protected WithEvents Label10 As System.Web.UI.WebControls.Label
    Protected WithEvents Label11 As System.Web.UI.WebControls.Label
    Protected WithEvents Label12 As System.Web.UI.WebControls.Label
    Protected WithEvents Label13 As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        If Session("username") = Nothing Then
            Response.Redirect("~\WebForm1.aspx", True)
            Return
        End If
        Dim obj As New database
        Dim obj1 As New database
        Dim obj2 As New database
        Dim dt As New DataSet
        Dim dt1 As New DataSet
        Dim dt2 As New DataSet

        Dim str As String

        Me.Image1.ImageUrl = "pic\" & Session("student_id") & ".jpg"
        'image displayed according to the user id
        Label1.Text = Session("username")
        '        label2.Text = "Time Table of " & 

        'Label4.Text = obj.student_profile_timetable(Session("class_id"), New Date().Now)
        dt2 = obj.student_profile_timetable(Session("class_id"), New Date().Now)
        Me.DataGrid1.DataSource = dt2
        Me.DataGrid1.DataBind()
        'dt = obj.student_profile_login(TextBox1.Text, TextBox2.Text)

        'Label4.Text = obj.student_profile_attendance(Session("student_id"), Session("class_id"))
        dt1 = obj1.student_profile_attendance(Session("student_id"), Session("class_id"))
        'Label4.Text = dt1.Tables(0).Rows(0).Item(0)
        Me.DataGrid2.DataSource = dt1
        Me.DataGrid2.DataBind()
        dt = obj2.student_profile_fee(Session("student_id"))
        Me.Label6.Text = dt.Tables(0).Rows(0).Item(0)
        Me.Label10.Text = dt.Tables(0).Rows(0)("Hostel_Fee")
        Me.Label11.Text = dt.Tables(0).Rows(0)("Mess_Fee")
        Me.Label12.Text = dt.Tables(0).Rows(0)("fine")
        Me.Label13.Text = dt.Tables(0).Rows(0)("fine_reason")
    End Sub

    
End Class
