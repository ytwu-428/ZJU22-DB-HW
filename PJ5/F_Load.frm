VERSION 5.00
Begin VB.Form F_Load 
   Caption         =   "���"
   ClientHeight    =   5115
   ClientLeft      =   6885
   ClientTop       =   5745
   ClientWidth     =   9345
   LinkTopic       =   "Form1"
   ScaleHeight     =   5115
   ScaleWidth      =   9345
   Begin VB.CommandButton Command3 
      Caption         =   "���"
      Height          =   495
      Left            =   2520
      TabIndex        =   33
      Top             =   4560
      Width           =   975
   End
   Begin VB.ListBox List1 
      Height          =   3660
      Index           =   5
      Left            =   8520
      TabIndex        =   30
      Top             =   720
      Width           =   735
   End
   Begin VB.ListBox List1 
      Height          =   3660
      Index           =   4
      Left            =   6720
      TabIndex        =   29
      Top             =   720
      Width           =   1815
   End
   Begin VB.ListBox List1 
      Height          =   3660
      Index           =   3
      Left            =   5760
      TabIndex        =   28
      Top             =   720
      Width           =   975
   End
   Begin VB.ListBox List1 
      Height          =   3660
      Index           =   2
      Left            =   4800
      TabIndex        =   27
      Top             =   720
      Width           =   975
   End
   Begin VB.ListBox List1 
      Height          =   3660
      Index           =   1
      Left            =   3480
      TabIndex        =   26
      Top             =   720
      Width           =   1335
   End
   Begin VB.ListBox List1 
      Height          =   3660
      Index           =   0
      Left            =   2520
      TabIndex        =   25
      Top             =   720
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "��ѯ"
      Height          =   495
      Left            =   8160
      TabIndex        =   24
      Top             =   4560
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "���"
      Height          =   495
      Left            =   1200
      TabIndex        =   17
      Top             =   120
      Width           =   975
   End
   Begin VB.TextBox bno 
      Height          =   375
      Left            =   840
      TabIndex        =   16
      Top             =   4080
      Width           =   1335
   End
   Begin VB.TextBox numb 
      Height          =   375
      Left            =   840
      TabIndex        =   14
      Top             =   3600
      Width           =   1335
   End
   Begin VB.TextBox price 
      Height          =   375
      Left            =   840
      TabIndex        =   12
      Top             =   3120
      Width           =   1335
   End
   Begin VB.TextBox isbn 
      Height          =   375
      Left            =   840
      TabIndex        =   10
      Top             =   2640
      Width           =   1335
   End
   Begin VB.TextBox pub 
      Height          =   375
      Left            =   840
      TabIndex        =   8
      Top             =   2160
      Width           =   1335
   End
   Begin VB.TextBox p_year 
      Height          =   375
      Left            =   840
      TabIndex        =   6
      Top             =   1680
      Width           =   1335
   End
   Begin VB.TextBox author 
      Height          =   375
      Left            =   840
      TabIndex        =   4
      Top             =   1200
      Width           =   1335
   End
   Begin VB.TextBox bname 
      Height          =   375
      Left            =   840
      TabIndex        =   2
      Top             =   720
      Width           =   1335
   End
   Begin VB.CommandButton C_BackMain 
      Caption         =   "����"
      Height          =   495
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label16 
      Caption         =   "���ɹ�"
      ForeColor       =   &H0000C000&
      Height          =   255
      Left            =   960
      TabIndex        =   32
      Top             =   4680
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.Label Label15 
      Caption         =   "Label15"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   120
      TabIndex        =   31
      Top             =   4680
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.Label Label13 
      Caption         =   "ISBN"
      Height          =   255
      Left            =   6840
      TabIndex        =   23
      Top             =   480
      Width           =   735
   End
   Begin VB.Label Label14 
      Caption         =   "������"
      Height          =   255
      Left            =   5880
      TabIndex        =   22
      Top             =   480
      Width           =   735
   End
   Begin VB.Label Label12 
      Caption         =   "����"
      Height          =   255
      Left            =   4920
      TabIndex        =   21
      Top             =   480
      Width           =   615
   End
   Begin VB.Label Label11 
      Caption         =   "����"
      Height          =   255
      Left            =   3600
      TabIndex        =   20
      Top             =   480
      Width           =   615
   End
   Begin VB.Label Label10 
      Caption         =   "����"
      Height          =   255
      Left            =   8520
      TabIndex        =   19
      Top             =   480
      Width           =   735
   End
   Begin VB.Label Label9 
      Caption         =   "���"
      Height          =   255
      Left            =   2520
      TabIndex        =   18
      Top             =   480
      Width           =   735
   End
   Begin VB.Label Label8 
      Caption         =   "��ţ�"
      Height          =   255
      Left            =   120
      TabIndex        =   15
      Top             =   4200
      Width           =   735
   End
   Begin VB.Label Label7 
      Caption         =   "������"
      Height          =   255
      Left            =   120
      TabIndex        =   13
      Top             =   3720
      Width           =   735
   End
   Begin VB.Label Label6 
      Caption         =   "���ۣ�"
      Height          =   255
      Left            =   120
      TabIndex        =   11
      Top             =   3240
      Width           =   735
   End
   Begin VB.Label Label5 
      Caption         =   "ISBN��"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   2760
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "�����磺"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   2280
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "�����꣺"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   1800
      Width           =   735
   End
   Begin VB.Label Label2 
      Caption         =   "���ߣ�"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "������"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   840
      Width           =   615
   End
