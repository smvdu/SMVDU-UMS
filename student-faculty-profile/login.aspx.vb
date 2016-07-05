Public Class WebForm1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents TextBox1 As System.Web.UI.WebControls.TextBox
    Protected WithEvents TextBox2 As System.Web.UI.WebControls.TextBox
    Protected WithEvents Button1 As System.Web.UI.WebControls.Button
    Protected WithEvents LinkButton1 As System.Web.UI.WebControls.LinkButton
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label

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
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim obj As New database
        Dim dt As New DataSet
        dt = obj.student_profile_login(TextBox1.Text, TextBox2.Text)
        If dt.Tables.Contains("Login") = False Then
            Label3.Text = "incorrect username or password"
            Label3.Visible = True
        Else
            Dim c_id, s_id, uid As String
            c_id = dt.Tables(0).Rows(0)("class_id")
            s_id = dt.Tables(0).Rows(0)("student_id")
            uid = dt.Tables(0).Rows(0)("username")
            Session("class_id") = c_id
            Session("student_id") = s_id
            Session("username") = uid
            Response.Redirect("~\StudentPanel.aspx", True)
        End If
    End Sub
End Class
