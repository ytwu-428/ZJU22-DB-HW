VERSION 5.00
Begin VB.Form F_SignIn 
   Caption         =   "�˺�ע��"
   ClientHeight    =   3735
   ClientLeft      =   9360
   ClientTop       =   5595
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3735
   ScaleWidth      =   4560
   Begin VB.TextBox card 
      Height          =   375
      Left            =   1080
      TabIndex        =   14
      Top             =   2400
      Width           =   2535
   End
   Begin VB.CommandButton C_Return 
      Caption         =   "����"
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   120
      Width           =   855
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   500
      Left            =   3840
      Top             =   240
   End
   Begin VB.CommandButton C_SignIn 
      Caption         =   "ע��"
      Height          =   375
      Left            =   1680
      TabIndex        =   7
      Top             =   3240
      Width           =   1215
   End
   Begin VB.TextBox rep 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1080
      PasswordChar    =   "*"
      TabIndex        =   6
      Top             =   1800
      Width           =   2535
   End
   Begin VB.TextBox pass 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   1080
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   1200
      Width           =   2535
   End
   Begin VB.TextBox nam 
      Height          =   375
      Left            =   1080
      TabIndex        =   2
      Top             =   600
      Width           =   2535
   End
   Begin VB.Label Label5 
      Caption         =   "���߱�Ų���Ϊ��"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   1080
      TabIndex        =   15
      Top             =   2760
      Width           =   1935
   End
   Begin VB.Label Label4 
      Caption         =   "���߱�ţ�"
      Height          =   255
      Left            =   240
      TabIndex        =   13
      Top             =   2520
      Width           =   975
   End
   Begin VB.Label success 
      Caption         =   "ע��ɹ���"
      ForeColor       =   &H0000C000&
      Height          =   255
      Left            =   3120
      TabIndex        =   11
      Top             =   3240
      Width           =   1215
   End
   Begin VB.Label L3 
      Caption         =   "���ظ�����"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   1080
      TabIndex        =   10
      Top             =   2160
      Width           =   1935
   End
   Begin VB.Label L2 
      Caption         =   "���벻��Ϊ��"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   1080
      TabIndex        =   9
      Top             =   1560
      Width           =   1935
   End
   Begin VB.Label L1 
      Caption         =   "�û�������Ϊ��"
      ForeColor       =   &H000000FF&
      Height          =   255
      Left            =   1080
      TabIndex        =   8
      Top             =   960
      Width           =   1935
   End
   Begin VB.Label Label3 
      Caption         =   "�ظ����룺"
      Height          =   255
      Left            =   240
      TabIndex        =   5
      Top             =   1920
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "���룺"
      Height          =   255
      Left            =   240
      TabIndex        =   3
      Top             =   1320
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "�û�����"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   720
      Width           =   855
   End
   Begin VB.Label tip 
      Caption         =   "�����˺Ž�����һ���û�Ȩ��"
      Height          =   255
      Left            =   1080
      TabIndex        =   0
      Top             =   240
      Width           =   2535
   End
End
Attribute VB_Name = "F_SignIn"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub C_Return_Click()
    F_SignIn.Hide
    Login.Show
    Call textclear
    Call inilabel
End Sub

Private Sub C_SignIn_Click()
    '��ʼ��������ʾ
    Call inilabel
    
    Dim na, pa, repa As String
    na = nam.Text
    pa = pass.Text
    repa = rep.Text
    
    Dim l_na, l_pa, l_repa, len_card As Integer
    l_na = Len(na)
    l_pa = Len(pa)
    l_repa = Len(repa)
    l_card = Len(card.Text)
    
    Dim isErr As Integer
    isErr = 0
    
    '��������Ƿ�Ϊ��
    If l_na = 0 Then
        L1.Caption = "�û�������Ϊ��"
        L1.Visible = True
        isErr = 1
    End If
    If l_pa = 0 Then
        L2.Caption = "���벻��Ϊ��"
        L2.Visible = True
        isErr = 1
    End If
    If l_repa = 0 Then
        L3.Caption = "���ظ�����"
        L3.Visible = True
        isErr = 1
    End If
    If l_card = 0 Then
        Label5.Caption = "���߱�Ų���Ϊ��"
        Label5.Visible = True
        isErr = 1
    End If
    
    If isErr = 1 Then Exit Sub '�п����˳�
        
    '������������Ƿ�һ��
    If pass.Text <> rep.Text Then
        L3.Caption = "�����������벻һ��"
        L3.Visible = True
        Exit Sub
    End If
    
    '����û���������
    '��������
    Dim conn As New ADODB.Connection
    conn.ConnectionString = "Driver={MySQL ODBC 8.0 Unicode Driver};Data Source=VBmySQL;Server=localhost;Database=booksys;User=root;Password=662258;Option=3"
    conn.Open
    Dim rs As New ADODB.Recordset
    Set rs.ActiveConnection = conn
    rs.CursorLocation = 3
    '��֤�û���Ϣ
    rs.Open "SELECT name FROM user WHERE name='" & nam.Text & "'"
    Dim size As Integer
    size = rs.RecordCount
    If size <> 0 Then
        L1.Caption = "�û����ѱ�ռ��"
        L1.Visible = True
        rs.Close
        conn.Close
        Exit Sub
    End If
    '��鿨���Ƿ����
    Dim rs2 As New ADODB.Recordset
    Set rs2.ActiveConnection = conn
    rs2.CursorLocation = 3
    rs2.Open "SELECT c_no FROM card WHERE c_no='" & card.Text & "'"
    size = rs2.RecordCount
    If size = 0 Then
        Label5.Caption = "��Ų�����"
        Label5.Visible = True
        rs2.Close
        conn.Close
        Exit Sub
    End If
    '�û������ã����� - type = 2
    rs.Close
    
    Dim rs1 As New ADODB.Recordset
    Set rs1.ActiveConnection = conn
    rs1.CursorLocation = 3
    
    rs1.Open "INSERT INTO user VALUES('" & nam.Text & "','" & pass.Text & "', 2, '" & card.Text & "')"
    success.Visible = True
    conn.Close
    success.Visible = True
    Timer1.Enabled = True
End Sub

Private Sub Form_Load()
    '��ʼ��������ʾ
    Call inilabel
End Sub

Private Sub Timer1_Timer() '���ص�¼ҳ�棬�Զ����
    F_SignIn.Hide
    Login.Show
    Login.I_Uname.Text = nam.Text
    Login.I_Upass.Text = pass.Text
    Call textclear
    Call inilabel
    Timer1.Enabled = False
End Sub

Function textclear() As Integer
    nam.Text = ""
    pass.Text = ""
    rep.Text = ""
    card.Text = ""
End Function

Function inilabel() As Integer
    L1.Visible = False
    L2.Visible = False
    L3.Visible = False
    Label5.Visible = False
    success.Visible = False
End Function
