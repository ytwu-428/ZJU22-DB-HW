VERSION 5.00
Begin VB.Form F_BorR 
   Caption         =   "�軹��"
   ClientHeight    =   4215
   ClientLeft      =   6885
   ClientTop       =   5745
   ClientWidth     =   9270
   LinkTopic       =   "Form1"
   ScaleHeight     =   4215
   ScaleWidth      =   9270
   Begin VB.CommandButton Command4 
      Caption         =   "����"
      Height          =   495
      Left            =   240
      TabIndex        =   20
      Top             =   3480
      Width           =   975
   End
   Begin VB.ListBox List1 
      Height          =   2760
      Left            =   3240
      TabIndex        =   14
      Top             =   1320
      Width           =   3735
   End
   Begin VB.Frame Frame1 
      Caption         =   "������Ϣ��ѯ"
      Height          =   3495
      Left            =   7080
      TabIndex        =   6
      Top             =   720
      Width           =   2175
      Begin VB.CommandButton Command3 
         Caption         =   "��ѯͼ��������"
         Height          =   375
         Left            =   120
         TabIndex        =   13
         Top             =   2640
         Width           =   1935
      End
      Begin VB.CommandButton Command2 
         Caption         =   "��ѯ���߽������"
         Height          =   375
         Left            =   120
         TabIndex        =   11
         Top             =   1080
         Width           =   1935
      End
      Begin VB.TextBox out_book 
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Text            =   "Text4"
         Top             =   2040
         Width           =   1935
      End
      Begin VB.TextBox out_reader 
         Height          =   375
         Left            =   120
         TabIndex        =   9
         Text            =   "3180103606"
         Top             =   480
         Width           =   1935
      End
      Begin VB.Label Label6 
         Caption         =   "���벻��Ϊ��"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   480
         TabIndex        =   16
         Top             =   2400
         Width           =   1455
      End
      Begin VB.Label Label5 
         Caption         =   "���벻��Ϊ��"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   480
         TabIndex        =   15
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label4 
         Caption         =   "����ͼ���ţ�"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   1800
         Width           =   1455
      End
      Begin VB.Label Label3 
         Caption         =   "������߱�ţ�"
         Height          =   255
         Left            =   120
         TabIndex        =   7
         Top             =   240
         Width           =   1455
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   495
      Left            =   240
      TabIndex        =   5
      Top             =   2760
      Width           =   975
   End
   Begin VB.TextBox in_book 
      Height          =   375
      Left            =   240
      TabIndex        =   4
      Top             =   2040
      Width           =   1695
   End
   Begin VB.TextBox in_reader 
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   1080
      Width           =   1695
   End
   Begin VB.CommandButton C_BackMain 
      Caption         =   "����"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label12 
      Caption         =   "�����Ҳ�������߱�Ų�ѯ�ö��߽�������������ĳһ�鼮�������"
      Height          =   255
      Left            =   1320
      TabIndex        =   23
      Top             =   600
      Width           =   6135
   End
   Begin VB.Label Label11 
      Caption         =   "�����������߱�ż�ͼ���ţ������Ӧ�İ�ť�Խ��н��� / �������"
      Height          =   255
      Left            =   1320
      TabIndex        =   22
      Top             =   360
      Width           =   6375
   End
   Begin VB.Label Label13 
      Caption         =   "TIP��"
      Height          =   255
      Left            =   1320
      TabIndex        =   24
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label10 
      Caption         =   "����ɹ�"
      ForeColor       =   &H0000C000&
      Height          =   255
      Left            =   1440
      TabIndex        =   21
      Top             =   3600
      Width           =   735
   End
   Begin VB.Label Label9 
      Caption         =   "���ĳɹ�"
      ForeColor       =   &H0000C000&
      Height          =   255
      Left            =   1440
      TabIndex        =   19
      Top             =   2880
      Width           =   735
   End
   Begin VB.Label Label8 
      Caption         =   "���벻��Ϊ��"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   240
      TabIndex        =   18
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Label Label7 
      Caption         =   "���벻��Ϊ��"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   240
      TabIndex        =   17
      Top             =   1440
      Width           =   1455
   End
   Begin VB.Label l_output 
      Caption         =   "���������"
      Height          =   255
      Left            =   3240
      TabIndex        =   12
      Top             =   960
      Width           =   3975
   End
   Begin VB.Label Label2 
      Caption         =   "ͼ���ţ�"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   1800
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "���߱�ţ�"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   840
      Width           =   1095
   End
End
Attribute VB_Name = "F_BorR"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub C_BackMain_Click() '����������
    Call ini(0)
    F_BorR.Hide
    If Login.user_type = 1 Then
        Main_Admin.Show
    Else
        Main_User.Show
    End If
End Sub

