Imports System.Data.SqlClient

Public Class database
    Dim st As String
    Dim con As SqlConnection
    Dim da As SqlDataAdapter
    Dim dt As New DataSet
    Dim sc As SqlCommand

    ' ***************************************** start of database functions**********************

    Sub dbconnect()

        'st = "select * from Titles where pub_id=@pubid"
        con = New SqlConnection("server=vb;database=UMS;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False;uid=faiq;password=faiq")
        con.Open()
        'da = New SqlDataAdapter(st, con)
        'da.SelectCommand.Parameters.Add("@pubid", PubId)
        'da.Fill(dt, "titles")



    End Sub

    Sub dbdisconnect()
        con.Close()
        con.Dispose()
    End Sub



    Function insert() As Boolean
        Me.dbconnect()
        Me.sc = New SqlCommand(st, con)
        Try
            Me.sc.ExecuteNonQuery()
        Catch ex As Exception
            Return False
            'Return ex.Message

        End Try


        Me.dbdisconnect()
        Return True


    End Function


    Function delete() As Boolean
        Me.dbconnect()
        Me.dbdisconnect()

    End Function


    Function update() As Boolean
        Me.dbconnect()
        me.sc= New SqlCommand(st,con)
        Try
            Me.sc.ExecuteNonQuery()
        Catch ex As Exception
            Return False
        End Try
        Me.dbdisconnect()
        return true
    End Function

    Function selectdb(ByVal srctable As String) As DataSet
        Me.dbconnect()

        da = New SqlDataAdapter(st, con)

        da.Fill(dt, srctable)
        Me.dbdisconnect()

    End Function


    ' ***************************************** end of database functions**********************



    ' ***************************************** Start of service functions ********************



    Function counselling(ByVal txtbx1 As String,
                         ByVal txtbx2 As String,
                         ByVal txtbx3 As String,
                         ByVal txtbx4 As String,
                         ByVal dropdwn1 As String) As Boolean

        st = "Insert into counselling (name, email, mobile, branch, message) values ('" & txtbx1 & "',
'" & txtbx2 & "','" & txtbx3 & "','" & dropdwn1 & "','" & txtbx4 & "')"
        Return insert()


    End Function
    
    Function student_profile_timetable(byval classid as string, byval weekday as int) as dataset
        st="select p_1, p_2, p_3, p_4, p_5, p_6, p_7, p_8 from Time_Table where Class_ID = '" & classid & "' and Week_Day = " & weekday & " ;";
        return selectdb("timetable")
    end function

    Function login(byval txtbox1 as string, byval txtbox2 as string) as dataset
        st="select Class_ID , Student_ID , username from Login where email = '" & textbox1 & "' and password = " & textbox2 & " ;";
        return selectdb("login")
    end function

    function student_profile_fee(byval studentid as string) as dataset
        st="select Hostel_Fee, Mess_Fee, Academic_Fee, fine, fine_reason from Fee where Student_ID = '" & studentid & "' ;";
        return selectdb("Fee")
    end function

    function student_profile_attendance(byval studentid as string,byval classid as string) as dataset
        st="select subject_id, Lectures_Attended from Attendance where student_id = '" & studentid & "' and class_id=  '" & classid & "' ;";
        return selectdb("Attendance")
    end function

    

End Class
