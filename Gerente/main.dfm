object Cliente: TCliente
  Left = 512
  Top = 138
  BiDiMode = bdRightToLeftReadingOnly
  Caption = 'Gerente - Pedro Tomaz Alves - 1996-2018'
  ClientHeight = 621
  ClientWidth = 834
  Color = clBtnFace
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  GlassFrame.Enabled = True
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 21
  object Splitter1: TSplitter
    Left = 200
    Top = 0
    Width = 4
    Height = 598
    ExplicitLeft = 220
    ExplicitHeight = 442
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 598
    Width = 834
    Height = 23
    Panels = <>
    SimplePanel = True
  end
  object Panel_Reports: TPanel
    Left = 204
    Top = 0
    Width = 630
    Height = 598
    Align = alClient
    TabOrder = 0
    object Caderno: TTabbedNotebook
      Left = 1
      Top = 1
      Width = 628
      Height = 596
      Align = alClient
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clBtnText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabOrder = 0
      object TTabPage
        Left = 4
        Top = 32
        HelpContext = 200
        Caption = 'Ferramentas'
        object Bevel1: TBevel
          Left = 0
          Top = 0
          Width = 616
          Height = 38
          Align = alCustom
        end
        object Label1: TLabel
          Left = 303
          Top = 127
          Width = 83
          Height = 21
          Caption = 'Compress'#227'o'
        end
        object Panel_Libera_Botao: TPanel
          Left = 3
          Top = 59
          Width = 286
          Height = 262
          BevelInner = bvLowered
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object B_LiberaBotao: TButton
            Left = 160
            Top = 37
            Width = 121
            Height = 27
            Hint = 'Envia as informacoes ao lado para o Acionar'
            Caption = 'Atualizar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = B_LiberaBotaoClick
          end
          object B_InverteSelect: TButton
            Left = 160
            Top = 100
            Width = 121
            Height = 27
            Hint = 'Inverte a selecao dos botoes'
            Caption = 'Inverter Sele'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = B_InverteSelectClick
          end
          object CheckListBox1: TCheckListBox
            Left = 8
            Top = 37
            Width = 146
            Height = 220
            BiDiMode = bdLeftToRight
            ItemHeight = 21
            Items.Strings = (
              'oi'
              'asfd'
              'sadf'
              'as'
              'dfasdf')
            ParentBiDiMode = False
            TabOrder = 2
          end
          object B_LerAcionar: TButton
            Left = 160
            Top = 152
            Width = 121
            Height = 27
            Hint = 'Le do Acionar.ini '
            Caption = 'Ler do Acionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = B_LiberaBotaoClick
          end
          object B_SalvarAcionar: TButton
            Left = 160
            Top = 208
            Width = 121
            Height = 27
            Hint = 'Salva no Acionar.ini'
            Caption = 'Salvar no Acionar'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 5
            OnClick = B_LiberaBotaoClick
          end
          object StaticText7: TStaticText
            Left = 80
            Top = 9
            Width = 127
            Height = 25
            BiDiMode = bdLeftToRight
            Caption = 'Bot'#245'es do Acionar'
            ParentBiDiMode = False
            TabOrder = 0
          end
        end
        object B_RodarScript: TButton
          Left = 320
          Top = 58
          Width = 81
          Height = 25
          Caption = 'Run Script'
          TabOrder = 1
          OnClick = B_RodarScriptClick
        end
        object B_CapturaTela: TButton
          Left = 456
          Top = 125
          Width = 105
          Height = 25
          Caption = 'Capturar Tela'
          TabOrder = 4
          OnClick = B_CapturaTelaClick
        end
        object Edit1: TEdit
          Left = 400
          Top = 125
          Width = 25
          Height = 29
          TabOrder = 6
          Text = '60'
        end
        object UpDown1: TUpDown
          Left = 425
          Top = 125
          Width = 16
          Height = 29
          Associate = Edit1
          Position = 60
          TabOrder = 5
        end
        object ToolBar4: TToolBar
          Left = 0
          Top = 0
          Width = 620
          Height = 40
          AutoSize = True
          ButtonHeight = 40
          ButtonWidth = 40
          Caption = 'ToolBar1'
          Images = BarraFerra
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          object TB_AbreCDROM: TToolButton
            Left = 0
            Top = 0
            Hint = 'Abrir Unidade de CDROM'
            Caption = 'Abrir CDROM'
            ImageIndex = 6
            ParentShowHint = False
            ShowHint = True
            OnClick = TB_AbreCDROMClick
          end
          object TB_FechaCDROM: TToolButton
            Left = 40
            Top = 0
            Hint = 'Fechar Unidade de CDROM'
            Caption = 'Fechar CDROM'
            ImageIndex = 7
            ParentShowHint = False
            ShowHint = True
            OnClick = TB_FechaCDROMClick
          end
          object TB_TravaCDROM: TToolButton
            Left = 80
            Top = 0
            Hint = 'Travar Unidade de CDROM'
            Caption = 'TB_TravaCDROM'
            ImageIndex = 8
            ParentShowHint = False
            ShowHint = True
            OnClick = TB_TravaCDROMClick
          end
          object TB_LiberaCDROM: TToolButton
            Left = 120
            Top = 0
            Hint = 'Destravar Unidade de CDROM'
            Caption = 'TB_LiberaCDROM'
            ImageIndex = 9
            ParentShowHint = False
            ShowHint = True
            OnClick = TB_LiberaCDROMClick
          end
          object Mensagem: TEdit
            Left = 160
            Top = 0
            Width = 189
            Height = 40
            AutoSize = False
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 0
            Text = ' '
          end
          object TB_Mensagem: TToolButton
            Left = 349
            Top = 0
            Hint = 'Enviar Messagem'
            Caption = 'TB_Mensagem'
            ImageIndex = 19
            OnClick = TB_MensagemClick
          end
        end
        object E_Script_File: TEdit
          Left = 407
          Top = 56
          Width = 144
          Height = 29
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 3
          Text = 'Arquivo de Script'
        end
        object Button1: TButton
          Left = 303
          Top = 157
          Width = 194
          Height = 25
          Caption = 'Transpar'#234'ncia do Acionar'
          TabOrder = 9
          OnClick = Button1Click
        end
        object Edit2: TEdit
          Left = 503
          Top = 156
          Width = 34
          Height = 29
          TabOrder = 8
          Text = '100'
        end
        object UpDown2: TUpDown
          Left = 537
          Top = 156
          Width = 16
          Height = 29
          Associate = Edit2
          Max = 255
          Position = 100
          TabOrder = 7
        end
      end
      object TTabPage
        Left = 4
        Top = 32
        HelpContext = 201
        Caption = 'Programas'
        object LV_Programas: TListView
          Left = 0
          Top = 150
          Width = 620
          Height = 410
          Align = alClient
          BiDiMode = bdLeftToRight
          Columns = <
            item
              Caption = 'Programa'
              Width = 120
            end
            item
              Caption = 'Mapeamento'
              Width = 80
            end
            item
              Caption = 'Drive'
              Width = 40
            end
            item
              AutoSize = True
              Caption = 'Execut'#225'vel'
            end
            item
              Caption = 'Pasta'
            end
            item
              Caption = 'Resolu'#231#227'o'
            end
            item
              Caption = 'Liberar'
              Width = 41
            end
            item
              Caption = 'Iso'
            end>
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          MultiSelect = True
          RowSelect = True
          ParentBiDiMode = False
          ParentFont = False
          PopupMenu = PM_Programas
          TabOrder = 0
          ViewStyle = vsReport
          OnClick = LV_ProgramasClick
          OnColumnClick = ListViewColumnClick
          OnCompare = ListViewCompare
          OnDblClick = LV_ProgramasDblClick
        end
        object Panel_Prog_Dados: TPanel
          Left = 0
          Top = 0
          Width = 620
          Height = 150
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Segoe UI Light'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object SB_Executar: TSpeedButton
            Left = 512
            Top = 21
            Width = 49
            Height = 123
            Caption = 'RUN'
            OnClick = SB_ExecutarClick
          end
          object SB_Programas: TSpeedButton
            Left = 1
            Top = 9
            Width = 44
            Height = 44
            Hint = 'Atualizar lista de programas'
            Flat = True
            Glyph.Data = {
              96070000424D96070000000000003604000028000000200000001B0000000100
              08000000000060030000D30E0000D30E00000001000000010000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A600009C9C006300000084000000FF000000003131009C313100FF3163000084
              84009494940063639C00009C9C00B5B5B5009C9CCE0063CECE00DEDEDE00FF00
              FF0063CEFF009CCEFF009CFFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00190E0E0E0E0E
              0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E190A1717171717
              171717171717171717171717171717171717171717171717170E0A1E1B1C1B1C
              1B1C1C1B1C1B1C1C1C1B1C1B1C1C1B1B1C1B1C1B1B1B1C1B170E0A1E1C1C1C1B
              1C1B1C1C1B1C1C1B1B1C1B1C1B1B1C1C1B1B1B1C1B1B1B1B170E0A1E1B1C1C1C
              1C1C1B1C1C1C1B1B1C1C1B1C1B1C1C1B1B1C1B1B1B1B1B1B170E0A1E1C1C1B1C
              1B1C1C1B1B1C1C1C1B1612161C1B1C1B1B1B1C1B1C1C1B1B170E0A1E1C1C1C1C
              1C1C1C1C1C1C1B0B0B0B1312161C1B1C1C1C1B1B1B1B1C1B170E0A1E1C1B1C1B
              1C1C1B1C1C1B0B0B0B0B0B12121C1C1B1B1B1B1C1B1B1B1B170E0A1E1C1C1C1C
              1C1C1C1C1B0B0B0F0F040B1312161B1C1B1B1C1B1B1C1B1C170E0A1E1C1C1C1C
              1C1C1B1B0B0B0F0D0D0D0B0B13121A1B1C1C1B1C1C1B1B1B170E0A1E1C1C1C1C
              1B1C1B0B0B0F0D0D100D0F001312161B1B1B1C1B1B1B1C1B170E0A1E1C1C1C1C
              1C1C0B0B0F0D0D1016100D040013121B1C1C1B1C1C1B1B1C170E0A1E1C1C1C1C
              1C1C0B0F0D0D101C1B160D04041313161B1C1C1B1B1C1C1B170E0A1E1C1C1C1C
              1C1C1C0D0D101C1B1C1B100D040B13121B1C1B1C1C1C1B1C170E0A1E1C1C1C1C
              1C1C1C1C1B1C1C1C1C1C1B100D041313161B1C1C1B1B1C1B170E0A1E1C1C1C1C
              1C1C1C1C1C1C1C1C1C1C1C160D040013121B1B1C1C1C1B1C170E0A1E1C1C1C1C
              1C1C1C1C1C1C1B1C1B1C1B1C100D040B13161B1B1C1B1C1B170E0A1E1C1C1C1C
              1C1C1C1C1C1C1C1C1C1C1C1C1B100D0013121A1C1C1C1C1B170E0A1E1C1C1C1C
              1C1C1C1C1C1C1C1C1C1C1C1C1B160D040013121B1B1C1C1C170E0A1E1C1C1C1C
              1C1C1C1C1C1C1C1C1C1B1C1B1C1C100D0B0013161B1B1C1B170E0A1E1C1C1C1C
              1C1C1C1C1C1C1C1C1C1C1C1C1C1C1B100D001313161C1B1C17190A1E1E1E1E1E
              1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E15100B001515181E1E00190A1717171717
              171717171717171717170A0A0A0A0A0A0D0D00030A0A0A0A1919190AF61C1C1C
              1C1C1C1C1C1C1C1C1C0A19191919191919100D0B19191919191919190A1E1C1C
              1C1C1C1C1C1C1C1C0A1919191919191919190D0D0B19191919191919190A1E1C
              1C1C1C1C1C1C1C0A19191919191919191919190D0B1919191919191919190A0A
              0A0A0A0A0A0A0A191919191919191919191919190D0B19191919}
            ParentShowHint = False
            ShowHint = True
            OnClick = SB_ProgramasClick
          end
          object Label2: TLabel
            Left = 56
            Top = 103
            Width = 39
            Height = 13
            Caption = 'Liberar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label3: TLabel
            Left = 298
            Top = 103
            Width = 19
            Height = 13
            Caption = 'ISO'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object StaticText1: TStaticText
            Left = 262
            Top = 15
            Width = 75
            Height = 17
            Caption = 'Mapeamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object StaticText2: TStaticText
            Left = 56
            Top = 15
            Width = 57
            Height = 17
            Caption = 'Programa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
          object StaticText3: TStaticText
            Left = 344
            Top = 15
            Width = 33
            Height = 17
            Caption = 'Drive'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object StaticText4: TStaticText
            Left = 58
            Top = 59
            Width = 63
            Height = 17
            Caption = 'Execut'#225'vel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
          end
          object StaticText5: TStaticText
            Left = 382
            Top = 59
            Width = 68
            Height = 17
            Caption = 'Pasta Inicial'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
          end
          object StaticText6: TStaticText
            Left = 395
            Top = 15
            Width = 59
            Height = 17
            Caption = 'Resolu'#231#227'o'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Segoe UI Light'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 13
          end
          object Edit_Liberar: TEdit
            Left = 56
            Top = 118
            Width = 233
            Height = 25
            BiDiMode = bdLeftToRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 6
            Text = 'Exe'
          end
          object Edit_ISO: TEdit
            Left = 295
            Top = 118
            Width = 211
            Height = 25
            BiDiMode = bdLeftToRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 7
            Text = ' File.iso'
          end
          object Edit_Mapeamento: TEdit
            Left = 262
            Top = 29
            Width = 78
            Height = 25
            BiDiMode = bdLeftToRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            Text = 'M:'
          end
          object ComboBox1: TComboBox
            Left = 344
            Top = 28
            Width = 40
            Height = 25
            BiDiMode = bdLeftToRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
            Text = 'C:'
            Items.Strings = (
              'M:'
              'N:'
              'O:'
              'P:'
              'Q:'
              'R:'
              'S:'
              'T:'
              'U:'
              'V:'
              'X:'
              'Y:'
              'W:'
              'Z:'
              'A:'
              'B:'
              'C:'
              'D:'
              'E:'
              'F:'
              'G:'
              'H:'
              'I:'
              'J:'
              'K:'
              'L:')
          end
          object Resolucao: TComboBox
            Left = 392
            Top = 28
            Width = 114
            Height = 25
            BiDiMode = bdLeftToRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
            Text = 'Resolucao'
            Items.Strings = (
              'Tela'
              '800x600x32'
              '1024x768x32'
              '1440x900x32'
              '640x480x32'
              '640x480x16'
              '800x600x16'
              '1024x768x16'
              '640x480x8'
              '800x600x8'
              '1024x768x8')
          end
          object Edit_Programa: TEdit
            Left = 56
            Top = 29
            Width = 200
            Height = 25
            BiDiMode = bdLeftToRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            Text = 'Hello'
          end
          object Edit_Pasta: TEdit
            Left = 382
            Top = 73
            Width = 124
            Height = 25
            BiDiMode = bdLeftToRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 5
            Text = 'C:\'
          end
          object Edit_Executar: TEdit
            Left = 56
            Top = 73
            Width = 320
            Height = 25
            BiDiMode = bdLeftToRight
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Segoe UI Light'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 4
            Text = 'Exe'
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 32
        HelpContext = 202
        Caption = 'Processos'
        object LV_Processos: TListView
          Left = 0
          Top = 44
          Width = 620
          Height = 516
          Align = alClient
          BiDiMode = bdLeftToRight
          Columns = <
            item
              Caption = 'Esta'#231#227'o'
              Width = 60
            end
            item
              AutoSize = True
              Caption = 'Programa'
            end
            item
              Caption = 'Execut'#225'vel'
              Width = 250
            end
            item
              Caption = 'Process ID'
              Width = 100
            end>
          MultiSelect = True
          RowSelect = True
          ParentBiDiMode = False
          SortType = stText
          TabOrder = 0
          ViewStyle = vsReport
          OnColumnClick = ListViewColumnClick
          OnCompare = ListViewCompare
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 620
          Height = 44
          Align = alTop
          TabOrder = 1
          object SB_Ver_Processos: TSpeedButton
            Left = 4
            Top = 4
            Width = 36
            Height = 36
            Hint = 'Lista de Processos'
            Flat = True
            Glyph.Data = {
              360C0000424D360C000000000000360000002800000020000000200000000100
              180000000000000C0000C30E0000C30E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF808080808080808080808080808080808080FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFF000000000000000000000000000000808080FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000000000000000000000808080FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF000000808080808080808080000000000000808080FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080000000808080FFFFFFFFFF
              FF000000808080808080808080000000000000808080FFFFFFFFFFFFFFFFFF00
              0000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF8080808080800000000000000000008080800000
              00000000808080C0C0C0808080000000000000000000000000FFFFFF00000000
              0000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF808080808080000000C0C0C00000000000000000000000
              00808080808080C0C0C080808080808000000000000000000000000080808000
              0000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF808080000000C0C0C0C0C0C0C0C0C00000008080808080
              8080808080808080808080808080808080808080808000000080808080808080
              8080000000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF000000C0C0C0FFFFFFC0C0C0C0C0C0C0C0C08080808080
              80FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000808080808080C0C0C0C0C0C080
              8080808080000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFF
              FFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0FFFFFFFFFFFF000000C0C0C0C0C0C080
              8080000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0000000C0C0C0C0C0
              C0C0C0C0C0C0C0808080808080808080808080C0C0C0FFFFFF00000080808000
              0000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFF808080808080808080000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
              C0C0C0C0000000000000000000808080808080808080C0C0C0FFFFFF80808080
              8080000000000000808080808080808080808080808080FFFFFFFFFFFFFFFFFF
              808080000000000000000000000000C0C0C0FFFFFF000000C0C0C0C0C0C00000
              00000000808080808080808080808080000000808080808080FFFFFF00000080
              8080000000000000000000000000000000000000808080FFFFFFFFFFFF808080
              000000000000000000000000C0C0C0FFFFFF000000C0C0C0C0C0C0C0C0C00000
              00C0C0C0000000000000000000808080808080808080808080C0C0C0FFFFFF80
              8080808080000000000000000000000000000000808080FFFFFFFFFFFF808080
              000000C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF000000C0C0C0C0C0C0000000FFFF
              FF000000C0C0C0FFFFFFC0C0C0000000808080000000808080C0C0C0FFFFFF80
              8080808080808080808080808080000000000000808080FFFFFFFFFFFF808080
              000000C0C0C0FFFFFFC0C0C0C0C0C0FFFFFF000000808080C0C0C0000000FFFF
              FF000000808080000000FFFFFF000000808080000000808080C0C0C0FFFFFF80
              8080C0C0C0C0C0C0808080808080000000000000808080FFFFFFFFFFFF808080
              000000C0C0C0C0C0C0C0C0C0C0C0C0FFFFFF000000808080C0C0C0000000FFFF
              FF000000808080808080C0C0C0000000808080000000C0C0C0C0C0C0FFFFFF80
              8080808080808080808080808080000000000000808080FFFFFFFFFFFF808080
              000000000000000000000000C0C0C0FFFFFF000000808080C0C0C0C0C0C0FFFF
              FFFFFFFF000000000000000000C0C0C0000000C0C0C0C0C0C0C0C0C0FFFFFF80
              8080808080000000000000000000000000000000808080FFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0FFFFFF000000808080C0C0C00000
              00FFFFFFFFFFFFFFFFFFFFFFFF000000000000C0C0C0C0C0C0FFFFFF80808080
              8080000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0FFFFFF000000808080808080C0C0
              C0C0C0C0000000000000000000C0C0C0C0C0C0C0C0C0C0C0C0C0C0C080808080
              8080000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0FFFFFF0000008080808080
              80C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000C0C0C080808000
              0000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF000000C0C0C0C0C0C0FFFFFFFFFFFF0000000000
              00808080808080808080C0C0C0C0C0C0000000C0C0C0C0C0C0C0C0C0C0C0C080
              8080000000000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF000000C0C0C0FFFFFFC0C0C0C0C0C0C0C0C0FFFFFFFFFF
              FF000000000000000000000000000000FFFFFFC0C0C0808080C0C0C0C0C0C080
              8080808080000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF808080000000C0C0C0FFFFFFC0C0C0000000C0C0C0C0C0
              C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0C0C0C0C0000000808080C0C0C080
              8080000000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFF808080808080000000C0C0C00000000000000000000000
              00C0C0C0C0C0C0C0C0C0C0C0C0C0C0C000000000000000000000000080808000
              0000000000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFF808080808080000000000000808080FFFFFFFFFF
              FF000000C0C0C0C0C0C0C0C0C0000000000000808080FFFFFFFFFFFF00000000
              0000808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF808080808080808080FFFFFFFFFFFFFFFF
              FF000000C0C0C0FFFFFFC0C0C0000000000000808080FFFFFFFFFFFFFFFFFF80
              8080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF000000C0C0C0C0C0C0C0C0C0000000000000808080FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF000000000000000000000000000000000000808080FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF808080808080808080808080808080808080808080FFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = SB_Ver_ProcessosClick
          end
          object SB_Kill_Process: TSpeedButton
            Left = 100
            Top = 4
            Width = 36
            Height = 36
            Hint = 'Matar Processo'
            Flat = True
            Glyph.Data = {
              76020000424D7602000000000000760000002800000020000000200000000100
              04000000000000020000C30E0000C30E00001000000010000000000000000000
              80000000C0004040FF00808080008080FF00C0C0C000FFFFFF00000000000000
              0000000000000000000000000000000000000000000000000000777777777777
              7777777777777777777777777777777777444444777777777777777777777777
              7700000477777777777777777777777770000004777777777777777777777777
              7044400477777777777777777774404770444004777047777777777777440004
              0046400007000477777777777440610004464400004000477777777774063314
              4444444404442004777777777067353147777704466440047777777777063753
              1666667706620047777777777770637516644446703000477777777444066637
              3100044463140044444777400006706351444404310400000047740000670666
              3310044316744000004774066667066073316031467444440047740676670460
              7033131046746644004774066667046070433140667444440047740000670466
              7733131666744000004777777706704603317031674400477777777777067043
              3310066316440047777777777770633531666666314000477777777777063753
              1444660663140004777777777063753170000076466240047777777774033336
              6777776604640047777777777440600006666600004004777777777777440047
              7066600477004777777777777774447770676004777477777777777777777777
              7066600477777777777777777777777770000004777777777777777777777777
              7444444477777777777777777777777777777777777777777777}
            ParentShowHint = False
            ShowHint = True
            OnClick = SB_Kill_ProcessClick
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 32
        HelpContext = 203
        Caption = 'Registro'
        object Splitter2: TSplitter
          Left = 145
          Top = 3
          Height = 557
          ExplicitHeight = 409
        end
        object Splitter3: TSplitter
          Left = 0
          Top = 0
          Width = 620
          Height = 3
          Cursor = crVSplit
          Align = alTop
          ExplicitWidth = 546
        end
        object LV_Registro: TListView
          Left = 148
          Top = 3
          Width = 472
          Height = 557
          Align = alClient
          BiDiMode = bdLeftToRight
          Columns = <
            item
              Caption = 'IP/Name'
              Width = 100
            end
            item
              AutoSize = True
              Caption = 'Report'
            end
            item
              Alignment = taCenter
              Caption = 'Date'
              Width = 70
            end
            item
              Alignment = taCenter
              Caption = 'Time'
              Width = 60
            end>
          ParentBiDiMode = False
          SmallImages = IL_Ligacao
          TabOrder = 0
          ViewStyle = vsReport
          OnColumnClick = ListViewColumnClick
          OnCompare = ListViewCompare
        end
        object Panel_Registro1: TPanel
          Left = 0
          Top = 3
          Width = 145
          Height = 557
          Align = alLeft
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          TabOrder = 1
        end
      end
      object TTabPage
        Left = 4
        Top = 32
        HelpContext = 204
        Caption = 'Internet'
        object LV_Internet: TListView
          Left = 0
          Top = 39
          Width = 620
          Height = 521
          Align = alClient
          BiDiMode = bdLeftToRight
          Columns = <
            item
              Caption = 'IP/Name'
              Width = 100
            end
            item
              AutoSize = True
              Caption = 'Endere'#231'o'
            end
            item
              Caption = 'Date'
              Width = 70
            end
            item
              Caption = 'Time'
              Width = 60
            end>
          HotTrack = True
          RowSelect = True
          ParentBiDiMode = False
          SmallImages = IL_Ligacao
          TabOrder = 0
          ViewStyle = vsReport
          OnColumnClick = ListViewColumnClick
          OnCompare = ListViewCompare
          OnDblClick = LV_InternetDblClick
        end
        object ToolBar1: TToolBar
          Left = 0
          Top = 0
          Width = 620
          Height = 39
          AutoSize = True
          ButtonHeight = 39
          ButtonWidth = 41
          Caption = 'ToolBar1'
          Images = BarraFerra
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          object TB_Propriedades: TToolButton
            Left = 0
            Top = 0
            Hint = 'Detalhes do Micro'
            Caption = 'Propriedades'
            ImageIndex = 10
            ParentShowHint = False
            ShowHint = True
          end
          object TB_Internet: TToolButton
            Left = 41
            Top = 0
            Hint = 'Mostra Endere'#231'o de Internet'
            Caption = 'Internet'
            ImageIndex = 11
            ParentShowHint = False
            ShowHint = True
            OnClick = TB_InternetClick
          end
          object TB_EraseIexplorer: TToolButton
            Left = 82
            Top = 0
            Hint = 'Apaga arquivos do cache do IExplorer'
            Caption = 'TB_EraseIexplorer'
            ImageIndex = 12
            ParentShowHint = False
            ShowHint = True
            OnClick = TB_EraseIexplorerClick
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 32
        HelpContext = 205
        Caption = 'Relat'#243'rios'
        object LV_Report: TListView
          Left = 0
          Top = 0
          Width = 620
          Height = 560
          Align = alClient
          BiDiMode = bdLeftToRight
          Columns = <
            item
              Caption = 'IP/Name'
              Width = 100
            end
            item
              AutoSize = True
              Caption = 'Report'
            end
            item
              Alignment = taCenter
              Caption = 'Date'
              Width = 70
            end
            item
              Alignment = taCenter
              Caption = 'Time'
              Width = 60
            end>
          ParentBiDiMode = False
          SmallImages = IL_Ligacao
          TabOrder = 0
          ViewStyle = vsReport
          OnColumnClick = ListViewColumnClick
          OnCompare = ListViewCompare
        end
      end
    end
  end
  object Panel_Micros: TPanel
    Left = 0
    Top = 0
    Width = 200
    Height = 598
    Align = alLeft
    Alignment = taLeftJustify
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI Light'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object LV_Maquinas: TListView
      Left = 1
      Top = 114
      Width = 198
      Height = 445
      Align = alClient
      BiDiMode = bdLeftToRight
      Columns = <>
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      IconOptions.AutoArrange = True
      LargeImages = IL_Comp1
      MultiSelect = True
      ParentBiDiMode = False
      ParentFont = False
      PopupMenu = PM_Maquinas
      SmallImages = IL_Ligacao
      TabOrder = 0
      OnSelectItem = LV_MaquinasSelectItem
    end
    object ToolBar2: TToolBar
      Left = 1
      Top = 559
      Width = 198
      Height = 38
      Align = alBottom
      AutoSize = True
      ButtonHeight = 38
      ButtonWidth = 40
      Caption = 'ToolBar1'
      Images = BarraFerra
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      object SB_Reiniciar: TToolButton
        Left = 0
        Top = 0
        Hint = 'Reiniciar Windows'
        Caption = 'Reiniciar'
        ImageIndex = 15
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_ReiniciarClick
      end
      object SB_Desligar: TToolButton
        Left = 40
        Top = 0
        Hint = 'Desligar Windows'
        Caption = 'Desligar'
        ImageIndex = 16
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_DesligarClick
      end
      object TB_DesligaMonitor: TToolButton
        Left = 80
        Top = 0
        Hint = 'Monitor ZZZZ....'
        Caption = 'Desligar Monitor'
        ImageIndex = 17
        ParentShowHint = False
        ShowHint = True
        OnClick = TB_DesligaMonitorClick
      end
      object TB_WalkOnLAN: TToolButton
        Left = 120
        Top = 0
        Hint = 'Ligar Computador'
        Caption = 'TB_WalkOnLAN'
        ImageIndex = 18
        OnClick = TB_WalkOnLANClick
      end
    end
    object ToolBar3: TToolBar
      Left = 1
      Top = 1
      Width = 198
      Height = 88
      AutoSize = True
      ButtonHeight = 40
      ButtonWidth = 40
      Caption = 'ToolBar1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      Images = BarraFerra
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      object SB_Enderecar: TToolButton
        Left = 0
        Top = 0
        Hint = 'Pesquisar Servidores'
        Caption = 'Enderecar'
        ImageIndex = 0
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_EnderecarClick
      end
      object SB_Icone: TToolButton
        Left = 40
        Top = 0
        Hint = 'Icones grandes'
        Caption = 'Icone'
        ImageIndex = 1
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_IconeClick
      end
      object SB_Lista: TToolButton
        Left = 80
        Top = 0
        Hint = 'lista'
        Caption = 'Lista'
        ImageIndex = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_ListaClick
      end
      object ToolButton1: TToolButton
        Left = 0
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 6
        Wrap = True
        Style = tbsSeparator
      end
      object SB_Conectar: TToolButton
        Left = 0
        Top = 48
        Hint = 'Conectar Servidor'
        Caption = 'Conectar'
        ImageIndex = 4
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_ConectarClick
      end
      object SB_Desconectar: TToolButton
        Left = 40
        Top = 48
        Hint = 'Desconectar Servidor'
        Caption = 'Desconectar'
        ImageIndex = 5
        ParentShowHint = False
        ShowHint = True
        OnClick = SB_DesconectarClick
      end
      object ToolButton2: TToolButton
        Left = 80
        Top = 48
        Width = 8
        Caption = 'ToolButton2'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object SB_Sair: TToolButton
        Left = 88
        Top = 48
        Hint = 'Sair do Gerente'
        Caption = 'Sair'
        ImageIndex = 20
        OnClick = SB_SairClick
      end
    end
    object Panel_Micro_Total: TPanel
      Left = 1
      Top = 89
      Width = 198
      Height = 25
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object L_Conectado: TLabel
        Left = 1
        Top = 1
        Width = 196
        Height = 23
        Align = alClient
        Alignment = taCenter
        BiDiMode = bdLeftToRight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 5
        ExplicitHeight = 16
      end
    end
  end
  object IL_Comp1: TImageList
    Height = 32
    Width = 32
    Left = 248
    Top = 381
    Bitmap = {
      494C010105000700040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000800000004000000001002000000000000080
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C0C0C000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808000FFFF
      FF00808080000000000080808000808080000000000080808000808080000000
      0000808080008080800000000000808080008080800000000000808080008080
      8000000000008080800080808000000000008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000FFFFFF008080800000000000FFFFFF008080800000000000FFFFFF008080
      800000000000FFFFFF008080800000000000FFFFFF008080800000000000FFFF
      FF008080800000000000FFFFFF008080800000000000FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000808080008080800000000000FFFFFF008080800000000000FFFF
      FF008080800000000000FFFFFF008080800000000000FFFFFF00808080000000
      0000FFFFFF008080800000000000FFFFFF008080800000000000FFFFFF000000
      0000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C000C0C0C0000080000000800000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C000C0C0C00000FF000000FF0000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000C0C0C000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C0008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004040FF004040FF000000
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C000000000008080
      800080808000C0C0C00080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000808080004040FF008080FF004040
      FF00000080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      00008080800080808000C0C0C000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF004040FF00FFFFFF008080
      FF004040FF0000008000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000C000C0C0C000808080008080
      8000000000008080800080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C0004040FF00FFFF
      FF008080FF0000008000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF004040FF00FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000808080004040
      FF00FFFFFF004040FF0000008000808080008080800080808000808080008080
      800080808000808080004040FF0000008000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000008080
      00004040FF008080FF0000008000000000000000000000000000000000000000
      0000000000004040FF000000800080808000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000008080
      0000808000004040FF004040FF0000008000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF004040FF00000080008080000080808000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000008080
      000080800000000000004040FF004040FF0000008000FFFFFF00FFFFFF004040
      FF0000008000808000008080000080808000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000008080
      00008080000080808000FFFFFF004040FF004040FF00000080004040FF000000
      800000000000808000008080000080808000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000008080
      00008080000080808000FFFFFF00800000004040FF004040FF0000008000FF00
      000000000000808000008080000080808000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000008080
      0000FFFF000080808000FFFFFF004040FF004040FF00000080004040FF000000
      800080800000808000008080000080808000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000008080
      0000FFFF0000000000004040FF004040FF000000800000000000000000004040
      FF0000008000808000008080000080808000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C000000000008080
      00004040FF004040FF004040FF00000080008080000080800000808000008080
      00004040FF00000080008080000080808000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF00C0C0C0004040FF004040
      FF008080FF004040FF0000008000000000000000000000000000000000000000
      0000000000004040FF000000800080808000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000FFFFFF004040FF00FFFFFF008080
      FF004040FF000000800080808000808080008080800080808000808080008080
      800080808000808080004040FF0000008000FFFFFF00C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080004040FF00FFFFFF008080FF004040
      FF0000008000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000C000C0C0C000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040FF004040FF004040FF004040
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040202000FFA0A00080808000FFA0A00080808000FFA0
      A00080808000FFA0A00080808000FFA0A0008060600080808000806060004040
      4000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F6060009F6060009F60
      60009F6060009F6060009F6060009F6060009F6060009F6060009F6060009F60
      60009F6060009F6060009F6060009F6060009F6060009F6060009F6060009F60
      60009F6060009F6060009F6060009F6060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000020202000FF9F9F0080808000CF9F9F0080808000CF9F
      9F0080808000CF9F9F0070707000CF9F9F009F606000808080009F6060004040
      4000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000402020004020200080808000FFC0C0004060600080C0C00080C0C00080A0
      A000FFC0C000FFA0A00080A0A0004060A0004040400080C0C000FFA0A0004040
      4000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000202020003F3F3F00FFCFCF00FFCFCF00C0D0
      EF00FFCFCF00C0D0EF00C0D0EF00C0D0EF00C0D0EF00FFCFCF00FFCFCF00C0D0
      EF00FFCFCF00CF9F9F00609F9F0070707000609F9F009F606000306060009F60
      60009F6060009F6060003F3F3F009F6060000000000000000000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000202020002020200080808000D0D0D00030606000B0B0B000B0B0B00090AF
      AF00CFCFCF00CF9F9F00609F9F0030609F004F4F4F009FCFCF00CF9F9F004040
      4000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004020
      20008060600040202000FFC0C0004060A00080C0C00040606000FFFFFF00FFFF
      FF00FFA0A000FFC0C0004040400080C0C0008060A00080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000202020005F5F5F00609F9F00FFCFCF00609F9F003060
      6000CF9F9F0030606000609F9F00CF9F9F00609F9F00CF9F9F00609F9F00CF9F
      9F00609F9F00CF9F9F00609F9F0030609F0090AFAF0030609F0090AFAF007070
      700090AFAF00FFCFCF0090AFAF009F6060000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002020
      20009F60600020202000C0C0C00030609F00B0B0B00030606000E0E0E000E0E0
      E000CF9F9F00C0C0C0004F4F4F00B0B0B00060609F0080808000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004040008060
      6000806060004040400040202000402020004060600040202000406060004020
      200040606000402020004060A000806060004060A00080C0C000804040000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000202020009F6060003F3F3F00FFCFCF0030606000EFEFEF003060
      9F00EFEFEF00CF9F9F00EFEFEF009FCFCF00FFCFCF00EFEFEF009FCFCF00FFCF
      CF00CF9F9F00FFCFCF003F3F3F00FFCFCF003F3F3F00707070003F3F3F003060
      9F00609F9F00C0D0EF0000303000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000FFFFFF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003030009F60
      60009F6060003F3F3F0020202000202020003060600020202000306060002020
      2000306060002020200030609F009F60600030609F009FCFCF00603030000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004040008060
      600000808000FFC0C000FFC0FF00FFC0C000FFC0FF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFC0FF00FFC0C000FFC0FF00FFC0C000FFFFFF00804040000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002020
      20000F0F0F00202020000030300090AFAF0090AFAF009F60600030609F009F60
      6000CF9F9F0030606000CF9F9F00FFCFCF0090AFAF009FCFCF00FFCFCF00CF9F
      9F00FFCFCF0030609F0090AFAF003F3F3F0090AFAF0030609F009F606000609F
      9F00FFCFCF000030300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003030009F60
      600000808000C0C0C000C0D0EF00FFCFCF00C0D0EF00EFEFEF00EFEFEF00CFFF
      FF00EFEFEF00C0D0EF00FFCFCF00C0D0EF00FFCFCF00FFFFFF00603030000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004040000080
      8000FFC0FF00FFA0C0008060600040406000404040004060600080A0A00080A0
      A0008080800040406000002020004040400080A0A000FFC0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000202020006060
      6000FFCFCF00202020009F606000FFCFCF009F60600030606000C0D0EF003060
      9F00EFEFEF00CF9F9F0030609F009FCFCF00EFEFEF00FFCFCF00CF9F9F00FFCF
      CF0030606000FFCFCF003F3F3F00FFCFCF003F3F3F00609F9F0060609F0090AF
      AF003F3F3F000030300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003030000080
      8000C0D0EF00CF9FCF0060606000303060003F3F3F003060600090AFAF0090AF
      AF008080800030306000101010003F3F3F0090AFAF00C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000040400080A0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000020200000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000020202000606060009F60
      6000C0D0EF0020202000609F9F00FFCFCF009F60600090AFAF0030609F003060
      6000CF9F9F0030606000CF9F9F00FFCFCF00CF9F9F00CF9F9F00FFCFCF007070
      7000FFCFCF003F3F3F00609F9F00306060009F60600030609F00707070003F3F
      3F00003030000030300000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003030009F9F
      CF000F0F0F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000F0F0F001010100000000000000000000000
      0000300000003000000030000000300000003000000030000000300000003000
      0000300000003000000030000000300000000000000000000000000000000040
      40000040400080A0A000FFC0C000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFC0C000FFA0A00000202000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F00606060009F6060000080
      8000FFCFCF0030609F0000303000202020001010100020202000101010002020
      200010101000306060003F3F3F00306060003F3F3F009F6060003F3F3F009F60
      60003F3F3F009F6060003060600030609F009F6060003060600030609F009F60
      60009FCFCF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000030
      30000030300090AFAF00FFCFCF00DFDFDF00CFFFFF00CFFFFF00CFFFFF00CFFF
      FF00CFFFFF00CFFFFF00CFFFFF00DFDFDF00CF9F9F001010100000000000CFCF
      9F00FFCF6000CFCF9F00FFCF6000CFCF9F00FFCF6000CFCF9F00FFCF6000CFCF
      9F00FFCF6000CFCF9F00FFCF6000CFCF9F000000000000000000004040000040
      400080C0C000FFFFFF0000000000000000000000000000000000000000008040
      000080400000804000008040000080400000FFFFFF0040202000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F009F606000008080009F60
      6000EFEFEF00FFCFCF00C0D0EF00FFCFCF00C0D0EF00FFCFCF00C0D0EF00FFCF
      CF00C0D0EF00FFCFCF00C0D0EF00C0D0EF00EFEFEF00CFFFFF00EFEFEF00EFEF
      EF00C0D0EF00C0D0EF00C0D0EF00FFCFCF00FFCFCF00FFCFCF00C0D0EF00FFCF
      CF00EFEFEF000030300000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      0000000000000000000000000000000000000000000000000000003030000030
      3000B0B0B000CFFFFF00FFCF6000CF603000CF603000CF603000CF603000CF60
      3000CF603000CF603000CF603000CF603000FFFFFF002F2F2F00000000000000
      0000000000000000000000000000000000000000000000000000000000003000
      000030000000FFCF6000CFCF9F000000000000000000000000004040400080C0
      C000FFC0C000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000080400000FFFFFF0040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F00008080009F6060009090
      9000EFEFEF00EFEFEF00FFCFCF00FFCFCF0090AFAF009F6060003F3F3F000000
      0000101010001F1F1F0000303000003030002020200020202000003030002020
      20001F1F1F001010100000000000003030009F606000609F9F00FFCFCF00C0D0
      EF00EFEFEF000030300000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080000000
      00000000000000000000000000000000000000000000000000003F3F3F00B0B0
      B000FFCFCF00FFFFFF00FF9F3000FFCF3000FFCF3000FFCF3000FFCF3000FFCF
      3000FF9F0000FF9F0000FF9F0000FF600000FFFFFF0040404000000000000000
      000000000000000000000000000000000000000000003000000030000000FFCF
      6000CFCF9F0000000000000000000000000000000000000000004040400080C0
      C00080C0C000FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000080400000FFFFFF0040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F009F60600090909000FFCF
      CF0030609F009F6060003030600020202000000000000030300030609F009F60
      6000609F9F00609F9F00FFCFCF00C0D0EF00EFEFEF00CFFFFF00EFEFEF00FFCF
      CF00609F9F0030609F009F606000000000000F0F0F0030609F00202020003060
      9F009F6060000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00808080000000
      00000000000000000000000000000000000000000000000000003F3F3F00B0B0
      B000B0B0B000FFFFFF00CF9F6000FFCF6000FFFF9F00FFFF6000FFFF6000FFCF
      6000FFCF3000FF9F6000FF9F0000CF603000FFFFFF0040404000000000000000
      00000000000000000000000000003000000030000000FFCF6000CFCF9F003000
      00003000000030000000300000003000000000000000000000004040400080C0
      C000FFC0C000FFFFFF0000000000808080000000000080808000000080000000
      000000000000000000000000000000000000FFFFC00040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F0090909000FFCFCF003060
      60009F6060002020200000303000000000009F60600030609F00003030003F3F
      3F002020200000000000000000000000000000000000000000000F0F0F001F1F
      1F0000303000303060003060600030609F00003060001F1F1F009F6060003F3F
      3F00000000000000000000000000000000000000000000000000000000000000
      00000000000080808000C0C0C000000000000000000000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF00808080000000
      00000000000000000000000000000000000000000000000000003F3F3F00B0B0
      B000FFCFCF00F0FFFF00CF9F6000FFFF6000FFFF6000FFFF6000FFFF6000FFFF
      9F00FFCF3000FFCF3000FF9F0000CF603000FFFFCF0040404000CF300000CF30
      0000000000000000000000000000CFCF9F00FFCF6000CFCF9F00FFCF6000CFCF
      9F00FFCF6000CFCF9F00FFCF6000CFCF9F00000000000000000040404000FFC0
      C00080C0C000FFFFFF000000000000000000FFC0C0004040FF004040FF000000
      800000000000000000000000000000000000FFFFC00040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003F3F3F00FFCFCF0030609F000030
      3000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000F0F0F000F0F0F000F0F0F000F0F
      0F000F0F0F0000000000000000000F0F0F000F0F0F00003030000F0F0F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      00000000000000000000000000000000000000000000000000003F3F3F00FFCF
      CF00B0B0B000F0FFFF00CF9F6000FFFF6000FFFF9F00FFFF9F00FFFF6000FFFF
      6000FFCF6000FFCF3000FF9F0000CF603000FFFFCF0040404000CF300000CF30
      0000003000000000000000000000000000000000000000000000000000003000
      000030000000FFCF6000CFCF9F000000000000000000000000004040400080C0
      C000FFC0C000FFFFFF000000000080808000FFC0C0004040FF008080FF004040
      FF0000008000000000000000000000000000FFFFA00040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000030
      30009F6060000080800090AFAF00FFCFCF00FFCFCF00FFCFCF00FFCFCF00FFCF
      CF00FFCFCF00FFCFCF00FFCFCF00B0B0B000B0B0B000B0B0B000B0B0B000B0B0
      B000CF9F9F00CF9F9F00CF9F9F0030609F003060600030606000306060000030
      6000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
      00000000000000000000000000000000000000000000000000003F3F3F00B0B0
      B000FFCFCF00F0FFFF00CF606000FFFF9F00FFFF9F00FFFF9F00FFFF6000FFFF
      9F00FFCF6000FFCF3000FF9F3000CF603000FFFF9F0040404000003000000030
      000000603000000000000000000000000000000000003000000030000000FFCF
      6000CFCF9F00000000000000000000000000000000000000000040404000FFC0
      A000FFC0C000FFFFFF000000000000000000808080004040FF00FFFFFF008080
      FF004040FF00000080000000000000000000FFFF600040404000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000003030009F60
      60008080800090AFAF00CFFFFF00FFCFCF00FFFF9F00CFFFFF00FFFF9F00CFFF
      FF00FFFFCF00CFFFFF00FFFFCF00CFFFFF00FFFFCF00CFFFFF00FFFFCF00CFFF
      FF00FFFFCF00CFFFFF00FFFFCF00CFFFFF00FFFFCF00CFFFFF00FFCFCF00CF9F
      9F00000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000030CF30003F3F3F00FFCF
      9F00FFCFCF00F0F0F000CF606000FFFF6000FFFF9F00FFFF9F00FFFF9F00FFCF
      6000FFCF6000FF9F3000FF9F3000FF600000FFFF600040404000008000000060
      30000060300000300000000000000000000000000000FFCF6000CFCF9F000000
      000000000000000000000000000000000000000000000000000040404000FFC0
      C000FFFFFF00FFFFFF00804000008040000000000000000000004040FF00FFFF
      FF008080FF00000080004000000080400000FFFFC00040404000000000000000
      00000000000000000000402020004040FF004020200040202000402020004020
      200040202000402020004020200040202000000000003F3F3F009F6060008080
      8000CF9F9F0090AFAF00CFFFFF00CFCF6000FF9F3000CF603000CF603000CF60
      3000CF603000CF603000CF603000CF603000CF603000CF603000CF603000CF60
      3000CF603000CF603000CF603000CF603000CF603000CF9F3000FFFFCF0090AF
      AF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000000000000000
      0000000000000000000000000000000000000000000030CF30003F3F3F00FFCF
      CF00F0F0F000CFFFFF00CF9F9F00CF6060003000000030000000300000003000
      000030000000300000003000000060300000FFEFCF004F4F4F00006030000080
      000000603000006030002F2F2F002F2F2F002F2F2F002F2F2F002F2F2F002F2F
      2F002F2F2F002F2F2F002F2F2F002F2F2F00000000000000000040404000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF004040
      FF00FFFFFF004040FF0000008000FFFFFF00FFC0C00040404000000000000000
      000000000000402020004040FF0000008000FFC0C00080808000FFC0C0008080
      800080A0A000806060008080800080606000000000003F3F3F0080808000CF9F
      9F00009F9F0090AFAF00CFFFFF00FF9F3000FF9F6000FFCF3000FFCF3000FFCF
      3000FFCF3000CF9F6000FFCF3000CF9F6000FFCF3000FF9F3000FFCF3000FF9F
      3000FF9F3000CF9F0000FF9F3000FF9F3000CF9F0000CF603000FFFFCF00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00080808000000000000000
      00000000000000000000000000000000000030CF300060FF60003F3F3F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFF
      FF00CFFFFF00F0FFFF00F0FFFF00FFFFFF00FFCFCF0040404000008000000060
      3000008000002F2F2F00B0B0B000C0C0C000D0D0D00080808000DFDFDF008080
      8000909090009F60600080808000606060000000000000000000000000008080
      8000FFA0A000FFA0A000FFA0A000FFA0A000FFA0A000FFA0A000FFA0A000FFA0
      A0004040FF008080FF000000800080A0A0008060600000000000000000000020
      2000002020004040FF000000800040606000FFC0C000FFC0C000FFC0C00080A0
      A00040A0A00040404000FFC0C00080404000000000003F3F3F00CF9F9F00009F
      9F00CF9F9F00FFCFCF00CFFFFF00FF9F6000FFCF3000FFCF6000FFCF6000FFCF
      6000FFCF6000FFCF3000FFCF6000FFCF3000FFCF6000FFCF3000FF9F3000FFCF
      3000FF9F3000FF9F3000CF9F0000FF9F3000FF9F3000CF603000FFFFCF00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      80008080800080808000FFFFFF00C0C0C000C0C0C00080808000000000000000
      00000000000000000000000000000000000030CF30009FFF9F009FFF60008080
      8000CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F
      9F00CF9F9F00CF9F9F00CF9F9F00609F9F009F606000009F3000008000001F1F
      1F001F1F1F00909090009FCFCF0030606000CFCFCF00CFCFCF00FFCFCF009090
      9000309F9F004F4F4F00C0C0C000603030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004040FF004040FF00000080000000000000000000404040008060
      60004040FF000000800000404000404040004060600040606000406060000040
      6000806060004060A0000020200080404000000000003F3F3F00009F9F00CF9F
      9F00009F9F00FFCFCF00CFFFFF00FF9F6000FFCF6000FFCF6000FFCF9F00FFCF
      9F00FFCF6000FFCF9F00FFCF6000FFCF9F00FFCF6000FFCF6000FFCF3000FF9F
      3000FFCF3000FF9F3000FF9F3000CF9F0000CF9F0000CF603000FFFFCF00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C00080808000000000000000
      00000000000000000000000000000000000030CF3000F0F0F0009FFF9F009FFF
      60009FFF600060FF300000600000FF9F0000FFCF3000FF9F0000FF9F0000FF9F
      0000FF9F0000FF6030000060300060CF3000009F3000009F3000303030009F60
      60001F1F1F001F1F1F000030300040404000306060005F5F5F00505050000030
      60006060600030609F001F1F1F00603030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004040FF004040FF000000800040404000806060004040
      FF0000008000FFC0C000FFC0FF00FFC0FF00FFFFFF00FFFFFF00FFC0FF00FFC0
      C000FFC0C000FFFFFF00FFC0C00080404000000000003F3F3F00CF9F9F00009F
      9F00CF9F9F00FFCFCF00CFFFFF00FF9F6000FFCF6000FFFF6000FFCF9F00FFFF
      6000FFCF9F00FFFF6000FFCF9F00FFFF6000FFCF9F00FFCF6000FFCF6000FFCF
      3000FF9F3000FFCF3000FF9F3000FF9F3000FF9F3000CF603000FFFFCF00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C00080808000000000000000
      000000000000000000000000000000000000F0CFA00030CF3000DFDFDF009FFF
      9F009FFF9F0060FF300000600000FFCF3000FF9F0000FFCF3000FF9F0000FF9F
      0000FF9F00000080000060CF300060CF300060CF3000303030009F6060007070
      700090AFAF00CFCFCF00C0D0EF00C0D0EF00D0E0E000CFFFFF00C0D0EF00CFCF
      CF00D0D0D000FFFFFF00CFCFCF00603030000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004040FF004040FF00000080004040FF000000
      8000FFA0C0004040400000004000000000004060600080808000404040000000
      00000000000080A0A0008040400000000000000000003F3F3F00009F9F00CF9F
      9F0090AFAF00FFCFCF00CFFFFF00CF9F6000FFCF9F00FFCF9F00FFFF6000FFFF
      6000FFFF6000FFFF6000FFFF6000FFCF9F00FFFF6000FFCF9F00FFCF6000FFCF
      3000FFCF3000FF9F3000FFCF3000CF9F0000CF9F0000CF603000FFFFCF00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C00080808000000000000000
      000000000000000000000000000000000000F0CFA000FFFFCF0030CF30009FFF
      CF009FFF9F000060000000600000FF9F0000FFCF3000FF9F0000FFCF3000FF9F
      0000FF9F000000800000CFFFCF0000800000009F3000303030007070700060CF
      CF00CF9FCF003F3F3F00000030000F0F0F003060600070707000404040000000
      000000000000609F9F0060303000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040FF004040FF00000080004040
      6000000000000020200000202000002020000020200000202000002020000020
      200000202000002020000000000000000000000000003F3F3F00CF9F9F0090AF
      AF00CF9F9F00FFCFCF00CFFFFF00CF9F6000FFCF6000FFFF6000FFFF6000FFFF
      6000FFFF9F00FFFF6000FFFF6000FFFF6000FFCF9F00FFFF6000FFCF6000FFCF
      3000FFCF3000FFCF3000FF9F3000FF9F3000FF9F3000CF603000FFFF9F00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000FFFFFF0080808000000000000000
      000000000000000000000000000000000000F0CFA000FFFFCF00FFFFCF0030CF
      300030CF3000CFCF3000FFCF3000FFCF3000FF9F0000FFCF3000FF9F0000FFCF
      3000FF9F0000FF9F000000800000FF603000008000004F4F4F00707070003030
      6000000000001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F
      1F001F1F1F001F1F1F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004040FF004040FF00000080004040FF000000
      8000FFC0C000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFC0C0000020200000000000000000003F3F3F0090AFAF00CF9F
      9F0090AFAF00FFCFCF00CFFFFF00CF9F6000FFCF9F00FFFF6000FFFF9F00FFFF
      9F00FFFF9F00FFFF9F00FFFF6000FFFF6000FFFF6000FFCF9F00FFCF9F00FFCF
      3000FFCF3000CF9F6000FFCF3000CF9F0000CF9F0000CF603000FFFF9F00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C00080808000000000000000
      000000000000000000000000000000000000F0CFA000FFFFFF00FFFFCF00FFFF
      3000FFFF3000FFCF3000FFCF3000FFCF3000FFCF3000FF9F0000FFCF30000080
      000000603000FF9F0000FF9F0000FF603000FF603000FF6030003F3F3F000030
      3000FFCFCF00F0F0F000CFFFFF00F0F0F000CFFFFF00F0F0F000CFFFFF00F0F0
      F000CFFFFF00FFCFCF001F1F1F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004040FF004040FF000000800040404000806060004040
      FF00000080000000000000000000000000000000000000000000000000008040
      000080400000FFFFFF000020200000000000000000003F3F3F00CF9F9F0090AF
      AF00B0B0B000FFCFCF00CFFFFF00CF606000FFCF6000FFFF6000FFFF9F00FFFF
      9F00FFFF9F00FFFF9F00FFFF9F00FFFF6000FFFF6000FFFF6000FFCF9F00FFCF
      3000FFCF3000FFCF3000FF9F3000FF9F3000FF9F3000CF603000FFFF9F00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000FFFFFF0080808000000000000000
      000000000000000000000000000000000000F0CFA000FFFFFF00FFFFCF00FFFF
      CF00FFFF3000FFFF300000603000FF9F0000FFCF3000FFCF3000FFCF30000080
      000000603000FF9F00000080000000603000FF6030003F3F3F009F606000FFCF
      CF00FFFFFF00CF603000CF603000FF9F3000FF9F6000FF9F6000FF9F3000CF60
      3000CF603000FFFFFF001F1F1F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004040FF004040FF004040FF0000008000000000004040400080A0A000FFC0
      C0004040FF000000800000000000000000000000000000000000000000000000
      000000000000FFFFFF000020200000000000000000003F3F3F0090AFAF00B0B0
      B000B0B0B000FFCFCF00CFFFFF00CF9F6000FFCF6000FFFF6000FFFF9F00FFFF
      9F00FFFF9F00FFFF9F00FFFF9F00FFFF6000FFFF6000FFCF9F00FFCF9F00FFCF
      3000FFCF3000CF9F6000FFCF3000FF9F3000FF9F3000CF603000FFFF9F00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000C0C0C00080808000000000000000
      00000000000000000000000000000000000000000000F0CFA000FFFFFF00FFFF
      CF00FFFF9F0000603000CFFFCF0000603000FF9F0000FFCF3000FFCF3000FF9F
      0000FFCF30000080000030CF300000603000006030003F3F3F0090909000CFCF
      CF00FFFFFF00CF606000FFCF6000FFCF6000FFCF6000FFCF6000FFCF3000FF9F
      6000CF600000FFFFFF001F1F1F00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004040FF004040
      FF008080FF004040FF000000800000000000000000004040400080808000FFC0
      C000FFFFFF004040FF0000008000808080000000000000000000000000000000
      000000000000FFFFC0000020200000000000000000003F3F3F0090AFAF00B0B0
      B000B0B0B000FFCFCF00CFFFFF00CF606000FFCF6000FFFF6000FFFF9F00FFFF
      9F00FFFF9F00FFFF9F00FFFF9F00FFFF6000FFFF6000FFFF6000FFCF9F00FFCF
      3000FFCF3000FFCF3000FF9F3000FF9F3000FF9F3000CF603000FFFF6000FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000FFFFFF0080808000000000000000
      00000000000000000000000000000000000000000000F0CFA000FFFFFF00C0DF
      C00000603000CFFFCF0030CF3000009F300030603000FF9F0000FFCF3000FFCF
      3000FF9F0000FFCF30000080000030CF3000008000003F3F3F0080808000FFCF
      CF00F0FFFF00CF606000FFFF6000FFFF9F00FFFF6000FFFF6000FFCF6000FFCF
      3000CF603000FFFFCF001F1F1F00000000000000000000000000000000000000
      000000000000000000000000000000000000000000004040FF00FFFFFF008080
      FF004040FF00000080000000000000000000000000004040400080A0A000FFC0
      C000FFFFFF00000000004040FF00000080008080800000000000000000000000
      000000000000FFFFA0000020200000000000000000003F3F3F00B0B0B000B0B0
      B000FFCF9F00FFCFCF00CFFFFF00CF606000FFCF6000FFFF6000FFFF6000FFFF
      6000FFFF9F00FFFF9F00FFFF9F00FFFF9F00FFFF6000FFCF9F00FFCF6000FFCF
      3000FFCF3000FF9F3000FFCF3000FF9F3000FF9F3000CF603000FFFF6000FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000FFFFFF0080808000000000000000
      0000000000000000000000000000000000000000000000000000F0CFA0000060
      300060FF600060FF300030CF3000009F3000009F300030603000FF9F0000FFCF
      3000FFCF3000FF9F0000FFCF300000800000FF9F00003F3F3F0090909000CFCF
      CF00FFFFFF00CF606000FFFF9F00FFFF9F00FFFF6000FFFF9F00FFCF6000FFCF
      3000CF603000FFFF9F001F1F1F00000000000000000000000000000000000000
      0000000000000000000000000000000000004040FF00FFFFFF008080FF004040
      FF0000008000000000000000000000000000000000004040400080808000FFC0
      C000FFFFFF0000000000FFC0C000FFC0C0000000C00000000000000000000000
      000000000000FFFF60000020200000000000000000003F3F3F00B0B0B000FFCF
      9F00FFCFCF00FFCFCF00CFFFFF00CF606000CF9F6000FFCF6000FFCF9F00FFCF
      9F00FFFF6000FFCF9F00FFFF6000FFCF9F00FFFF6000FFCF6000FFCF6000FFCF
      6000FF9F3000FFCF3000FF9F3000FF9F3000CF6030009F303000FFCF6000FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C00080808000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C000FFFFFF0080808000000000000000
      000000000000000000000000000000000000000000000000000030CF3000FFFF
      FF00CFFFCF009FFF9F0030CF300030CF3000009F3000009F300030603000FF9F
      0000FFCF300000603000FF603000FF603000FF9F00003F3F3F0080808000FFCF
      CF00FFFFFF00CF606000FFFF9F00FFFF9F00FFFF9F00FFFF6000FFCF6000FF9F
      6000CF603000FFFF60001F1F1F00000000000000000000000000000000000000
      0000000000000000000000000000000000004040FF004040FF004040FF004040
      FF0000000000000000000000000000000000000000004040400080A0A000FFC0
      C000FFFFFF008040000080400000804000008040000000000000000000000000
      000080400000FFFFC0000020200000000000000000003F3F3F00FFCF9F00FFCF
      CF00C0D0EF00CFFFFF00FFCFCF00FFCFCF00CF6060009F306000CF3030009F00
      3000300000003000000030000000300000003000000030000000300000003000
      00003000000030000000300000003000000030000000CF603000FFCFCF00FFCF
      CF00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000FFFFFF0080808000000000000000
      00000000000000000000000000000000000000000000000000000000000030CF
      3000FFFFFF00CFFFCF009FFF9F0060FF300030CF300000CF3000009F30000060
      300000603000009F30000060300000603000FF6030003F3F3F0090909000CFCF
      CF00FFFFFF00CF9F60009F609F00303030003F3F3F003F3F3F00404040004F4F
      4F004F4F4F00FFEFCF001F1F1F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004040400080808000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFC0C0000020200000000000000000003F3F3F00FFCFCF00C0D0
      EF00CFFFFF00C0D0EF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFF
      FF00CFFFFF00CFFFFF00CFFFFF00D0E0E000CFFFFF00D0E0E000CFFFFF00D0E0
      E000CFFFFF00D0E0E000CFFFFF00D0E0E000CFFFFF00D0E0E000CFFFFF00FFCF
      CF00101010000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000FFFFFF00C0C0C000FFFFFF00C0C0C000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030CF300030CF3000FFFFFF00CFFFCF009FFF600060FF300030CF300030CF
      3000009F3000009F3000009F3000009F3000006030003F3F3F0080808000FFFF
      FF00FFFFFF00F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0
      F000CFFFFF00FFCFCF001F1F1F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806060008060
      6000806060008060600080606000806060008060600080606000806060008060
      600080606000806060000000000000000000000000003F3F3F00FFCFCF00CFFF
      FF00FFCFCF00FFCFCF00FFCFCF00FFCFCF00FFCFCF00FFCFCF00D0E0E000FFCF
      CF00D0E0E000FFCFCF00D0E0E000FFCFCF00D0E0E000FFCFCF00D0E0E000FFCF
      CF00D0E0E000FFCFCF00D0E0E000FFCFCF00D0E0E000FFCFCF00CF9F9F003060
      6000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030CF300030CF3000FFFFFF00CFFFCF00CFFFCF00CFFF
      CF0060FF300030CF3000009F3000009F3000009F3000FF6030009F6060009F60
      60009F6060009F6060009F6060009F6060009F6060009F6060009F6060009F60
      60009F6060009F60600000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000030606000CF9F
      9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F
      9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F
      9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00306060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030CF300030CF300030CF300030CF
      300030CF300030CF300030CF300030CF30000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000400000000100010000000000000400000000000000000000
      000000000000000000000000FFFFFF00C000003F000000000000000000000000
      8000001F0000000000000000000000008000000F000000000000000000000000
      C0000007000000000000000000000000E0000003000000000000000000000000
      F0000001000000000000000000000000F0000001000000000000000000000000
      F0000001000000000000000000000000F0000001000000000000000000000000
      F0000001000000000000000000000000F0000001000000000000000000000000
      F0000001000000000000000000000000F8000001000000000000000000000000
      FE000001000000000000000000000000FE000001000000000000000000000000
      FE000001000000000000000000000000FE000007000000000000000000000000
      FE000007000000000000000000000000FE000007000000000000000000000000
      FE000007000000000000000000000000FE000007000000000000000000000000
      FE000007000000000000000000000000FE000007000000000000000000000000
      FE000007000000000000000000000000FE000007000000000000000000000000
      FE000007000000000000000000000000FE000007000000000000000000000000
      FE000007000000000000000000000000FE000007000000000000000000000000
      FF000007000000000000000000000000FF800007000000000000000000000000
      FFC0000F000000000000000000000000FC000FFFFF800000FFFC3FFFFC000FFF
      F0000FFFFE000000C0000003F0000FFFE0001FFFFC000000C0000003E0001FFF
      C0001FFFF8000001C0000003C0001FFFC0001FFFE0000003FFFC3FFFC0001FFF
      C0003FFFC0000003FFFC3FFFC0003FFFC0007FFF80000003FFFC3FFFC0007000
      E0003FFF00000003F800003FE0002000C0003FFF00000003F000001FC0003FE1
      C0003FFF00000003F000001FC0003F87C0003FFF00000007F000001FC0000E00
      C0003FFF0000000FF000001FC0000600C0003FFF0000001FF000001FC00003E1
      C0003FFFE0000007F000001FC0000387C0003FFFC0000007F000003F8000019F
      C0003C0080000007F000003F80000000C000380080000007F800003F00000000
      E000600080000007F800003F00000000FFF8C00080000007F800003F00000000
      FFFC000080000007F800003F00000000FFFE000180000007F800003F00000001
      FFFF000380000007F800003F00000003FFFE000180000007F800003F00000001
      FFFC000180000007F800003F00000001FFF0800180000007F800003F80000001
      FFC1800180000007F800003F80000001FF83800180000007F800003FC0000001
      FF07800180000007F800003FC0000001FF0F800180000007F800003FE0000001
      FFFF800180000007F800003FF0000001FFFFC0038000000FF800003FFC000003
      FFFFFFFFC000001FFFFFFFFFFF00FFFF00000000000000000000000000000000
      000000000000}
  end
  object IL_Ligacao: TImageList
    Left = 303
    Top = 380
    Bitmap = {
      494C01010A000C00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C0008080800080808000C0C0C00080808000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000808080008080
      8000808080008080800080808000000000000000000000000000008080000000
      0000008080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000008080
      800080808000808080008080800080808000C0C0C00000000000C0C0C0008080
      800080808000C0C0C00080808000000000008080800080808000000000000000
      0000000000008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FFFF
      FF0000000000000000000000000000000000C0C0C00000000000808080008080
      800080808000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FFFF
      FF0000000000000000000000000000000000C0C0C000000000000000FF000000
      FF000000FF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C000000000000000FF000000
      FF000000FF00C0C0C00000000000000000000000000000000000000000000000
      00000000000000000000000000008080800000000000000000000000000000FF
      FF0000FFFF000080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      80008080800080808000808080008080800080808000FFFFFF000000FF000000
      FF000000FF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080000000
      0000008080000080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000FF00FFFFFF000000FF000000
      FF000000FF00C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      0000000000000000000000000000000000008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000000000000000
      00000000000000000000000000000000000080808000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C0008080800080808000C0C0C00080808000000000000000
      00000000000000000000000000000000000080808000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C0008080800080808000C0C0C00080808000000000000000
      00000000000000000000000000000000000080808000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C0008080800080808000C0C0C00080808000000000000000
      00000000000000000000000000000000000080808000FFFFFF00C0C0C000C0C0
      C000C0C0C000C0C0C0008080800080808000C0C0C00080808000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000808080008080
      8000808080008080800080808000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000808080008080
      8000808080008080800080808000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000808080008080
      8000808080008080800080808000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000808080008080
      8000808080008080800080808000000000000000000080808000000000008080
      800080808000808080008080800080808000C0C0C00000000000C0C0C0008080
      800080808000C0C0C00080808000000000000000000080808000000000008080
      800080808000808080008080800080808000C0C0C00000000000C0C0C0008080
      800080808000C0C0C00080808000000000000000000080808000000000008080
      800080808000808080008080800080808000C0C0C00000000000C0C0C0008080
      800080808000C0C0C00080808000000000000000000080808000000000008080
      800080808000808080008080800080808000C0C0C00000000000C0C0C0008080
      800080808000C0C0C00080808000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000000000000000000000000000000000008080800000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000000000008080800000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000000000008080800000000000FFFF
      0000FFFF0000FFFF0000FFFF0000FFFF0000C0C0C00000000000C0C0C000C0C0
      C000C0C0C000C0C0C0000000000000000000000000008080800000000000FFFF
      FF0000000000000000000000000000000000C0C0C00000000000808080008080
      800080808000C0C0C0000000000000000000000000008080800000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000C0C0C00000000000808080008080
      800080808000C0C0C0000000000000000000000000008080800000000000FFFF
      FF0000000000000000000000000000000000C0C0C00000000000808080008080
      800080808000C0C0C0000000000000000000000000008080800000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000C0C0C00000000000808080008080
      800080808000C0C0C0000000000000000000000000008080800000000000FFFF
      FF0000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000C0C0C0000000000000000000000000008080800000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000C0C0C00000000000000000000000
      000000000000C0C0C0000000000000000000000000008080800000000000FFFF
      FF0000000000000000000000000000000000C0C0C00000000000FFFF0000FFFF
      0000FFFF0000C0C0C0000000000000000000000000008080800000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000C0C0C00000000000FFFF0000FFFF
      0000FFFF0000C0C0C00000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000C0C0C00000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      000000000000C0C0C00000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000FFFF0000FFFF
      0000FFFF0000C0C0C00000000000000000000000000080808000000000000000
      000000000000000000000000000000000000C0C0C00000000000FFFF0000FFFF
      0000FFFF0000C0C0C00000000000000000000000000000000000808080008080
      80008080800080808000808080008080800080808000FFFFFF00000000000000
      000000000000C0C0C00000000000000000000000000000000000808080008080
      80008080800080808000808080008080800080808000FFFFFF00000000000000
      000000000000C0C0C00000000000000000000000000000000000808080008080
      80008080800080808000808080008080800080808000FFFFFF00FFFF0000FFFF
      0000FFFF0000C0C0C00000000000000000000000000000000000808080008080
      80008080800080808000808080008080800080808000FFFFFF00FFFF0000FFFF
      0000FFFF0000C0C0C00000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000000000FFFFFF00000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      00000000000000000000808080000000000000000000FFFFFF00000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000008080800000000000FFFF0000FFFFFF00FFFF0000FFFF
      0000FFFF0000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000008080800000000000FFFF0000FFFFFF00FFFF0000FFFF
      0000FFFF0000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000808080008080
      8000808080008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000003F5F5F002F2F
      2F002F2F2F002F2F2F002F2F2F002F2F2F002F2F2F002F2F2F002F2F2F002F2F
      2F002F2F2F002F2F2F002F2F2F00202020000000000000000000306060002020
      2000202020002020200020202000202020002020200020202000202020002020
      2000202020002020200020202000202020000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000030000000603030006030
      3000603030006030300060303000603030006030300060303000603030000000
      00000000000000000000000000000000000000000000103F3F00805F5F002F2F
      2F00A0AFC000CFAFAF00A0AFC000CFAFAF00AFCFCF00CFAFAF00AFCFCF00CFAF
      AF00A0AFC000CFAFAF00A0AFC0002020200000000000003030009F6060002020
      2000C0D0EF00FFCFCF00C0D0EF00FFCFCF00CFFFFF00FFCFCF00CFFFFF00FFCF
      CF00C0D0EF00FFCFCF00C0D0EF00202020008080800080808000808080008080
      8000808080008080800080808000000000008080800080808000808080008080
      8000808080008080800080808000000000003000000030303000909090009090
      9000909090009090900090909000909090009090900090909000603030000000
      000000000000000000000000000000000000103F3F00805F5F00805F5F003F3F
      3F00CFAFAF00A0AFC000CFAFAF00AFBFBF00AFBFBF00AFBFBF00CFAFAF00AF80
      80001070700010707000CFAFAF0020202000103F3F009F6060009F6060003F3F
      3F00FFCFCF00C0D0EF00FFCFCF00D0E0E000D0E0E000D0E0E000FFCFCF00CF9F
      9F000080800000808000FFCFCF002020200080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000808080000000000080808000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000000000003000000070707000D0D0D000CFFF
      FF00C0D0EF00CFFFFF00C0D0EF00D0D0D000CFFFFF00C0D0EF00603030003000
      000030000000300000003000000030000000103F3F00805F5F0010707000A0A0
      A000A0AFC000CFAFAF00A0AFC000C0C0C000CFAFAF00AFCFCF007F909000AFBF
      BF007F909000CFAFAF007F90900060606000103F3F009F60600000808000C0C0
      C000C0D0EF00FFCFCF00C0D0EF00EFEFEF00FFCFCF00CFFFFF0090AFAF00D0E0
      E00090AFAF00FFCFCF0090AFAF00606060000000000080808000808080008080
      8000808080008080800000000000000000000000000080808000808080008080
      8000808080008080800000000000000000003000000060CFCF001F1F1F001F1F
      1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F001F1F1F00CFCF9F00FFCF
      6000CFCF9F00FFCF6000CFCF9F00FFCF6000103F3F003F3F3F00A0AFC000AF80
      AF005F5F5F003F3F5F003F3F3F003F5F5F007F9090007F9090003F3F5F002020
      20003F3F3F005F5F5F000000000000000000103F3F003F3F3F00C0D0EF00CF9F
      CF0060606000303060003F3F3F003060600090AFAF0090AFAF00303060001010
      10003F3F3F006060600000000000000000000000000080808000C0C0C000FF00
      0000FF0000008080800000000000000000000000000080808000C0C0C000FF00
      0000FF000000808080000000000000000000000000003F3F3F00FFCFCF00FFFF
      FF00CFFFFF00FFFFFF00CFFFFF00FFFFFF00FFCFCF001F1F1F00000000000000
      00000000000030000000FFCF600000000000103F3F008080AF001F1F1F001010
      1000101010001010100010101000101010001010100010101000101010001010
      10001F1F1F00202020003030300000000000103F3F009F9FCF000F0F0F000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000F0F0F00101010002F2F2F00000000000000000080808000C0C0C000FF00
      0000FF0000008080800000000000000000000000000080808000C0C0C000FF00
      0000FF0000008080800000000000000000003000000080808000FFFFFF00CF60
      6000FF9F0000FF9F0000FF9F0000FF9F0000CFFFFF001F1F1F00000000000000
      000030000000CFCF9F00000000000000000000000000103F3F00103F3F007F90
      9000CFAFAF00B0B0B000AFCFCF00AFCFCF00AFCFCF00AFCFCF00AFCFCF00AFCF
      CF00B0B0B000AF808000202020000000000000000000003030000030300090AF
      AF00FFCFCF00DFDFDF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFF
      FF00DFDFDF00CF9F9F0010101000000000000000000080808000C0C0C000C0C0
      C000C0C0C0008080800000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C00080808000000000000000000030000000CFCFCF00CFFFFF00FF9F
      0000FFFF9F00FFFF0000FFCF9F00CF603000FFFFFF001F1F1F00000000000000
      0000FFCF6000000000000000000000000000103F3F00103F3F0090909000AFCF
      CF003F2F0F002F0F00002F0F00002F0F00002F0F00002F0F00002F0F00002F0F
      00002F0F0000CFCFCF003030300000000000103F3F0000303000B0B0B000CFFF
      FF00FFCF6000CF603000CF603000CF603000CF603000CF603000CF603000CF60
      3000CF603000FFFFFF002F2F2F00000000000000000000000000808080008080
      8000808080008080800000000000000000000000000000000000808080008080
      80008080800080808000000000000000000030000000CFCFCF00CFFFFF00FF9F
      0000FFFF9F00FFFF9F00FFFF0000CF603000CFFFFF001F1F1F00603030006030
      3000603030006030300060303000603030003F3F3F0090909000CFAFAF00CFCF
      CF003F1F00003F2F00003F2F00003F2F00003F2F00003F2F00003F1F00003F1F
      00003F0F0000CFCFCF0040404000000000003F3F3F00B0B0B000FFCFCF00FFFF
      FF00FF9F3000FFCF3000FFCF3000FFCF3000FFCF3000FFCF3000FF9F3000FF9F
      0000FF600000FFFFFF0040404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030000000CFCFCF00FFFFFF004040
      400040404000404040004040400040404000FFFFFF001F1F1F0080808000C0C0
      C00080808000C0C0C00080808000909090003F3F3F009090900090909000CFCF
      CF002F1F0F003F2F0F003F3F1F003F3F0F003F3F0F003F2F0F003F2F0F003F1F
      00002F0F0000CFCFCF0040404000000000003F3F3F00B0B0B000B0B0B000FFFF
      FF00CF9F6000FFCF6000FFFF9F00FFFF6000FFFF6000FFCF6000FFCF6000FF9F
      0000CF603000FFFFFF0040404000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080000000
      00000000000000000000000000000000000030000000CFCFCF00FFFFFF00FFFF
      FF00CFFFFF00FFFFFF00CFFFFF00FFFFFF00FFCFCF001F1F1F00C0C0C000D0E0
      E000D0E0E000D0E0E000D0E0E000909090003F3F3F00CFAFAF0090909000C0CF
      CF002F1F0F003F3F0F003F3F1F003F3F1F003F3F0F003F3F0F003F2F00003F2F
      00002F0F0000CFCFAF0040404000000000003F3F3F00FFCFCF00B0B0B000F0FF
      FF00CF9F6000FFFF6000FFFF9F00FFFF9F00FFFF6000FFFF6000FFCF3000FFCF
      3000CF603000FFFFCF0040404000000000000000000000000000000000000000
      000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080000000
      000000000000000000000000000000000000FF60300060609F009F6060009F60
      60009F6060009F6060009F6060009F606000300000005F5F5F001F1F1F001F1F
      1F001F1F1F001F1F1F001F1F1F005F5F5F003F3F3F0090909000CFAFAF00C0CF
      CF002F0F0F003F3F1F003F3F1F003F3F1F003F3F0F003F3F1F003F2F00003F2F
      00002F0F0000CFCF800040404000000000003F3F3F00B0B0B000FFCFCF00F0FF
      FF00CF606000FFFF9F00FFFF9F00FFFF9F00FFFF6000FFFF9F00FFCF3000FFCF
      3000CF603000FFFF9F0040404000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000000000000000
      000000000000000000000000000000000000FF603000FFFFCF00FF9F00000060
      3000FF603000FFCF3000FFCF3000FF60300030000000CFCFCF0060303000FFFF
      9F00FFFF0000FFCF600060303000808080003F3F3F00CFAF8000CFAFAF00C0C0
      C0002F0F0F003F3F0F003F3F1F003F3F1F003F3F1F003F2F0F003F2F0F003F1F
      00003F0F0000CFCF5F0040404000000000003F3F3F00FFCF9F00FFCFCF00F0F0
      F000CF606000FFFF6000FFFF9F00FFFF9F00FFFF9F00FFCF6000FFCF6000FF9F
      3000FF600000FFFF600040404000000000000000000000000000000000000000
      00000000000080808000C0C0C000FFFF0000FFFF000080808000000000000000
      00000000000000000000000000000000000000000000FF6030000060300030CF
      30000060300000603000FFCF3000FF9F000030000000CFCFCF0060303000FFFF
      9F00FFFF9F00FFFF000060303000808080003F3F3F00CFAFAF00C0C0C000AFCF
      CF002F1F1F002F0F0F0000000000000000000000000000000000000000000000
      00000F000000CFC0AF004F4F4F00000000003F3F3F00FFCFCF00F0F0F000CFFF
      FF00CF9F9F00CF60600030000000300000003000000030000000300000003000
      000060300000FFEFCF004F4F4F00000000000000000000000000000000000000
      00000000000080808000C0C0C000FFFF0000FFFF000080808000000000000000
      00000000000000000000000000000000000000000000009F3000FFFFFF00CFFF
      CF0030CF3000009F3000006030000060300030000000CFCFCF009F6060009F60
      60009F6060009F60600060303000808080003F3F3F00AFCFCF00CFCFCF00CFCF
      CF00CFCFCF00AFCFCF00AFCFCF00AFCFCF00AFCFCF00AFCFCF00C0CFCF00C0CF
      CF00CFCFCF00CFAFAF0040404000000000003F3F3F00CFFFFF00FFFFFF00FFFF
      FF00FFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00CFFFFF00F0FFFF00F0FF
      FF00FFFFFF00FFCFCF0040404000000000000000000000000000000000000000
      00000000000080808000C0C0C000C0C0C000C0C0C00080808000000000000000
      0000000000000000000000000000000000000000000000000000009F3000009F
      3000FFFFFF0030CF3000009F3000006030000060300080808000CFCFCF00CFCF
      CF00CFCFCF00CFCFCF00C0C0C0005F5F5F000000000070707000AF808000AF80
      8000AF808000AF808000AF808000AF808000AF808000AF808000AF808000AF80
      80005F808000805F5F0000000000000000000000000080808000CF9F9F00CF9F
      9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F9F00CF9F
      9F00609F9F009F60600000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009F3000009F3000009F3000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF00803FE7FF00000000001FE7FF00000000
      001FE7FF000000008001E3FF000000008000107F000000008000387F00000000
      8001FE7F000000008001FE7F000000008001FE7F000000008001FE6100000000
      8001FE0000000000C001FF1000000000FC01FFF300000000FC01FFF300000000
      FE03FFF300000000FFFFFFF300000000803F803F803F803F001F001F001F001F
      001F001F001F001F800180018001800180008000800080008000800080008000
      8001800180018001800180018001800180018001800180018001800180018001
      8001800180018001C001C001C001C001FC01FC01FC01FC01FC01FC01FC01FC01
      FE03FE03FE03FE03FFFFFFFFFFFFFFFFC000C0008080801F800080000000001F
      0000000000000000000000008181000000030003818180390001000181810033
      800180018181003700010001C3C3000000010001F80F000000010001F00F0000
      00010001F00F000000010001F81F000000010001F81F800000010001F81F8000
      00010001F81FC00080038003FC3FF1FF00000000000000000000000000000000
      000000000000}
  end
  object BarraFerra: TImageList
    Height = 32
    Width = 32
    Left = 361
    Top = 381
    Bitmap = {
      494C010115001700040020002000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000080000000C000000001002000000000000080
      010000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      75FF000070FF000071FF000071FF000071FF000071FF000071FF000072FF0000
      70FF000073FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000055FF000074FF010175FF0101
      75FF010175FF010175FF010175FF010175FF010175FF010175FF010175FF0101
      75FF010175FF010175FF000076FF00006DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000379FF010278FF010278FF010278FF0102
      78FF010278FF010278FF010278FF010278FF010278FF010278FF010278FF0102
      78FF010278FF010278FF010278FF010278FF000379FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000055FF02047CFF01047CFF01047CFF01047CFF01047CFF0104
      7CFF01047CFF01047CFF01047CFF01047CFF01047CFF01047CFF01047CFF0104
      7CFF01047CFF01047CFF01047CFF01047CFF01047CFF02057CFF000071FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF000080FF01057FFF02057FFF02057FFF02057FFF02057FFF02057FFF0205
      7FFF02057FFF02057FFF030783FF050E8DFF030783FF02057FFF02057FFF0205
      7FFF02057FFF02057FFF02057FFF02057FFF02057FFF02057FFF03057FFF0000
      7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0000
      AAFF010582FF020682FF020682FF020682FF020682FF020682FF020682FF0510
      92FF162AAEFF5167CDFF8C99D3FFA8AFD3FF939ED3FF7D8ED4FF697CD3FF374C
      C0FF040C8CFF020682FF020682FF020682FF020682FF020682FF020682FF0206
      83FF00008EFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0207
      87FF020786FF020786FF020786FF020786FF020786FF020888FF354ABFFFA8B0
      D3FFDADADDFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDEDEFFDEDE
      DEFF99A3D3FF2B40BBFF030B8CFF020786FF020786FF020786FF020786FF0207
      86FF020886FFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF030788FF0308
      89FF030889FF030889FF030889FF030889FF050D90FF5A6ECDFFD8D9DDFFE0E0
      E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0E0FFE0E0
      E0FFE0E0E0FFDDDDDFFF8A98D5FF111FA0FF030889FF030889FF030889FF0308
      89FF030889FF03088AFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF000080FF02098EFF0309
      8DFF03098DFF03098DFF03098DFF09159BFF8693D3FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
      E2FFE2E2E2FFE2E2E2FFE2E2E2FF9DA5D2FF050F95FF03098DFF03098DFF0309
      8DFF03098DFF03098DFF000099FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF030B90FF040A90FF040A
      90FF040A90FF040A90FF040A90FF7E8ACBFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
      E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FF7281CDFF040B92FF040A90FF040A
      90FF040A90FF040A90FF040A8FFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF040B95FF040B94FF040B
      94FF040B94FF040B94FF2636B3FFDFDFE2FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5
      E5FFE5E5E5FFC1C1D1FF7B7BABFF454694FF505198FF6868A1FFC3C3D2FFE5E5
      E5FFE5E5E5FFE5E5E5FFE5E5E5FFE5E5E5FFE2E2E4FF475AC5FF040B94FF040B
      94FF040B94FF040B94FF050B94FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000C92FF040C97FF040C97FF040C
      97FF040C97FF050E9AFF9FA6D1FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7
      E7FF8686B2FF070B89FF040C96FF040C97FF040C97FF040C97FF070B89FF6465
      A2FFE5E5E6FFE7E7E7FFE7E7E7FFE7E7E7FFE7E7E7FFC6C8DAFF040D99FF040C
      97FF040C97FF040C97FF040C97FF050A99FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050D9BFF050D9BFF050D9BFF050D
      9BFF050D9BFF2F3DB4FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF797B
      AFFF050C96FF050D9BFF050D9BFF050D9BFF050D9BFF050D9BFF050D9BFF050D
      9AFF6E70ABFFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FF2938B2FF050D
      9BFF050D9BFF050D9BFF050D9BFF060E9AFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050E9FFF050E9EFF050E9EFF050E
      9EFF050E9EFF5F6ABCFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFCDCDD9FF0B13
      98FF050E9EFF050E9EFF050E9EFF050E9EFF050E9EFF050E9EFF050E9EFF050E
      9EFF050D98FFB2B3CCFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFF6C76C2FF050E
      9EFF050E9EFF050E9EFF050E9EFF040F9DFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000050FA2FF050FA2FF050FA2FF050F
      A2FF050FA2FF8990C7FFECECECFFECECECFFECECECFFECECECFF777CB8FF050F
      A2FF050FA2FF0612A6FF0715AAFF0715AAFF0715AAFF0715AAFF0613A6FF050F
      A2FF050FA2FF696EB4FFECECECFFECECECFFECECECFFECECECFFADB1D3FF050F
      A2FF050FA2FF050FA2FF050FA2FF050FA2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000710A5FF0610A5FF0610A5FF0610
      A5FF0610A5FFB2B5D4FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFF4F58B1FF0610
      A5FF0610A5FF5866C7FFAFB8DFFFAFB8DFFFAFB8DFFFAFB8DFFF6D7BCEFF0610
      A5FF0610A5FF303AABFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFCECEDDFF0610
      A5FF0610A5FF0610A5FF0610A5FF0610A5FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000611A8FF0611A8FF0611A8FF0611
      A8FF0611A8FFB7B9D3FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF4D58BBFF0611
      A8FF0611A8FF747CBFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFF9196C7FF0611
      A8FF0611A8FF3D4AB8FFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFB7B8D3FF0611
      A8FF0611A8FF0611A8FF0611A8FF0611A8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000713ACFF0713ACFF0713ACFF0713
      ACFF0713ACFF9094C5FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF7780C6FF0713
      ACFF0713ACFF757DC1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FF9297C9FF0713
      ACFF0713ACFF5C67C1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFA0A3CBFF0713
      ACFF0713ACFF0713ACFF0713ACFF0813ADFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000715AFFF0714AFFF0714AFFF0714
      AFFF0714AFFF666DBAFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC9CBE1FF0C1C
      B5FF0714AFFF767EC2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF9398CAFF0714
      AFFF0816B2FFBABFDDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FF888DC4FF0714
      AFFF0714AFFF0714AFFF0714AFFF0714AFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000715B3FF0715B3FF0715B3FF0715
      B3FF0715B3FF3A44B1FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FF636F
      CBFF0715B3FF777EC3FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FF9499CBFF0715
      B3FF4956C5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FF555BB2FF0715
      B3FF0715B3FF0715B3FF0715B3FF0716B3FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000091AB3FF0816B6FF0816B6FF0816
      B6FF0816B6FF0815B1FFBBBCD5FFF6F6F6FFF6F6F6FFF6F6F6FFB2B3CFFF141E
      A4FF0816B6FF787FC5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FF959ACCFF0816
      B6FF0C17A8FF9C9CC3FFF6F6F6FFF6F6F6FFF6F6F6FFC6C6DAFF0815AFFF0816
      B6FF0816B6FF0816B6FF0816B6FF0815B8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF0817BAFF0817BAFF0817
      BAFF0817BAFF0817BAFF343CAAFFF5F5F6FFF7F7F7FF9192BEFF0915A9FF0817
      BAFF0817BAFF7880C6FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FF969BCDFF0817
      BAFF0817BAFF0714AEFF7778B2FFF6F6F6FFF7F7F7FF464CADFF0817BAFF0817
      BAFF0817BAFF0817BAFF0817BAFF000080FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF0718BDFF0818BDFF0818
      BDFF0818BDFF0818BDFF0818BCFF989AC5FF6D6EAFFF0715B4FF0818BDFF0818
      BDFF0818BDFF7981C8FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FF979CCFFF0818
      BDFF0818BDFF0818BDFF0817B8FF5357A6FFACADCEFF0817B9FF0818BDFF0818
      BDFF0818BDFF0818BDFF0718BDFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFF002BD5FF0919C2FF0919
      C1FF0919C1FF0919C1FF0919C1FF0816B1FF0918BDFF0919C1FF0919C1FF0919
      C1FF0919C1FF7A82C9FFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFF989DD0FF0919
      C1FF0919C1FF0919C1FF0919C1FF0919C0FF0815AEFF0919C1FF0919C1FF0919
      C1FF0919C1FF091AC1FF0E1CC6FFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF081BC4FF091A
      C4FF091AC4FF091AC4FF091AC4FF091AC4FF091AC4FF091AC4FF091AC4FF091A
      C4FF091AC4FF7B83CAFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF999ED1FF091A
      C4FF091AC4FF091AC4FF091AC4FF091AC4FF091AC4FF091AC4FF091AC4FF091A
      C4FF091AC4FF091AC4FFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFF0000FFFF0A1A
      C7FF0A1BC8FF0A1BC8FF0A1BC8FF0A1BC8FF0A1BC8FF0A1BC8FF0A1BC8FF0A1B
      C8FF0A1BC8FF7B83CBFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFF9A9FD2FF0A1B
      C8FF0A1BC8FF0A1BC8FF0A1BC8FF0A1BC8FF0A1BC8FF0A1BC8FF0A1BC8FF0A1B
      C8FF0B1AC8FF0033CCFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF0017
      D1FF0A1CCCFF0A1CCBFF0A1CCBFF0A1CCBFF0A1CCBFF0A1CCBFF0A1CCBFF0A1C
      CBFF0A1CCBFF1C28B4FF3338A0FF3338A0FF3338A0FF3338A0FF212CAFFF0A1C
      CBFF0A1CCBFF0A1CCBFF0A1CCBFF0A1CCBFF0A1CCBFF0A1CCBFF0A1CCBFF0A1B
      CCFF0D1ACCFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF091AD3FF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1D
      CFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1D
      CFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0A1DCFFF0C1F
      CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF1515D5FF0C1DD2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1E
      D2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1E
      D2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1ED2FF0B1ED2FF0C18CEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFF0000FFFF0C1FD6FF0B1FD6FF0B1FD6FF0B1FD6FF0B1F
      D6FF0B1FD6FF0B1FD6FF0B1FD6FF0B1FD6FF0B1FD6FF0B1FD6FF0B1FD6FF0B1F
      D6FF0B1FD6FF0B1FD6FF0B1FD6FF0B1FD6FF0A1FD6FF002BD5FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1427D8FF0C1FD8FF0B20D9FF0B20
      D9FF0B20D9FF0B20D9FF0B20D9FF0B20D9FF0B20D9FF0B20D9FF0B20D9FF0B20
      D9FF0B20D9FF0B20D9FF0A1FD9FF0C23DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF0D23
      DCFF0D23DCFF0C23DCFF0C22DCFF0C22DCFF0C21DCFF0C22DCFF0C22DBFF0C21
      DCFF0B22DDFF0040BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009F6060409F6060409F60
      60409F6060409F6060409F6060409F6060409F6060409F6060409F6060409F60
      60409F6060409F6060409F6060409F6060409F6060409F6060409F6060409F60
      60409F6060409F6060409F6060409F6060400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C04080808040000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000202020403F3F3F40FFCFCF40FFCFCF40C0D0
      EF40FFCFCF40C0D0EF40C0D0EF40C0D0EF40C0D0EF40FFCFCF40FFCFCF40C0D0
      EF40FFCFCF40CF9F9F40609F9F4070707040609F9F409F606040306060409F60
      60409F6060409F6060403F3F3F409F6060400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40C0C0C040808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      00000000000000000000202020405F5F5F40609F9F40FFCFCF40609F9F403060
      6040CF9F9F4030606040609F9F40CF9F9F40609F9F40CF9F9F40609F9F40CF9F
      9F40609F9F40CF9F9F40609F9F4030609F4090AFAF4030609F4090AFAF407070
      704090AFAF40FFCFCF4090AFAF409F6060400000000000000000000000000000
      00000000000000000000B0B0B040BFBFBF40BFBFBF40BFBFBF40BFBFBF40BFBF
      BF40BFBFBF40BFBFBF40B0B0B040B0B0B040B0B0B040B0B0B040B0B0B040B0B0
      B040B0B0B040B0B0B040B0B0B040AFAFAF40A0A0A040DFDFDF40000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808040FFFF
      FF40808080400000004080808040808080400000004080808040808080400000
      0040808080408080804000000040808080408080804000000040808080408080
      8040000000408080804080808040000000408080804080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000000202020409F6060403F3F3F40FFCFCF4030606040EFEFEF403060
      9F40EFEFEF40CF9F9F40EFEFEF409FCFCF40FFCFCF40EFEFEF409FCFCF40FFCF
      CF40CF9F9F40FFCFCF403F3F3F40FFCFCF403F3F3F40707070403F3F3F403060
      9F40609F9F40C0D0EF4000303040000000000000000000000000000000000000
      000000000000EFEFEF40C0C0C040D0D0D040D0D0D040D0D0D040D0D0D040D0D0
      D040D0D0D040D0D0D040D0D0D040D0D0D040D0D0D040D0D0D040D0D0D040D0D0
      D040D0D0D040D0D0D040D0D0D040D0D0D040D0D0D0409F9F9F40000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8040FFFFFF408080804000000040FFFFFF408080804000000040FFFFFF408080
      804000000040FFFFFF408080804000000040FFFFFF408080804000000040FFFF
      FF408080804000000040FFFFFF408080804000000040FFFFFF40808080408080
      8040000000400000004000000000000000000000000000000000000000002020
      20400F0F0F40202020400030304090AFAF4090AFAF409F60604030609F409F60
      6040CF9F9F4030606040CF9F9F40FFCFCF4090AFAF409FCFCF40FFCFCF40CF9F
      9F40FFCFCF4030609F4090AFAF403F3F3F4090AFAF4030609F409F606040609F
      9F40FFCFCF400030304000000000000000000000000000000000000000000000
      000000000000E0E0E040CFCFCF40CFCFCF40CFCFCF40CFCFCF40CFCFCF40CFCF
      CF40CFCFCF40CFCFCF40CFCFCF40CFCFCF40CFCFCF40CFCFCF40CFCFCF40CFCF
      CF40CFCFCF40CFCFCF40CFCFCF40CFCFCF40CFCFCF4090909040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808040808080408080804000000040FFFFFF408080804000000040FFFF
      FF408080804000000040FFFFFF408080804000000040FFFFFF40808080400000
      0040FFFFFF408080804000000040FFFFFF408080804000000040FFFFFF400000
      0040808080408080804000000040000000000000000000000000202020406060
      6040FFCFCF40202020409F606040FFCFCF409F60604030606040C0D0EF403060
      9F40EFEFEF40CF9F9F4030609F409FCFCF40EFEFEF40FFCFCF40CF9F9F40FFCF
      CF4030606040FFCFCF403F3F3F40FFCFCF403F3F3F40609F9F4060609F4090AF
      AF403F3F3F400030304000000000000000000000000000000000000000000000
      000000000000E0E0E040BFBFBF40BFBFBF40BFBFBF40BFBFBF40BFBFBF40BFBF
      BF40BFBFBF40BFBFBF40BFBFBF40BFBFBF40BFBFBF40BFBFBF40BFBFBF40BFBF
      BF40BFBFBF40BFBFBF40BFBFBF40BFBFBF40BFBFBF408F8F8F40000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808040FFFFFF40C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040808080408080804080808040000000000000000020202040606060409F60
      6040C0D0EF4020202040609F9F40FFCFCF409F60604090AFAF4030609F403060
      6040CF9F9F4030606040CF9F9F40FFCFCF40CF9F9F40CF9F9F40FFCFCF407070
      7040FFCFCF403F3F3F40609F9F40306060409F60604030609F40707070403F3F
      3F40003030400030304000000000000000000000000000000000000000000000
      000000000000E0E0E040B0B0BF40AFAFAF40AFAFAF40AFAFAF40AFAFAF40AFAF
      AF40AFAFAF40AFAFAF40AFAFAF40AFAFAF40AFAFAF40AFAFAF40B0AFB040B0AF
      B040B0AFB040B0AFB040B0AFB040A0A0A040A0A0AF4080808F40000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      0000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808040FFFFFF40C0C0C040C0C0C0400080004000800040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C04080808040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040808080408080804080808040000000003F3F3F40606060409F6060400080
      8040FFCFCF4030609F4000303040202020401010104020202040101010402020
      204010101040306060403F3F3F40306060403F3F3F409F6060403F3F3F409F60
      60403F3F3F409F6060403060604030609F409F6060403060604030609F409F60
      60409FCFCF400000004000000000000000000000000000000000000000000000
      000000000000E0E0E040AFAFAF409F9F9F409F9F9F409F9F9F409F9F9F409F9F
      9F409F9F9F409F9F9F409F9F9F409F9F9F409F9F9F40AFAFAF40DFDFDF40DFDF
      DF40DFDFDF40DFDFDF40DFDFDF40C0C0C0409F909F4080808040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808040FFFFFF40C0C0C040C0C0C04000FF004000FF0040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C0400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040C0C0C040C0C0
      C040808080408080804080808040000000003F3F3F409F606040008080409F60
      6040EFEFEF40FFCFCF40C0D0EF40FFCFCF40C0D0EF40FFCFCF40C0D0EF40FFCF
      CF40C0D0EF40FFCFCF40C0D0EF40C0D0EF40EFEFEF40CFFFFF40EFEFEF40EFEF
      EF40C0D0EF40C0D0EF40C0D0EF40FFCFCF40FFCFCF40FFCFCF40C0D0EF40FFCF
      CF40EFEFEF400030304000000000000000000000000000000000000000000000
      000000000000EFEFEF40A0A0AF40CFC0CF4080808F4080808F4080808F408080
      8F4080808F4080808F4080808F4080808F4080808F4080808F4080808F408080
      8F4080808F4080808F4080808F4080808F408080804080808040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808040FFFFFF40C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C0408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040C0C0C040C0C0
      C040808080408080804080808040000000003F3F3F40008080409F6060409090
      9040EFEFEF40EFEFEF40FFCFCF40FFCFCF4090AFAF409F6060403F3F3F400000
      0040101010401F1F1F4000303040003030402020204020202040003030402020
      20401F1F1F401010104000000040003030409F606040609F9F40FFCFCF40C0D0
      EF40EFEFEF400030304000000000000000000000000000000000000000000000
      000000000000000000009F9F9F409F9F9F40AFAFAF40AFAFAF40AFAFAF40AFAF
      AF40AFAFAF40AFAFAF40AFAFAF40AFA0AF40A0A0A040A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A04070707040CFCFCF40000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808040FFFFFF40C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040808080408080804080808040000000003F3F3F409F60604090909040FFCF
      CF4030609F409F6060403030604020202040000000400030304030609F409F60
      6040609F9F40609F9F40FFCFCF40C0D0EF40EFEFEF40CFFFFF40EFEFEF40FFCF
      CF40609F9F4030609F409F606040000000400F0F0F4030609F40202020403060
      9F409F6060400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E0E0E040DFDFDF40D0D0D040D0D0D040BFBF
      BF406F6F6F406F6F6F406F6F6F406F6F6F406F6F6F406F6F6F406F6F6F407070
      7040CFCFCF40CFCFCF40CFCFCF40CFCFCF400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40808080408080804080808040000000003F3F3F4090909040FFCFCF403060
      60409F6060402020204000303040000000409F60604030609F40003030403F3F
      3F402020204000000040000000400000004000000040000000400F0F0F401F1F
      1F4000303040303060403060604030609F40003060401F1F1F409F6060403F3F
      3F40000000000000000000000000000000000000000000000000000000000000
      0000E0E0E040B0B0B040B0B0B040B0B0B040AFAFAF40AFAFAF40AFAFAF40A0A0
      A0409F9F9F409F9F9F4090909040909090409090904090909040909090409090
      9040A0A0A040A0A0A0409F9F9F409F9F9F409F9F9F409F9F9F40BFBFBF400000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080804080808040808080408080804080808040000080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040C0C0C0408080804080808040000000003F3F3F40FFCFCF4030609F400030
      3040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400F0F0F400F0F0F400F0F0F400F0F
      0F400F0F0F4000000040000000400F0F0F400F0F0F40003030400F0F0F400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AFAFAF40E0E0E040E0E0E040E0E0E040DFDFDF40DFDFDF40DFDFDF40DFDF
      DF40D0D0D040D0D0D040D0D0D040D0D0D040CFCFCF40CFCFCF40CFCFCF40C0C0
      C040C0C0C040C0C0C040C0C0C040BFBFBF40BFBFBF40BFBFBF40B0B0B040AFAF
      AF40000000000000000000000000000000000000000000000000000000008080
      8000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000000000040000000404040FF404040FF400000
      8040000000400000004000000040000000400000004000000040000000400000
      004000000040000000400000004000000040000000400000C040000000408080
      804080808040C0C0C04080808040000000000000000000000000000000000030
      30409F6060400080804090AFAF40FFCFCF40FFCFCF40FFCFCF40FFCFCF40FFCF
      CF40FFCFCF40FFCFCF40FFCFCF40B0B0B040B0B0B040B0B0B040B0B0B040B0B0
      B040CF9F9F40CF9F9F40CF9F9F4030609F403060604030606040306060400030
      604000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF407F7F7F404F4F4F404F4F4F404F4F4F404F4F4F404F4F
      4F404F4F4F404F4F4F404F4F4F404F4F4F404F4F4F404F4F4F404F4F4F404F4F
      4F404F4F4F404F4F4F404F4F4F404F4F4F404F4F4F40A0A0A040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040808080404040FF408080FF404040
      FF40000080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080400000
      00408080804080808040C0C0C040000000000000000000000000003030409F60
      60408080804090AFAF40CFFFFF40FFCFCF40C0C0C040CFFFFF40C0C0C040CFFF
      FF40C0C0C040CFFFFF40C0C0C040CFFFFF40C0C0C040CFFFFF40C0C0C040CFFF
      FF40C0C0C040CFFFFF40C0C0C040CFFFFF40C0C0C040CFFFFF40FFCFCF40CF9F
      9F4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40CF400040D04F0040D04F0040DF500040DF50
      0040DF500040E05F0040E05F0040E05F0040E05F0040E05F0040E05F0040E05F
      0040E0500040DF500040DF500040D04F0040D04F004080503040BFBFBF408F8F
      8F4000000000000000000000000000000000000000000000000080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF404040FF40FFFFFF408080
      FF404040FF4000008040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C0400000C040C0C0C040808080408080
      804000000040808080408080804000000000000000003F3F3F409F6060408080
      8040CF9F9F4090AFAF40CFFFFF40808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040C0C0C04090AF
      AF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40CF4F0040D04F0040D04F0040DF500040DF50
      0040E05F0040E05F0040EF5F0040EF5F0040EF600040EF5F0040EF5F0040E05F
      0040E05F0040E0500040DF500040DF500040D04F004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000808080000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C0404040FF40FFFF
      FF408080FF4000008040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF404040FF40FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F4080808040CF9F
      9F40009F9F4090AFAF40CFFFFF40808080408080804000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000408080804080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40D04F0040D04F0040C06000409F900F4090A0
      0F40A09F0F40DF6F0040EF600040EF600040C08000409FAF0F40C0800040EF5F
      0040E05F0040A09F0F4090A00F40B07F0040D04F004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C040808080404040
      FF40FFFFFF404040FF4000008040808080408080804080808040808080408080
      804080808040808080404040FF4000008040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F40CF9F9F40009F
      9F40CF9F9F40FFCFCF40CFFFFF40808080400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40D04F0040AF7F0F404FEF1F404FF01F404FF0
      1F404FF01F4050EF1F40CF800040F06000409FAF0F404FF01F409FAF0F40EF60
      0040C08000404FF01F404FF01F4090A00F40DF50004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000808080000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C040000000408080
      00404040FF408080FF4000008040000000400000004000000040000000400000
      0040000000404040FF400000804080808040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F40009F9F40CF9F
      9F40009F9F40FFCFCF40CFFFFF40000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40CF5000404FEF1F404FF01F406FD0104090A0
      0F406FD010404FF01F4050E01F40F06F0040A0AF0F404FF01F409FAF0F40F060
      00406FD010404FF01F404FF01F4090A00F40DF50004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C040000000408080
      0040808000404040FF404040FF4000008040FFFFFF40FFFFFF40FFFFFF40FFFF
      FF404040FF40000080408080004080808040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F40CF9F9F40009F
      9F40CF9F9F40FFCFCF40CFFFFF40000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40A0800F404FF01F405FDF1F40E05F0040E05F
      0040EF60004050E01F404FF01F40C0900F40A0B00F404FF01F409FAF0F40C080
      00404FF01F404FF01F404FF01F4090A00F40DF50004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000808080000000
      000000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF00000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C040000000408080
      004080800040000000404040FF404040FF4000008040FFFFFF40FFFFFF404040
      FF4000008040808000408080004080808040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F40009F9F40CF9F
      9F4090AFAF40FFCFCF40CFFFFF40000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F408FA00F404FF01F4080B01040E05F0040E05F
      0040EF5F004080C010404FF01F40AFA00F40A0AF0F404FF01F409FAF0F4060DF
      10404FF01F4050EF1F404FF01F4090A00F40DF50004080503040BFBFBF408F8F
      8F4000000000000000000000000000000000000000000000000080808000C0C0
      C000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C040000000408080
      00408080004080808040FFFFFF404040FF404040FF40000080404040FF400000
      804000000040808000408080004080808040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F40CF9F9F4090AF
      AF40CF9F9F40FFCFCF40CFFFFF40000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F408F9F0F404FF01F4080B01040E0500040E05F
      0040EF5F00407FC010404FF01F40AFA00F409FAF0F404FF01F406FD010404FF0
      1F404FEF1F408FAF0F404FF01F4090A00F40DF50004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000000000008080
      800000000000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C040000000408080
      00408080004080808040FFFFFF40800000404040FF404040FF4000008040FF00
      004000000040808000408080004080808040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F4090AFAF40CF9F
      9F4090AFAF40FFCFCF40CFFFFF40000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40A0800F404FF01F4050E01F40DF500040E05F
      0040E060004050EF1F404FF01F40C08F00409FAF0F404FF01F404FF01F404FF0
      1F409FA00F4090A00F404FF01F4090A00F40D04F004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000000000008080
      8000C0C0C0000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000C0C0C00000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C040000000408080
      0040FFFF004080808040FFFFFF404040FF404040FF40000080404040FF400000
      804080800040808000408080004080808040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F40CF9F9F4090AF
      AF40B0B0B040FFCFCF40CFFFFF40000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40CF4F004050E01F404FF01F405FDF1F407FBF
      104050E01F404FF01F405FE01F40EF6000409FAF0F404FF01F404FF01F4050EF
      1F40E05F004090A00F404FF01F4090A00F40D04F004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000000000000000
      000080808000000000000000000000000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C040000000408080
      0040FFFF0040000000404040FF404040FF400000804000000040000000404040
      FF4000008040808000408080004080808040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F4090AFAF40B0B0
      B040B0B0B040FFCFCF40CFFFFF40000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40CF400040B06F004050E01F404FF01F404FF0
      1F404FF01F4050E01F40CF700040E05F00409FA00F404FF01F404FF01F409F9F
      0F40E050004090A00F404FF01F408FA00F40D04F004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C040000000408080
      00404040FF404040FF404040FF40000080408080004080800040808000408080
      00404040FF40000080408080004080808040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F4090AFAF40B0B0
      B040B0B0B040FFCFCF40CFFFFF40000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40CF400040CF4F0040CF500040AF7F0F40A08F
      0F40B0800F40DF5F0040E0500040E05F0040BF7F004080BF104090A00F40DF5F
      0040DF500040B07F004090A00F40B0700040D04F004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40C0C0C0404040FF404040
      FF408080FF404040FF4000008040000000400000004000000040000000400000
      0040000000404040FF400000804080808040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F40B0B0B040B0B0
      B040FFCF9F40FFCFCF40CFFFFF40808080408080804000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40CF400040CF400040CF4F0040D04F0040D04F
      0040DF500040DF500040DF500040DF500040DF500040DF500040DF500040DF50
      0040DF500040D04F0040D04F0040D04F0040CF40004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808000C0C0C00000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C0C0C000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF404040FF40FFFFFF408080
      FF404040FF400000804080808040808080408080804080808040808080408080
      804080808040808080404040FF4000008040FFFFFF40C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F40B0B0B040FFCF
      9F40FFCFCF40FFCFCF40CFFFFF40808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040C0C0C040FFCF
      CF4000000040000000000000000000000000000000000000000000000000F0F0
      F040C0C0C040EFEFEF4080604F40C0400040CF400040CF400040CF4F0040D04F
      0040D04F0040D04F0040DF500040DF500040DF500040D0500040DF500040D04F
      0040D04F0040D04F0040D04F0040CF400040CF40004080503040BFBFBF408F8F
      8F40000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080800080808000C0C0C0000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0008080800080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080404040FF40FFFFFF408080FF404040
      FF4000008040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C0400000C040C0C0C040808080408080
      804000000040000000000000000000000000000000003F3F3F40FFCF9F40FFCF
      CF40C0D0EF40CFFFFF40FFCFCF40FFCFCF408080804080808040808080408080
      8040300000403000004030000040300000403000004030000040300000403000
      0040300000403000004030000040300000408080804080808040FFCFCF40FFCF
      CF4000000040000000000000000000000000000000000000000000000000FFFF
      FF40B0B0B040EFEFEF40DFDFDF40CFCFCF40CFCFCF40CFCFCF40C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040BFBFBF40BFBFBF40BFBFBF40BFBF
      BF40BFBFBF40BFBFBF40B0B0B040B0B0B040B0B0B040BFBFBF40B0B0B0409090
      9040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080008080
      800080808000C0C0C00000000000000000000000000000000000000000000000
      0000C0C0C0008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040FF404040FF404040FF404040
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40808080408080
      804000000040000000000000000000000000000000003F3F3F40FFCFCF40C0D0
      EF40CFFFFF40C0D0EF40CFFFFF40CFFFFF40CFFFFF40CFFFFF40CFFFFF40CFFF
      FF40CFFFFF40CFFFFF40CFFFFF40D0E0E040CFFFFF40D0E0E040CFFFFF40D0E0
      E040CFFFFF40D0E0E040CFFFFF40D0E0E040CFFFFF40D0E0E040CFFFFF40FFCF
      CF40101010400000000000000000000000000000000000000000000000000000
      0000D0D0D040B0B0B040DFDFDF40DFDFDF40D0D0D040D0D0D040D0D0D040D0D0
      D040D0D0D040CFCFCF40CFCFCF40CFCFCF40CFCFCF40CFCFCF40CFCFCF40C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040AFAFAF408F8F8F40DFDF
      DF40000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040FFFFFF408080
      804000000040000000000000000000000000000000003F3F3F40FFCFCF40CFFF
      FF40FFCFCF40FFCFCF40FFCFCF40FFCFCF40FFCFCF40FFCFCF40D0E0E040FFCF
      CF40D0E0E040FFCFCF40D0E0E040FFCFCF40D0E0E040FFCFCF40D0E0E040FFCF
      CF40D0E0E040FFCFCF40D0E0E040FFCFCF40D0E0E040FFCFCF40CF9F9F403060
      6040000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DFDFDF40DFDFDF40D0D0D040D0D0D040D0D0D040D0D0
      D040D0D0D040D0D0D040D0D0D040D0D0D040D0D0D040D0D0D040D0D0D040D0D0
      D040D0D0D040CFCFCF40CFCFCF40CFCFCF40CFCFCF40DFDFDF40000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      804000000000000000000000000000000000000000000000000030606040CF9F
      9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F
      9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F
      9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40306060400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000060606000606060006060
      60006060600060606000606060006F6F6F006F6F6F006F6F6F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C0408080804000000040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006060600060606000E0E0CF00FFF0CF00FFF0
      CF00FFEFC000FFEFCF00FFF0CF00FFF0CF00D0CFB000B0B09F006F6F6F006F6F
      6F0070706F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808040FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40C0C0C04080808040000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000060606000F0F0D000FFF0CF00FFEFC000FFEFBF00FFE0
      BF00FFE0B000FFE0B000F0D0B000DFB0A000EFC0AF00FFE0BF00FFEFC000FFF0
      D000C0C0AF006F6F6F0060606000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808040FFFFFF408080
      8040000000408080804080808040000000408080804080808040000000408080
      8040808080400000004080808040808080400000004080808040808080400000
      0040808080408080804000000040808080408080804080808040808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0C08F00FFF0CF00FFEFCF00FFEFBF00FFE0BF00FFE0
      BF00EFC0BF00D0AFAF00DFAFAF00EFCFCF00D0AFAF00F0CFAF00FFE0BF00FFE0
      BF00FFEFC000FFF0D000E0E0CF006F6F6F006060600000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000080808040FFFF
      FF408080804000000040FFFFFF408080804000000040FFFFFF40808080400000
      0040FFFFFF408080804000000040FFFFFF408080804000000040FFFFFF408080
      804000000040FFFFFF408080804000000040FFFFFF4080808040808080400000
      0040000000400000000000000000000000000000000000000000000000000000
      000000000000F0C08F00FFF0CF00FFEFCF00FFEFC00000008000FFDFB000DFBF
      BF00DFB0B000DFB0B000E0C0C000D0D0BF00FFE0E000E0BFBF00FFF0DF00FFF0
      DF00FFF0DF00FFF0CF00FFF0CF00FFFFDF00BFBFA00060606000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000808080000000
      0000000000000000000080808000808080008080800000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800000000000808080000000
      0000000000000000000080808000808080008080800000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8040808080408080804000000040FFFFFF408080804000000040FFFFFF408080
      804000000040FFFFFF408080804000000040FFFFFF408080804000000040FFFF
      FF408080804000000040FFFFFF408080804000000040FFFFFF40000000408080
      8040808080400000004000000000000000000000000000000000000000000000
      000000000000F0C08F00F0CF9000FFF0D0004040FF004040FF0000008000E0C0
      C000DFBFBF00DFBFBF00F0C0C00070C070008FD08F00EFFFEF00AFDFAF008FD0
      8F00BFE0BF00FFFFFF00FFFFDF00FFFFD0000000C000E0DFC000606060000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000000000008080
      8000000000000000000080808000C0C0C0008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000000000008080
      8000000000000000000080808000C0C0C0008080800000000000000000000000
      0000000000000000000000000000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8040FFFFFF40C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C0408080
      8040808080408080804000000000000000000000000000000000000000000000
      000000000000F0C08F00EFB06F008080FF004040FF008080FF004040FF000000
      8000E0C0C000E0C0C000EFCFCF0080CF7F00009F0000109F1000009F0000009F
      0000009F00002FAF2F00CFE0CF008080FF008080FF00FFFFDF00AFAF90006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      000000000000808080008080800000000000C0C0C00000000000000000000000
      0000000000008080800080808000C0C0C0008080800080808000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080008080800000000000C0C0C00000008000000000000000
      0000000000008080800080808000C0C0C0008080800080808000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8040FFFFFF40C0C0C040C0C0C0400080004000800040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C04080808040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C0408080
      8040808080408080804000000000000000000000000000000000000000000000
      000000000000F0BF7F00F0B07000F0BF7F004040FF008080FF008080FF004040
      FF0000008000E0CFCF00FFD0D00080CF7F00009F0000009F0000009F0000009F
      0000009F0000009F0000109F10000000C000FFFFDF00FFFFDF00D0C09F006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000C0C0C000C0C0C000C0C0C000000000008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000008080800080808000808080000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800000000000C0C0C0004040FF004040FF00000080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000000000008080800080808000808080000000C00000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8040FFFFFF40C0C0C040C0C0C04000FF004000FF0040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040000000400000004000000040000000400000
      00400000004000000040000000400000004000000040C0C0C040C0C0C0408080
      8040808080408080804000000000000000000000000000000000000000000000
      0000F0C08F00F0BF7000F0BF7000F0D0B000F0E0E0004040FF008080FF008080
      FF0000008000E0CFCF00EFCFCF0080CF8000009F0000009F0000009F000050BF
      500080CF800040B040004040FF0040B04000FFFFDF00FFD09F00FFD0A0006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000CFD0D000C0C0C000C0C0C000C0C0C0008080
      800080808000CFD0D000CFD0D000CFD0D000CFD0D000CFD0D000000000008080
      800080808000C0C0C000C0C0C000808080008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C0008080FF004040FF008080FF004040FF000000
      800080808000CFD0D000CFD0D000CFD0D000CFD0D000CFD0D000000000008080
      800080808000C0C0C000C0C0C0008080FF008080FF0000000000000000008080
      8000000000000000000000000000000000000000000000000000000000008080
      8040FFFFFF40C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040808080408080804080808040808080408080
      80408080804080808040808080408080804080808040C0C0C040C0C0C0408080
      8040808080408080804000000000000000000000000000000000000000000000
      0000F0C08F00F0BF8000FFCF9F00FFF0F000F0EFEF00F0EFEF004040FF008080
      FF004040FF0000008000FFD0D00080CF8000009F0000009F0000009F00008FD0
      8F00FFFFF0004040FF0000008000009F0000AFDFAF00FFCF9000FFD09F006F6F
      6F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000CFD0D000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000CFD0D000CFD0
      D00000000000C0C0C000C0C0C000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0004040FF008080FF008080FF004040
      FF0000008000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000CFD0D000CFD0
      D00000000000C0C0C000C0C0C0000000C0000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8040FFFFFF40C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C0408080
      8040808080408080804000000000000000000000000000000000000000000000
      0000FFCF9F00FFC08F00FFF0E000FFFFFF00FFF0F000FFF0F000F0EFEF004040
      FF008080FF0000008000FFD0D00080CF8000009F0000009F0000009F0000009F
      00004040FF0000008000FFF0D0009FD09F0060BF6000FFDFAF00FFC090007070
      6F00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C00080808000808080008080800080808000C0C0
      C000CFD0D0000000000080808000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C0004040FF008080FF008080
      FF0000008000C0C0C000C0C0C00080808000808080008080800080808000C0C0
      C000CFD0D000000000004040FF00000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000008080
      8040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF408080
      8040808080408080804000000000000000000000000000000000000000000000
      0000FFCF9F00FFD09F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF0F000D0A0
      A0004040FF004040FF0000008000FFE0E000CFE0CF00BFE0BF009FD09F004040
      FF0000008000FFFFFF00FFF0DF00FFFFDF0070C07000FFDFB000FFCF90007F7F
      7F006F6F6F000000000000000000000000000000000000000000000000008080
      8000808080008080800000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00000000000000000000000000080808000808080008080
      8000C0C0C000CFD0D00080808000808080000000000000000000808080008080
      8000808080008080800080808000000000000000000000000000000000008080
      8000808080008080800000000000C0C0C000C0C0C000C0C0C0004040FF008080
      FF004040FF000000800000000000000000000000000080808000808080008080
      8000C0C0C0004040FF0000008000808080000000000000000000808080008080
      8000808080008080800080808000000000000000000000000000000000000000
      0000808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      804080808040808080408080804080808040808080408080804080808040C0C0
      C040808080408080804000000000000000000000000000000000000000000000
      0000FFCF9F00FFEFD000FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0C0C000D0A0
      A000D0AFAF004040FF004040FF0000008000FFE0C000FFFFE0004040FF000000
      800080CF800080CF8000AFDFAF00BFE0B000BFE0B000FFE0BF00FFCF9F009090
      80006F6F6F000000000000000000000000000000000000000000808080000000
      0000000000000000000000000000C0C0C000CFD0D00000000000C0C0C000C0C0
      C000000000000000000080808000808080008080800080808000000000008080
      800080808000CFD0D00000000000808080000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000808080000000
      0000000000000000000000000000C0C0C000CFD0D00000000000C0C0C0004040
      FF008080FF000000800080808000808080008080800080808000000000008080
      80004040FF000000800000000000808080000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040808080408080
      8040C0C0C040808080400000000000000000000000000000000000000000F0C0
      8F00FFD09F00FFFFF000FFFFF000FFFFF000FFFFF000FFF0F000CF9F9F00D0A0
      A000D0AFAF00E0BFBF004040FF004040FF00000080004040FF000000800070C0
      7000009F0000009F0000009F0000009F0000FFFFDF00FFDFAF00FFD09F00D0C0
      9F006F6F6F000000000000000000000000000000000080808000000000000000
      00000000000000000000C0C0C000CFD0D00000000000C0C0C000C0C0C000C0C0
      C00000000000C0C0C00000000000000000000000000080808000808080008080
      800080808000C0C0C000CFD0D000808080008080800000000000000000000000
      0000000000000000000080808000000000000000000080808000000000000000
      00000000000000000000C0C0C000CFD0D00000000000C0C0C000C0C0C000C0C0
      C0004040FF004040FF0000008000000000000000000080808000808080004040
      FF0000008000C0C0C000CFD0D000808080008080800000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040000000408080
      804080808040C0C0C0400000000000000000000000000000000000000000FFDF
      AF00FFE0BF00FFFFF000FFFFF000FFFFF000FFFFF000E0D0D000D09F9F00D0AF
      AF00DFB0B000DFBFBF00FFD0D0004040FF004040FF0000008000FFFFF000FFFF
      FF002FAF2F00009F0000009F0000009F0000FFFFDF00FFDFAF00FFDFAF00D0C0
      9F006F6F6F00000000000000000000000000000000008080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000CFD0D00000000000C0C0C000C0C0C0000000
      0000CFD0D00000000000C0C0C000CFD0D000C0C0C00000000000808080000000
      000080808000C0C0C000CFD0D000808080008080800080808000808080008080
      800000000000000000008080800000000000000000008080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000CFD0D00000000000C0C0C000C0C0C0000000
      0000CFD0D0004040FF004040FF0000008000C0C0C000000000004040FF000000
      800080808000C0C0C000CFD0D000808080008080800080808000808080008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000080808040FFFFFF40C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C04080808040808080400000
      004080808040808080400000000000000000000000000000000000000000FFDF
      B000FFF0D000FFFFEF00FFFFEF00FFFFEF00FFFFF000DFB0B000DFB0B000EFD0
      D000E0C0C000DFBFBF004040FF004040FF00000080004040FF000000800070C0
      7000109F1000009F0000009F0000009F0000FFFFDF00FFE0B000FFE0B000FFEF
      C0006F6F6F00000000000000000000000000000000008080800000000000C0C0
      C000CFD0D000C0C0C000C0C0C000CFD0D0000000000080808000C0C0C0000000
      0000CFD0D000000000008080800000000000CFD0D00000000000808080000000
      000080808000C0C0C000CFD0D00080808000C0C0C000C0C0C000808080008080
      800000000000000000008080800000000000000000008080800000000000C0C0
      C000CFD0D000C0C0C000C0C0C000CFD0D0000000000080808000C0C0C0000000
      0000CFD0D000000000004040FF004040FF00000080004040FF00000080000000
      000080808000C0C0C000CFD0D00080808000C0C0C000C0C0C000808080008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000080808040FFFFFF40C0C0C040FFFFFF40000080400000
      804000008040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40C0C0C04080808040808080400000
      0040000000000000000000000000000000000000000000000000F0D0B000FFEF
      C000FFFFE000FFFFE000FFFFEF00FFFFEF00FFFFEF00F0EFE000FFFFF000FFFF
      F000FFFFF0004040FF004040FF000000800060BF6000009F00004040FF000000
      8000009F0000009F0000009F0000009F0000FFFFDF00FFEFC000FFEFC000FFEF
      CF006F6F6F00000000000000000000000000000000008080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000CFD0D0000000000080808000C0C0C0000000
      0000CFD0D000000000008080800080808000C0C0C00000000000808080000000
      0000C0C0C000C0C0C000CFD0D000808080008080800080808000808080008080
      800000000000000000008080800000000000000000008080800000000000C0C0
      C000C0C0C000C0C0C000C0C0C000CFD0D0000000000080808000C0C0C0000000
      0000CFD0D00000000000808080004040FF004040FF0000008000808080000000
      0000C0C0C000C0C0C000CFD0D000808080008080800080808000808080008080
      8000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000080808040FFFFFF40C0C0C040000080404040FF408080
      FF400000C0408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040FFFFFF40C0C0C04080808040808080400000
      0040000000000000000000000000000000000000000000000000F0D0B000FFF0
      CF00FFFFE000FFFFE000FFFFE000FFFFE000FFFFEF00FFFFEF00FFFFEF004040
      FF004040FF004040FF0000008000EFDFDF00FFEFEF0070C07000009F00004040
      FF0000008000009F00002FAF2F00009F0000FFFFDF00FFF0DF00FFF0CF00FFF0
      CF006F6F6F000000000000000000000000000000000080808000000000000000
      00000000000000000000C0C0C000CFD0D0000000000080808000C0C0C000C0C0
      C000CFD0D000CFD0D000000000000000000000000000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000CFD0D000808080008080800000000000000000000000
      0000000000000000000080808000000000000000000080808000000000000000
      00000000000000000000C0C0C000CFD0D0000000000080808000C0C0C000C0C0
      C000CFD0D000CFD0D0004040FF004040FF00000080004040FF0000008000C0C0
      C000C0C0C000C0C0C000CFD0D000808080008080800000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000080808040FFFFFF40C0C0C040000080404040FF408080
      FF400000C0408080004000000040000000400000004000000040000000400000
      0040808000408080004080808040FFFFFF40C0C0C04080808040808080400000
      0040000000000000000000000000000000000000000000000000F0D0B000FFFF
      DF00FFFFDF00FFFFDF00FFFFDF00FFFFDF00FFFFE0004040FF004040FF008080
      FF004040FF0000008000F0FFFF00F0EFEF00F0E0E000FFF0F000EFFFEF00BFE0
      BF004040FF0000008000FFFFF00040B04000FFFFDF00FFFFF000FFFFDF00FFFF
      D00080807F006F6F6F0000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000CFD0D0000000000080808000C0C0
      C00000000000CFD0D000CFD0D000CFD0D000CFD0D0000000000000000000C0C0
      C000C0C0C000CFD0D00080808000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000CFD0D0000000000080808000C0C0
      C000000000004040FF004040FF0000008000CFD0D000000000004040FF000000
      8000C0C0C000CFD0D00080808000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040FFFFFF40000080404040FF408080FF400000
      C040808000408080004080808040FFFFFF400000804000008040000080400000
      8040000080400000804000008040000080400000804080808040808080400000
      0040000000000000000000000000000000000000000000000000F0D0B000FFFF
      DF00FFFFDF00FFFFDF00FFFFDF00FFFFDF004040FF008080FF008080FF004040
      FF0000008000FFFFFF00FFFFFF00FFFFFF00F0EFEF00FFF0F000FFFFFF00FFFF
      FF00FFFFFF004040FF0000008000EFF0DF00FFFFDF00FFFFFF00FFFFDF00FFFF
      DF00AFAF90006F6F6F0000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000CFD0D00000000000808080008080
      8000C0C0C000C0C0C000000000000000000000000000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000CFD0D00000000000808080004040
      FF004040FF004040FF00000080000000000000000000C0C0C000C0C0C0004040
      FF0000008000C0C0C00080808000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040FFFFFF40000080404040FF408080FF400000
      C040000000400000004080808040FFFFFF40FFFFFF40000080404040FF404040
      FF404040FF404040FF404040FF404040FF400000C04080808040808080400000
      0040000000000000000000000000000000000000000000000000F0D0B000FFFF
      DF00FFFFDF00FFFFDF00FFFFDF004040FF008080FF008080FF004040FF000000
      8000DFFFFF00DFFFFF00DFFFFF00DFFFFF00EFFFEF00FFF0EF00FFFFEF00FFFF
      EF00FFFFEF00FFFFF000FFFFFF000000C000FFFFFF00FFFFF000FFFFDF00FFFF
      DF00AFAF90006F6F6F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C000CFD0D000000000008080
      800080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00000000000C0C0C00080808000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C0C0C0004040FF004040FF008080
      FF004040FF0000008000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C0004040FF000000800080808000000000000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040000080404040FF408080FF400000C0408080
      004080808040FFFFFF4080808040FFFFFF40FFFFFF40FFFFFF40000080404040
      FF408080FF408080FF408080FF40C0C0FF400000C04080808040808080400000
      0040000000000000000000000000000000000000000000000000F0D0B000FFFF
      DF00FFFFDF00FFFFDF00FFFFDF004040FF004040FF004040FF004040FF00B0FF
      FF00CFFFFF00DFFFEF00EFFFE000FFFFE000F0EFEF00D0AFAF00E0C0C000F0E0
      E000FFFFFF00FFFFFF00F0F0D000FFFFE000FFFFDF00FFFFDF00FFFFDF00FFFF
      DF00B0B09F006F6F6F0000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C000C0C0C000CFD0D000CFD0D0000000
      000000000000808080008080800080808000C0C0C000C0C0C00000000000C0C0
      C000C0C0C000C0C0C000C0C0C000808080000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0C0C0004040FF008080FF008080FF004040
      FF0000008000808080008080800080808000C0C0C000C0C0C00000000000C0C0
      C000C0C0C0004040FF0000008000808080000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040000080404040FF408080FF400000C0408080
      004080808040FFFFFF4080000040FF000040FF000040FF000040FF0000400000
      80404040FF408080FF40C0C0FF40FFFFFF400000C04080808040808080400000
      0040000000000000000000000000000000000000000000000000F0D0B000FFE0
      B000FFFFDF00FFFFDF00FFFFDF00FFFFDF00FFFFD000FFF0CF00DFEFD000F0F0
      D000FFF0E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00E0CFCF00EFD0D000F0EF
      EF00FFFFFF00D0F0FF00F0C08F00FFC08F00FFE0B000FFFFDF00FFFFDF00FFFF
      DF00D0D0BF006F6F6F0000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000CFD0D000C0C0C000C0C0C000C0C0C000CFD0
      D000CFD0D0000000000000000000000000000000000000000000CFD0D000C0C0
      C00080808000C0C0C000C0C0C000808080008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C0004040FF008080FF008080FF004040FF000000
      8000CFD0D0000000000000000000000000000000000000000000CFD0D000C0C0
      C00080808000C0C0C000C0C0C0000000C0008080800000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040000080404040FF408080FF400000C040FFFF
      004080808040FFFFFF40FFFFFF40FFFFFF40FFFFFF4000000040000080404040
      FF408080FF40C0C0FF40FFFFFF40FFFFFF400000C04080808040808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      0000F0D0B000F0D0B000F0D0B000FFDFBF00F0E0D000C0D0E000F0FFFF00FFFF
      FF00FFFFFF00FFFFFF00F0FFFF00FFFFFF00F0FFFF00E0D0D000EFDFDF00FFFF
      FF00F0FFFF00C0D0E000F0C08000FFC08000FFC08000FFC08F00FFEFC000FFFF
      DF00D0D0BF006F6F6F0000000000000000000000000000000000000000000000
      0000000000008080800000000000C0C0C000CFD0D000C0C0C00000000000C0C0
      C000C0C0C000CFD0D000CFD0D000CFD0D000CFD0D000CFD0D000C0C0C000C0C0
      C0000000000080808000C0C0C000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808000000000004040FF004040FF004040FF004040FF00C0C0
      C000C0C0C000CFD0D000CFD0D000CFD0D000CFD0D000CFD0D000C0C0C000C0C0
      C0000000000080808000C0C0C000808080000000000000000000808080000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040000080404040FF408080FF400000C040FFFF
      00400000004000000040000000400000004000000040000080404040FF408080
      FF40FFFFFF4000008040FFFFFF40FFFFFF400000C04080808040808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0DFF000E0FFFF00E0FF
      FF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00E0FFFF00EFDFDF00E0F0F000E0FF
      FF00E0FFFF00D0D0BF00FFC08000FFC08000FFC08F00FFC08F00FFC08F00FFDF
      B000D0D0BF006F6F6F0000000000000000000000000000000000000000000000
      000000000000808080008080800000000000C0C0C00000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000080808000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000808080008080800000000000C0C0C00000000000000000000000
      000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000000000000000
      0000000000000000000080808000000000000000000080808000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040000080404040FF408080FF400000C0408080
      004080800040808000408080004000008040000080404040FF408080FF40FFFF
      FF400000C0408080004000008040FFFFFF400000C04080808040808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0DFF000A0DFF000A0DF
      F000A0DFFF00D0FFFF00D0FFFF00D0FFFF00D0FFFF00D0FFFF00D0FFFF00CFFF
      FF00C0FFFF00D0C09F00FFC08000FFC08F00FFC08F00FFC08F00FFCF9000FFCF
      9000F0CFAF006F6F6F0000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000808080000000
      00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000808080000000000000000000808080000000
      00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000008080
      8000000000000000000000000000000000008080800000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040000080404040FF408080FF404040FF400000
      80400000804000008040000080404040FF404040FF408080FF40C0C0FF400000
      C040000000400000004080808040000080400000C04080808040808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A0DFF000A0DFF0008FE0FF00B0FFFF00B0FFFF00C0FFFF00B0FF
      FF00A0DFFF00FFC08F00FFC08F00FFC08F00FFC08F00FFCF9000FFCF9000FFCF
      9F00D0B090006F6F6F0000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000000000
      00000000000000000000C0C0C000CFD0D000C0C0C00000000000000000008080
      8000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080008080800080808000000000000000
      00000000000000000000C0C0C000CFD0D000C0C0C00000000000000000008080
      8000000000000000000000000000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040FFFFFF40000080404040FF40C0C0FF404040
      FF404040FF404040FF404040FF408080FF40C0C0FF400000C0400000C0408080
      8040808080408080804080808040FFFFFF400000C04080808040808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0DFF000A0DFF0008FE0FF00AFFF
      FF00A0DFFF00C0C0B000FFCF9000FFCF9000FFCF9000FFCF9000FFCF9F00FFCF
      9F00909080000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0C0C000C0C0C000C0C0C00000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040FFFFFF40C0C0C040000080408080FF40C0C0
      FF40C0C0FF40C0C0FF40C0C0FF400000C0400000C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C04080808040808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A0DF
      F000A0DFF000000000000000000000000000FFCF9000FFCF9000FFCF90000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000080808040FFFFFF40FFFFFF400000C0400000
      C0400000C0400000C0400000C040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF4080808040808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040FFFFFF40808080400000
      0040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006F5030006F5030006F5030006F5030006F503000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080000000000000000000000000000000000000000000000000000000
      0000DF902000DF902000D08F2F00D08F3F00CF8F4F00C0905F00B07F3F00B07F
      3F00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C00000800000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C00080808000808080000000000000000000000000000000000000000000F0A0
      2000BF803F00B07F3F0000000000000000000000000000000000DFAF7000C09F
      6F00B07F3F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00C0C0C00000FF0000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C0008080800000000000000000000000000000000000000000008080
      800080808000808080000000000000000000000000000000000000000000C08F
      30006F5030000000000000000000000000000000000000000000000000006F50
      3000906F3F00805F30007F502F00805F3000805F3000805F30007F5F30006F50
      3F006F5040000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00808080008080800000000000000000000000000000000000FFAF2000A070
      30006F503000000000000000000000000000000000006F5030006F503000AF70
      3000C0803F00E0903F00DF9F4000EFA04000EFAF4F00EFB05000E0B05F00DFB0
      6000C09F5F006F504000604F3000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A040FFFFFF40FFFF
      FF40F0F0F040F0F0F040EFEFEF40EFEFEF40E0E0E040DFDFDF40DFDFDF40D0D0
      D040D0D0D040CFCFCF40C0C0C040C0C0C040BFBFBF40B0B0B040B0B0B040AFAF
      AF40AFAFAF40A0A0A0409F9F9F409F9F9F40909090408F8F8F408F8F8F408080
      80408080804080808040000000000000000000000000A0A0A040FFFFFF40FFFF
      FF40F0F0F040F0F0F040EFEFEF40EFEFEF40E0E0E040DFDFDF40DFDFDF40D0D0
      D040D0D0D040600000406000004060000040BFBFBF40B0B0B040B0B0B040AFAF
      AF40AFAFAF40A0A0A0409F9F9F409F9F9F40909090408F8F8F408F8F8F408080
      8040808080408080804000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000C0C0C0008080800000000000000000000000000000000000FFAF2000AF70
      30006F50300000000000000000006F5030006F503000BF7F3000E08F3000EF9F
      3F00F0A03F00F0A03F00F0A03F00F0AF4000F0B04F00FFBF5000FFCF6000FFD0
      7000FFD08000F0CF8000D0B070006F503000604F300000000000000000000000
      00000000000000000000000000000000000000000000A0A0A040FFFFFF408080
      8040808080408080804080808040808080408080804000008040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      80408080804080808040000000000000000000000000A0A0A040FFFFFF408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040600000406000004060000040600000406000004080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008080
      800080808000C0C0C00000000000000000000000000000000000FFAF2000BF80
      30006F503000000000006F503000B07F4000E0903000F0A03F00F0A03F00F0A0
      3F00F09F3F00F09F3F00F09F3F00F09F3F00F0A03F00F0AF3F00F0B04F00FFC0
      5000FFD06F00FFE08F00FFEF9F00F0D09000BF9F60006F503000000000000000
      00000000000000000000000000000000000000000000A0A0A040FFFFFF40FFFF
      FF40FFFFFF40F0F0F040EFEFEF40EFEFEF404040FF404040FF4000008040D0D0
      D040D0D0D040CFCFCF40CFCFCF40C0C0C040BFBFBF40BFBFBF40B0B0B040AFAF
      AF40AFAFAF40A0A0A040A0A0A0409F9F9F400000C040909090408F8F8F408F8F
      8F408080804080808040000000000000000000000000A0A0A040FFFFFF40FFFF
      FF40FFFFFF40F0F0F040EFEFEF40EFEFEF40E0E0E040E0E0E040DFDFDF406000
      0040600000409F3030409F3030408000004060000040BFBFBF40B0B0B040AFAF
      AF40AFAFAF40A0A0A040A0A0A0409F9F9F4090909040909090408F8F8F408F8F
      8F40808080408080804000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000808080000000
      0000808080008080800000000000000000000000000000000000F0AF2000E0A0
      30006F4F30006F503000BF7F3F00EF9F3F00F0AF3F00F0A03F00F0A03000EF9F
      3000EF9F3000EF903000EF903000EF903000EF903000EF9F3000F0A03000F0AF
      3F00F0B04F00FFCF6000FFDF7F00FFEF9F00FFE0A000D0B07F006F5030000000
      0000000000000000000000000000000000000000000000000000A0A0A040FFFF
      FF40F0F0F040F0F0F040F0F0F0408080FF404040FF408080FF404040FF400000
      8040D0D0D040CFCFCF40CFCFCF40C0C0C040C0C0C040BFBFBF40BFBFBF40AFAF
      AF40AFAFAF40A0A0A0409F9F9F408080FF408080FF40909090408F8F8F408F8F
      8F40808080400000000000000000000000000000000000000000A0A0A040FFFF
      FF40F0F0F040F0F0F040F0F0F040EFEFEF40E0E0E040E0E0E040600000406000
      00409F303040FF000040FF000040FF0000406000004060000040BFBFBF40AFAF
      AF40AFAFAF40A0A0A0409F9F9F409F9F9F4090909040909090408F8F8F408F8F
      8F40808080400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000EFA03000FFB0
      30008F5F2F0090602000E0A03000F0AF3F00F0A03000EFA03000EF9F3000EF90
      2F00EF902F00EF902F00EF903000EF903000EF903000EF903000EF903000EF9F
      3000F0A03000F0B04000FFC05000FFDF7F00FFEF9F00FFEFAF00CFB07F00604F
      30000000000000000000000000000000000000000000000000005F5F5F405F5F
      5F405F5F5F405F5F5F405F5F5F405F5F5F404040FF408080FF408080FF404040
      FF40000080403F6060403F6060403F603F40603F3F4060603F4060603F408080
      80408080804080808040808080400000C0405F5F5F405F5F5F405F5F5F405F5F
      5F405F5F5F4000000040000000000000000000000000000000005F5F5F405F5F
      5F405F5F5F405F5F5F405F5F5F405F5F5F405F5F5F4060000040600000409F30
      3040FF000040FF000040FF306040FF0000409F3030400000004060603F408080
      8040808080408080804080808040808080405F5F5F405F5F5F405F5F5F405F5F
      5F405F5F5F400000004000000000000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C00080808000FFFFFF008080800080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000E0A04F00FFBF
      3F00DF9F3000EFA02F00F0AF3000F0A03000EFA03000EF9F2F00EF902F00E090
      2F00E0902F00EF902F00E08F2F00C07F2F00C07F2F00C07F2F00DF802F00EF90
      3000EF9F3000F0A03000F0AF3F00FFBF5000FFDF7F00FFF0A000FFE0A000A080
      50006F50400000000000000000000000000000000000000000004F4F4F405F5F
      5F405F5F5F405F5F5F405F5F5F40B060B0409F7F9F404040FF408080FF408080
      FF40000080407F7F9F407F9F9F407F9F7F409F7F7F409F9F7F409F7F9F409F7F
      9F409F7F9F409F7F9F404040FF40C0C0C040BFBFBF405F5F5F405F5F5F405050
      50405F5F5F4000000040000000000000000000000000000000004F4F4F405F5F
      5F405F5F5F405F5F5F405F5F5F40B060B04060000040600000409F303040FF00
      0040FF000040FF3060407F9F9F40FF306040FF00004080000040000000409F7F
      9F409F7F9F409F7F9F409F7F9F40C0C0C040BFBFBF405F5F5F405F5F5F405050
      50405F5F5F400000004000000000000000000000000080808000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF0080808000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000080808000FFFFFF00808080008080
      800000000000000000000000000000000000000000000000000000000000FFB0
      3000FFBF3F00FFB03000F0AF3000EFA03000EF9F2F00EF9F2F00E0902F00E090
      2F00E0902F00C07F2F006F503000000000000000000000000000906F2000D080
      3000EF903000EF9F3000F0A03000F0AF3F00FFBF5000FFDF7F00FFF0AF00F0D0
      90006F5030000000000000000000000000000000000000000000404040405F5F
      5F405F5F5F40BFBFBF40C0C0C040BFBFBF40B060B040B060B0404040FF408080
      FF404040FF40000080407F7F9F407F9F7F409F7F7F409F9F7F409F7F9F409F7F
      9F409F7F9F404040FF4000008040FFFFFF40FFFFFF40BFBFBF40C0C0C0405F5F
      5F405F5F5F400000004000000000000000000000000000000000404040405F5F
      5F405F5F5F40BFBFBF40C0C0C040BFBFBF40600000409F303040FF000040FF00
      0040FF3060409F7F9F407F7F9F407F9F7F40FF00004080000040800000409F7F
      9F409F7F9F40FFFFFF40FFFFFF40FFFFFF40FFFFFF40BFBFBF40C0C0C0405F5F
      5F405F5F5F400000004000000000000000000000000080808000C0C0C000FFFF
      FF0080808000808080008080800080808000FFFFFF008080800080808000FFFF
      FF00808080008080800080808000FFFFFF0080808000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000080808000FFFFFF00808080008080
      800000000000000000000000000000000000000000000000000000000000EFB0
      3F00FFBF3F00F0B03F00F0AF3000EFA03000EF9F2F00E09F2F00E0902000E090
      2F00CF8F2F006F5030000000000000000000000000000000000000000000906F
      2000DF802F00EF903000EF903000F0A03000F0AF3F00FFC05000FFE08F00FFEF
      9F00C0A06F006F50300000000000000000000000000000000000303030405F5F
      5F40BFBFBF40C0C0C040FFFFFF40FFFFFF40BFBFBF40C0C0C040BFBFBF404040
      FF408080FF40000080405F5F5F405F5F5F405F5F5F405F5F5F4050505040C0C0
      C0404040FF4000008040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40BFBF
      BF405F5F5F400000004000000000000000000000000000000000303030405F5F
      5F40BFBFBF40C0C0C040FFFFFF40FFFFFF40BFBFBF40FF000040FF000040FF30
      6040B060B0405F5F5F405F5F5F405F5F5F40FF306040FF000040800000406000
      0040C0C0C040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40BFBF
      BF405F5F5F400000004000000000000000000000000080808000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF0080808000FF000000FFFF0000FF00
      0000FF000000FF000000FF000000FF00000080808000FFFFFF00808080008080
      800000000000000000000000000000000000000000000000000000000000DFB0
      6000FFBF3F00F0BF3F00F0AF3000EFA02F00E09F2F00E09F2000E0902000E090
      20006F5030000000000000000000000000000000000000000000000000000000
      0000906F2000B0601F00B0601F00B0601F00BF701F00BF7F2000C0904000D0A0
      6000C09F60006F50300000000000000000000000000000000040303030405F5F
      5F40BFBFBF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40BFBF
      BF404040FF404040FF40000080405F5F5F405F5F5F405F5F5F405F5F5F404040
      FF4000008040C0C0C040BFBFBF40BFBFC040FFFFFF40FFFFFF40FFFFFF40C0C0
      C0405F5F5F400000004000000040000000000000000000000040303030405F5F
      5F40BFBFBF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40BFBF
      BF40505050405F5F5F405F5F5F405F5F5F405F5F5F40FF306040FF0000408000
      0040BFBFBF40C0C0C040BFBFBF40BFBFC040FFFFFF40FFFFFF40FFFFFF40C0C0
      C0405F5F5F400000004000000040000000000000000080808000C0C0C000FFFF
      FF0080808000808080008080800080808000FFFFFF008080800080808000FFFF
      FF00808080008080800080808000FFFFFF0080808000FF000000FFFF0000FF00
      0000FF000000FF000000FF000000FF00000080808000FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000EFB03F00FFBF3F00F0B03000EFAF2F00E09F2F00E09F2000E0902000E090
      20006F5030000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A0A040FFFFFF40202020405050
      5040C0C0C040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40C0C0C040FFFF
      FF40C0C0C0404040FF404040FF40000080405F5F5F405F5F5F404040FF400000
      8040B060B040B060B040BFBFBF40C0C0BF40BFBFBF40C0C0C040BFBFBF40BFBF
      BF4050505040000000408080804000000040A0A0A040FFFFFF40202020405050
      5040C0C0C040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40C0C0C040FFFF
      FF40C0C0C0405F5F5F405F5F5F405F5F5F405F5F5F405F5F5F40FF0000408000
      004000000040B060B040BFBFBF40C0C0BF40BFBFBF40C0C0C040BFBFBF40BFBF
      BF40505050400000004080808040000000400000000080808000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF0080808000FF000000FF000000FF00
      0000FF000000FF000000FF000000FF00000080808000FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      0000DFB06F00FFBF3F00F0B03F00EFAF2F00EFA02F00E09F2F00E09F2000E090
      20006F5030006F5030006F5030006F5030006F5030006F5030006F5030006F50
      30006F5030006F5030006F5030006F5030006F5030006F5030006F5030006F50
      30006F5030006F5030000000000000000000A0A0A040FFFFFF401F1F1F404040
      404040404040C0C0C040C0C0C040FFFFFF40FFFFFF40BFBFBF40FFFFFF409F7F
      9F409F7F9F409F7F9F404040FF404040FF40000080404040FF40000080409F7F
      9F409F7F9F409F7F9F40B060B040B060B040C0C0BF40BFBFC040C0C0BF404F4F
      5F4040404040000000408080804000000040A0A0A040FFFFFF401F1F1F404040
      404040404040C0C0C040C0C0C040FFFFFF40FFFFFF40BFBFBF40FFFFFF409F7F
      9F409F7F9F409F7F9F409F7F9F409F9F7F409F7F7F407F9F7F40FF306040FF00
      00408000004060000040B060B040B060B040C0C0BF40BFBFC040C0C0BF404F4F
      5F40404040400000004080808040000000400000000080808000C0C0C000FFFF
      FF0080808000808080008080800080808000FFFFFF008080800080808000FFFF
      FF00808080008080800080808000FFFFFF008080800080808000808080008080
      80008080800080808000808080008080800080808000FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      000000000000EFBF4000F0C04000F0B03000EFAF2F00EFA02F00E09F2F00E09F
      2000D08F2000D0802000D08F2000D08F2000D08F2F00D08F2F00D08F2F00D080
      2F00D0802F00D0802F00D0802F00DF802F00E08F3000E0903000E0903000EFA0
      4000F0BF5F00B07F3F000000000000000000A0A0A040FFFFFF400F0F0F403F3F
      3F403F3F3F403F3F3F403F3F3F40C0C0C040C0C0C0409F7F9F409F7F9F409F7F
      9F409F7F9F409F7F9F409F7F9F404040FF404040FF40000080407F9F9F407F7F
      9F409F7F9F409F7F9F409F7F9F409F7F9F40B060B0403F3F3F403F3F3F403F3F
      3F403F3F3F40000000408080804000000040A0A0A040FFFFFF400F0F0F403F3F
      3F403F3F3F403F3F3F403F3F3F40C0C0C040C0C0C0409F7F9F409F7F9F409F7F
      9F409F7F9F409F7F9F409F7F9F409F9F7F409F7F7F407F9F7F407F9F9F40FF30
      6040FF000040000000409F7F9F409F7F9F40B060B0403F3F3F403F3F3F403F3F
      3F403F3F3F400000004080808040000000400000000080808000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF0080808000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080008080
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0C04F00F0C04000F0B03000EFAF2F00EFA02F00E0A0
      2F00E09F2F00E09F2F00E09F2F00E09F2F00EF9F2F00EF9F2F00EF9F2F00EF9F
      2F00EF9F2F00EF902F00EF902F00EF903000EF9F3000F09F3F00F0A03F00FFAF
      4F00FFC06000B07F3F000000000000000000A0A0A040FFFFFF40000000402F2F
      2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F40603F6040603F
      6040603F60405F4F5F404040FF404040FF40000080404040FF40000080404F5F
      5F404F4F5F40604060402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F
      2F402F2F2F40000000408080804000000040A0A0A040FFFFFF40000000402F2F
      2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F40603F6040603F
      6040603F60405F4F5F409F9F7F40B0B0604060604040606040404F5F5F404F5F
      5F40FF00004080000040000000402F2F2F402F2F2F402F2F2F402F2F2F402F2F
      2F402F2F2F400000004080808040000000400000000080808000C0C0C000FFFF
      FF0080808000808080008080800080808000FFFFFF008080800080808000FFFF
      FF0080808000808080008080800080808000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C0008080
      800000000000000000000000000000000000000000000000000000000000D0BF
      7F000000000000000000E0C06000F0D04F00F0C04000F0B03000EFAF2F00EFA0
      2F00E0A02F00DF902000DF902000DF902000DF902F00DF902F00DF902F00DF90
      2F00E0902F00EF902F00EF902F00EF902F00EF903000EF9F3000F09F3F00FFAF
      4000F0B05000B07F3F000000000000000000A0A0A040FFFFFF40000000402020
      2040202020402020204020202040202020402020204020202040202020402020
      2040202020404040FF404040FF400000804020202040202020404040FF400000
      8040202020402020204020202040202020402020204020202040202020402020
      204020202040000000408080804000000040A0A0A040FFFFFF40000000402020
      2040202020402020204020202040202020402020204020202040202020402020
      2040202020402020204020202040202020402020204020202040202020402020
      2040FF306040FF00004060000040000000402020204020202040202020402020
      2040202020400000004080808040000000400000000080808000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      800000000000000000000000000000000000000000000000000000000000DFB0
      6F00EFCF70000000000000000000EFC05000F0D05000F0C04000F0B03000EFAF
      2F009F6F20009F6F20009F6F20009F6F20009F6F20009F6F20009F6F20009F6F
      2000CF8F3000EF9F2F00E0902F00EF902F00EF902F00EF9F3000F0A03000FFAF
      4000DFA04000B07F3F000000000000000000A0A0A040FFFFFF40000000401010
      1040101010401010104010101040101010401010104010101040101010404040
      FF404040FF404040FF4000008040101010401010104010101040101010404040
      FF40000080401010104010101040101010401010104010101040101010401010
      104010101040000000408080804000000040A0A0A040FFFFFF40000000401010
      1040101010401010104010101040101010401010104010101040101010401010
      1040101010401010104010101040101010401010104010101040101010401010
      104010101040FF306040FF000040000000401010104010101040101010401010
      1040101010400000004080808040000000400000000080808000C0C0C000FFFF
      FF0080808000808080008080800080808000FFFFFF008080800080808000FFFF
      FF0080808000808080008080800080808000FFFFFF0080808000808080008080
      80008080800080808000FFFFFF00C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E0CF
      8F00EFCF7000000000000000000000000000F0D05000F0D05000F0CF4000EFB0
      3000705020000000000000000000000000000000000000000000000000000000
      0000B07F3F00E09F2F00E09F2F00EF902F00EF902F00EF9F3000F0A03000FFAF
      4000BF803F00000000000000000000000000A0A0A040FFFFFF40000000400F0F
      0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F404040FF404040FF408080
      FF404040FF40000080400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F
      0F404040FF40000080400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F
      0F400F0F0F40000000408080804000000040A0A0A040FFFFFF40000000400F0F
      0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F
      0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F
      0F400F0F0F400F0F0F40FF30604060000040000000400F0F0F400F0F0F400F0F
      0F400F0F0F400000004080808040000000400000000080808000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000DFCF
      AF00FFE08F00EFCF7F000000000000000000F0D05000F0D05000F0D05000F0C0
      3F00AF7F20005F4030000000000000000000000000000000000000000000B07F
      3F00DF902000E09F2F00E09F2F00E09F2F00EF9F2F00EF9F3000F0A03F00FFAF
      4000B07F3F00000000000000000000000000A0A0A040FFFFFF40000000400000
      0040000000400000004000000040000000404040FF408080FF408080FF404040
      FF40000080400000004000000040000000400000004000000040000000400000
      0040000000404040FF4000008040000000400000004000000040000000400000
      004000000040000000408080804000000040A0A0A040FFFFFF40000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      00400000004000000040FF000040FF0000400000004000000040000000400000
      0040000000400000004080808040000000400000000080808000C0C0C000FFFF
      FF0080808000808080008080800080808000FFFFFF008080800080808000FFFF
      FF0080808000808080008080800080808000FFFFFF0080808000808080008080
      80008080800080808000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000EFD09000FFFFA000EFCF70000000000000000000F0D05000F0D05F00FFD0
      4F00E0AF30009060200060402F00000000000000000000000000B07F3F00CF8F
      2F00E09F2F00E09F2F00E09F2F00E09F2F00EF9F2F00EFA03000F0AF3F00EF9F
      3F00B07F3F00000000000000000000000000A0A0A040FFFFFF40FFFFFF40FFFF
      FF40F0F0F040F0F0F040EFEFEF404040FF408080FF408080FF404040FF400000
      8040D0D0D040CFCFCF40C0C0C040C0C0C040BFBFBF40BFBFBF40B0B0B040AFAF
      AF40AFAFAF40A0A0A040A0A0A0400000C04090909040909090408F8F8F408F8F
      8F4080808040808080408080804000000040A0A0A040FFFFFF40FFFFFF40FFFF
      FF40F0F0F040F0F0F040EFEFEF40EFEFEF40E0E0E040E0E0E040DFDFDF40DFDF
      DF40D0D0D040CFCFCF40C0C0C040C0C0C040BFBFBF40BFBFBF40B0B0B040AFAF
      AF40AFAFAF40A0A0A040A0A0A040FF306040FF000040600000408F8F8F408F8F
      8F40808080408080804080808040000000400000000080808000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFCFAF00FFF0AF00FFFFA000F0D070000000000000000000F0D05000F0D0
      5F00F0D04F00DFAF3000C08F2000A06F2000906F2000AF7F2000D0902000E0A0
      2F00E09F2F00E09F2F00E09F2F00EF9F2F00EFA03000F0AF3000F0AF4000AF7F
      3F0000000000000000000000000000000000A0A0A040FFFFFF40409F204000FF
      004000FF0040409F2040EFEFEF404040FF404040FF404040FF404040FF40D0D0
      D040D0D0D040CFCFCF40C0C0C040C0C0C040BFBFBF40BFBFBF40B0B0B040AFAF
      AF40AFAFAF40A0A0A0409F9F9F409F9F9F4090909040909090408F8F8F408F8F
      8F4080808040808080408080804000000040A0A0A040FFFFFF40409F204000FF
      004000FF0040409F2040EFEFEF40EFEFEF40E0E0E040E0E0E040DFDFDF40D0D0
      D040D0D0D040CFCFCF40C0C0C040C0C0C040BFBFBF40BFBFBF40B0B0B040AFAF
      AF40AFAFAF40A0A0A0409F9F9F409F9F9F40FF000040FF000040600000408F8F
      8F40808080408080804080808040000000400000000080808000C0C0C000FFFF
      FF0080808000808080008080800080808000FFFFFF008080800080808000FFFF
      FF0080808000808080008080800080808000FFFFFF0080808000808080008080
      80008080800080808000FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0CF8F00FFFFB000FFFFA000F0DF80000000000000000000F0D0
      6000F0D06000F0D05000EFBF3F00E0A02F00DF9F2F00DF9F2F00EFA02F00EFAF
      2F00EFA02F00E0A02F00E09F2F00EFA02F00F0AF3000F0AF3F00DF9F3F00B07F
      3F0000000000000000000000000000000000A0A0A040FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40F0F0F040F0F0F040EFEFEF40EFEFEF40E0E0E040DFDFDF40DFDF
      DF40D0D0D040CFCFCF40CFCFCF40C0C0C040BFBFBF40BFBFBF40B0B0B040B0B0
      B040AFAFAF40A0A0A040A0A0A0409F9F9F4090909040909090408F8F8F408F8F
      8F4080808040808080408080804000000040A0A0A040FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40F0F0F040F0F0F040EFEFEF40EFEFEF40E0E0E040DFDFDF40DFDF
      DF40D0D0D040CFCFCF40CFCFCF40C0C0C040BFBFBF40BFBFBF40B0B0B040B0B0
      B040AFAFAF40A0A0A040A0A0A0409F9F9F4090909040FF000040600000408F8F
      8F40808080408080804080808040000000400000000080808000C0C0C000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E0CF8F00FFFFB000FFFFAF00FFE08F00F0DF8F000000
      0000FFEF9F00F0DF6F00FFE05F00F0D04F00F0C03F00F0B02F00EFB02F00EFAF
      2F00EFAF2F00EFAF2F00EFAF2F00F0AF3000F0B03F00E0A03F00B07F3F000000
      00000000000000000000000000000000000000000000A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A0400000000000000000A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040FF0000406000
      0040A0A0A040A0A0A040A0A0A040000000000000000080808000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
      C000C0C0C000C0C0C000C0C0C000C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000E0CF8F00FFFFB000FFFFB000FFF09F00FFE0
      8F00FFEF9F00FFEFAF00FFF06F00FFE05F00F0D04F00F0C03F00F0B03000F0B0
      2F00EFB02F00F0B03000F0B03F00F0B03F00DF9F3000B07F3F00000000000000
      000000000000D0A04F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000E0CF8F00E0CF8F00FFFFB000FFFF
      A000FFF09000FFF08000FFF07000FFF06F00FFEF5F00FFD04F00F0CF4000F0C0
      3F00F0C03F00FFBF3F00EFB03F00CF9F4000B07F3F0000000000000000000000
      000000000000D0A04F00CFB09000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000FFFFFF000000
      0000FFFFFF0000000000FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0CF8F00E0CF
      8F00E0CF8F00FFF09F00FFF08000FFEF7000FFEF6F00FFDF5F00FFD04F00FFD0
      4F00F0C04F00CFA04F00BFA07000B07F3F000000000000000000000000000000
      000000000000D0A04F00C0AF8000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000008000000080000000800000008000
      0000800000008000000080000000800000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E0CF8F00E0CF8F00E0CF8F00E0CF8F00E0CF8F00E0C08000E0BF
      5000EFCF6F00A0907000B07F3F00000000000000000000000000000000000000
      000000000000D0A04F00B09F7000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080008080800080808000808080008080
      8000808080008080800080808000808080000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DFB07000E0BF6000E0CF7F00B07F3F00B07F3F0000000000000000000000
      0000B07F3F00D0A04F00BFA08000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0B06F00DFB05F00DFB05F00B07F3F00B07F3F00B07F
      3F00DFAF4000C09F5F0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DFB07000DFB07000DFB0
      7F00DFB070000000000000000000000000000000000000000000000000000000
      0000000000000000000020202040FF9F9F4080808040CF9F9F4080808040CF9F
      9F4080808040CF9F9F4070707040CF9F9F409F606040808080409F6060404040
      4040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000040202040FFA0A04080808040FFA0A04080808040FFA0
      A04080808040FFA0A04080808040FFA0A0408060604080808040806060404040
      4040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006FC08F404F90
      5F407FC090407FD09F407FD09F407FD09F407FD09F407FD09F407FD09F4080D0
      A0406FC08F400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000202020402020204080808040D0D0D04030606040B0B0B040B0B0B04090AF
      AF40CFCFCF40CF9F9F40609F9F4030609F404F4F4F409FCFCF40CF9F9F404040
      4040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000402020404020204080808040FFC0C0404060604080C0C04080C0C04080A0
      A040FFC0C040FFA0A04080A0A0404060A0404040404080C0C040FFA0A0404040
      4040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006FC08F404F90
      5F407FC090407FC090407FC090407FD09F407FC090407FC090407FD09F407FCF
      90406FC08F400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002020
      20409F60604020202040C0C0C04030609F40B0B0B04030606040E0E0E040E0E0
      E040CF9F9F40C0C0C0404F4F4F40B0B0B04060609F4080808040808080400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000004020
      20408060604040202040FFC0C0404060A04080C0C04040606040FFFFFF40FFFF
      FF40FFA0A040FFC0C0404040404080C0C0408060A04080808040808080400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AFD0BF404F9050404F90
      50404F9050404F9050404F9050404F9050404F9050404F9050404F9050404F90
      5F407FC090407FC090407FC090407FC090407FC090407FC090407FC0904080D0
      A0404F9050404F9050404F9050404F9050404F9050404F9050404F9050404F90
      50404F9050404F90504000000000000000000000000000000000003030409F60
      60409F6060403F3F3F4020202040202020403060604020202040306060402020
      2040306060402020204030609F409F60604030609F409FCFCF40603030400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004040408060
      6040806060404040404040202040402020404060604040202040406060404020
      204040606040402020404060A040806060404060A04080C0C040804040400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F9050404F9050404F90
      5F404F905F404F905F404F905F407FCF90407FCF90407FCF904080D0A0406FC0
      8F407FC090407FC090407FC090407FC090407FC090407FC090407FC09040B0E0
      B04080D0A0407FCF90407FCF90407FCF90404F905F404F905F404F905F404F90
      5F404F9050404F905040AFD0BF40000000000000000000000000003030409F60
      604000808040C0C0C040C0D0EF40FFCFCF40C0D0EF40EFEFEF40EFEFEF40CFFF
      FF40EFEFEF40C0D0EF40FFCFCF40C0D0EF40FFCFCF40FFFFFF40603030400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004040408060
      604000808040FFC0C040FFC0FF40FFC0C040FFC0FF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFC0FF40FFC0C040FFC0FF40FFC0C040FFFFFF40804040400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004F9050404F9050407FCF
      904080D0A0406FC08F40B0E0B040B0E0B040B0E0B0407FC090407FC090407FC0
      90407FC090407FC090407FC090407FC090407FC090407FC090407FC090407FC0
      90407FC090407FC09040B0E0B040B0E0B040B0E0B0406FC08F406FC08F4080D0
      A0404F905F404F905040AFD0BF40000000000000000000000000003030400080
      8040C0D0EF40CF9FCF4060606040303060403F3F3F403060604090AFAF4090AF
      AF408080804030306040101010403F3F3F4090AFAF40C0C0C040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000004040400080
      8040FFC0FF40FFA0C0408060604040406040404040404060604080A0A04080A0
      A0408080804040406040002020404040404080A0A040FFC0C040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A040FFFFFF40FFFF
      FF40F0F0F040F0F0F040EFEFEF40EFEFEF40E0E0E040DFDFDF40DFDFDF40D0D0
      D040D0D0D040CFCFCF40C0C0C040C0C0C040BFBFBF40B0B0B040B0B0B040AFAF
      AF40AFAFAF40A0A0A0409F9F9F409F9F9F40909090408F8F8F408F8F8F408080
      80408080804080808040000000000000000000000000A0B09F407FC080407FC0
      80407FC080407FCF904080D09F4080D09F4080DFA04080DFA04080DFA0408FDF
      AF408FDFAF408FDFAF4080D0A04080D0A04080D0A0407FCF9F407FCF9F407FCF
      9F4070CF904070C08F4060BF804060BF80405FB0704050A06F4050A06F404F90
      50404F9050406F9F6F4000000000000000000000000000000000003030409F9F
      CF400F0F0F400000004000000040000000400000004000000040000000400000
      00400000004000000040000000400F0F0F401010104000000000000000000000
      0000300000403000004030000040300000403000004030000040300000403000
      00403000004030000040300000403000004000000000000000000040404080A0
      C040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400020204000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A040FFFFFF408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      80408080804080808040000000000000000000000000C0BFBF40BFD0BF404F90
      50404F9050404F90504050A0604050A0604050A0604050AF704050AF70405FB0
      7F405FB07F405FB07F405FB07F405FB07F405FB07F405FB07F405FB07F405FB0
      7F4050AF704050AF704050A0604050A0604050A060404F9050404F9050404F90
      50406F9F6F40AFB0A04000000000000000000000000000000000000000000030
      30400030304090AFAF40FFCFCF40DFDFDF40CFFFFF40CFFFFF40CFFFFF40CFFF
      FF40CFFFFF40CFFFFF40CFFFFF40DFDFDF40CF9F9F401010104000000000CFCF
      9F40FFCF6040CFCF9F40FFCF6040CFCF9F40FFCF6040CFCF9F40FFCF6040CFCF
      9F40FFCF6040CFCF9F40FFCF6040CFCF9F400000000000000000000000000040
      40400040404080A0A040FFC0C040FFC0C040FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFC0C040FFA0A04000202040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A0A0A040FFFFFF40FFFF
      FF40FFFFFF40F0F0F040EFEFEF40EFEFEF40E0E0E040E0E0E040DFDFDF40D0D0
      D040D0D0D040CFCFCF40CFCFCF40C0C0C040BFBFBF40BFBFBF40B0B0B040AFAF
      AF40AFAFAF40A0A0A040A0A0A0409F9F9F4090909040909090408F8F8F408F8F
      8F408080804080808040000000000000000000000000A0A0A040EFEFE040C0DF
      C0407FC080407FC080407FCF90407FCF90407FD09F407FD09F4080D09F407FD0
      9F4080DFA04080D09F4080D09F407FD09F407FCF9F407FCF9F4070CF90406FC0
      8F406FC08F4060BF7F4060BF7F405FAF6F4050A06F4050A06F404F905F406F9F
      7040AFB0A0408080804000000000000000000000000000000000003030400030
      3040B0B0B040CFFFFF40FFCF6040CF603040CF603040CF603040CF603040CF60
      3040CF603040CF603040CF603040CF603040FFFFFF402F2F2F40000000000000
      0000000000000000000000000000000000000000000000000000000000003000
      004030000040FFCF6040CFCF9F40000000000000000000000000004040400040
      404080C0C040FFFFFF4000000040000000400000004000000040000000408040
      004080400040804000408040004080400040FFFFFF4040202040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A0A0A040FFFF
      FF40F0F0F040F0F0F040F0F0F040EFEFEF40E0E0E040E0E0E040DFDFDF40DFDF
      DF40D0D0D040CFCFCF40CFCFCF40C0C0C040C0C0C040BFBFBF40BFBFBF40AFAF
      AF40AFAFAF40A0A0A0409F9F9F409F9F9F4090909040909090408F8F8F408F8F
      8F40808080400000000000000000000000000000000000000000A0A0A040EFEF
      E040C0D0BF407FCF90407FCF904080D09F407FD09F4080DFA04080D09F4080DF
      A0408FDFAF408FDFAF408FDFAF4080D0A04080D0A04080D0A04080D0A04070CF
      904070CF90406FBF80405FB07F405FB07F4050A06F40509F5F406F9F7040A0AF
      9F408080804000000000000000000000000000000000000000003F3F3F40B0B0
      B040FFCFCF40FFFFFF40FF9F3040FFCF3040FFCF3040FFCF3040FFCF3040FFCF
      3040FF9F0040FF9F0040FF9F0040FF600040FFFFFF4040404040000000000000
      000000000000000000000000000000000000000000003000004030000040FFCF
      6040CFCF9F4000000000000000000000000000000000000000004040404080C0
      C040FFC0C040FFFFFF4000000040000000400000004000000040000000400000
      004000000040000000400000004080400040FFFFFF4040404040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000005F5F5F405F5F
      5F405F5F5F405F5F5F405F5F5F405F5F5F405F5F5F405F5F5F40603F6040603F
      60403F3F60403F6060403F6060403F603F40603F3F4060603F4060603F408080
      8040808080408080804080808040808080405F5F5F405F5F5F405F5F5F405F5F
      5F405F5F5F4000000040000000000000000000000000000000005F5F5F405F5F
      5F409F9F90407F907F40408F5040409F5F404FA06F4050A07040509F70405F9F
      7F404F9F7F4050B0804050B0804050B0704060A0704060B0704060B070406FBF
      8F4060BF804060BF80405FB07F4050AF7040408F50405F8F5F409F9F90405F5F
      5F405F5F5F4000000040000000000000000000000000000000003F3F3F40B0B0
      B040B0B0B040FFFFFF40CF9F6040FFCF6040FFFF9F40FFFF6040FFFF6040FFCF
      6040FFCF3040FF9F6040FF9F0040CF603040FFFFFF4040404040000000400000
      00400000000000000000000000003000004030000040FFCF6040CFCF9F403000
      00403000004030000040300000403000004000000000000000004040404080C0
      C04080C0C040FFFFFF4000000040000000400000004000000040000000400000
      004000000040000000400000004080400040FFFFFF4040404040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004F4F4F405F5F
      5F405F5F5F405F5F5F405F5F5F40B060B0409F7F9F409F7F9F409F7F9F409F7F
      9F409F7F9F407F7F9F407F9F9F407F9F7F409F7F7F409F9F7F409F7F9F409F7F
      9F409F7F9F409F7F9F409F7F9F40C0C0C040BFBFBF405F5F5F405F5F5F405050
      50405F5F5F4000000040000000000000000000000000000000004F4F4F405F5F
      5F405F5F5F409F9F904080907F405F806F405FA07F406FB08F4070BF90407FBF
      9F407FBF9F407FC0A0407FCFA0407FCF9F4080C09F4080CF9F407FBF9F407FBF
      9F4070BF90406FB08F4060AF80406FBF7F4080B080409F9F90405F5F5F405050
      50405F5F5F4000000040000000000000000000000000000000003F3F3F40B0B0
      B040FFCFCF40F0FFFF40CF9F6040FFFF6040FFFF6040FFFF6040FFFF6040FFFF
      9F40FFCF3040FFCF3040FF9F0040CF603040FFFFCF4040404040CF300040CF30
      0040000000400000000000000000CFCF9F40FFCF6040CFCF9F40FFCF6040CFCF
      9F40FFCF6040CFCF9F40FFCF6040CFCF9F4000000000000000004040404080C0
      C040FFC0C040FFFFFF4000000040808080400000004080808040000080400000
      004000000040000000400000004000000040FFFFC04040404040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000404040405F5F
      5F405F5F5F40BFBFBF40C0C0C040BFBFBF40B060B040B060B0409F7F9F409F7F
      9F409F7F9F409F7F9F407F7F9F40B0BFA040B0AF9F409F9F7F409F7F9F409F7F
      9F409F7F9F40FFFFFF40FFFFFF40FFFFFF40FFFFFF40BFBFBF40C0C0C0405F5F
      5F405F5F5F400000004000000000000000000000000000000000404040405F5F
      5F405F5F5F40BFBFBF40D0D0CF40AFBFA04060907F4070A08F407FBF9F407FBF
      9F4080C0A0408FC0AF4080C0AF4080D0A0408FC0A0408FD0A04080C0A0407FBF
      9F407FBF9F409FEFBF4080DFA0409FCF9F40D0DFCF40BFBFBF40C0C0C0405F5F
      5F405F5F5F4000000040000000000000000000000000000000003F3F3F40FFCF
      CF40B0B0B040F0FFFF40CF9F6040FFFF6040FFFF9F40FFFF9F40FFFF6040FFFF
      6040FFCF6040FFCF3040FF9F0040CF603040FFFFCF4040404040CF300040CF30
      0040003000400000004000000000000000000000000000000000000000003000
      004030000040FFCF6040CFCF9F4000000000000000000000000040404040FFC0
      C04080C0C040FFFFFF400000004000000040FFC0C0404040FF404040FF400000
      804000000040000000400000004000000040FFFFC04040404040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000303030405F5F
      5F40BFBFBF40C0C0C040FFFFFF40FFFFFF40BFBFBF40C0C0C040BFBFBF40B060
      B040B060B0405F5F5F40A09F9F405F8F5F40408F504080907F40A0A09F40C0C0
      C040C0C0C040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40BFBF
      BF405F5F5F400000004000000000000000000000000000000000303030405F5F
      5F40BFBFBF40C0C0C040FFFFFF40EFEFE040AFBFA0406FBF7F4080D0A0409FBF
      B0409FBFB04070B090407FBF9F407FBF9F407FBF9F407FBF9F406FB0804090DF
      B04090DFB04080DFA0409FCF9F40DFE0D040FFFFFF40FFFFFF40FFFFFF40BFBF
      BF405F5F5F4000000040000000000000000000000000000000003F3F3F40B0B0
      B040FFCFCF40F0FFFF40CF606040FFFF9F40FFFF9F40FFFF9F40FFFF6040FFFF
      9F40FFCF6040FFCF3040FF9F3040CF603040FFFF9F4040404040003000400030
      004000603040000000400000000000000000000000003000004030000040FFCF
      6040CFCF9F4000000000000000000000000000000000000000004040404080C0
      C040FFC0C040FFFFFF400000004080808040FFC0C0404040FF408080FF404040
      FF4000008040000000400000004000000040FFFFA04040404040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000040303030405F5F
      5F40BFBFBF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40BFBF
      BF40505050409F9F90405F8F5F405FAF7F406FB08F40409F5F4080907F40A0A0
      9F40BFBFBF40C0C0C040BFBFBF40BFBFC040FFFFFF40FFFFFF40FFFFFF40C0C0
      C0405F5F5F400000004000000040000000000000000000000040303030405F5F
      5F40BFBFBF40FFFFFF40FFFFFF40FFFFFF40DFE0D040BFD0BF4080D0904090DF
      B0408FBF9F407FBF9F4090BFAF4090BFAF4090BFAF407FBF9F407FBF9F407FBF
      9F4070CF904080B08F40B0C0B040BFBFC040FFFFFF40FFFFFF40FFFFFF40C0C0
      C0405F5F5F400000004000000040000000000000000030CF30403F3F3F40FFCF
      9F40FFCFCF40F0F0F040CF606040FFFF6040FFFF9F40FFFF9F40FFFF9F40FFCF
      6040FFCF6040FF9F3040FF9F3040FF600040FFFF604040404040008000400060
      30400060304000300040000000400000000000000000FFCF6040CFCF9F400000
      000000000000000000000000000000000000000000000000000040404040FFC0
      A040FFC0C040FFFFFF400000004000000040808080404040FF40FFFFFF408080
      FF404040FF40000080400000004000000040FFFF604040404040000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A0A0A040FFFFFF40202020405050
      5040C0C0C040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40C0C0C040FFFF
      FF40BFC0B0405F8F5F405FA070409FBFB0409FBFB04070B090405F8F5F409FA0
      9F40CFAFC040B060B040BFBFBF40C0C0BF40BFBFBF40C0C0C040BFBFBF40BFBF
      BF4050505040000000408080804000000040A0A0A040FFFFFF40202020405050
      5040C0C0C040FFFFFF40FFFFFF40FFFFFF40FFFFFF40EFEFE040AFBFA04080D0
      9040A0E0BF409FBFB04090BFAF409FBFB04090BFAF408FBFA04090BFAF407FAF
      8F40808F8040BFA0B040BFBFBF40C0C0BF40BFBFBF40C0C0C040BFBFBF40BFBF
      BF40505050400000004080808040000000400000000030CF30403F3F3F40FFCF
      CF40F0F0F040CFFFFF40CF9F9F40CF6060403000004030000040300000403000
      004030000040300000403000004060300040FFEFCF404F4F4F40006030400080
      004000603040006030402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F
      2F402F2F2F402F2F2F402F2F2F402F2F2F40000000000000000040404040FFC0
      C040FFFFFF40FFFFFF40804000408040004000000040000000404040FF40FFFF
      FF408080FF40000080404000004080400040FFFFC04040404040000000000000
      00000000000000000000402020404040FF404020204040202040402020404020
      204040202040402020404020204040202040A0A0A040FFFFFF401F1F1F404040
      404040404040C0C0C040C0C0C040FFFFFF40FFFFFF40BFBFBF40FFFFFF40B0AF
      AF40709070407FAF8F40BFCFCF40AFD0BF40AFCFBF40B0D0C04080C0AF405F9F
      6F409F9F9040C0B0BF40B060B040B060B040C0C0BF40BFBFC040C0C0BF404F4F
      5F4040404040000000408080804000000040A0A0A040FFFFFF401F1F1F404040
      404040404040C0C0C040C0C0C040FFFFFF40FFFFFF40BFBFBF40EFEFE0409F9F
      90405F9F6F408FC0AF40C0CFD040AFD0BF40AFCFBF40AFD0BF406FAF8F407090
      7040B0AFAF409F7F9F40B060B040B060B040C0C0BF40BFBFC040C0C0BF404F4F
      5F404040404000000040808080400000004030CF304060FF60403F3F3F40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40CFFFFF40CFFFFF40CFFFFF40CFFFFF40CFFF
      FF40CFFFFF40F0FFFF40F0FFFF40FFFFFF40FFCFCF4040404040008000400060
      3040008000402F2F2F40B0B0B040C0C0C040D0D0D04080808040DFDFDF408080
      8040909090409F6060408080804060606040000000000000000040404040FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF404040
      FF40FFFFFF404040FF4000008040FFFFFF40FFC0C04040404040000000000000
      000000000000402020404040FF4000008040FFC0C04080808040FFC0C0408080
      804080A0A040806060408080804080606040A0A0A040FFFFFF400F0F0F403F3F
      3F403F3F3F403F3F3F403F3F3F40C0C0C040C0C0C0409F7F9F40B0AFAF407090
      70407FAF8F40AFCFC040A0CFBF40AFD0BF40BFCFBF40A0D0BF40AFD0CF4080C0
      AF405F9F6F409F9F9040C0B0BF409F7F9F40B060B0403F3F3F403F3F3F403F3F
      3F403F3F3F40000000408080804000000040A0A0A040FFFFFF400F0F0F403F3F
      3F403F3F3F403F3F3F403F3F3F40C0C0C040C0C0C0409F7F9F409F7F9F40C0B0
      BF409FA09F40709070408FC0AF40BFD0BF40BFCFBF406FBF80406FA070409FA0
      A0409F7F9F409F7F9F409F7F9F409F7F9F40B060B0403F3F3F403F3F3F403F3F
      3F403F3F3F4000000040808080400000004030CF30409FFF9F409FFF60408080
      8040CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F9F40CF9F
      9F40CF9F9F40CF9F9F40CF9F9F40609F9F409F606040009F3040008000401F1F
      1F401F1F1F40909090409FCFCF4030606040CFCFCF40CFCFCF40FFCFCF409090
      9040309F9F404F4F4F40C0C0C040603030400000000000000000000000008080
      8040FFA0A040FFA0A040FFA0A040FFA0A040FFA0A040FFA0A040FFA0A040FFA0
      A0404040FF408080FF400000804080A0A0408060604000000000000000000020
      2040002020404040FF400000804040606040FFC0C040FFC0C040FFC0C04080A0
      A04040A0A04040404040FFC0C04080404040A0A0A040FFFFFF40000000402F2F
      2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F407F8070405F7F60405090
      6F4080AF9F407FB09F409FD0AF40B0E0B04090C0A04090C0A04070BF9F4080BF
      A04060AF8F4040805F406F7F6040808F7F402F2F2F402F2F2F402F2F2F402F2F
      2F402F2F2F40000000408080804000000040A0A0A040FFFFFF40000000402F2F
      2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F40603F6040603F
      6040AF9FA04080907F405FB06F4090DF8F405FAF70405F8F5040909F90404F5F
      5F404F4F5F40604060402F2F2F402F2F2F402F2F2F402F2F2F402F2F2F402F2F
      2F402F2F2F4000000040808080400000004030CF3040F0F0F0409FFF9F409FFF
      60409FFF604060FF304000600040FF9F0040FFCF3040FF9F0040FF9F0040FF9F
      0040FF9F0040FF6030400060304060CF3040009F3040009F3040303030409F60
      60401F1F1F401F1F1F400030304040404040306060405F5F5F40505050400030
      60406060604030609F401F1F1F40603030400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000004040FF404040FF40000080400000000000000000404040408060
      60404040FF400000804000404040404040404060604040606040406060400040
      6040806060404060A0400020204080404040A0A0A040FFFFFF40000000402020
      204020202040202020402020204020202040808F7F40407040402F804F40509F
      7040509F7040509F704060A0804060A0804060A0804060A080405FA07F405FA0
      7F405FA07F40409060402F7F3F406F7F6F40908F8F4020202040202020402020
      204020202040000000408080804000000040A0A0A040FFFFFF40000000402020
      2040202020402020204020202040202020402020204020202040202020402020
      204020202040908F8F406F7F6F402F7F3F40407040408F8F8040202020402020
      2040202020402020204020202040202020402020204020202040202020402020
      204020202040000000408080804000000040F0CFA04030CF3040DFDFDF409FFF
      9F409FFF9F4060FF304000600040FFCF3040FF9F0040FFCF3040FF9F0040FF9F
      0040FF9F00400080004060CF304060CF304060CF3040303030409F6060407070
      704090AFAF40CFCFCF40C0D0EF40C0D0EF40D0E0E040CFFFFF40C0D0EF40CFCF
      CF40D0D0D040FFFFFF40CFCFCF40603030400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004040FF404040FF400000804040404040806060404040
      FF4000008040FFC0C040FFC0FF40FFC0FF40FFFFFF40FFFFFF40FFC0FF40FFC0
      C040FFC0C040FFFFFF40FFC0C04080404040A0A0A040FFFFFF40000000401010
      1040101010401010104010101040707F6F403F6F3F40207F40403F8F5F404090
      6040409060404F906F40509F7040509F7040509F7040509F7040509F70404F90
      6F4040906040409060402F804F4020703040607F60408F8F8040101010401010
      104010101040000000408080804000000040A0A0A040FFFFFF40000000401010
      1040101010401010104010101040101010401010104010101040101010401010
      10401010104010101040101010407F8070408F807F4010101040101010401010
      1040101010401010104010101040101010401010104010101040101010401010
      104010101040000000408080804000000040F0CFA040FFFFCF4030CF30409FFF
      CF409FFF9F400060004000600040FF9F0040FFCF3040FF9F0040FFCF3040FF9F
      0040FF9F004000800040CFFFCF4000800040009F3040303030407070704060CF
      CF40CF9FCF403F3F3F40000030400F0F0F403060604070707040404040400000
      004000000040609F9F4060303040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004040FF404040FF40000080404040FF400000
      8040FFA0C0404040404000004040000000404060604080808040404040400000
      00400000004080A0A0408040404000000000A0A0A040FFFFFF40000000400F0F
      0F400F0F0F400F0F0F40707F70403F6F3F401F6F30402F7F4F40308050403F8F
      5F40408F6040408F60404F906F404F906F404F906F404F906F404F906F40408F
      6040408F60403F8F5F4030805040207F3F401F60204060705F40707F70400F0F
      0F400F0F0F40000000408080804000000040A0A0A040FFFFFF40000000400F0F
      0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F
      0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F
      0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F0F400F0F
      0F400F0F0F40000000408080804000000040F0CFA040FFFFCF40FFFFCF4030CF
      304030CF3040CFCF3040FFCF3040FFCF3040FF9F0040FFCF3040FF9F0040FFCF
      3040FF9F0040FF9F004000800040FF603040008000404F4F4F40707070403030
      6040000000401F1F1F401F1F1F401F1F1F401F1F1F401F1F1F401F1F1F401F1F
      1F401F1F1F401F1F1F4000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000004040FF404040FF40000080404040
      6040000000400020204000202040002020400020204000202040002020400020
      204000202040002020400000000000000000A0A0A040FFFFFF40000000400000
      004000000040707F6F4030603F401F6F304020703F402F7F40402F804F402F80
      4F40308050403F8F5F403F8F5F403F8F5F403F8F5F403F8F5F403F8F5F403080
      5040308050402F804F402F804F402F7F404020703F401F6F30405F6F5040707F
      6F4000000040000000408080804000000040A0A0A040FFFFFF40000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      004000000040000000408080804000000040F0CFA040FFFFFF40FFFFCF40FFFF
      3040FFFF3040FFCF3040FFCF3040FFCF3040FFCF3040FF9F0040FFCF30400080
      004000603040FF9F0040FF9F0040FF603040FF603040FF6030403F3F3F400030
      3040FFCFCF40F0F0F040CFFFFF40F0F0F040CFFFFF40F0F0F040CFFFFF40F0F0
      F040CFFFFF40FFCFCF401F1F1F40000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004040FF404040FF40000080404040FF400000
      8040FFC0C040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFC0C0400020204000000000A0A0A040FFFFFF40FFFFFF40FFFF
      FF40CFDFCF409FCF9F4070BF80407FCF90407FD09F407FD09F4080D09F4080DF
      A04080DFA0408FDFAF4080D0A04080D0A04080D0A04080D0A0407FCF9F407FCF
      9F4070CF90406FBF80406FBF80405FB07F405FB0704050A06F4050A06F409FAF
      9040BFB0AF40808080408080804000000040A0A0A040FFFFFF40FFFFFF40FFFF
      FF40F0F0F040F0F0F040EFEFEF40EFEFEF40E0E0E040E0E0E040DFDFDF40DFDF
      DF40D0D0D040CFCFCF40C0C0C040C0C0C040BFBFBF40BFBFBF40B0B0B040AFAF
      AF40AFAFAF40A0A0A040A0A0A0409F9F9F4090909040909090408F8F8F408F8F
      8F4080808040808080408080804000000040F0CFA040FFFFFF40FFFFCF40FFFF
      CF40FFFF3040FFFF304000603040FF9F0040FFCF3040FFCF3040FFCF30400080
      004000603040FF9F00400080004000603040FF6030403F3F3F409F606040FFCF
      CF40FFFFFF40CF603040CF603040FF9F3040FF9F6040FF9F6040FF9F3040CF60
      3040CF603040FFFFFF401F1F1F40000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000004040FF404040FF400000804040404040806060404040
      FF40000080400000004000000040000000400000004000000040000000408040
      004080400040FFFFFF400020204000000000A0A0A040FFFFFF40409F204070E0
      6F4030CF3F40309F2F407FCF90407FCF90407FC08F407FD09F407FCF90407FD0
      9F407FD09F4080D09F407FD09F407FD09F407FCF9F407FCF9F4070CF904070CF
      90406FC08F406FBF80405FB07F405FB07F4050A06F4050A06F404F905F404F90
      5F4090A08F40BFB0AF408080804000000040A0A0A040FFFFFF40409F204000FF
      004000FF0040409F2040EFEFEF40EFEFEF40E0E0E040E0E0E040DFDFDF40D0D0
      D040D0D0D040CFCFCF40C0C0C040C0C0C040BFBFBF40BFBFBF40B0B0B040AFAF
      AF40AFAFAF40A0A0A0409F9F9F409F9F9F4090909040909090408F8F8F408F8F
      8F408080804080808040808080400000004000000000F0CFA040FFFFFF40FFFF
      CF40FFFF9F4000603040CFFFCF4000603040FF9F0040FFCF3040FFCF3040FF9F
      0040FFCF30400080004030CF304000603040006030403F3F3F4090909040CFCF
      CF40FFFFFF40CF606040FFCF6040FFCF6040FFCF6040FFCF6040FFCF3040FF9F
      6040CF600040FFFFFF401F1F1F40000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00004040FF404040FF404040FF4000008040000000004040404080A0A040FFC0
      C0404040FF400000804000000040000000400000004000000040000000400000
      004000000040FFFFFF400020204000000000A0A0A040FFFFFF40DFE0D0409FCF
      9F407FC080407FC080407FC080407FCF90407FCF90407FC08F407FCF90407FCF
      90407FD09F407FCF90407FCF904070CF904070CF904070CF904070C08F4070C0
      8F406FC08F4060BF7F4060BF7F405FAF6F4050A06F4050A06F404F905F404F90
      5F404F9050408FA08F40B0B0B04000000040A0A0A040FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40F0F0F040F0F0F040EFEFEF40EFEFEF40E0E0E040DFDFDF40DFDF
      DF40D0D0D040CFCFCF40CFCFCF40C0C0C040BFBFBF40BFBFBF40B0B0B040B0B0
      B040AFAFAF40A0A0A040A0A0A0409F9F9F4090909040909090408F8F8F408F8F
      8F408080804080808040808080400000004000000000F0CFA040FFFFFF40C0DF
      C04000603040CFFFCF4030CF3040009F304030603040FF9F0040FFCF3040FFCF
      3040FF9F0040FFCF30400080004030CF3040008000403F3F3F4080808040FFCF
      CF40F0FFFF40CF606040FFFF6040FFFF9F40FFFF6040FFFF6040FFCF6040FFCF
      3040CF603040FFFFCF401F1F1F40000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000004040FF404040
      FF408080FF404040FF400000804000000000000000004040404080808040FFC0
      C040FFFFFF404040FF4000008040808080400000004000000040000000400000
      004000000040FFFFC040002020400000000000000000A0A0A0407FA07F405F9F
      60405F9F60405FAF70405FAF704060B07F406FBF80406FBF804070C08F4070C0
      8F407FC090407FC090407FC090407FC090407FC090407FC090407FC090407FC0
      90407FC0904070C08F4070C08F406FBF804060B07F4060B07F405FAF70405F9F
      60405F9F60405F9F6040A0B09F400000000000000000A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0A040A0A0
      A040A0A0A040A0A0A040A0A0A040000000000000000000000000F0CFA0400060
      304060FF604060FF304030CF3040009F3040009F304030603040FF9F0040FFCF
      3040FFCF3040FF9F0040FFCF304000800040FF9F00403F3F3F4090909040CFCF
      CF40FFFFFF40CF606040FFFF9F40FFFF9F40FFFF6040FFFF9F40FFCF6040FFCF
      3040CF603040FFFF9F401F1F1F40000000000000000000000000000000000000
      000000000000000000000000000000000000000000004040FF40FFFFFF408080
      FF404040FF40000080400000000000000000000000004040404080A0A040FFC0
      C040FFFFFF40000000404040FF40000080408080804000000040000000400000
      004000000040FFFFA040002020400000000000000000AFD0BF404F9050404F90
      5F4080D0A0406FC08F406FC08F40B0E0B040B0E0B040B0E0B0407FC090407FC0
      90407FC090407FC090407FC090407FC090407FC090407FC090407FC090407FC0
      90407FC090407FC090407FC09040B0E0B040B0E0B040B0E0B0406FC08F4080D0
      A0407FCF90404F9050404F905040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000030CF3040FFFF
      FF40CFFFCF409FFF9F4030CF304030CF3040009F3040009F304030603040FF9F
      0040FFCF304000603040FF603040FF603040FF9F00403F3F3F4080808040FFCF
      CF40FFFFFF40CF606040FFFF9F40FFFF9F40FFFF9F40FFFF6040FFCF6040FF9F
      6040CF603040FFFF60401F1F1F40000000000000000000000000000000000000
      0000000000000000000000000000000000004040FF40FFFFFF408080FF404040
      FF4000008040000000000000000000000000000000004040404080808040FFC0
      C040FFFFFF4000000040FFC0C040FFC0C0400000C04000000040000000400000
      004000000040FFFF6040002020400000000000000000AFD0BF404F9050404F90
      50404F905F404F905F404F905F404F905F407FCF90407FCF90407FCF904080D0
      A040B0E0B0407FC090407FC090407FC090407FC090407FC090407FC090407FC0
      90406FC08F4080D0A0407FCF90407FCF90407FCF90404F905F404F905F404F90
      5F404F905F404F9050404F905040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000030CF
      3040FFFFFF40CFFFCF409FFF9F4060FF304030CF304000CF3040009F30400060
      304000603040009F30400060304000603040FF6030403F3F3F4090909040CFCF
      CF40FFFFFF40CF9F60409F609F40303030403F3F3F403F3F3F40404040404F4F
      4F404F4F4F40FFEFCF401F1F1F40000000000000000000000000000000000000
      0000000000000000000000000000000000004040FF404040FF404040FF404040
      FF4000000000000000000000000000000000000000004040404080A0A040FFC0
      C040FFFFFF408040004080400040804000408040004000000040000000400000
      004080400040FFFFC040002020400000000000000000000000004F9050404F90
      50404F9050404F9050404F9050404F9050404F9050404F9050404F9050404F90
      504080D0A0407FC090407FC090407FC090407FC090407FC090407FC090407FC0
      90404F905F404F9050404F9050404F9050404F9050404F9050404F9050404F90
      50404F9050404F905040AFD0BF40000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000030CF304030CF3040FFFFFF40CFFFCF409FFF604060FF304030CF304030CF
      3040009F3040009F3040009F3040009F3040006030403F3F3F4080808040FFFF
      FF40FFFFFF40F0F0F040F0F0F040F0F0F040F0F0F040F0F0F040F0F0F040F0F0
      F040CFFFFF40FFCFCF401F1F1F40000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004040404080808040FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFC0C04000202040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006FC0
      8F407FCF90407FD09F407FC090407FC090407FD09F407FC090407FC090407FC0
      90404F905F406FC08F4000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000030CF304030CF3040FFFFFF40CFFFCF40CFFFCF40CFFF
      CF4060FF304030CF3040009F3040009F3040009F3040FF6030409F6060409F60
      60409F6060409F6060409F6060409F6060409F6060409F6060409F6060409F60
      60409F6060409F60604000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000806060408060
      6040806060408060604080606040806060408060604080606040806060408060
      6040806060408060604000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006FC0
      8F4080D0A0407FD09F407FD09F407FD09F407FD09F407FD09F407FD09F407FC0
      90404F905F406FC08F4000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000030CF304030CF304030CF304030CF
      304030CF304030CF304030CF304030CF30400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000006FC0
      8F407FCF90407FC090407FD09F407FC090407FC090407FC090407FD09F407FD0
      9F404F905F406FC08F4000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808040FFFFFF40C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C0408080
      8040808080400000004000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808040FFFFFF40C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C0400000
      00400000004000000040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C0408080
      8040808080408080804000000040000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808040FFFFFF40C0C0C040C0C0
      C0400080004000800040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C04080000040FF00
      0040FFFF0040FF00004000000040C0C0C040C0C0C040C0C0C040C0C0C0408080
      8040808080408080804080808040000000400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000080808040FFFFFF40C0C0C040C0C0
      C04000FF004000FF0040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040000000400000004080000040FF000040FFFF
      0040FFFF0040FF000040000000400000004000000040C0C0C040C0C0C0408080
      8040808080408080804080808040000000400000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000303000003030000030
      3000003030000030300000303000003030000030300000303000003030000030
      3000003030000030300000303000003030000030300000303000003030000030
      3000003030000030300000303000003030000030300000303000003030000030
      30000030300000303000003030000000000080808040FFFFFF40C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C0408080804080000040FF000040FFFF0040FFFF
      0040FF000040FF000040000000408080804080808040C0C0C040C0C0C0408080
      8040808080408080804080808040000000400000000000000000000000000000
      0000000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      000000000000000000000000000000000000009F9F0060CFCF0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF000030300080808040FFFFFF40C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C04080000040FF000040FFFF0040FFFF0040FF00
      0040FF00004000000040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C0408080
      8040808080408080804080808040000000400000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FCFFF009FFF
      FF009FCFFF009FFFFF009FCFFF009FFFFF009FFFFF009FCFFF009FFFFF009FCF
      FF009FFFFF009FFFFF009FFFFF009FCFFF009FFFFF009FCFFF009FFFFF009FFF
      FF009FCFFF009FCFFF009FFFFF009FCFFF009FFFFF009FCFFF009FCFFF009FCF
      FF009FFFFF009FCFFF0060CFCF000030300080808040FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF4080000040FF000040FFFF0040FFFF0040FF000040FF00
      004000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF408080
      8040808080408080804080808040000000400000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF4000000040000000400000
      0040000000400000004000000040FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FCFFF009FFFFF009FCFFF009FFFFF009FFFFF009FCFFF009FFF
      FF009FFFFF009FCFFF009FCFFF009FFFFF009FCFFF009FFFFF009FCFFF009FCF
      FF009FFFFF009FFFFF009FCFFF009FCFFF009FCFFF009FFFFF009FCFFF009FCF
      FF009FCFFF009FCFFF0060CFCF00003030000000000080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      80408080804080000040FF000040FFFF0040FFFF0040FF000040FF0000400000
      004080808040808080408080804080808040808080408080804080808040C0C0
      C040808080408080804080808040000000400000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40800000408000004080000040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40800000408000004080000040FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FCFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FCFFF009FFFFF009FFFFF009FFF
      FF009FCFFF009FCFFF009FFFFF009FFFFF009FCFFF009FFFFF009FCFFF009FFF
      FF009FFFFF009FCFFF009FCFFF009FFFFF009FCFFF009FCFFF009FCFFF009FCF
      FF009FCFFF009FCFFF0060CFCF00003030000000000000000000000000000000
      0040000000400000004000000040000000400000004000000040000000400000
      004080000040FF000040FFFF0040FFFF0040FF000040FF000040000000400000
      0040000000400000004000000040000000400000004000000040808080408080
      8040C0C0C0408080804080808040000000400000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF4080000040800000408000
      0040800000408000004080000040FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF4080000040FFFFFF4080000040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF4080000040FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FCFFF009FFFFF009FCFFF009FFFFF009FFFFF009FCFFF009FCFFF009FFF
      FF009FFFFF009FFFFF009FCFFF009F9FCF00909090009F9FCF009FFFFF009FCF
      FF009FFFFF009FCFFF009FCFFF009FCFFF009FFFFF009FCFFF009FFFFF009FFF
      FF009FCFFF009FCFFF0060CFCF00003030000000000000000000000000008080
      8040808080400000004000000040000000400000004000000040000000408080
      8040C0C0C040FFFFFF40C0C0C04080808040FF00004000000040808080408080
      8040808080408080804080808040808080408080804080808040000000408080
      804080808040C0C0C04080808040000000400000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF4080000040FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF408000004080000040FFFFFF40FFFFFF400000
      0040000000400000004000000040FFFFFF408000004080000040FFFFFF40FFFF
      FF4000000040000000400000004000000040FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FCFFF0060000000600000006000000060609F00909090009F9FCF009FFF
      FF009FCFFF009FFFFF009FFFFF009FFFFF009FCFFF009FCFFF009FCFFF009FCF
      FF009FFFFF009FCFFF0060CFCF00003030000000000000000000000000000000
      0040000000408080004080800040808000408080004080800040808000400000
      004000000040C0C0C040808080408080804000000040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C04080808040808080400000
      0040808080408080804080808040000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF400000004000000040000000400000
      00400000004000000040FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF4080000040FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FCF
      FF009FFFFF009FCFFF009FFFFF009FFFFF009FCFFF009FFFFF009FFFFF009FCF
      FF00600000006000000060000000600000006000000090909000909090009FFF
      FF009FFFFF009FCFFF009FCFFF009FCFFF009FCFFF009FFFFF009FCFFF009FCF
      FF009FCFFF009FCFFF0060CFCF0000303000000000000000000080808040C0C0
      C040C0C0C0408080804080808040808080408080804080808040808080408080
      004080800040000000408080804000000040FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF4080000040FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40800000408000004080000040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40800000408000004080000040FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FCFFF006000
      0000600000009F3030009F303000800000006000000060609F00909090009F9F
      CF009FCFFF009FFFFF009FCFFF009FCFFF009FFFFF009FCFFF009FCFFF009FFF
      FF009FCFFF009FFFFF0060CFCF00003030000000000080808040C0C0C040FFFF
      FF40C0C0C04080808040C0C0C040FFFF0040C0C0C040FFFF0040C0C0C040FFFF
      0040808000408080004000000040800000408000004080000040800000408000
      0040800000408000004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF408000004080000040800000408000
      00408000004080000040FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFF
      FF40800000408000004080000040FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF4080000040FFFFFF4080000040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF4080000040FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FCFFF009FCFFF00600000006000
      00009F303000FF000000FF000000FF000000600000006000000060609F009090
      900060CFFF009FCFFF009FFFFF009FFFFF009FCFFF009FFFFF009FFFFF009FCF
      FF009FCFFF009FCFFF0060CFCF00003030000000000080808040C0C0C040FFFF
      FF40C0C0C04080808040FFFF0040C0C0C040FFFF0040C0C0C040FFFF0040C0C0
      C040FFFF00408080004000000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFFFF40FFFF
      FF40FFFFFF4080000040FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFF
      FF408000004080000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF408000004080000040FFFFFF40FFFFFF400000
      0040000000400000004000000040FFFFFF408000004080000040FFFFFF40FFFF
      FF4000000040000000400000004000000040FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FCFFF009FFFFF009FCFFF0060000000600000009F30
      3000FF000000FF000000FF306000FF0000009F3030000000000060609F009090
      90009F9FCF009FCFFF009FCFFF009FCFFF009FFFFF009FCFFF009FCFFF009FCF
      FF009FFFFF009FCFFF0060CFCF000030300080808040FFFF0040C0C0C040FFFF
      FF40C0C0C04080808040C0C0C040FFFF0040C0C0C040FFFF0040C0C0C040FFFF
      0040C0C0C040FFFF00408080004000000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFFFF40FFFF
      FF40FFFFFF4080000040FFFFFF40FFFFFF40FFFFFF4080000040800000408000
      004080000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF0060000000600000009F303000FF00
      0000FF000000FF3060009F9FCF00FF306000FF00000080000000000000006060
      9F00909090009FCFFF009FFFFF009FFFFF009FCFFF009FFFFF009FFFFF009FCF
      FF009FCFFF009FFFFF0060CFCF000030300080808040FFFFFF40C0C0C040FFFF
      FF40C0C0C04080808040FFFF0040C0C0C040FFFF0040C0C0C040FFFF0040C0C0
      C040FFFF0040C0C0C0408080004000000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFFFF40FFFF
      FF40FFFFFF4080000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40800000408000004080000040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40800000408000004080000040FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF00600000009F303000FF000000FF00
      0000FF3060009FFFFF009FCFFF009F9FCF00FF00000080000000800000006060
      9F0060609F009F9FCF009FCFFF009FFFFF009FFFFF009FCFFF009FCFFF009FFF
      FF009FFFFF009FCFFF0060CFCF000030300080808040FFFF0040C0C0C040FFFF
      FF40C0C0C04080808040C0C0C040FFFF0040C0C0C040FFFF0040C0C0C040FFFF
      0040C0C0C040FFFF00408080004000000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFFFF408000
      00408000004080000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF4080000040FFFFFF4080000040FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF4080000040FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF00FF000000FF000000FF30
      60009FFFFF009FCFFF009FFFFF009FCFFF00FF306000FF000000800000006000
      000060609F00909090009FCFFF009FFFFF009FCFFF009FFFFF009FFFFF009FFF
      FF009FCFFF009FFFFF0060CFCF000030300080808040FFFFFF40C0C0C040FFFF
      FF40C0C0C04080808040FFFF0040C0C0C040FFFF0040C0C0C040FFFF0040C0C0
      C040FFFF0040C0C0C0408080004000000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF4080000040FFFFFF40FFFFFF408000
      004080000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF408000004080000040FFFFFF40FFFFFF400000
      0040000000400000004000000040FFFFFF408000004080000040FFFFFF40FFFF
      FF4000000040000000400000004000000040FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FCFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FCFFF00FF306000FF0000008000
      000060609F0060609F009F9FCF009FCFFF009FFFFF009FFFFF009FCFFF009FCF
      FF009FFFFF009FCFFF0060CFCF000030300080808040FFFF0040C0C0C040FFFF
      FF40C0C0C04080808040C0C0C040FFFF0040C0C0C040FFFF0040C0C0C040FFFF
      0040C0C0C040FFFF00408080004000000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF408000004080000040800000408000
      0040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009F9FCF00FF0000008000
      00000000000060609F00909090009FCFFF009FCFFF009FFFFF009FFFFF009FFF
      FF009FCFFF009FFFFF0060CFCF00003030000000000080808040C0C0C040FFFF
      FF40C0C0C04080808040FFFF0040C0C0C040FFFF0040C0C0C040FFFF0040C0C0
      C040FFFF0040C0C0C04000000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FCFFF009FFFFF009FCFFF009FFFFF009FCFFF009FFFFF00FF306000FF00
      0000800000006000000060609F009F9FCF009FCFFF009FCFFF009FFFFF009FCF
      FF009FFFFF009FCFFF0060CFCF00003030000000000080808040FFFFFF40FFFF
      FF40C0C0C04080808040C0C0C040FFFF0040C0C0C040FFFF0040C0C0C040FFFF
      0040C0C0C0408080004000000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      0000000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FCFFF00FF30
      6000FF0000000000000060609F009090900060CFFF009FFFFF009FFFFF009FFF
      FF009FFFFF009FCFFF0060CFCF0000303000000000000000000080808040FFFF
      FF40C0C0C04080808040FFFF0040C0C0C040FFFF0040C0C0C040FFFF0040C0C0
      C0408080004000000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FF000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF000040FF000040FF000040FF000040FF000040000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FF000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF000040FF000040FF000040FF000040FF000040000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FCFFF009F9F
      CF00FF000000800000000000000060609F00909090009FCFFF009FCFFF009FFF
      FF009FFFFF009FFFFF0060CFCF00003030000000000000000000000000008080
      8040808080408080804080808040808080408080804080808040808080400000
      004000000040FF000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF00004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      000000000040FF000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF000040FF000040FF000040FF000040FF000040000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000040FF000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF000040FF000040FF000040FF000040FF000040FF000040FF00
      0040FF000040FF000040FF000040FF000040FF000040FF000040000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FCFFF009FFFFF009FCFFF009FFFFF009FFF
      FF00FF306000FF000000600000000000000060609F009F9FCF009FCFFF009FCF
      FF009FFFFF009FCFFF0060CFCF00003030000000000000000000000000008080
      8040FFFFFF408080804080808040808080408080804080808040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004080000040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      0000000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      0040000000400000004000000040000000400000004000000040000000400000
      000000000000000000000000000000000000009F9F00FFFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FCFFF00FF306000FF0000000000000060609F0060609F009F9FCF009FFF
      FF009FCFFF009FFFFF0060CFCF00000000000000000000000000000000008080
      8040FFFFFF40C0C0C04080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040FFFFFF40C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009F9F00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B0B0B000FF3060006000000000000000B0B0B000B0B0B000DFDF
      DF00FFFFFF00FFFFFF0000000000000000000000000000000000000000008080
      8040FFFFFF40C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C04080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000009F9F0060CFCF0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CFCF0060CF
      CF0060CFCF0060CFCF0060CFCF0060CFCF00009F9F00009F9F00009F9F00009F
      9F00009F9F00009F9F00FF000000FF0000000000000000808000009F9F00009F
      9F00009F9F00009F9F0000000000000000000000000000000000000000000000
      000080808040FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFF
      FF40FFFFFF40FFFFFF40FFFFFF40FFFFFF40FFFFFF4080808040808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000009F9F00F0FFFF009FFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF009FFFFF00009F9F000000000000000000000000000000
      0000000000000000000000000000FF306000FF00000060000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080808040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040FFFFFF40808080408080
      8040000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000009F9F00FFFF
      FF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FFFFF009FFFFF00009F9F00000000000000000000000000000000000000
      000000000000000000000000000000000000FF000000FF000000600000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080808040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0
      C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040C0C0C040FFFFFF408080
      8040000000400000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000009F
      9F00FFFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFFFF009FFF
      FF009FFFFF00009F9F0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FF000000600000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040808080408080804080808040808080408080804080808040808080408080
      8040000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000009F9F00009F9F00009F9F00009F9F00009F9F00009F9F00009F9F00009F
      9F00009F9F000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FF0000006000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000080000000C00000000100010000000000000C00000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C000003FFF800000FFFFFFFFFFFFE7FF
      8000001FFE000000FFFFFFFFFFFFD7FF8000000FFC000000FC00003FFFFFB7FF
      C0000007F8000001F800003FFFFF77FFE0000003E0000003F800003FFFFF77FF
      F0000001C0000003F800003FFFF877FFF000000180000003F800003FFFC3F0FF
      F000000100000003F800003FFF1FFE3FF000000100000003F800003FFE7FFF9F
      F000000100000003FC00003FFDFFFFEFF000000100000007FE0000FFFBFFFFF7
      F00000010000000FF000001FF70001FBF80000010000001FF000000FE7FFFFF9
      FE000001E0000007E000000FEF00001DFE000001C0000007E000000FCFFFFFFC
      FE00000180000007E000000FDF00003EFE00000780000007E000000FDFFFFFFE
      FE00000780000007E000000FDF00000EFE00000780000007E000000FDFFFFFFE
      FE00000780000007E000000FDF00007EFE00000780000007E000000FCFFFFFFC
      FE00000780000007E000000FEF00003DFE00000780000007E000000FE7FFFFF9
      FE00000780000007E000000FF70001FBFE00000780000007E000000FFBFFFFF7
      FE00000780000007E000000FFDFFFFEFFE00000780000007E000000FFE7FFF9F
      FE00000780000007E000000FFF1FFE3FFE00000780000007E000000FFFC3F0FF
      FF00000780000007F000000FFFF807FFFF8000078000000FFC00003FFFFFFFFF
      FFC0000FC000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8000007F
      FF803FFFFFFC0FFFFFFC0FFF0000003FFE0007FFFFFC0FFFFFFC0FFF0000001F
      FC0001FFFFF80FFFFFF80FFF8000000FFC00007FFFF80FFFFFF80FFFC0000007
      F800003FFE180E7FFE180E7FE0000003F800001FFC00043FFC00043FE0000003
      F800000FF800001FF800001FE0000003F800000FF800000FF800000FE0000003
      F000000FF800000FF800000FE0000003F000000FFC00001FFC00001FE0000003
      F000000FFE00001FFE00001FE0000003F0000007E0000001E0000001F0000003
      F0000007C0000001C0000001FC000003E00000078000000180000001FC000003
      E00000078000000180000001FC000003E00000078000000180000001FC00000F
      C00000078000000180000001FC00000FC00000078000000180000001FC00000F
      C0000003FC00001FFC00001FFC00000FC0000003FC00001FFC00001FFC00000F
      C0000003FE00001FFE00001FFC00000FC0000003FC00000FFC00000FFC00000F
      C0000003F800000FF800000FFC00000FF0000003F800001FF800001FFC00000F
      FF800003F800003FF800003FFC00000FFF800003FC180C7FFC180C7FFC00000F
      FFF80003FE380EFFFE380EFFFC00000FFFFF0007FFF80FFFFFF80FFFFC00000F
      FFFFE71FFFF80FFFFFF80FFFFE00000FFFFFFFFFFFF80FFFFFF80FFFFF00000F
      FFFFFFFFFFFFFFFFFFFFFFFFFF80001FFFFFFFFFFFFFFFFFFFF80007F83FFFFF
      FFFFFFFFFFFFFFFFFFF00003F00FFFFFFFFFFFFFFFFFFFFFFFF00001E3C7FFFF
      FFFFFFFFFFFFFFFFFFF00001E7E007FFFFFFFFFFFFFFFFFFFFF00001C78001FF
      8000000380000003FFF80001C600007F8000000380000003FFFC0001C400003F
      8000000380000003FFFC0003C000001FC0000007C000000780000007C000000F
      C0000003C000000380000007C0000007C0000003C000000380000007E001C007
      C0000003C000000380000007E003E003C0000003C000000380000007E007F003
      800000018000000180000007F007FFFF000000000000000080000007F0000003
      000000000000000080000007F8000003000000000000000080000007FC000003
      000000000000000080000007EC00000300000000000000008000000FE6000003
      00000000000000008000007FE707F00700000000000000008000007FE303E007
      00000000000000008000007FF181C00700000000000000008000007FF0C0000F
      00000000000000008000007FF860000F00000000000000008000007FFC10001F
      80000001800000018000007FFE00003BFFFFFFFFFFFFFFFF8000007FFF000079
      FFFFFFFFFFFFFFFF8000007FFFC000F9FFFFFFFFFFFFFFFF8000007FFFF801F9
      FFFFFFFFFFFFFFFF8000007FFFFFF071FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC03
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87FC000FFFFC000FFFFFFFFFFFFFC007FF
      F0000FFFF0000FFFFFFFFFFFFFC007FFE0001FFFE0001FFFFFFFFFFF80000003
      C0001FFFC0001FFFFFFFFFFF80000001C0001FFFC0001FFFFFFFFFFF80000001
      C0003FFFC0003FFF8000000380000003C0007000C0007FFF8000000380000003
      E0002000E0003FFF8000000380000003C0003FE1C0003FFFC0000007C0000007
      C0003F87C0003FFFC0000003C0000003C0000E00C0003FFFC0000003C0000003
      C0000600C0003FFFC0000003C0000003C00003E1C0003FFFC0000003C0000003
      C0000387C0003FFF80000001800000018000019FC0003FFF0000000000000000
      80000000C0003C00000000000000000000000000C00038000000000000000000
      00000000E0006000000000000000000000000000FFF8C0000000000000000000
      00000000FFFC0000000000000000000000000001FFFE00010000000000000000
      00000003FFFF0003000000000000000000000001FFFE00010000000000000000
      00000001FFFC0001000000000000000080000001FFF080010000000000000000
      80000001FFC180018000000180000001C0000001FF83800180000001FFFFFFFF
      C0000001FF07800180000001FFFFFFFFE0000001FF0F8001C0000001FFFFFFFF
      F0000001FFFF8001FFE003FFFFFFFFFFFC000003FFFFC003FFE003FFFFFFFFFF
      FF00FFFFFFFFFFFFFFE003FFFFFFFFFF8000000FFFFFFFFFFFFFFFFFFFFFFFFF
      00000007FFFFFFFFFFFFFFFFFFFFFFFF00000003FFFFFFFFFFFFFFFFFFFFFFFF
      00000001FFFFFFFFFFFFFFFFFFFFFFFF00000000FFFFFFFFFFFFFFFFFFFFFFFF
      00000000FFFFFFFFFFFFFFFF8000000100000000F000001FF000001F00000000
      00000000F000001FF000001F0000000000000000F000001FF000001F00000000
      80000000F000001FF000001F00000000E0000000F000001FF000001F00000000
      E0000000F000001FF000001F00000000E0000001F000001FF000001F00000000
      C0000007F000001FF000001F0000000080000007F000001FF000001F00000000
      80000007F000001FF000001F0000000000000007F000001FF000001F00000000
      00000007F000001FF000001F0000000000000007F000001FF000001F00000000
      00000007F000001FF000001F0000000000000007F000001FF000001F00000000
      80000007F000001FF000001F0000000080000007F000001FF000001F00000000
      C0000007F000001FF000001F00000000E0000007F000001FF000001F00000000
      E0000007F000001FF000001F00000001E0000007FFFFFFFFFFFFFFFF00000001
      E0000007FFFFFFFFFFFFFFFF00000003F0000007FFFFFFFFFFFFFFFF8000FE3F
      F8000007FFFFFFFFFFFFFFFFC001FF1FFC000007FFFFFFFFFFFFFFFFE003FF9F
      FE00000FFFFFFFFFFFFFFFFFF007FFCF00000000000000000000000000000000
      000000000000}
  end
  object PM_Programas: TPopupMenu
    Left = 553
    Top = 379
    object Executar1: TMenuItem
      Caption = 'E&xecutar'
    end
    object Incluir1: TMenuItem
      Caption = '&Incluir'
    end
    object Excluir1: TMenuItem
      Caption = '&Excluir'
    end
    object SalvarLista1: TMenuItem
      Caption = '&Salvar Lista'
    end
  end
  object PM_Maquinas: TPopupMenu
    Images = IL_Ligacao
    MenuAnimation = [maLeftToRight]
    Left = 425
    Top = 380
    object Conectar1: TMenuItem
      Action = Action_Conectar
      ImageIndex = 3
    end
    object SelecionarTodos1: TMenuItem
      Action = Action_Selecionar
      ImageIndex = 1
    end
    object Desconectar1: TMenuItem
      Caption = '&Desconectar Tudo'
      ImageIndex = 2
    end
    object Realocar1: TMenuItem
      Caption = 'Realocar'
    end
  end
  object ActionList1: TActionList
    Images = IL_Ligacao
    Left = 489
    Top = 380
    object Action_Conectar: TAction
      Caption = '&Conectar'
      OnExecute = Action_ConectarExecute
    end
    object Action_Desconectar: TAction
      Caption = '&Desconectar'
    end
    object Action_Selecionar: TAction
      Caption = '&Selecionar Tudo'
      OnExecute = Action_SelecionarExecute
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 617
    Top = 380
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 665
    Top = 380
  end
end