End
Attribute VB_Name = "F_Load"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Function display_all() As Integer
    Call listrefresh '�����ʾ
    '��������
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open
    
    Dim display As New ADODB.Recordset
    Set display.ActiveConnection = conn
    display.CursorLocation = 3
    display.Open "SELECT * FROM book ORDER BY b_No"
    Dim size As Integer
    size = display.RecordCount
    For i = 1 To size Step 1
        List1(0).AddItem display.Fields("b_No")
        List1(1).AddItem display.Fields("bookname")
        List1(2).AddItem display.Fields("author")
        List1(3).AddItem display.Fields("publisher")
        List1(4).AddItem display.Fields("ISBN")
        List1(5).AddItem display.Fields("storage")
        
        display.MoveNext
    Next
End Function


Private Sub C_BackMain_Click() '����������
    Call listrefresh
    Call textclear
    F_Load.Hide
    If Login.user_type = 1 Then
        Main_Admin.Show
    Else
        Main_User.Show
    End If
End Sub

Function inilabel() As Integer
    Label15.Visible = False
    Label16.Visible = False
End Function

Function listrefresh() As Integer '���list����
    For i = 0 To 5 Step 1
        List1(i).Clear
    Next
End Function

Function textclear() As Integer
    bname.Text = ""
    author.Text = ""
    p_year.Text = ""
    pub.Text = ""
    isbn.Text = ""
    price.Text = ""
    numb.Text = ""
    bno.Text = ""
End Function

Private Sub Command1_Click() 'ͼ�����
    Call inilabel
    Dim isblank As Integer
    '����Ƿ�ȱ��
    If Len(bname.Text) = 0 Then isblank = 1
    If Len(author.Text) = 0 Then isblank = 1
    If Len(p_year.Text) = 0 Then isblank = 1
    If Len(isbn.Text) = 0 Then isblank = 1
    If Len(price.Text) = 0 Then isblank = 1
    If Len(numb.Text) = 0 Then isblank = 1
    If Len(bno.Text) = 0 Then isblank = 1
    
    If isblank = 1 Then
        Label15.Caption = "���ڿ���"
        Label15.Visible = True
        Exit Sub
    End If
    
    '���isbn�Ƿ����
    '��������
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open
    
    Dim ck_isbn As New ADODB.Recordset
    Set ck_isbn.ActiveConnection = conn
    ck_isbn.CursorLocation = 3
    ck_isbn.Open "SELECT * FROM book WHERE ISBN='" & isbn.Text & "'"
    
    If ck_isbn.RecordCount = 0 Then 'ͼ�鲻���ڣ�ֱ�Ӳ����¼
        'У��ͼ�����Ƿ�ռ��
        Dim ck_bno As New ADODB.Recordset
        Set ck_bno.ActiveConnection = conn
        ck_bno.CursorLocation = 3
        ck_bno.Open "SELECT * FROM book WHERE b_No='" & bno.Text & "'"
        If ck_bno.RecordCount = 1 Then
            Label15.Caption = "ͼ�����ѱ�ռ��"
            Label15.Visible = True
            conn.Close
            Exit Sub
        End If
            
        Dim neo_book As New ADODB.Recordset
        Set neo_book.ActiveConnection = conn
        neo_book.CursorLocation = 3
        neo_book.Open "INSERT INTO book VALUES ('" & bname.Text & "','" & author.Text & "','" & p_year.Text & "','" & pub.Text & "','" & isbn.Text & "','" & price.Text & "','" & numb.Text & "','" & bno.Text & "')"
        conn.Close
        Label16.Visible = True
        Exit Sub
    Else 'ͼ�����Ѵ��ڣ���֤��Ϣ
        Dim check_info As New ADODB.Recordset
        Set check_info.ActiveConnection = conn
        check_info.CursorLocation = 3
        check_info.Open "SELECT * FROM book WHERE bookname='" & bname.Text & "' AND author='" & author.Text & "' AND pub_year='" & p_year.Text & "' AND publisher='" & pub.Text & "' AND ISBN='" & isbn.Text & "' AND price='" & price.Text & "' AND b_No='" & bno.Text & "'"
        If check_info.RecordCount = 1 Then 'У��ͨ��,���ӿ��
            Dim add_sto As New ADODB.Recordset
            Set add_sto.ActiveConnection = conn
            add_sto.CursorLocation = 3
            add_sto.Open "UPDATE book SET storage=storage+'" & numb.Text & "' WHERE b_No='" & bno.Text & "'"
            Label16.Visible = True
            conn.Close
            Call display_all 'ˢ����ʾ
        Else
            Label15.Caption = "������Ϣ��ͻ"
            Label15.Visible = True
            conn.Close
            Exit Sub
        End If
    End If
End Sub

Private Sub Command2_Click() '���鼮��Ϣ��ѯ����
    F_Query.Show
End Sub

Private Sub Command3_Click() '�������
    Call textclear
End Sub

Private Sub Form_Load()
    Call inilabel
    Call display_all
End Sub
