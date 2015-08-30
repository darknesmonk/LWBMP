object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1041#1077#1079' '#1080#1084#1077#1085#1080
  ClientHeight = 639
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 841
    Height = 486
    Cursor = crCross
    TabStop = False
    Align = alClient
    Color = clWhite
    ColCount = 1
    DefaultColWidth = 20
    DefaultRowHeight = 20
    DefaultDrawing = False
    FixedColor = clWhite
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goVertLine, goHorzLine]
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnDrawCell = StringGrid1DrawCell
    OnSelectCell = StringGrid1SelectCell
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 486
    Width = 841
    Height = 153
    Align = alBottom
    Caption = #1048#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099
    TabOrder = 1
    object Label1: TLabel
      Left = 13
      Top = 80
      Width = 69
      Height = 23
      Caption = #1042#1099#1089#1086#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 3
      Top = 51
      Width = 79
      Height = 23
      Caption = #1064#1080#1088#1080#1085#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 33
      Top = 22
      Width = 49
      Height = 23
      Caption = #1062#1074#1077#1090':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 105
      Top = 6
      Width = 6
      Height = 13
      Caption = 'X'
    end
    object Label5: TLabel
      Left = 139
      Top = 6
      Width = 6
      Height = 13
      Caption = 'Y'
    end
    object ComboBox1: TComboBox
      Left = 88
      Top = 85
      Width = 121
      Height = 22
      Style = csOwnerDrawVariable
      ItemHeight = 16
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 88
      Top = 51
      Width = 121
      Height = 22
      Style = csOwnerDrawVariable
      ItemHeight = 16
      TabOrder = 1
      OnChange = ComboBox2Change
    end
    object memo1: TMemo
      Left = 238
      Top = 23
      Width = 582
      Height = 65
      Lines.Strings = (
        'memo1')
      ReadOnly = True
      TabOrder = 2
    end
    object Button1: TButton
      Left = 683
      Top = 94
      Width = 137
      Height = 25
      Caption = #1055#1088#1077#1086#1073#1088#1072#1079#1086#1074#1072#1090#1100
      TabOrder = 3
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 238
      Top = 94
      Width = 113
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      TabOrder = 4
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 357
      Top = 94
      Width = 89
      Height = 25
      Caption = #1057#1080#1084#1084#1077#1090#1088#1080#1103
      TabOrder = 5
      OnClick = Button3Click
    end
    object CheckBox1: TCheckBox
      Left = 88
      Top = 113
      Width = 57
      Height = 17
      Caption = #1051#1072#1089#1090#1080#1082
      TabOrder = 6
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 151
      Top = 113
      Width = 81
      Height = 17
      Caption = #1050#1072#1088#1072#1085#1076#1072#1096
      TabOrder = 7
      OnClick = CheckBox2Click
    end
    object ComboBox3: TComboBox
      Left = 89
      Top = 23
      Width = 121
      Height = 22
      Style = csOwnerDrawVariable
      ItemHeight = 16
      ItemIndex = 0
      TabOrder = 8
      Text = #1050#1088#1072#1089#1085#1099#1081
      OnChange = ComboBox3Change
      Items.Strings = (
        #1050#1088#1072#1089#1085#1099#1081
        #1047#1077#1083#1077#1085#1099#1081
        #1057#1080#1085#1080#1081
        #1063#1077#1088#1085#1099#1081
        #1057#1077#1088#1099#1081)
    end
    object CheckBox3: TCheckBox
      Left = 452
      Top = 102
      Width = 153
      Height = 17
      Caption = #1054#1073#1088#1072#1090#1085#1099#1081' '#1087#1086#1076#1089#1095#1077#1090' - 1'
      TabOrder = 9
    end
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 576
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N5: TMenuItem
        Caption = #1053#1086#1074#1099#1081
        OnClick = N5Click
      end
      object N3: TMenuItem
        Caption = #1054#1090#1082#1088#1099#1090#1100
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = N4Click
      end
    end
    object N2: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N2Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '.LWBMP'
    Filter = #1052#1086#1085#1086#1093#1088#1086#1084#1085#1099#1077' '#1088#1080#1089#1091#1085#1082#1080'|*.LWBMP'
    Top = 576
  end
  object OpenDialog1: TOpenDialog
    Filter = #1052#1086#1085#1086#1093#1088#1086#1084#1085#1099#1077' '#1088#1080#1089#1091#1085#1082#1080'|*.LWBMP'
    Left = 24
    Top = 576
  end
end
