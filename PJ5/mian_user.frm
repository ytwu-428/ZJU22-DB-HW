VERSION 5.00
Begin VB.Form Main_User 
   Caption         =   "������ҳ"
   ClientHeight    =   4485
   ClientLeft      =   6945
   ClientTop       =   5595
   ClientWidth     =   9330
   LinkTopic       =   "Form1"
   ScaleHeight     =   4485
   ScaleWidth      =   9330
   Begin VB.ListBox List1 
      Height          =   1680
      Index           =   2
      Left            =   4440
      TabIndex        =   14
      Top             =   1560
      Width           =   1815
   End
   Begin VB.CommandButton C_Query 
      Caption         =   "��ѯ"
      Height          =   495
      Left            =   7440
      TabIndex        =   13
      Top             =   2880
      Width           =   1575
   End
   Begin VB.ListBox List1 
      Height          =   1680
      Index           =   1
      Left            =   2640
      TabIndex        =   11
      Top             =   1560
      Width           =   1815
   End
   Begin VB.ListBox List1 
      Height          =   1680
      Index           =   0
      Left            =   840
      TabIndex        =   9
      Top             =   1560
      Width           =   1815
   End
   Begin VB.CommandButton C_Logout 
      Caption         =   "�ǳ�"
      Height          =   495
      Left            =   7440
      TabIndex        =   4
      Top             =   3720
      Width           =   1575
   End
   Begin VB.Label Label8 
      Caption         =   "Ӧ������"
      Height          =   255
      Left            =   5040
      TabIndex        =   15
      Top             =   1320
      Width           =   855
   End
   Begin VB.Label Label7 
      Caption         =   "����"
      Height          =   255
      Left            =   3360
      TabIndex        =   12
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label Label6 
      Caption         =   "����"
      Height          =   255
      Left            =   1560
      TabIndex        =   10
      Top             =   1320
      Width           =   615
   End
   Begin VB.Label cardid 
      BeginProperty Font 
         Name            =   "����"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6840
      TabIndex        =   8
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label Label5 
      Caption         =   "ID��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      TabIndex        =   7
      Top             =   240
      Width           =   495
   End
   Begin VB.Label n_book 
      BeginProperty Font 
         Name            =   "����"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2040
      TabIndex        =   6
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label Label4 
      Caption         =   "�ѽ���������"
      BeginProperty Font 
         Name            =   "����"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   5
      Top             =   720
      Width           =   2055
   End
   Begin VB.Label Label3 
      Caption         =   "��ͨ�û�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4440
      TabIndex        =   3
      Top             =   240
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "���Ȩ��Ϊ��"
      BeginProperty Font 
         Name            =   "����"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   2520
      TabIndex        =   2
      Top             =   240
      Width           =   2055
   End
   Begin VB.Label Label1 
      BeginProperty Font 
         Name            =   "����"
         Size            =   14.25
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1200
      TabIndex        =   1
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label hello 
      Caption         =   "��ã�"
      BeginProperty Font 
         Name            =   "����"
         Size            =   14.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   975
   End
End
Attribute VB_Name = "Main_User"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public uid As String

Private Sub C_Logout_Click() '�ǳ���ť
    Login.user_type = 0
     '�ر�������ҳ��
    F_Query.Hide

    Dim logout_status, tmp
    logout_status = MsgBox("Ҫ���ص�¼������", vbYesNo, "ͼ�����ϵͳ")
    
    If logout_status = vbYes Then
        Unload Main_User
        Login.Show
        Login.user_type = 0
    Else
        tmp = MsgBox("��лʹ��, �ѳɹ��ǳ���", vbInformation, "ͼ�����ϵͳ")
        Unload Main_User
        End
    End If
End Sub

Private Sub c_query_Click() 'ǰ��ͼ���ѯ����
    F_Query.Show
End Sub

Private Sub Form_Load()
    Label1.Caption = Login.u_name '����ҳ��ʾ�û���
    '��ȡ���߿���
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open '��������
    
    Dim rs As New ADODB.Recordset
    Set rs.ActiveConnection = conn
    rs.CursorLocation = 3
    
    '��֤�û���Ϣ
    rs.Open "SELECT card FROM user WHERE name='" & Login.u_name & "'"
    uid = rs.Fields("card")
    cardid.Caption = uid
    rs.Close
    
    Dim rs1 As New ADODB.Recordset
    Set rs1.ActiveConnection = conn
    rs1.CursorLocation = 3
    rs1.Open "SELECT * FROM borrow WHERE c_no='" & uid & "'"
    'ͳ�ƽ�������
    Dim ct_book As Integer
    ct_book = rs1.RecordCount
    n_book.Caption = Str(ct_book)
    
    List1(0).Clear
    List1(1).Clear
    List1(2).Clear
    
    Dim cur_book As String
    Dim sql_book_info As ADODB.Recordset
    
    
    '����鱾��Ϣ
    Dim i As Integer
    For i = 1 To ct_book Step 1
        cur_book = rs1.Fields("b_no")
        
        Set sql_book_info = New ADODB.Recordset
        Set sql_book_info.ActiveConnection = conn
        sql_book_info.Open "SELECT * FROM book WHERE b_No='" & cur_book & "'"
        
        List1(0).AddItem sql_book_info.Fields("bookname")
        List1(1).AddItem sql_book_info.Fields("author")
        List1(2).AddItem rs1.Fields("returntime")
        sql_book_info.Close
        
        rs1.MoveNext
    Next
    
    rs1.Close
    conn.Close
End Sub