Function ini(n_box As Integer) As Integer
    '����ı�������
    If (n_box <> 1) Then
        in_reader.Text = ""
        in_book.Text = ""
    End If
    If (n_box <> 2) Then out_reader.Text = ""
    If (n_box <> 3) Then out_book.Text = ""
    '��ʼ����ǩ״̬
    Label5.Visible = False
    Label6.Visible = False
    Label7.Visible = False
    Label8.Visible = False
    Label9.Visible = False
    Label10.Visible = False
    l_output.Caption = "���������"
    List1.Clear
End Function

Private Sub Command1_Click() '���뵥��������Ϣ
    Call ini(1)
    Dim isErr As Integer
    isErr = 0
    
    If Len(in_reader.Text) = 0 Then
        Label7.Caption = "���벻��Ϊ��"
        Label7.Visible = True
        isErr = 1
    End If
    
    If Len(in_book.Text) = 0 Then
        Label8.Caption = "���벻��Ϊ��"
        Label8.Visible = True
        isErr = 1
    End If
    '�п��������˳�
    If isErr = 1 Then Exit Sub
    
    '��������Ϣ�Ƿ����
    Dim ck As Integer
    ck = checkcase()
    If ck = 1 Then
        Label8.Caption = "������Ϣ�Ѵ���"
        Label8.Visible = True
        Exit Sub
    End If
    
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open '��������
        
    '��֤���߱���Ƿ���Ч
    Dim check_reader As New ADODB.Recordset
    Set check_reader.ActiveConnection = conn
    check_reader.CursorLocation = 3
    
    check_reader.Open "SELECT * FROM card WHERE c_no='" & in_reader.Text & "'"
    If check_reader.RecordCount = 0 Then
        Label7.Caption = "���߱�Ų�����"
        Label7.Visible = True
        check_reader.Close
        conn.Close
        Exit Sub
    End If
    
    '��֤ͼ�����Ƿ���Ч
    Dim check_book As New ADODB.Recordset
    Set check_book.ActiveConnection = conn
    check_book.CursorLocation = 3
    
    check_book.Open "SELECT * FROM book WHERE b_No='" & in_book.Text & "'"
    If check_book.RecordCount = 0 Then
        Label8.Caption = "ͼ���Ų�����"
        Label8.Visible = True
        check_book.Close
        conn.Close
        Exit Sub
    ElseIf check_book.Fields("storage") = "0" Then
        Label8.Caption = "ͼ���治��"
        Label8.Visible = True
        check_book.Close
        conn.Close
        Exit Sub
    End If
    
    '����ɹ���ʾ
    Label9.Visible = True
    '��borrow��������¼
    Dim neo_borrow As New ADODB.Recordset
    Set neo_borrow.ActiveConnection = conn
    neo_borrow.CursorLocation = 3
    neo_borrow.Open "INSERT INTO borrow VALUES ('" & in_reader.Text & "','" & in_book.Text & "','" & DateAdd("d", 30, Date) & "')"
    
    'book�п��-1
    Dim alter_storage As New ADODB.Recordset
    Set alter_storage.ActiveConnection = conn
    alter_storage.CursorLocation = 3
    alter_storage.Open "UPDATE book SET storage=storage-1 WHERE b_No='" & in_book.Text & "'"
    conn.Close
    Call showborrow
End Sub

Private Sub Command2_Click() '���߽������
    Call ini(2)
    If Len(out_reader.Text) = 0 Then
        Label5.Caption = "���벻��Ϊ��"
        Label5.Visible = True
        Exit Sub
    End If
    '������Ƿ���Ч
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open '��������
    
    Dim rs As New ADODB.Recordset
    Set rs.ActiveConnection = conn
    rs.CursorLocation = 3
    
    '��֤�û���Ϣ
    rs.Open "SELECT * FROM card WHERE c_no='" & out_reader.Text & "'"
    If rs.RecordCount = 0 Then
        Label5.Caption = "���߱�Ų�����"
        Label5.Visible = True
        rs.Close
        conn.Close
        Exit Sub
    End If
    
    Dim rs1 As New ADODB.Recordset
    Set rs1.ActiveConnection = conn
    rs1.CursorLocation = 3
    
    rs1.Open "SELECT * FROM borrow WHERE c_no='" & out_reader.Text & "'"
    Dim size As Integer
    size = rs1.RecordCount
    
    l_output.Caption = "���Ϊ" & out_reader.Text & "�Ķ��߹�������" & Str(size) & "����"
    
    Dim cur_bookno As String '��ǰͼ����
    Dim sql_book_info As ADODB.Recordset
    '��list����ʾ�ñ�Ŷ��߽��ĵ�ͼ����+����
    For i = 1 To size Step 1
        cur_bookno = rs1.Fields("b_no")
                
        Set sql_book_info = New ADODB.Recordset
        Set sql_book_info.ActiveConnection = conn
        sql_book_info.Open "SELECT * FROM book WHERE b_No='" & cur_bookno & "'"
        List1.AddItem rs1.Fields("returntime") & "  " & sql_book_info.Fields("b_No") & "  " & sql_book_info.Fields("bookname")
        sql_book_info.Close
        
        rs1.MoveNext
    Next
