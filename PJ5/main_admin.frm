VERSION 5.00
Begin VB.Form Main_Admin 
   Caption         =   "������ҳ"
   ClientHeight    =   4500
   ClientLeft      =   6930
   ClientTop       =   5670
   ClientWidth     =   9435
   LinkTopic       =   "Form1"
   ScaleHeight     =   4500
   ScaleWidth      =   9435
   Begin VB.CommandButton C_Logout 
      Caption         =   "�ǳ�"
      Height          =   495
      Left            =   7680
      TabIndex        =   9
      Top             =   3840
      Width           =   1575
   End
   Begin VB.CommandButton C_Manage 
      Caption         =   "����֤����"
      Height          =   495
      Left            =   7680
      TabIndex        =   8
      Top             =   2400
      Width           =   1575
   End
   Begin VB.CommandButton C_Load 
      Caption         =   "���"
      Height          =   495
      Left            =   7680
      TabIndex        =   7
      Top             =   1680
      Width           =   1575
   End
   Begin VB.CommandButton C_Borrow 
      Caption         =   "�軹��"
      Height          =   495
      Left            =   7680
      TabIndex        =   6
      Top             =   960
      Width           =   1575
   End
   Begin VB.CommandButton C_Query 
      Caption         =   "��ѯ"
      Height          =   495
      Left            =   7680
      TabIndex        =   5
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label Label4 
      Caption         =   "�����Ҳఴť���й���"
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
      Left            =   360
      TabIndex        =   4
      Top             =   1560
      Width           =   3615
   End
   Begin VB.Label Label3 
      Caption         =   "����Ա"
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
      Left            =   2280
      TabIndex        =   3
      Top             =   960
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
      Left            =   360
      TabIndex        =   2
      Top             =   960
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
      Left            =   1320
      TabIndex        =   1
      Top             =   360
      Width           =   1935
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
      Left            =   360
      TabIndex        =   0
      Top             =   360
      Width           =   975
   End
End
Attribute VB_Name = "Main_Admin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    Label1.Caption = Login.u_name '����ҳ��ʾ�û���
End Sub

Private Sub c_query_Click() 'ǰ��ͼ���ѯ����
    'Main_Admin.Hide
    F_Query.Show
End Sub

Private Sub C_Borrow_Click() 'ǰ���軹�����
    'Main_Admin.Hide
    F_BorR.Show
End Sub


Private Sub C_Load_Click() 'ǰ��������
    'Main_Admin.Hide
    Call F_Load.inilabel
    Call F_Load.display_all
    F_Load.Show
End Sub

Private Sub C_Manage_Click() 'ǰ������֤�������
    'Main_Admin.Hide
    F_Manage.Show
End Sub

Private Sub C_Logout_Click() '�ǳ���ť
    Login.user_type = 0
    '�ر�������ҳ��
    F_BorR.Hide
    F_Load.Hide
    F_Manage.Hide
    F_Query.Hide
    neo_reader.Hide
        
    Dim logout_status, tmp
    logout_status = MsgBox("Ҫ���ص�¼������", vbYesNo, "ͼ�����ϵͳ")
    
    If logout_status = vbYes Then
        Main_Admin.Hide
        Login.Show
        Login.user_type = 0
    Else
        tmp = MsgBox("��лʹ��, �ѳɹ��ǳ���", vbInformation, "ͼ�����ϵͳ")
        Main_Admin.Hide
        End
    End If
End Sub


