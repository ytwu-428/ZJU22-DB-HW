VERSION 5.00
Begin VB.Form Login 
   Caption         =   "ͼ�����ϵͳ"
   ClientHeight    =   3015
   ClientLeft      =   9315
   ClientTop       =   6300
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   Begin VB.CommandButton Create 
      Caption         =   "ע��"
      Height          =   495
      Left            =   3240
      TabIndex        =   8
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   240
      Top             =   240
   End
   Begin VB.CommandButton C_Login 
      Caption         =   "�����¼"
      Height          =   495
      Left            =   1560
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2400
      Width           =   1455
   End
   Begin VB.TextBox I_Upass 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      IMEMode         =   3  'DISABLE
      Left            =   1560
      PasswordChar    =   "*"
      TabIndex        =   4
      Text            =   "123456"
      Top             =   1560
      Width           =   1455
   End
   Begin VB.TextBox I_Uname 
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   1560
      TabIndex        =   3
      Text            =   "admin"
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label W_Upass 
      Caption         =   "���벻��Ϊ�գ�"
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   1560
      TabIndex        =   7
      Top             =   2160
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Label W_Uname 
      Caption         =   "�û�������Ϊ�գ�"
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   1560
      TabIndex        =   6
      Top             =   1320
      Visible         =   0   'False
      Width           =   1575
   End
   Begin VB.Label L_Upass 
      Caption         =   "�� �룺"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   600
      TabIndex        =   2
      Top             =   1680
      Width           =   855
   End
   Begin VB.Label L_Welcom 
      Caption         =   "��   ¼"
      BeginProperty Font 
         Name            =   "����"
         Size            =   15.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   1560
      TabIndex        =   1
      Top             =   120
      Width           =   1455
   End
   Begin VB.Label L_Uname 
      Caption         =   "�û�����"
      BeginProperty Font 
         Name            =   "����"
         Size            =   10.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   480
      TabIndex        =   0
      Top             =   840
      Width           =   975
   End
End
Attribute VB_Name = "Login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public user_type As Integer '�û����ͣ�0-stu��1-admin
Public u_name As String '�û���

Private Sub Create_Click() '��ת���û�����
    Login.Hide
    F_SignIn.Show
    Call inilabel
    Call textclear
End Sub

'���п���һ����Ϊ��ο�ɣ�VB��Ȼ�����ո��˵�һ��
Private Sub Form_Load()
    user_type = 0 '�����û�״̬
End Sub

Private Sub C_Login_Click() '������¼��ť
    Call inilabel
    
    Dim u_pass As String '����
    
    u_name = I_Uname.Text
    u_pass = I_Upass.Text
    
    Dim len_u_name As Integer
    len_u_name = Len(u_name)
    
    '�û���Ϊ��
    If (len_u_name = 0) Then
        W_Uname.Caption = "�û�������Ϊ�գ�"
        W_Uname.Visible = True
    End If
    
    Dim len_u_pass As Integer
    len_u_pass = Len(u_pass)
    
    '����Ϊ��
    If (len_u_pass = 0) Then
        W_Upass.Caption = "���벻��Ϊ�գ�"
        W_Upass.Visible = True
    End If
    
    'name/password��һ��Ϊ����ֱ�ӷ���
    If (len_u_name = 0 Or len_u_pass = 0) Then
       Exit Sub
    End If
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open '��������
    
    Dim rs As New ADODB.Recordset
    Set rs.ActiveConnection = conn
    rs.CursorLocation = 3
    
    '��֤�û���Ϣ
    rs.Open "SELECT * FROM user WHERE name='" & u_name & "' AND password='" & u_pass & "'"
    Dim size As Integer
    size = rs.RecordCount
    
    
    If size = 0 Then
        W_Upass.Caption = "�˺Ż��������"
        W_Upass.Visible = True
    Else
        '��¼��Ч�������û����� admin / user
        user_type = rs.Fields("type")
        'Label3.Caption = "usertype=" & Str(user_type)
        C_Login.Caption = "��¼�ɹ�"
        Timer1.Enabled = True
    End If
    
    rs.Close
    conn.Close '�Ͽ�����
End Sub

Private Sub Timer1_Timer()
    Call inilabel
    Call textclear
    Login.Hide
    If user_type = 1 Then
        Main_Admin.Show
    Else
        Main_User.Show
    End If
    Timer1.Enabled = False
    C_Login.Caption = "�����¼"
End Sub

Function inilabel() As Integer
    '��������ʾ��ʼ��Ϊ���ɼ�
    W_Uname.Visible = False
    W_Upass.Visible = False
End Function

Function textclear() As Integer
    '����ı���
    I_Uname.Text = ""
    I_Upass.Text = ""
End Function