End Sub

Private Sub Command3_Click() '����ͼ���ţ���������������������߱��
    Call ini(3)
    If Len(out_book.Text) = 0 Then
        Label6.Caption = "���벻��Ϊ��"
        Label6.Visible = True
        Exit Sub
    End If
    
    '������Ƿ���Ч
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open '��������
    
    Dim rs As New ADODB.Recordset
    Set rs.ActiveConnection = conn
    rs.CursorLocation = 3
    
    '��֤�û���Ϣ
    rs.Open "SELECT * FROM book WHERE b_No='" & out_book.Text & "'"
    If rs.RecordCount = 0 Then
        Label6.Caption = "ͼ���Ų�����"
        Label6.Visible = True
        rs.Close
        conn.Close
        Exit Sub
    End If
    
    '�����Ч
    Dim rs1 As New ADODB.Recordset
    Set rs1.ActiveConnection = conn
    rs1.CursorLocation = 3
    
    rs1.Open "SELECT * FROM borrow WHERE b_no='" & out_book.Text & "'"
    Dim size As Integer
    size = rs1.RecordCount
    
    l_output.Caption = "���Ϊ" & out_book.Text & "��ͼ�鹲���" & Str(size) & "��, ��" & rs.Fields("storage") & "��"

    '��list����ʾ���ж��߱��
    For i = 1 To size Step 1
        List1.AddItem "����" & Str(i) & " :" & rs1.Fields("c_no") & "  Ӧ��:" & rs1.Fields("returntime")
        rs1.MoveNext
    Next
    
End Sub

Private Sub Command4_Click() '����
    Call ini(1)
    Dim isErr As Integer
    isErr = 0
    
    If Len(in_reader.Text) = 0 Then
        Label7.Caption = "���벻��Ϊ��"
        Label7.Visible = True
        isErr = 1
    End If
    
    If Len(in_book.Text) = 0 Then
        Label8.Caption = "���벻��Ϊ��"
        Label8.Visible = True
        isErr = 1
    End If
    
    '�п��������˳�
    If isErr = 1 Then Exit Sub
    
    '��������Ϣ�Ƿ����
    Dim ck As Integer
    ck = checkcase()
    If ck = 0 Then
        Label8.Caption = "������Ϣ������"
        Label8.Visible = True
        Exit Sub
    End If
    
    
    '��������
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open
    'ɾ��borrow�еĽ��Ĺ�ϵ
    Dim del_bor As New ADODB.Recordset
    Set del_bor.ActiveConnection = conn
    del_bor.CursorLocation = 3
    del_bor.Open "DELETE FROM borrow WHERE b_no='" & in_book.Text & "' AND c_no='" & in_reader.Text & "'"
    'book��storage+1
    Dim add_sto As New ADODB.Recordset
    Set add_sto.ActiveConnection = conn
    add_sto.CursorLocation = 3
    add_sto.Open "UPDATE book SET storage=storage+1 WHERE b_No='" & in_book.Text & "'"
    conn.Close
    Label10.Visible = True
    Call showborrow
End Sub

Private Sub Form_Load()
    Call ini(0)
End Sub

Function showborrow() As Integer
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open '��������
     '��ʾ���ߵ�ǰ������Ϣ
    Dim cur As New ADODB.Recordset
    Set cur.ActiveConnection = conn
    cur.CursorLocation = 3
    
    cur.Open "SELECT * FROM borrow WHERE c_no='" & in_reader.Text & "'"
    Dim size As Integer
    size = cur.RecordCount
    
    l_output.Caption = "���Ϊ" & in_reader.Text & "�Ķ���Ŀǰ��������" & Str(size) & "����"
    
    Dim cur_bookno As String '��ǰͼ����
    Dim sql_book_info As ADODB.Recordset
    '��list����ʾ�ñ�Ŷ��߽��ĵ�ͼ����+����
    For i = 1 To size Step 1
        cur_bookno = cur.Fields("b_no")
        
        Set sql_book_info = New ADODB.Recordset
        Set sql_book_info.ActiveConnection = conn
        sql_book_info.Open "SELECT * FROM book WHERE b_No='" & cur_bookno & "'"
        List1.AddItem cur.Fields("returntime") & "  " & sql_book_info.Fields("b_No") & "  " & sql_book_info.Fields("bookname")
        sql_book_info.Close
        
        cur.MoveNext
    Next
    conn.Close
End Function

Function checkcase() As Integer
    '��������
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open
        
    '�ж��Ƿ���ڽ��Ĺ�ϵ
    Dim check_group As New ADODB.Recordset
    Set check_group.ActiveConnection = conn
    check_group.CursorLocation = 3
    check_group.Open "SELECT * FROM borrow WHERE b_no='" & in_book.Text & "' AND c_no='" & in_reader.Text & "'"
   
    If check_group.RecordCount = 0 Then '������Ϣ������
        checkcase = 0
    Else
        checkcase = 1
    End If
    
    conn.Close
End Function
