//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uScript;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls, ComCtrls, MPHexEditorEx, Menus;

type
  TfmScript = class(TForm)
  published
    Panel1:TPanel;//f2F8
    btWrite:TButton;//f2FC
    btRead:TButton;//f300
    lvScript:TListView;//f304
    laStep:TLabel;//f308
    Splitter1:TSplitter;//f30C
    heScript:TMPHexEditorEx;//f310
    cbEdit:TCheckBox;//f314
    pmScript:TPopupMenu;//f318
    miDelete:TMenuItem;//f31C
    miInsert:TMenuItem;//f320
    pmHex:TPopupMenu;//f324
    Copy1:TMenuItem;//f328
    Past1:TMenuItem;//f32C
    btGo:TButton;//f330
    btRun:TButton;//f334
    miGenCOScript:TMenuItem;//f338
    cbModId:TComboBox;//f33C
    miBuckUp:TMenuItem;//f340
    GenScriptfromCommonLog1:TMenuItem;//f344
    //procedure heScriptChange(?:?);//0053672C
    procedure btGoClick(Sender:TObject);//00537430
    procedure Past1Click(Sender:TObject);//00536EB0
    procedure miInsertClick(Sender:TObject);//00536BCC
    procedure Copy1Click(Sender:TObject);//00536E90
    procedure miBuckUpClick(Sender:TObject);//00538010
    procedure GenScriptfromCommonLog1Click(Sender:TObject);//0053805C
    //procedure cbModIdChange(?:?);//00537FF8
    procedure btRunClick(Sender:TObject);//00537570
    procedure miGenCOScriptClick(Sender:TObject);//00537744
    procedure miDeleteClick(Sender:TObject);//005368F4
    procedure btWriteClick(Sender:TObject);//00535F34
    procedure btReadClick(Sender:TObject);//00536094
    procedure FormDestroy(Sender:TObject);//00536E6C
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//005368D4
    procedure FormShow(Sender:TObject);//00536794
    //procedure lvScriptChange(?:TObject; ?:?);//0053645C
    procedure cbEditClick(Sender:TObject);//00536538
    procedure lvScriptDblClick(Sender:TObject);//0053642C
    //procedure lvScriptCustomDrawItem(?:?; ?:?);//005360C0
    //procedure lvScriptSelectItem(?:?; ?:?);//00536378
  public
    f348:dword;//f348
  end;
    procedure sub_005355E8(?:TfmScript; ?:TfmHDD);//005355E8
    procedure sub_00535650(?:TfmScript);//00535650
    procedure sub_005356CC(?:TfmScript);//005356CC
    procedure sub_00535D8C(?:TfmScript);//00535D8C
    //function sub_00536ED0:?;//00536ED0
    //function sub_00537144:?;//00537144
    //procedure sub_0053775C(?:?; ?:?);//0053775C
    //procedure sub_005379BC(?:?; ?:?; ?:?);//005379BC
    procedure sub_00537B84(?:TfmScript);//00537B84

implementation

{$R *.DFM}

//005355E8
procedure sub_005355E8(?:TfmScript; ?:TfmHDD);
begin
{*
 005355E8    push        ebp
 005355E9    mov         ebp,esp
 005355EB    add         esp,0FFFFFFF8
 005355EE    mov         dword ptr [ebp-8],edx
 005355F1    mov         dword ptr [ebp-4],eax
 005355F4    cmp         dword ptr ds:[56D528],0;gvar_0056D528:TfmScript
>005355FB    jne         00535622
 005355FD    mov         ecx,dword ptr [ebp-8]
 00535600    mov         dl,1
 00535602    mov         eax,[00535170];TfmScript
 00535607    call        TfmProgress.Create;TfmScript.Create
 0053560C    mov         [0056D528],eax;gvar_0056D528:TfmScript
 00535611    mov         dl,1
 00535613    mov         eax,[0041DE14];TMemoryStream
 00535618    call        TObject.Create;TMemoryStream.Create
 0053561D    mov         [0059BE9C],eax;gvar_0059BE9C:TMemoryStream
 00535622    mov         eax,[0056D528];0x0 gvar_0056D528:TfmScript
 00535627    cmp         byte ptr [eax+1A6],0;TfmScript.FShowing:Boolean
>0053562E    je          0053563F
 00535630    mov         eax,[0056D528];0x0 gvar_0056D528:TfmScript
 00535635    mov         edx,dword ptr [eax]
 00535637    call        dword ptr [edx+0C4];TfmScript.sub_004A746C
>0053563D    jmp         00535649
 0053563F    mov         eax,[0056D528];0x0 gvar_0056D528:TfmScript
 00535644    call        004A7450
 00535649    pop         ecx
 0053564A    pop         ecx
 0053564B    pop         ebp
 0053564C    ret
*}
end;

//00535650
procedure sub_00535650(?:TfmScript);
begin
{*
 00535650    push        ebp
 00535651    mov         ebp,esp
 00535653    add         esp,0FFFFFFF4
 00535656    mov         dword ptr [ebp-4],eax
 00535659    mov         eax,dword ptr [ebp-4]
 0053565C    mov         eax,dword ptr [eax+304]
 00535662    mov         eax,dword ptr [eax+22C]
 00535668    call        0045AF28
 0053566D    test        eax,eax
>0053566F    jle         005356C5
 00535671    mov         eax,dword ptr [ebp-4]
 00535674    mov         eax,dword ptr [eax+304]
 0053567A    mov         eax,dword ptr [eax+22C]
 00535680    call        0045AF28
 00535685    dec         eax
 00535686    test        eax,eax
>00535688    jl          005356C5
 0053568A    inc         eax
 0053568B    mov         dword ptr [ebp-0C],eax
 0053568E    mov         dword ptr [ebp-8],0
 00535695    mov         eax,dword ptr [ebp-4]
 00535698    mov         eax,dword ptr [eax+304]
 0053569E    mov         eax,dword ptr [eax+22C]
 005356A4    mov         edx,dword ptr [ebp-8]
 005356A7    call        0045AF80
 005356AC    mov         eax,dword ptr [eax+0C]
 005356AF    mov         edx,dword ptr [ebp-4]
 005356B2    mov         edx,dword ptr [edx+348]
 005356B8    call        @FreeMem
 005356BD    inc         dword ptr [ebp-8]
 005356C0    dec         dword ptr [ebp-0C]
>005356C3    jne         00535695
 005356C5    mov         esp,ebp
 005356C7    pop         ebp
 005356C8    ret
*}
end;

//005356CC
procedure sub_005356CC(?:TfmScript);
begin
{*
 005356CC    push        ebp
 005356CD    mov         ebp,esp
 005356CF    mov         ecx,0E
 005356D4    push        0
 005356D6    push        0
 005356D8    dec         ecx
>005356D9    jne         005356D4
 005356DB    push        ebx
 005356DC    mov         dword ptr [ebp-4],eax
 005356DF    xor         eax,eax
 005356E1    push        ebp
 005356E2    push        535CD0
 005356E7    push        dword ptr fs:[eax]
 005356EA    mov         dword ptr fs:[eax],esp
 005356ED    mov         word ptr [ebp-12],0FFFF
 005356F3    lea         edx,[ebp-34]
 005356F6    mov         eax,dword ptr [ebp-4]
 005356F9    mov         eax,dword ptr [eax+33C]
 005356FF    call        TPanel.GetCaption
 00535704    mov         ecx,dword ptr [ebp-34]
 00535707    lea         eax,[ebp-30]
 0053570A    mov         edx,535CE4;'$'
 0053570F    call        @LStrCat3
 00535714    mov         eax,dword ptr [ebp-30]
 00535717    mov         edx,28
 0053571C    call        0040C4A8
 00535721    mov         word ptr [ebp-22],ax
 00535725    lea         edx,[ebp-3C]
 00535728    xor         eax,eax
 0053572A    call        00403214
 0053572F    mov         eax,dword ptr [ebp-3C]
 00535732    lea         edx,[ebp-38]
 00535735    call        0040CC5C
 0053573A    lea         eax,[ebp-38]
 0053573D    mov         edx,535CF0;'wdm.ini'
 00535742    call        @LStrCat
 00535747    mov         ecx,dword ptr [ebp-38]
 0053574A    mov         dl,1
 0053574C    mov         eax,[004497F8];TIniFile
 00535751    call        TIniFile.Create;TIniFile.Create
 00535756    mov         dword ptr [ebp-8],eax
 00535759    xor         eax,eax
 0053575B    push        ebp
 0053575C    push        535C96
 00535761    push        dword ptr fs:[eax]
 00535764    mov         dword ptr fs:[eax],esp
 00535767    mov         eax,[0056E5A4];^gvar_0056DF04
 0053576C    mov         byte ptr [eax],0
 0053576F    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535774    call        00423F20
 00535779    mov         edx,dword ptr ds:[59BE9C];0x0 gvar_0059BE9C:TMemoryStream
 0053577F    mov         ax,word ptr [ebp-22]
 00535783    call        005095B8
 00535788    test        al,al
>0053578A    je          00535BDD
 00535790    xor         ecx,ecx
 00535792    xor         edx,edx
 00535794    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535799    mov         ebx,dword ptr [eax]
 0053579B    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053579E    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 005357A3    call        004CE56C
 005357A8    mov         dword ptr [ebp-10],eax
 005357AB    cmp         dword ptr [ebp-10],4C594F52
>005357B2    jne         005357F6
 005357B4    xor         ecx,ecx
 005357B6    mov         edx,30
 005357BB    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 005357C0    mov         ebx,dword ptr [eax]
 005357C2    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005357C5    mov         word ptr [ebp-18],38
 005357CB    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 005357D0    call        004CE548
 005357D5    mov         word ptr [ebp-12],ax
 005357D9    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 005357DE    call        004CE548
 005357E3    mov         word ptr [ebp-14],ax
 005357E7    cmp         word ptr [ebp-14],0
>005357EC    jne         00535865
 005357EE    mov         word ptr [ebp-14],88
>005357F4    jmp         00535865
 005357F6    xor         ecx,ecx
 005357F8    mov         edx,6
 005357FD    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535802    mov         ebx,dword ptr [eax]
 00535804    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00535807    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 0053580C    call        004CE548
 00535811    mov         word ptr [ebp-16],ax
 00535815    cmp         word ptr [ebp-16],3033
>0053581B    jne         00535825
 0053581D    mov         word ptr [ebp-18],20
>00535823    jmp         0053582B
 00535825    mov         word ptr [ebp-18],1C
 0053582B    xor         ecx,ecx
 0053582D    mov         edx,18
 00535832    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535837    mov         ebx,dword ptr [eax]
 00535839    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053583C    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535841    call        004CE548
 00535846    mov         word ptr [ebp-12],ax
 0053584A    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 0053584F    call        004CE548
 00535854    mov         word ptr [ebp-14],ax
 00535858    cmp         word ptr [ebp-14],0
>0053585D    jne         00535865
 0053585F    mov         word ptr [ebp-14],74
 00535865    movzx       eax,word ptr [ebp-14]
 00535869    mov         edx,dword ptr [ebp-4]
 0053586C    mov         dword ptr [edx+348],eax
 00535872    mov         eax,dword ptr [ebp-4]
 00535875    mov         eax,dword ptr [eax+310]
 0053587B    xor         edx,edx
 0053587D    call        TMPHexEditorEx.SetNoSizeChange
 00535882    mov         eax,dword ptr [ebp-4]
 00535885    mov         edx,dword ptr [eax+348]
 0053588B    mov         eax,dword ptr [ebp-4]
 0053588E    mov         eax,dword ptr [eax+310]
 00535894    call        004E95F4
 00535899    mov         eax,dword ptr [ebp-4]
 0053589C    mov         eax,dword ptr [eax+310]
 005358A2    mov         dl,1
 005358A4    call        TMPHexEditorEx.SetNoSizeChange
 005358A9    movzx       edx,word ptr [ebp-18]
 005358AD    xor         ecx,ecx
 005358AF    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 005358B4    mov         ebx,dword ptr [eax]
 005358B6    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005358B9    mov         eax,dword ptr [ebp-4]
 005358BC    call        00535650
 005358C1    mov         eax,dword ptr [ebp-4]
 005358C4    mov         eax,dword ptr [eax+304]
 005358CA    mov         edx,dword ptr [eax]
 005358CC    call        dword ptr [edx+0C4]
 005358D2    mov         eax,dword ptr [ebp-4]
 005358D5    mov         eax,dword ptr [eax+304]
 005358DB    mov         eax,dword ptr [eax+22C]
 005358E1    call        TListItems.BeginUpdate
 005358E6    mov         eax,dword ptr [ebp-4]
 005358E9    mov         eax,dword ptr [eax+304]
 005358EF    mov         edx,dword ptr [eax]
 005358F1    call        dword ptr [edx+0D8]
 005358F7    mov         word ptr [ebp-16],1
>005358FD    jmp         00535B27
 00535902    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535907    call        004CE548
 0053590C    mov         word ptr [ebp-16],ax
 00535910    cmp         word ptr [ebp-16],0
>00535915    je          00535A8A
 0053591B    mov         eax,dword ptr [ebp-4]
 0053591E    mov         eax,dword ptr [eax+304]
 00535924    mov         dword ptr [ebp-28],eax
 00535927    mov         eax,dword ptr [ebp-28]
 0053592A    mov         eax,dword ptr [eax+22C]
 00535930    call        0045AE78
 00535935    mov         dword ptr [ebp-0C],eax
 00535938    mov         eax,dword ptr [ebp-4]
 0053593B    mov         eax,dword ptr [eax+348]
 00535941    call        @GetMem
 00535946    mov         dword ptr [ebp-1C],eax
 00535949    mov         edx,dword ptr [ebp-1C]
 0053594C    mov         eax,dword ptr [ebp-0C]
 0053594F    call        0045A81C
 00535954    lea         ecx,[ebp-40]
 00535957    movzx       eax,word ptr [ebp-16]
 0053595B    mov         edx,2
 00535960    call        IntToHex
 00535965    mov         edx,dword ptr [ebp-40]
 00535968    mov         eax,dword ptr [ebp-0C]
 0053596B    call        0045A750
 00535970    cmp         word ptr [ebp-16],0FF
>00535976    jbe         005359B0
 00535978    push        0
 0053597A    lea         eax,[ebp-20]
 0053597D    push        eax
 0053597E    lea         ecx,[ebp-48]
 00535981    movzx       eax,word ptr [ebp-16]
 00535985    mov         edx,4
 0053598A    call        IntToHex
 0053598F    mov         ecx,dword ptr [ebp-48]
 00535992    lea         eax,[ebp-44]
 00535995    mov         edx,535D00;'ID'
 0053599A    call        @LStrCat3
 0053599F    mov         ecx,dword ptr [ebp-44]
 005359A2    mov         edx,535D0C;'BLOCKS'
 005359A7    mov         eax,dword ptr [ebp-8]
 005359AA    mov         ebx,dword ptr [eax]
 005359AC    call        dword ptr [ebx];TIniFile.sub_0044A254
>005359AE    jmp         005359E6
 005359B0    push        0
 005359B2    lea         eax,[ebp-20]
 005359B5    push        eax
 005359B6    lea         ecx,[ebp-50]
 005359B9    movzx       eax,word ptr [ebp-16]
 005359BD    mov         edx,2
 005359C2    call        IntToHex
 005359C7    mov         ecx,dword ptr [ebp-50]
 005359CA    lea         eax,[ebp-4C]
 005359CD    mov         edx,535D00;'ID'
 005359D2    call        @LStrCat3
 005359D7    mov         ecx,dword ptr [ebp-4C]
 005359DA    mov         edx,535D0C;'BLOCKS'
 005359DF    mov         eax,dword ptr [ebp-8]
 005359E2    mov         ebx,dword ptr [eax]
 005359E4    call        dword ptr [ebx];TIniFile.sub_0044A254
 005359E6    mov         cx,1
 005359EA    mov         edx,0FFFFFFFE
 005359EF    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 005359F4    mov         ebx,dword ptr [eax]
 005359F6    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005359F9    movzx       ecx,word ptr [ebp-14]
 005359FD    mov         eax,dword ptr [ebp-0C]
 00535A00    mov         edx,dword ptr [eax+0C]
 00535A03    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535A08    call        TStream.ReadBuffer
 00535A0D    movzx       eax,word ptr [ebp-16]
 00535A11    cmp         eax,0C3
>00535A16    jge         00535A33
 00535A18    add         eax,0FFFFFF5F
 00535A1D    sub         eax,2
>00535A20    jb          00535A4F
 00535A22    sub         eax,5
>00535A25    je          00535A4F
 00535A27    sub         eax,2
>00535A2A    je          00535A4F
 00535A2C    sub         eax,4
>00535A2F    je          00535A4F
>00535A31    jmp         00535A77
 00535A33    add         eax,0FFFFFF3D
 00535A38    sub         eax,2
>00535A3B    jb          00535A4F
 00535A3D    sub         eax,3
>00535A40    je          00535A4F
 00535A42    add         eax,0FFFFD7C8
 00535A47    sub         eax,2
>00535A4A    jb          00535A4F
 00535A4C    dec         eax
>00535A4D    jne         00535A77
 00535A4F    push        dword ptr [ebp-20]
 00535A52    push        535D1C;' - '
 00535A57    mov         eax,dword ptr [ebp-1C]
 00535A5A    add         eax,4
 00535A5D    mov         al,byte ptr [eax]
 00535A5F    lea         edx,[ebp-54]
 00535A62    call        005336BC
 00535A67    push        dword ptr [ebp-54]
 00535A6A    lea         eax,[ebp-20]
 00535A6D    mov         edx,3
 00535A72    call        @LStrCatN
 00535A77    mov         eax,dword ptr [ebp-0C]
 00535A7A    mov         eax,dword ptr [eax+8]
 00535A7D    mov         edx,dword ptr [ebp-20]
 00535A80    mov         ecx,dword ptr [eax]
 00535A82    call        dword ptr [ecx+38]
>00535A85    jmp         00535B27
 00535A8A    mov         eax,dword ptr [ebp-4]
 00535A8D    mov         eax,dword ptr [eax+304]
 00535A93    mov         dword ptr [ebp-2C],eax
 00535A96    mov         eax,dword ptr [ebp-2C]
 00535A99    mov         eax,dword ptr [eax+22C]
 00535A9F    call        0045AE78
 00535AA4    mov         dword ptr [ebp-0C],eax
 00535AA7    mov         eax,dword ptr [ebp-4]
 00535AAA    mov         eax,dword ptr [eax+348]
 00535AB0    call        @GetMem
 00535AB5    mov         dword ptr [ebp-1C],eax
 00535AB8    mov         edx,dword ptr [ebp-1C]
 00535ABB    mov         eax,dword ptr [ebp-0C]
 00535ABE    call        0045A81C
 00535AC3    mov         eax,dword ptr [ebp-4]
 00535AC6    mov         edx,dword ptr [eax+348]
 00535ACC    mov         eax,dword ptr [ebp-1C]
 00535ACF    xor         ecx,ecx
 00535AD1    call        @FillChar
 00535AD6    lea         ecx,[ebp-58]
 00535AD9    mov         edx,2
 00535ADE    xor         eax,eax
 00535AE0    call        IntToHex
 00535AE5    mov         edx,dword ptr [ebp-58]
 00535AE8    mov         eax,dword ptr [ebp-0C]
 00535AEB    call        0045A750
 00535AF0    mov         eax,dword ptr [ebp-0C]
 00535AF3    mov         eax,dword ptr [eax+8]
 00535AF6    mov         edx,535D28;'***** End of Testing *****'
 00535AFB    mov         ecx,dword ptr [eax]
 00535AFD    call        dword ptr [ecx+38]
 00535B00    mov         cx,1
 00535B04    mov         edx,0FFFFFFFE
 00535B09    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535B0E    mov         ebx,dword ptr [eax]
 00535B10    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00535B13    movzx       ecx,word ptr [ebp-14]
 00535B17    mov         eax,dword ptr [ebp-0C]
 00535B1A    mov         edx,dword ptr [eax+0C]
 00535B1D    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535B22    call        TStream.ReadBuffer
 00535B27    cmp         word ptr [ebp-16],0
>00535B2C    je          00535B68
 00535B2E    mov         eax,[0056E5A4];^gvar_0056DF04
 00535B33    cmp         byte ptr [eax],0
>00535B36    jne         00535B68
 00535B38    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535B3D    mov         edx,dword ptr [eax]
 00535B3F    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00535B41    push        edx
 00535B42    push        eax
 00535B43    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535B48    call        TStream.GetPosition
 00535B4D    cmp         edx,dword ptr [esp+4]
>00535B51    jne         00535B60
 00535B53    cmp         eax,dword ptr [esp]
 00535B56    pop         edx
 00535B57    pop         eax
>00535B58    jb          00535902
>00535B5E    jmp         00535B68
 00535B60    pop         edx
 00535B61    pop         eax
>00535B62    jl          00535902
 00535B68    mov         eax,dword ptr [ebp-4]
 00535B6B    mov         eax,dword ptr [eax+304]
 00535B71    mov         eax,dword ptr [eax+22C]
 00535B77    call        TListItems.EndUpdate
 00535B7C    cmp         word ptr [ebp-12],0FFFF
>00535B82    je          00535B8B
 00535B84    cmp         word ptr [ebp-12],0
>00535B89    jne         00535B91
 00535B8B    mov         word ptr [ebp-12],1
 00535B91    cmp         word ptr [ebp-12],0
>00535B96    je          00535BDD
 00535B98    movzx       edx,word ptr [ebp-12]
 00535B9C    dec         edx
 00535B9D    mov         eax,dword ptr [ebp-4]
 00535BA0    mov         eax,dword ptr [eax+304]
 00535BA6    mov         eax,dword ptr [eax+22C]
 00535BAC    call        0045AF80
 00535BB1    xor         edx,edx
 00535BB3    call        0045A63C
 00535BB8    movzx       edx,word ptr [ebp-12]
 00535BBC    dec         edx
 00535BBD    mov         eax,dword ptr [ebp-4]
 00535BC0    mov         eax,dword ptr [eax+304]
 00535BC6    mov         eax,dword ptr [eax+22C]
 00535BCC    call        0045AF80
 00535BD1    mov         cl,1
 00535BD3    mov         edx,3
 00535BD8    call        0045A8F0
 00535BDD    push        535D4C;'All: '
 00535BE2    mov         eax,dword ptr [ebp-4]
 00535BE5    mov         eax,dword ptr [eax+304]
 00535BEB    mov         eax,dword ptr [eax+22C]
 00535BF1    call        0045AF28
 00535BF6    lea         edx,[ebp-60]
 00535BF9    call        IntToStr
 00535BFE    push        dword ptr [ebp-60]
 00535C01    push        535D5C;', Cur: '
 00535C06    lea         edx,[ebp-64]
 00535C09    movzx       eax,word ptr [ebp-12]
 00535C0D    call        IntToStr
 00535C12    push        dword ptr [ebp-64]
 00535C15    lea         eax,[ebp-5C]
 00535C18    mov         edx,4
 00535C1D    call        @LStrCatN
 00535C22    mov         edx,dword ptr [ebp-5C]
 00535C25    mov         eax,dword ptr [ebp-4]
 00535C28    mov         eax,dword ptr [eax+308]
 00535C2E    call        TPanel.SetCaption
 00535C33    push        535D6C;'All Steps: '
 00535C38    mov         eax,dword ptr [ebp-4]
 00535C3B    mov         eax,dword ptr [eax+304]
 00535C41    mov         eax,dword ptr [eax+22C]
 00535C47    call        0045AF28
 00535C4C    lea         edx,[ebp-6C]
 00535C4F    call        IntToStr
 00535C54    push        dword ptr [ebp-6C]
 00535C57    push        535D80;', Current: '
 00535C5C    lea         edx,[ebp-70]
 00535C5F    movzx       eax,word ptr [ebp-12]
 00535C63    call        IntToStr
 00535C68    push        dword ptr [ebp-70]
 00535C6B    lea         eax,[ebp-68]
 00535C6E    mov         edx,4
 00535C73    call        @LStrCatN
 00535C78    mov         eax,dword ptr [ebp-68]
 00535C7B    call        00544EB4
 00535C80    xor         eax,eax
 00535C82    pop         edx
 00535C83    pop         ecx
 00535C84    pop         ecx
 00535C85    mov         dword ptr fs:[eax],edx
 00535C88    push        535C9D
 00535C8D    mov         eax,dword ptr [ebp-8]
 00535C90    call        TObject.Free
 00535C95    ret
>00535C96    jmp         @HandleFinally
>00535C9B    jmp         00535C8D
 00535C9D    xor         eax,eax
 00535C9F    pop         edx
 00535CA0    pop         ecx
 00535CA1    pop         ecx
 00535CA2    mov         dword ptr fs:[eax],edx
 00535CA5    push        535CD7
 00535CAA    lea         eax,[ebp-70]
 00535CAD    mov         edx,0F
 00535CB2    call        @LStrArrayClr
 00535CB7    lea         eax,[ebp-34]
 00535CBA    call        @LStrClr
 00535CBF    lea         eax,[ebp-30]
 00535CC2    call        @LStrClr
 00535CC7    lea         eax,[ebp-20]
 00535CCA    call        @LStrClr
 00535CCF    ret
>00535CD0    jmp         @HandleFinally
>00535CD5    jmp         00535CAA
 00535CD7    pop         ebx
 00535CD8    mov         esp,ebp
 00535CDA    pop         ebp
 00535CDB    ret
*}
end;

//00535D8C
procedure sub_00535D8C(?:TfmScript);
begin
{*
 00535D8C    push        ebp
 00535D8D    mov         ebp,esp
 00535D8F    add         esp,0FFFFFFE8
 00535D92    push        ebx
 00535D93    mov         dword ptr [ebp-4],eax
 00535D96    mov         eax,dword ptr [ebp-4]
 00535D99    mov         eax,dword ptr [eax+304]
 00535D9F    mov         eax,dword ptr [eax+22C]
 00535DA5    call        0045AF28
 00535DAA    test        eax,eax
>00535DAC    jle         00535F2D
 00535DB2    xor         ecx,ecx
 00535DB4    xor         edx,edx
 00535DB6    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535DBB    mov         ebx,dword ptr [eax]
 00535DBD    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00535DC0    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535DC5    call        004CE56C
 00535DCA    mov         dword ptr [ebp-14],eax
 00535DCD    mov         eax,dword ptr [ebp-4]
 00535DD0    mov         eax,dword ptr [eax+304]
 00535DD6    mov         edx,dword ptr [eax]
 00535DD8    call        dword ptr [edx+0CC]
 00535DDE    inc         eax
 00535DDF    mov         word ptr [ebp-0C],ax
 00535DE3    mov         eax,dword ptr [ebp-4]
 00535DE6    mov         ax,word ptr [eax+348]
 00535DED    mov         word ptr [ebp-10],ax
 00535DF1    cmp         dword ptr [ebp-14],4C594F52
>00535DF8    jne         00535E13
 00535DFA    mov         word ptr [ebp-0E],38
 00535E00    xor         ecx,ecx
 00535E02    mov         edx,30
 00535E07    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535E0C    mov         ebx,dword ptr [eax]
 00535E0E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>00535E11    jmp         00535E59
 00535E13    xor         ecx,ecx
 00535E15    mov         edx,6
 00535E1A    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535E1F    mov         ebx,dword ptr [eax]
 00535E21    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00535E24    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535E29    call        004CE548
 00535E2E    mov         word ptr [ebp-0A],ax
 00535E32    cmp         word ptr [ebp-0A],3033
>00535E38    jne         00535E42
 00535E3A    mov         word ptr [ebp-0E],20
>00535E40    jmp         00535E48
 00535E42    mov         word ptr [ebp-0E],1C
 00535E48    xor         ecx,ecx
 00535E4A    mov         edx,18
 00535E4F    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535E54    mov         ebx,dword ptr [eax]
 00535E56    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00535E59    lea         edx,[ebp-0C]
 00535E5C    mov         ecx,2
 00535E61    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535E66    call        TStream.WriteBuffer
 00535E6B    lea         edx,[ebp-10]
 00535E6E    mov         ecx,2
 00535E73    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535E78    call        TStream.WriteBuffer
 00535E7D    movzx       edx,word ptr [ebp-0E]
 00535E81    xor         ecx,ecx
 00535E83    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535E88    mov         ebx,dword ptr [eax]
 00535E8A    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00535E8D    mov         eax,dword ptr [ebp-4]
 00535E90    mov         eax,dword ptr [eax+304]
 00535E96    mov         eax,dword ptr [eax+22C]
 00535E9C    call        0045AF28
 00535EA1    dec         eax
 00535EA2    test        eax,eax
>00535EA4    jl          00535EE6
 00535EA6    inc         eax
 00535EA7    mov         dword ptr [ebp-18],eax
 00535EAA    mov         dword ptr [ebp-8],0
 00535EB1    mov         eax,dword ptr [ebp-4]
 00535EB4    mov         eax,dword ptr [eax+304]
 00535EBA    mov         eax,dword ptr [eax+22C]
 00535EC0    mov         edx,dword ptr [ebp-8]
 00535EC3    call        0045AF80
 00535EC8    mov         edx,dword ptr [eax+0C]
 00535ECB    mov         eax,dword ptr [ebp-4]
 00535ECE    mov         ecx,dword ptr [eax+348]
 00535ED4    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535ED9    call        TStream.WriteBuffer
 00535EDE    inc         dword ptr [ebp-8]
 00535EE1    dec         dword ptr [ebp-18]
>00535EE4    jne         00535EB1
 00535EE6    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535EEB    call        TStream.GetPosition
 00535EF0    mov         dword ptr [ebp-14],eax
 00535EF3    mov         word ptr [ebp-0A],0
 00535EF9    mov         eax,dword ptr [ebp-14]
 00535EFC    push        eax
 00535EFD    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535F02    mov         edx,dword ptr [eax]
 00535F04    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00535F06    dec         eax
 00535F07    pop         edx
 00535F08    sub         eax,edx
>00535F0A    jl          00535F2D
 00535F0C    inc         eax
 00535F0D    mov         dword ptr [ebp-18],eax
 00535F10    mov         dword ptr [ebp-8],edx
 00535F13    lea         edx,[ebp-0A]
 00535F16    mov         ecx,1
 00535F1B    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535F20    call        TStream.WriteBuffer
 00535F25    inc         dword ptr [ebp-8]
 00535F28    dec         dword ptr [ebp-18]
>00535F2B    jne         00535F13
 00535F2D    pop         ebx
 00535F2E    mov         esp,ebp
 00535F30    pop         ebp
 00535F31    ret
*}
end;

//00535F34
procedure TfmScript.btWriteClick(Sender:TObject);
begin
{*
 00535F34    push        ebp
 00535F35    mov         ebp,esp
 00535F37    xor         ecx,ecx
 00535F39    push        ecx
 00535F3A    push        ecx
 00535F3B    push        ecx
 00535F3C    push        ecx
 00535F3D    push        ecx
 00535F3E    mov         dword ptr [ebp-0C],edx
 00535F41    mov         dword ptr [ebp-4],eax
 00535F44    xor         eax,eax
 00535F46    push        ebp
 00535F47    push        53603F
 00535F4C    push        dword ptr fs:[eax]
 00535F4F    mov         dword ptr fs:[eax],esp
 00535F52    mov         eax,dword ptr [ebp-4]
 00535F55    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00535F5B    mov         edx,dword ptr [eax]
 00535F5D    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00535F63    inc         eax
>00535F64    je          0053601C
 00535F6A    mov         eax,dword ptr [ebp-4]
 00535F6D    mov         eax,dword ptr [eax+314];TfmScript.cbEdit:TCheckBox
 00535F73    mov         edx,dword ptr [eax]
 00535F75    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00535F7B    test        al,al
>00535F7D    je          00535FA6
 00535F7F    mov         eax,dword ptr [ebp-4]
 00535F82    call        00535D8C
 00535F87    mov         dx,28
 00535F8B    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535F90    call        0050782C
 00535F95    mov         edx,dword ptr ds:[59BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00535F9B    mov         ax,28
 00535F9F    call        0050980C
>00535FA4    jmp         0053601C
 00535FA6    mov         eax,dword ptr [ebp-4]
 00535FA9    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00535FAF    mov         edx,dword ptr [eax]
 00535FB1    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00535FB7    inc         eax
 00535FB8    call        00508448
 00535FBD    test        al,al
>00535FBF    je          00535FD0
 00535FC1    lea         eax,[ebp-8]
 00535FC4    mov         edx,536054;'OK'
 00535FC9    call        @LStrLAsg
>00535FCE    jmp         00535FDD
 00535FD0    lea         eax,[ebp-8]
 00535FD3    mov         edx,536060;'Error'
 00535FD8    call        @LStrLAsg
 00535FDD    push        536070;'Set SelfScan Step to '
 00535FE2    mov         eax,dword ptr [ebp-4]
 00535FE5    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00535FEB    mov         edx,dword ptr [eax]
 00535FED    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00535FF3    inc         eax
 00535FF4    lea         edx,[ebp-14]
 00535FF7    call        IntToStr
 00535FFC    push        dword ptr [ebp-14]
 00535FFF    push        536090;' - '
 00536004    push        dword ptr [ebp-8]
 00536007    lea         eax,[ebp-10]
 0053600A    mov         edx,4
 0053600F    call        @LStrCatN
 00536014    mov         eax,dword ptr [ebp-10]
 00536017    call        00544EB4
 0053601C    xor         eax,eax
 0053601E    pop         edx
 0053601F    pop         ecx
 00536020    pop         ecx
 00536021    mov         dword ptr fs:[eax],edx
 00536024    push        536046
 00536029    lea         eax,[ebp-14]
 0053602C    mov         edx,2
 00536031    call        @LStrArrayClr
 00536036    lea         eax,[ebp-8]
 00536039    call        @LStrClr
 0053603E    ret
>0053603F    jmp         @HandleFinally
>00536044    jmp         00536029
 00536046    mov         esp,ebp
 00536048    pop         ebp
 00536049    ret
*}
end;

//00536094
procedure TfmScript.btReadClick(Sender:TObject);
begin
{*
 00536094    push        ebp
 00536095    mov         ebp,esp
 00536097    add         esp,0FFFFFFF8
 0053609A    mov         dword ptr [ebp-8],edx
 0053609D    mov         dword ptr [ebp-4],eax
 005360A0    mov         eax,dword ptr [ebp-4]
 005360A3    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005360A9    mov         edx,dword ptr [eax]
 005360AB    call        dword ptr [edx+0C4];TListView.sub_0048C028
 005360B1    mov         eax,dword ptr [ebp-4]
 005360B4    call        005356CC
 005360B9    pop         ecx
 005360BA    pop         ecx
 005360BB    pop         ebp
 005360BC    ret
*}
end;

//005360C0
{*procedure TfmScript.lvScriptCustomDrawItem(?:?; ?:?);
begin
 005360C0    push        ebp
 005360C1    mov         ebp,esp
 005360C3    add         esp,0FFFFFFE0
 005360C6    push        ebx
 005360C7    xor         ebx,ebx
 005360C9    mov         dword ptr [ebp-1C],ebx
 005360CC    mov         dword ptr [ebp-20],ebx
 005360CF    mov         dword ptr [ebp-0C],ecx
 005360D2    mov         dword ptr [ebp-8],edx
 005360D5    mov         dword ptr [ebp-4],eax
 005360D8    xor         eax,eax
 005360DA    push        ebp
 005360DB    push        53635C
 005360E0    push        dword ptr fs:[eax]
 005360E3    mov         dword ptr fs:[eax],esp
 005360E6    mov         eax,dword ptr [ebp-4]
 005360E9    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005360EF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005360F5    call        0045AF28
 005360FA    test        eax,eax
>005360FC    je          00536341
 00536102    mov         eax,dword ptr [ebp-8]
 00536105    mov         eax,dword ptr [eax+210]
 0053610B    mov         dword ptr [ebp-18],eax
 0053610E    lea         edx,[ebp-20]
 00536111    mov         eax,dword ptr [ebp-0C]
 00536114    mov         eax,dword ptr [eax+24]
 00536117    call        0040BFEC
 0053611C    mov         ecx,dword ptr [ebp-20]
 0053611F    lea         eax,[ebp-1C]
 00536122    mov         edx,536374;'$'
 00536127    call        @LStrCat3
 0053612C    mov         eax,dword ptr [ebp-1C]
 0053612F    xor         edx,edx
 00536131    call        0040C4A8
 00536136    cmp         eax,0D4
>0053613B    jg          005361E5
>00536141    je          005362BB
 00536147    cmp         eax,0B9
>0053614C    jge         0053619C
 0053614E    cmp         eax,0AA
>00536153    jg          00536180
>00536155    je          00536285
 0053615B    sub         eax,1
>0053615E    jb          00536270
 00536164    add         eax,0FFFFFF60
 00536169    sub         eax,2
>0053616C    jb          00536285
 00536172    sub         eax,5
>00536175    je          00536285
>0053617B    jmp         00536303
 00536180    add         eax,0FFFFFF4F
 00536185    sub         eax,2
>00536188    jb          00536297
 0053618E    sub         eax,3
>00536191    je          00536297
>00536197    jmp         00536303
 0053619C    cmp         eax,0C8
>005361A1    jg          005361CE
>005361A3    je          00536285
 005361A9    add         eax,0FFFFFF47
 005361AE    sub         eax,2
>005361B1    jb          005362BB
>005361B7    je          005362A9
 005361BD    add         eax,0FFFFFFF8
 005361C0    sub         eax,2
>005361C3    jb          00536285
>005361C9    jmp         00536303
 005361CE    sub         eax,0D1
>005361D3    je          005362CD
 005361D9    dec         eax
>005361DA    je          005362BB
>005361E0    jmp         00536303
 005361E5    cmp         eax,3400
>005361EA    jge         00536233
 005361EC    cmp         eax,0DC
>005361F1    jg          00536215
>005361F3    je          005362DF
 005361F9    add         eax,0FFFFFF29
 005361FE    sub         eax,2
>00536201    jb          005362CD
 00536207    sub         eax,2
>0053620A    je          005362CD
>00536210    jmp         00536303
 00536215    sub         eax,0DD
>0053621A    je          005362CD
 00536220    add         eax,0FFFFCDDD
 00536225    sub         eax,2
>00536228    jb          005362BB
>0053622E    jmp         00536303
 00536233    cmp         eax,3420
>00536238    jg          00536259
>0053623A    je          005362BB
 0053623C    add         eax,0FFFFCC00
 00536241    sub         eax,2
>00536244    jb          005362BB
>00536246    je          005362CD
 0053624C    add         eax,0FFFFFFFD
 0053624F    sub         eax,2
>00536252    jb          005362BB
>00536254    jmp         00536303
 00536259    sub         eax,3421
>0053625E    je          005362CD
 00536260    sub         eax,0BACD
>00536265    je          005362F1
>0053626B    jmp         00536303
 00536270    mov         edx,0FF00FF
 00536275    mov         eax,dword ptr [ebp-18]
 00536278    mov         eax,dword ptr [eax+0C]
 0053627B    call        TFont.SetColor
>00536280    jmp         00536313
 00536285    mov         edx,0FF
 0053628A    mov         eax,dword ptr [ebp-18]
 0053628D    mov         eax,dword ptr [eax+0C]
 00536290    call        TFont.SetColor
>00536295    jmp         00536313
 00536297    mov         edx,808000
 0053629C    mov         eax,dword ptr [ebp-18]
 0053629F    mov         eax,dword ptr [eax+0C]
 005362A2    call        TFont.SetColor
>005362A7    jmp         00536313
 005362A9    mov         edx,80
 005362AE    mov         eax,dword ptr [ebp-18]
 005362B1    mov         eax,dword ptr [eax+0C]
 005362B4    call        TFont.SetColor
>005362B9    jmp         00536313
 005362BB    mov         edx,8000
 005362C0    mov         eax,dword ptr [ebp-18]
 005362C3    mov         eax,dword ptr [eax+0C]
 005362C6    call        TFont.SetColor
>005362CB    jmp         00536313
 005362CD    mov         edx,8080
 005362D2    mov         eax,dword ptr [ebp-18]
 005362D5    mov         eax,dword ptr [eax+0C]
 005362D8    call        TFont.SetColor
>005362DD    jmp         00536313
 005362DF    mov         edx,0FF0000
 005362E4    mov         eax,dword ptr [ebp-18]
 005362E7    mov         eax,dword ptr [eax+0C]
 005362EA    call        TFont.SetColor
>005362EF    jmp         00536313
 005362F1    mov         edx,808080
 005362F6    mov         eax,dword ptr [ebp-18]
 005362F9    mov         eax,dword ptr [eax+0C]
 005362FC    call        TFont.SetColor
>00536301    jmp         00536313
 00536303    mov         edx,0FF000008
 00536308    mov         eax,dword ptr [ebp-18]
 0053630B    mov         eax,dword ptr [eax+0C]
 0053630E    call        TFont.SetColor
 00536313    mov         eax,dword ptr [ebp-0C]
 00536316    mov         eax,dword ptr [eax+0C]
 00536319    mov         dword ptr [ebp-10],eax
 0053631C    mov         eax,dword ptr [ebp-10]
 0053631F    add         eax,48
 00536322    mov         ax,word ptr [eax]
 00536325    mov         word ptr [ebp-12],ax
 00536329    cmp         word ptr [ebp-12],0FFFF
>0053632F    jne         00536341
 00536331    mov         edx,0FF00FF
 00536336    mov         eax,dword ptr [ebp-18]
 00536339    mov         eax,dword ptr [eax+0C]
 0053633C    call        TFont.SetColor
 00536341    xor         eax,eax
 00536343    pop         edx
 00536344    pop         ecx
 00536345    pop         ecx
 00536346    mov         dword ptr fs:[eax],edx
 00536349    push        536363
 0053634E    lea         eax,[ebp-20]
 00536351    mov         edx,2
 00536356    call        @LStrArrayClr
 0053635B    ret
>0053635C    jmp         @HandleFinally
>00536361    jmp         0053634E
 00536363    pop         ebx
 00536364    mov         esp,ebp
 00536366    pop         ebp
 00536367    ret         8
end;*}

//00536378
{*procedure TfmScript.lvScriptSelectItem(?:?; ?:?);
begin
 00536378    push        ebp
 00536379    mov         ebp,esp
 0053637B    add         esp,0FFFFFFEC
 0053637E    push        ebx
 0053637F    xor         ebx,ebx
 00536381    mov         dword ptr [ebp-10],ebx
 00536384    mov         dword ptr [ebp-14],ebx
 00536387    mov         dword ptr [ebp-0C],ecx
 0053638A    mov         dword ptr [ebp-8],edx
 0053638D    mov         dword ptr [ebp-4],eax
 00536390    xor         eax,eax
 00536392    push        ebp
 00536393    push        536400
 00536398    push        dword ptr fs:[eax]
 0053639B    mov         dword ptr fs:[eax],esp
 0053639E    push        536418;'Step: '
 005363A3    mov         eax,dword ptr [ebp-4]
 005363A6    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005363AC    mov         edx,dword ptr [eax]
 005363AE    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005363B4    inc         eax
 005363B5    lea         ecx,[ebp-14]
 005363B8    xor         edx,edx
 005363BA    call        IntToHex
 005363BF    push        dword ptr [ebp-14]
 005363C2    push        536428;'h'
 005363C7    lea         eax,[ebp-10]
 005363CA    mov         edx,3
 005363CF    call        @LStrCatN
 005363D4    mov         edx,dword ptr [ebp-10]
 005363D7    mov         eax,dword ptr [ebp-4]
 005363DA    mov         eax,dword ptr [eax+308];TfmScript.laStep:TLabel
 005363E0    call        TPanel.SetCaption
 005363E5    xor         eax,eax
 005363E7    pop         edx
 005363E8    pop         ecx
 005363E9    pop         ecx
 005363EA    mov         dword ptr fs:[eax],edx
 005363ED    push        536407
 005363F2    lea         eax,[ebp-14]
 005363F5    mov         edx,2
 005363FA    call        @LStrArrayClr
 005363FF    ret
>00536400    jmp         @HandleFinally
>00536405    jmp         005363F2
 00536407    pop         ebx
 00536408    mov         esp,ebp
 0053640A    pop         ebp
 0053640B    ret         4
end;*}

//0053642C
procedure TfmScript.lvScriptDblClick(Sender:TObject);
begin
{*
 0053642C    push        ebp
 0053642D    mov         ebp,esp
 0053642F    add         esp,0FFFFFFF8
 00536432    mov         dword ptr [ebp-8],edx
 00536435    mov         dword ptr [ebp-4],eax
 00536438    mov         eax,dword ptr [ebp-4]
 0053643B    mov         eax,dword ptr [eax+314];TfmScript.cbEdit:TCheckBox
 00536441    mov         edx,dword ptr [eax]
 00536443    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00536449    test        al,al
>0053644B    jne         00536457
 0053644D    xor         edx,edx
 0053644F    mov         eax,dword ptr [ebp-4]
 00536452    call        TfmScript.btWriteClick
 00536457    pop         ecx
 00536458    pop         ecx
 00536459    pop         ebp
 0053645A    ret
*}
end;

//0053645C
{*procedure TfmScript.lvScriptChange(?:TObject; ?:?);
begin
 0053645C    push        ebp
 0053645D    mov         ebp,esp
 0053645F    add         esp,0FFFFFFF4
 00536462    push        ebx
 00536463    mov         dword ptr [ebp-0C],ecx
 00536466    mov         dword ptr [ebp-8],edx
 00536469    mov         dword ptr [ebp-4],eax
 0053646C    xor         edx,edx
 0053646E    mov         eax,dword ptr [ebp-4]
 00536471    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 00536477    call        004E42FC
 0053647C    mov         eax,dword ptr [ebp-4]
 0053647F    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536485    mov         edx,dword ptr [eax]
 00536487    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0053648D    inc         eax
>0053648E    je          00536530
 00536494    mov         eax,dword ptr [ebp-4]
 00536497    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053649D    mov         edx,dword ptr [eax]
 0053649F    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005364A5    mov         edx,eax
 005364A7    mov         eax,dword ptr [ebp-4]
 005364AA    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005364B0    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005364B6    call        0045AF80
 005364BB    cmp         dword ptr [eax+0C],0
>005364BF    je          00536530
 005364C1    mov         eax,dword ptr [ebp-4]
 005364C4    mov         edx,dword ptr [eax+348];TfmScript.?f348:dword
 005364CA    mov         eax,dword ptr [ebp-4]
 005364CD    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 005364D3    call        004E95F4
 005364D8    mov         eax,dword ptr [ebp-4]
 005364DB    mov         eax,dword ptr [eax+348];TfmScript.?f348:dword
 005364E1    push        eax
 005364E2    mov         eax,dword ptr [ebp-4]
 005364E5    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005364EB    mov         edx,dword ptr [eax]
 005364ED    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005364F3    mov         edx,eax
 005364F5    mov         eax,dword ptr [ebp-4]
 005364F8    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005364FE    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536504    call        0045AF80
 00536509    mov         edx,dword ptr [eax+0C]
 0053650C    xor         ecx,ecx
 0053650E    mov         eax,dword ptr [ebp-4]
 00536511    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 00536517    mov         ebx,dword ptr [eax]
 00536519    call        dword ptr [ebx+10C];TMPHexEditorEx.sub_004F2AD4
 0053651F    mov         eax,dword ptr [ebp-4]
 00536522    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 00536528    mov         edx,dword ptr [eax]
 0053652A    call        dword ptr [edx+80];TMPHexEditorEx.sub_0048BF68
 00536530    pop         ebx
 00536531    mov         esp,ebp
 00536533    pop         ebp
 00536534    ret         4
end;*}

//00536538
procedure TfmScript.cbEditClick(Sender:TObject);
begin
{*
 00536538    push        ebp
 00536539    mov         ebp,esp
 0053653B    add         esp,0FFFFFFF8
 0053653E    mov         dword ptr [ebp-8],edx
 00536541    mov         dword ptr [ebp-4],eax
 00536544    mov         eax,dword ptr [ebp-4]
 00536547    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053654D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536553    call        0045AF28
 00536558    test        eax,eax
>0053655A    jle         005366DB
 00536560    mov         eax,dword ptr [ebp-4]
 00536563    mov         eax,dword ptr [eax+314];TfmScript.cbEdit:TCheckBox
 00536569    mov         edx,dword ptr [eax]
 0053656B    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00536571    mov         edx,eax
 00536573    mov         eax,dword ptr [ebp-4]
 00536576    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 0053657C    call        TImage.SetVisible
 00536581    mov         eax,dword ptr [ebp-4]
 00536584    mov         eax,dword ptr [eax+314];TfmScript.cbEdit:TCheckBox
 0053658A    mov         edx,dword ptr [eax]
 0053658C    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 00536592    mov         edx,eax
 00536594    mov         eax,dword ptr [ebp-4]
 00536597    mov         eax,dword ptr [eax+30C];TfmScript.Splitter1:TSplitter
 0053659D    call        TImage.SetVisible
 005365A2    mov         eax,dword ptr [ebp-4]
 005365A5    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 005365AB    cmp         byte ptr [eax+57],1;TMPHexEditorEx.FVisible:Boolean
>005365AF    jne         00536620
 005365B1    mov         eax,dword ptr [ebp-4]
 005365B4    mov         edx,dword ptr [eax+318];TfmScript.pmScript:TPopupMenu
 005365BA    mov         eax,dword ptr [ebp-4]
 005365BD    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005365C3    call        TImage.SetPopupMenu
 005365C8    mov         edx,5366FC;'Read'
 005365CD    mov         eax,dword ptr [ebp-4]
 005365D0    mov         eax,dword ptr [eax+300];TfmScript.btRead:TButton
 005365D6    call        TPanel.SetCaption
 005365DB    mov         edx,53670C;'Write'
 005365E0    mov         eax,dword ptr [ebp-4]
 005365E3    mov         eax,dword ptr [eax+2FC];TfmScript.btWrite:TButton
 005365E9    call        TPanel.SetCaption
 005365EE    xor         edx,edx
 005365F0    mov         eax,dword ptr [ebp-4]
 005365F3    mov         eax,dword ptr [eax+330];TfmScript.btGo:TButton
 005365F9    call        TImage.SetVisible
 005365FE    mov         dl,1
 00536600    mov         eax,dword ptr [ebp-4]
 00536603    mov         eax,dword ptr [eax+334];TfmScript.btRun:TButton
 00536609    call        TImage.SetVisible
 0053660E    mov         dl,1
 00536610    mov         eax,dword ptr [ebp-4]
 00536613    mov         eax,dword ptr [eax+33C];TfmScript.cbModId:TComboBox
 00536619    call        TImage.SetVisible
>0053661E    jmp         00536686
 00536620    xor         edx,edx
 00536622    mov         eax,dword ptr [ebp-4]
 00536625    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053662B    call        TImage.SetPopupMenu
 00536630    mov         edx,53671C;'Get'
 00536635    mov         eax,dword ptr [ebp-4]
 00536638    mov         eax,dword ptr [eax+300];TfmScript.btRead:TButton
 0053663E    call        TPanel.SetCaption
 00536643    mov         edx,536728;'Set'
 00536648    mov         eax,dword ptr [ebp-4]
 0053664B    mov         eax,dword ptr [eax+2FC];TfmScript.btWrite:TButton
 00536651    call        TPanel.SetCaption
 00536656    mov         dl,1
 00536658    mov         eax,dword ptr [ebp-4]
 0053665B    mov         eax,dword ptr [eax+330];TfmScript.btGo:TButton
 00536661    call        TImage.SetVisible
 00536666    xor         edx,edx
 00536668    mov         eax,dword ptr [ebp-4]
 0053666B    mov         eax,dword ptr [eax+334];TfmScript.btRun:TButton
 00536671    call        TImage.SetVisible
 00536676    xor         edx,edx
 00536678    mov         eax,dword ptr [ebp-4]
 0053667B    mov         eax,dword ptr [eax+33C];TfmScript.cbModId:TComboBox
 00536681    call        TImage.SetVisible
 00536686    mov         eax,dword ptr [ebp-4]
 00536689    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053668F    mov         edx,dword ptr [eax]
 00536691    call        dword ptr [edx+0C4];TListView.sub_0048C028
 00536697    mov         eax,dword ptr [ebp-4]
 0053669A    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005366A0    mov         edx,dword ptr [eax]
 005366A2    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005366A8    inc         eax
>005366A9    je          005366EE
 005366AB    mov         eax,dword ptr [ebp-4]
 005366AE    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005366B4    mov         edx,dword ptr [eax]
 005366B6    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005366BC    mov         edx,eax
 005366BE    mov         eax,dword ptr [ebp-4]
 005366C1    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005366C7    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005366CD    call        0045AF80
 005366D2    xor         edx,edx
 005366D4    call        0045A63C
>005366D9    jmp         005366EE
 005366DB    xor         edx,edx
 005366DD    mov         eax,dword ptr [ebp-4]
 005366E0    mov         eax,dword ptr [eax+314];TfmScript.cbEdit:TCheckBox
 005366E6    mov         ecx,dword ptr [eax]
 005366E8    call        dword ptr [ecx+0CC];TCheckBox.SetChecked
 005366EE    pop         ecx
 005366EF    pop         ecx
 005366F0    pop         ebp
 005366F1    ret
*}
end;

//0053672C
{*procedure TfmScript.heScriptChange(?:?);
begin
 0053672C    push        ebp
 0053672D    mov         ebp,esp
 0053672F    add         esp,0FFFFFFF8
 00536732    mov         dword ptr [ebp-8],edx
 00536735    mov         dword ptr [ebp-4],eax
 00536738    mov         eax,dword ptr [ebp-4]
 0053673B    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536741    mov         edx,dword ptr [eax]
 00536743    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00536749    inc         eax
>0053674A    jle         00536790
 0053674C    mov         eax,dword ptr [ebp-4]
 0053674F    mov         eax,dword ptr [eax+348];TfmScript.?f348:dword
 00536755    push        eax
 00536756    mov         eax,dword ptr [ebp-4]
 00536759    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053675F    mov         edx,dword ptr [eax]
 00536761    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00536767    mov         edx,eax
 00536769    mov         eax,dword ptr [ebp-4]
 0053676C    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536772    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536778    call        0045AF80
 0053677D    mov         edx,dword ptr [eax+0C]
 00536780    xor         ecx,ecx
 00536782    mov         eax,dword ptr [ebp-4]
 00536785    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 0053678B    call        004E8F70
 00536790    pop         ecx
 00536791    pop         ecx
 00536792    pop         ebp
 00536793    ret
end;*}

//00536794
procedure TfmScript.FormShow(Sender:TObject);
begin
{*
 00536794    push        ebp
 00536795    mov         ebp,esp
 00536797    add         esp,0FFFFFFF0
 0053679A    xor         ecx,ecx
 0053679C    mov         dword ptr [ebp-0C],ecx
 0053679F    mov         dword ptr [ebp-10],ecx
 005367A2    mov         dword ptr [ebp-8],edx
 005367A5    mov         dword ptr [ebp-4],eax
 005367A8    xor         eax,eax
 005367AA    push        ebp
 005367AB    push        536856
 005367B0    push        dword ptr fs:[eax]
 005367B3    mov         dword ptr fs:[eax],esp
 005367B6    mov         edx,dword ptr ds:[56E040];^gvar_005720C0
 005367BC    mov         dl,byte ptr [edx]
 005367BE    mov         eax,dword ptr [ebp-4]
 005367C1    mov         eax,dword ptr [eax+338];TfmScript.miGenCOScript:TMenuItem
 005367C7    call        TMenuItem.SetEnabled
 005367CC    mov         eax,dword ptr [ebp-4]
 005367CF    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 005367D5    add         eax,80;TMPHexEditorEx.Hint:String
 005367DA    mov         edx,53686C;'Offset 00 - TEST_ID'+#10+Offset 48 - GOTO_ON_SUCCES'+#10+Offset 4A - GOTO_ON...
 005367DF    call        @LStrAsg
 005367E4    mov         eax,[0056E284];^gvar_0056DF34
 005367E9    mov         eax,dword ptr [eax]
 005367EB    mov         eax,dword ptr [eax+408]
 005367F1    cmp         byte ptr [eax+38],0
>005367F5    je          005367FF
 005367F7    mov         eax,dword ptr [ebp-4]
 005367FA    call        005356CC
 005367FF    lea         edx,[ebp-10]
 00536802    mov         eax,[0056D528];0x0 gvar_0056D528:TfmScript
 00536807    call        TPanel.GetCaption
 0053680C    push        dword ptr [ebp-10]
 0053680F    push        5368D0;' '
 00536814    mov         eax,[0056E284];^gvar_0056DF34
 00536819    mov         eax,dword ptr [eax]
 0053681B    push        dword ptr [eax+420]
 00536821    lea         eax,[ebp-0C]
 00536824    mov         edx,3
 00536829    call        @LStrCatN
 0053682E    mov         edx,dword ptr [ebp-0C]
 00536831    mov         eax,[0056D528];0x0 gvar_0056D528:TfmScript
 00536836    call        TPanel.SetCaption
 0053683B    xor         eax,eax
 0053683D    pop         edx
 0053683E    pop         ecx
 0053683F    pop         ecx
 00536840    mov         dword ptr fs:[eax],edx
 00536843    push        53685D
 00536848    lea         eax,[ebp-10]
 0053684B    mov         edx,2
 00536850    call        @LStrArrayClr
 00536855    ret
>00536856    jmp         @HandleFinally
>0053685B    jmp         00536848
 0053685D    mov         esp,ebp
 0053685F    pop         ebp
 00536860    ret
*}
end;

//005368D4
procedure TfmScript.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 005368D4    push        ebp
 005368D5    mov         ebp,esp
 005368D7    add         esp,0FFFFFFF4
 005368DA    mov         dword ptr [ebp-8],ecx
 005368DD    mov         dword ptr [ebp-0C],edx
 005368E0    mov         dword ptr [ebp-4],eax
 005368E3    xor         eax,eax
 005368E5    mov         [0056D528],eax;gvar_0056D528:TfmScript
 005368EA    mov         eax,dword ptr [ebp-8]
 005368ED    mov         byte ptr [eax],2
 005368F0    mov         esp,ebp
 005368F2    pop         ebp
 005368F3    ret
*}
end;

//005368F4
procedure TfmScript.miDeleteClick(Sender:TObject);
begin
{*
 005368F4    push        ebp
 005368F5    mov         ebp,esp
 005368F7    add         esp,0FFFFFFE0
 005368FA    xor         ecx,ecx
 005368FC    mov         dword ptr [ebp-1C],ecx
 005368FF    mov         dword ptr [ebp-8],edx
 00536902    mov         dword ptr [ebp-4],eax
 00536905    xor         eax,eax
 00536907    push        ebp
 00536908    push        536BB0
 0053690D    push        dword ptr fs:[eax]
 00536910    mov         dword ptr fs:[eax],esp
 00536913    mov         eax,dword ptr [ebp-4]
 00536916    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053691C    mov         edx,dword ptr [eax]
 0053691E    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00536924    mov         dword ptr [ebp-0C],eax
 00536927    cmp         dword ptr [ebp-0C],0FFFFFFFF
>0053692B    je          00536B9A
 00536931    mov         eax,dword ptr [ebp-4]
 00536934    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053693A    mov         edx,dword ptr [eax]
 0053693C    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00536942    mov         edx,eax
 00536944    mov         eax,dword ptr [ebp-4]
 00536947    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053694D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536953    call        0045AF80
 00536958    mov         edx,dword ptr [eax+24]
 0053695B    lea         eax,[ebp-1C]
 0053695E    call        @LStrLAsg
 00536963    mov         eax,dword ptr [ebp-4]
 00536966    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053696C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536972    mov         edx,dword ptr [ebp-0C]
 00536975    call        0045AF80
 0053697A    mov         eax,dword ptr [eax+0C]
 0053697D    call        @FreeMem
 00536982    mov         eax,dword ptr [ebp-4]
 00536985    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053698B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536991    mov         edx,dword ptr [ebp-0C]
 00536994    call        0045B9A0
 00536999    mov         eax,dword ptr [ebp-4]
 0053699C    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005369A2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005369A8    call        0045AF28
 005369AD    dec         eax
 005369AE    cmp         eax,dword ptr [ebp-0C]
>005369B1    jle         005369C9
 005369B3    mov         edx,dword ptr [ebp-0C]
 005369B6    mov         eax,dword ptr [ebp-4]
 005369B9    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005369BF    mov         ecx,dword ptr [eax]
 005369C1    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
>005369C7    jmp         005369F1
 005369C9    mov         eax,dword ptr [ebp-4]
 005369CC    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005369D2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005369D8    call        0045AF28
 005369DD    mov         edx,eax
 005369DF    dec         edx
 005369E0    mov         eax,dword ptr [ebp-4]
 005369E3    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005369E9    mov         ecx,dword ptr [eax]
 005369EB    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
 005369F1    mov         eax,dword ptr [ebp-1C]
 005369F4    mov         edx,536BC4;'EEEE'
 005369F9    call        @LStrCmp
>005369FE    jne         00536ABC
 00536A04    cmp         dword ptr [ebp-0C],0
>00536A08    jle         00536ABC
 00536A0E    mov         eax,dword ptr [ebp-0C]
 00536A11    dec         eax
 00536A12    push        eax
 00536A13    mov         eax,dword ptr [ebp-4]
 00536A16    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536A1C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536A22    call        0045AF28
 00536A27    dec         eax
 00536A28    pop         edx
 00536A29    sub         eax,edx
>00536A2B    jl          00536B64
 00536A31    inc         eax
 00536A32    mov         dword ptr [ebp-20],eax
 00536A35    mov         dword ptr [ebp-18],edx
 00536A38    mov         eax,dword ptr [ebp-4]
 00536A3B    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536A41    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536A47    mov         edx,dword ptr [ebp-18]
 00536A4A    call        0045AF80
 00536A4F    mov         eax,dword ptr [eax+0C]
 00536A52    mov         dword ptr [ebp-14],eax
 00536A55    mov         eax,dword ptr [ebp-14]
 00536A58    add         eax,48
 00536A5B    mov         ax,word ptr [eax]
 00536A5E    mov         word ptr [ebp-0E],ax
 00536A62    cmp         word ptr [ebp-0E],0FFFF
>00536A68    je          00536A82
 00536A6A    cmp         word ptr [ebp-0E],0
>00536A6F    je          00536A82
 00536A71    dec         word ptr [ebp-0E]
 00536A75    mov         eax,dword ptr [ebp-14]
 00536A78    add         eax,48
 00536A7B    mov         dx,word ptr [ebp-0E]
 00536A7F    mov         word ptr [eax],dx
 00536A82    mov         eax,dword ptr [ebp-14]
 00536A85    add         eax,4A
 00536A88    mov         ax,word ptr [eax]
 00536A8B    mov         word ptr [ebp-0E],ax
 00536A8F    cmp         word ptr [ebp-0E],0FFFF
>00536A95    je          00536AAF
 00536A97    cmp         word ptr [ebp-0E],0
>00536A9C    je          00536AAF
 00536A9E    dec         word ptr [ebp-0E]
 00536AA2    mov         eax,dword ptr [ebp-14]
 00536AA5    add         eax,4A
 00536AA8    mov         dx,word ptr [ebp-0E]
 00536AAC    mov         word ptr [eax],dx
 00536AAF    inc         dword ptr [ebp-18]
 00536AB2    dec         dword ptr [ebp-20]
>00536AB5    jne         00536A38
>00536AB7    jmp         00536B64
 00536ABC    mov         eax,dword ptr [ebp-0C]
 00536ABF    push        eax
 00536AC0    mov         eax,dword ptr [ebp-4]
 00536AC3    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536AC9    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536ACF    call        0045AF28
 00536AD4    dec         eax
 00536AD5    pop         edx
 00536AD6    sub         eax,edx
>00536AD8    jl          00536B64
 00536ADE    inc         eax
 00536ADF    mov         dword ptr [ebp-20],eax
 00536AE2    mov         dword ptr [ebp-18],edx
 00536AE5    mov         eax,dword ptr [ebp-4]
 00536AE8    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536AEE    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536AF4    mov         edx,dword ptr [ebp-18]
 00536AF7    call        0045AF80
 00536AFC    mov         eax,dword ptr [eax+0C]
 00536AFF    mov         dword ptr [ebp-14],eax
 00536B02    mov         eax,dword ptr [ebp-14]
 00536B05    add         eax,48
 00536B08    mov         ax,word ptr [eax]
 00536B0B    mov         word ptr [ebp-0E],ax
 00536B0F    cmp         word ptr [ebp-0E],0FFFF
>00536B15    je          00536B2F
 00536B17    cmp         word ptr [ebp-0E],0
>00536B1C    je          00536B2F
 00536B1E    dec         word ptr [ebp-0E]
 00536B22    mov         eax,dword ptr [ebp-14]
 00536B25    add         eax,48
 00536B28    mov         dx,word ptr [ebp-0E]
 00536B2C    mov         word ptr [eax],dx
 00536B2F    mov         eax,dword ptr [ebp-14]
 00536B32    add         eax,4A
 00536B35    mov         ax,word ptr [eax]
 00536B38    mov         word ptr [ebp-0E],ax
 00536B3C    cmp         word ptr [ebp-0E],0FFFF
>00536B42    je          00536B5C
 00536B44    cmp         word ptr [ebp-0E],0
>00536B49    je          00536B5C
 00536B4B    dec         word ptr [ebp-0E]
 00536B4F    mov         eax,dword ptr [ebp-14]
 00536B52    add         eax,4A
 00536B55    mov         dx,word ptr [ebp-0E]
 00536B59    mov         word ptr [eax],dx
 00536B5C    inc         dword ptr [ebp-18]
 00536B5F    dec         dword ptr [ebp-20]
>00536B62    jne         00536AE5
 00536B64    push        0
 00536B66    mov         eax,dword ptr [ebp-4]
 00536B69    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536B6F    mov         edx,dword ptr [eax]
 00536B71    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00536B77    mov         edx,eax
 00536B79    mov         eax,dword ptr [ebp-4]
 00536B7C    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536B82    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536B88    call        0045AF80
 00536B8D    mov         ecx,eax
 00536B8F    mov         edx,dword ptr [ebp-8]
 00536B92    mov         eax,dword ptr [ebp-4]
 00536B95    call        TfmScript.lvScriptChange
 00536B9A    xor         eax,eax
 00536B9C    pop         edx
 00536B9D    pop         ecx
 00536B9E    pop         ecx
 00536B9F    mov         dword ptr fs:[eax],edx
 00536BA2    push        536BB7
 00536BA7    lea         eax,[ebp-1C]
 00536BAA    call        @LStrClr
 00536BAF    ret
>00536BB0    jmp         @HandleFinally
>00536BB5    jmp         00536BA7
 00536BB7    mov         esp,ebp
 00536BB9    pop         ebp
 00536BBA    ret
*}
end;

//00536BCC
procedure TfmScript.miInsertClick(Sender:TObject);
begin
{*
 00536BCC    push        ebp
 00536BCD    mov         ebp,esp
 00536BCF    add         esp,0FFFFFFE0
 00536BD2    mov         dword ptr [ebp-8],edx
 00536BD5    mov         dword ptr [ebp-4],eax
 00536BD8    mov         eax,dword ptr [ebp-4]
 00536BDB    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536BE1    mov         edx,dword ptr [eax]
 00536BE3    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00536BE9    mov         dword ptr [ebp-1C],eax
 00536BEC    mov         eax,dword ptr [ebp-4]
 00536BEF    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536BF5    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536BFB    mov         edx,dword ptr [ebp-1C]
 00536BFE    call        0045AE98
 00536C03    mov         eax,dword ptr [ebp-4]
 00536C06    mov         eax,dword ptr [eax+348];TfmScript.?f348:dword
 00536C0C    call        @GetMem
 00536C11    mov         dword ptr [ebp-0C],eax
 00536C14    mov         eax,dword ptr [ebp-4]
 00536C17    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536C1D    mov         edx,dword ptr [eax]
 00536C1F    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00536C25    test        eax,eax
>00536C27    jle         00536C8C
 00536C29    mov         eax,dword ptr [ebp-4]
 00536C2C    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536C32    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536C38    mov         edx,dword ptr [ebp-1C]
 00536C3B    call        0045AF80
 00536C40    xor         edx,edx
 00536C42    call        0045A750
 00536C47    mov         eax,dword ptr [ebp-4]
 00536C4A    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536C50    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536C56    mov         edx,dword ptr [ebp-1C]
 00536C59    call        0045AF80
 00536C5E    mov         eax,dword ptr [eax+8]
 00536C61    mov         edx,536E58;'Custom Insert Item'
 00536C66    mov         ecx,dword ptr [eax]
 00536C68    call        dword ptr [ecx+38]
 00536C6B    mov         eax,dword ptr [ebp-4]
 00536C6E    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536C74    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536C7A    mov         edx,dword ptr [ebp-1C]
 00536C7D    call        0045AF80
 00536C82    mov         edx,dword ptr [ebp-0C]
 00536C85    call        0045A81C
>00536C8A    jmp         00536CF0
 00536C8C    mov         edx,dword ptr [ebp-1C]
 00536C8F    inc         edx
 00536C90    mov         eax,dword ptr [ebp-4]
 00536C93    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536C99    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536C9F    call        0045AF80
 00536CA4    xor         edx,edx
 00536CA6    call        0045A750
 00536CAB    mov         edx,dword ptr [ebp-1C]
 00536CAE    inc         edx
 00536CAF    mov         eax,dword ptr [ebp-4]
 00536CB2    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536CB8    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536CBE    call        0045AF80
 00536CC3    mov         eax,dword ptr [eax+8]
 00536CC6    mov         edx,536E58;'Custom Insert Item'
 00536CCB    mov         ecx,dword ptr [eax]
 00536CCD    call        dword ptr [ecx+38]
 00536CD0    mov         edx,dword ptr [ebp-1C]
 00536CD3    inc         edx
 00536CD4    mov         eax,dword ptr [ebp-4]
 00536CD7    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536CDD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536CE3    call        0045AF80
 00536CE8    mov         edx,dword ptr [ebp-0C]
 00536CEB    call        0045A81C
 00536CF0    mov         eax,dword ptr [ebp-4]
 00536CF3    mov         edx,dword ptr [eax+348];TfmScript.?f348:dword
 00536CF9    mov         eax,dword ptr [ebp-0C]
 00536CFC    xor         ecx,ecx
 00536CFE    call        @FillChar
 00536D03    mov         eax,dword ptr [ebp-0C]
 00536D06    mov         dword ptr [ebp-14],eax
 00536D09    mov         eax,dword ptr [ebp-14]
 00536D0C    mov         word ptr [eax],0DC
 00536D11    mov         eax,dword ptr [ebp-14]
 00536D14    add         eax,2
 00536D17    mov         word ptr [eax],1
 00536D1C    mov         eax,dword ptr [ebp-14]
 00536D1F    add         eax,4
 00536D22    mov         word ptr [eax],0F
 00536D27    mov         eax,dword ptr [ebp-14]
 00536D2A    add         eax,8
 00536D2D    mov         word ptr [eax],3
 00536D32    mov         eax,dword ptr [ebp-14]
 00536D35    add         eax,0C
 00536D38    mov         word ptr [eax],0A
 00536D3D    mov         ax,word ptr [ebp-1C]
 00536D41    add         ax,2
 00536D45    mov         edx,dword ptr [ebp-14]
 00536D48    add         edx,48
 00536D4B    mov         word ptr [edx],ax
 00536D4E    mov         ax,word ptr [ebp-1C]
 00536D52    add         ax,2
 00536D56    mov         edx,dword ptr [ebp-14]
 00536D59    add         edx,4A
 00536D5C    mov         word ptr [edx],ax
 00536D5F    mov         eax,dword ptr [ebp-14]
 00536D62    add         eax,4C
 00536D65    mov         word ptr [eax],0FFFF
 00536D6A    mov         eax,dword ptr [ebp-1C]
 00536D6D    inc         eax
 00536D6E    push        eax
 00536D6F    mov         eax,dword ptr [ebp-4]
 00536D72    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536D78    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536D7E    call        0045AF28
 00536D83    dec         eax
 00536D84    pop         edx
 00536D85    sub         eax,edx
>00536D87    jl          00536E13
 00536D8D    inc         eax
 00536D8E    mov         dword ptr [ebp-20],eax
 00536D91    mov         dword ptr [ebp-18],edx
 00536D94    mov         eax,dword ptr [ebp-4]
 00536D97    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536D9D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536DA3    mov         edx,dword ptr [ebp-18]
 00536DA6    call        0045AF80
 00536DAB    mov         eax,dword ptr [eax+0C]
 00536DAE    mov         dword ptr [ebp-14],eax
 00536DB1    mov         eax,dword ptr [ebp-14]
 00536DB4    add         eax,48
 00536DB7    mov         ax,word ptr [eax]
 00536DBA    mov         word ptr [ebp-0E],ax
 00536DBE    cmp         word ptr [ebp-0E],0FFFF
>00536DC4    je          00536DDE
 00536DC6    cmp         word ptr [ebp-0E],0
>00536DCB    je          00536DDE
 00536DCD    inc         word ptr [ebp-0E]
 00536DD1    mov         eax,dword ptr [ebp-14]
 00536DD4    add         eax,48
 00536DD7    mov         dx,word ptr [ebp-0E]
 00536DDB    mov         word ptr [eax],dx
 00536DDE    mov         eax,dword ptr [ebp-14]
 00536DE1    add         eax,4A
 00536DE4    mov         ax,word ptr [eax]
 00536DE7    mov         word ptr [ebp-0E],ax
 00536DEB    cmp         word ptr [ebp-0E],0FFFF
>00536DF1    je          00536E0B
 00536DF3    cmp         word ptr [ebp-0E],0
>00536DF8    je          00536E0B
 00536DFA    inc         word ptr [ebp-0E]
 00536DFE    mov         eax,dword ptr [ebp-14]
 00536E01    add         eax,4A
 00536E04    mov         dx,word ptr [ebp-0E]
 00536E08    mov         word ptr [eax],dx
 00536E0B    inc         dword ptr [ebp-18]
 00536E0E    dec         dword ptr [ebp-20]
>00536E11    jne         00536D94
 00536E13    push        0
 00536E15    mov         eax,dword ptr [ebp-4]
 00536E18    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536E1E    mov         edx,dword ptr [eax]
 00536E20    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00536E26    mov         edx,eax
 00536E28    mov         eax,dword ptr [ebp-4]
 00536E2B    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00536E31    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00536E37    call        0045AF80
 00536E3C    mov         ecx,eax
 00536E3E    mov         edx,dword ptr [ebp-8]
 00536E41    mov         eax,dword ptr [ebp-4]
 00536E44    call        TfmScript.lvScriptChange
 00536E49    mov         esp,ebp
 00536E4B    pop         ebp
 00536E4C    ret
*}
end;

//00536E6C
procedure TfmScript.FormDestroy(Sender:TObject);
begin
{*
 00536E6C    push        ebp
 00536E6D    mov         ebp,esp
 00536E6F    add         esp,0FFFFFFF8
 00536E72    mov         dword ptr [ebp-8],edx
 00536E75    mov         dword ptr [ebp-4],eax
 00536E78    mov         eax,dword ptr [ebp-4]
 00536E7B    call        00535650
 00536E80    mov         eax,[0059BE9C];0x0 gvar_0059BE9C:TMemoryStream
 00536E85    call        TObject.Free
 00536E8A    pop         ecx
 00536E8B    pop         ecx
 00536E8C    pop         ebp
 00536E8D    ret
*}
end;

//00536E90
procedure TfmScript.Copy1Click(Sender:TObject);
begin
{*
 00536E90    push        ebp
 00536E91    mov         ebp,esp
 00536E93    add         esp,0FFFFFFF8
 00536E96    mov         dword ptr [ebp-8],edx
 00536E99    mov         dword ptr [ebp-4],eax
 00536E9C    mov         eax,dword ptr [ebp-4]
 00536E9F    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 00536EA5    call        004F00DC
 00536EAA    pop         ecx
 00536EAB    pop         ecx
 00536EAC    pop         ebp
 00536EAD    ret
*}
end;

//00536EB0
procedure TfmScript.Past1Click(Sender:TObject);
begin
{*
 00536EB0    push        ebp
 00536EB1    mov         ebp,esp
 00536EB3    add         esp,0FFFFFFF8
 00536EB6    mov         dword ptr [ebp-8],edx
 00536EB9    mov         dword ptr [ebp-4],eax
 00536EBC    mov         eax,dword ptr [ebp-4]
 00536EBF    mov         eax,dword ptr [eax+310];TfmScript.heScript:TMPHexEditorEx
 00536EC5    call        004F02C8
 00536ECA    pop         ecx
 00536ECB    pop         ecx
 00536ECC    pop         ebp
 00536ECD    ret
*}
end;

//00536ED0
{*function sub_00536ED0:?;
begin
 00536ED0    push        ebp
 00536ED1    mov         ebp,esp
 00536ED3    add         esp,0FFFFFFE8
 00536ED6    push        ebx
 00536ED7    mov         eax,[0056E5A4];^gvar_0056DF04
 00536EDC    mov         byte ptr [eax],0
 00536EDF    mov         dl,1
 00536EE1    mov         eax,[0041DE14];TMemoryStream
 00536EE6    call        TObject.Create;TMemoryStream.Create
 00536EEB    mov         dword ptr [ebp-8],eax
 00536EEE    xor         eax,eax
 00536EF0    push        ebp
 00536EF1    push        537133
 00536EF6    push        dword ptr fs:[eax]
 00536EF9    mov         dword ptr fs:[eax],esp
 00536EFC    mov         edx,dword ptr [ebp-8]
 00536EFF    mov         ax,28
 00536F03    call        005095B8
 00536F08    mov         byte ptr [ebp-1],al
 00536F0B    cmp         byte ptr [ebp-1],0
>00536F0F    je          0053711D
 00536F15    xor         ecx,ecx
 00536F17    xor         edx,edx
 00536F19    mov         eax,dword ptr [ebp-8]
 00536F1C    mov         ebx,dword ptr [eax]
 00536F1E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00536F21    mov         eax,dword ptr [ebp-8]
 00536F24    call        004CE56C
 00536F29    mov         dword ptr [ebp-0C],eax
 00536F2C    cmp         dword ptr [ebp-0C],4C594F52
>00536F33    jne         00536F71
 00536F35    xor         ecx,ecx
 00536F37    mov         edx,30
 00536F3C    mov         eax,dword ptr [ebp-8]
 00536F3F    mov         ebx,dword ptr [eax]
 00536F41    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00536F44    mov         word ptr [ebp-14],38
 00536F4A    mov         eax,dword ptr [ebp-8]
 00536F4D    call        004CE548
 00536F52    mov         word ptr [ebp-16],ax
 00536F56    mov         eax,dword ptr [ebp-8]
 00536F59    call        004CE548
 00536F5E    mov         word ptr [ebp-18],ax
 00536F62    cmp         word ptr [ebp-18],0
>00536F67    jne         00536FD6
 00536F69    mov         word ptr [ebp-18],88
>00536F6F    jmp         00536FD6
 00536F71    xor         ecx,ecx
 00536F73    mov         edx,6
 00536F78    mov         eax,dword ptr [ebp-8]
 00536F7B    mov         ebx,dword ptr [eax]
 00536F7D    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00536F80    mov         eax,dword ptr [ebp-8]
 00536F83    call        004CE548
 00536F88    mov         word ptr [ebp-0E],ax
 00536F8C    cmp         word ptr [ebp-0E],3033
>00536F92    jne         00536F9C
 00536F94    mov         word ptr [ebp-14],20
>00536F9A    jmp         00536FA2
 00536F9C    mov         word ptr [ebp-14],1C
 00536FA2    xor         ecx,ecx
 00536FA4    mov         edx,18
 00536FA9    mov         eax,dword ptr [ebp-8]
 00536FAC    mov         ebx,dword ptr [eax]
 00536FAE    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00536FB1    mov         eax,dword ptr [ebp-8]
 00536FB4    call        004CE548
 00536FB9    mov         word ptr [ebp-16],ax
 00536FBD    mov         eax,dword ptr [ebp-8]
 00536FC0    call        004CE548
 00536FC5    mov         word ptr [ebp-18],ax
 00536FC9    cmp         word ptr [ebp-18],0
>00536FCE    jne         00536FD6
 00536FD0    mov         word ptr [ebp-18],74
 00536FD6    movzx       edx,word ptr [ebp-14]
 00536FDA    xor         ecx,ecx
 00536FDC    mov         eax,dword ptr [ebp-8]
 00536FDF    mov         ebx,dword ptr [eax]
 00536FE1    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00536FE4    mov         word ptr [ebp-0E],0FFFF
>00536FEA    jmp         005370AE
 00536FEF    mov         eax,dword ptr [ebp-8]
 00536FF2    call        004CE548
 00536FF7    mov         word ptr [ebp-0E],ax
 00536FFB    cmp         word ptr [ebp-0E],0DC
>00537001    je          0053709B
 00537007    mov         cx,1
 0053700B    mov         edx,48
 00537010    mov         eax,dword ptr [ebp-8]
 00537013    mov         ebx,dword ptr [eax]
 00537015    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00537018    mov         word ptr [ebp-10],0FFFF
 0053701E    lea         edx,[ebp-10]
 00537021    mov         ecx,2
 00537026    mov         eax,dword ptr [ebp-8]
 00537029    call        TStream.WriteBuffer
 0053702E    lea         edx,[ebp-10]
 00537031    mov         ecx,2
 00537036    mov         eax,dword ptr [ebp-8]
 00537039    call        TStream.WriteBuffer
 0053703E    mov         word ptr [ebp-12],4E
>00537044    jmp         00537061
 00537046    mov         word ptr [ebp-10],0
 0053704C    lea         edx,[ebp-10]
 0053704F    mov         ecx,2
 00537054    mov         eax,dword ptr [ebp-8]
 00537057    call        TStream.WriteBuffer
 0053705C    add         word ptr [ebp-12],2
 00537061    mov         ax,word ptr [ebp-12]
 00537065    cmp         ax,word ptr [ebp-18]
>00537069    jae         005370AE
 0053706B    mov         eax,dword ptr [ebp-8]
 0053706E    mov         edx,dword ptr [eax]
 00537070    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00537072    push        edx
 00537073    push        eax
 00537074    mov         eax,dword ptr [ebp-8]
 00537077    call        TStream.GetPosition
 0053707C    cmp         edx,dword ptr [esp+4]
>00537080    jne         0053708B
 00537082    cmp         eax,dword ptr [esp]
 00537085    pop         edx
 00537086    pop         eax
>00537087    jae         005370AE
>00537089    jmp         0053708F
 0053708B    pop         edx
 0053708C    pop         eax
>0053708D    jge         005370AE
 0053708F    mov         eax,[0056E5A4];^gvar_0056DF04
 00537094    cmp         byte ptr [eax],0
>00537097    je          00537046
>00537099    jmp         005370AE
 0053709B    movzx       edx,word ptr [ebp-18]
 0053709F    sub         edx,2
 005370A2    mov         cx,1
 005370A6    mov         eax,dword ptr [ebp-8]
 005370A9    mov         ebx,dword ptr [eax]
 005370AB    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005370AE    cmp         word ptr [ebp-0E],0
>005370B3    je          005370E7
 005370B5    mov         eax,dword ptr [ebp-8]
 005370B8    mov         edx,dword ptr [eax]
 005370BA    call        dword ptr [edx];TMemoryStream.sub_004235A0
 005370BC    push        edx
 005370BD    push        eax
 005370BE    mov         eax,dword ptr [ebp-8]
 005370C1    call        TStream.GetPosition
 005370C6    cmp         edx,dword ptr [esp+4]
>005370CA    jne         005370D5
 005370CC    cmp         eax,dword ptr [esp]
 005370CF    pop         edx
 005370D0    pop         eax
>005370D1    jae         005370E7
>005370D3    jmp         005370D9
 005370D5    pop         edx
 005370D6    pop         eax
>005370D7    jge         005370E7
 005370D9    mov         eax,[0056E5A4];^gvar_0056DF04
 005370DE    cmp         byte ptr [eax],0
>005370E1    je          00536FEF
 005370E7    mov         dl,1
 005370E9    mov         eax,dword ptr [ebp-8]
 005370EC    call        005014D0
 005370F1    push        10
 005370F3    call        user32.GetKeyState
 005370F8    test        ax,ax
>005370FB    jge         0053710E
 005370FD    mov         edx,dword ptr [ebp-8]
 00537100    mov         ax,28
 00537104    call        0050980C
 00537109    mov         byte ptr [ebp-1],al
>0053710C    jmp         0053711D
 0053710E    mov         edx,dword ptr [ebp-8]
 00537111    mov         ax,28
 00537115    call        004CF728
 0053711A    mov         byte ptr [ebp-1],al
 0053711D    xor         eax,eax
 0053711F    pop         edx
 00537120    pop         ecx
 00537121    pop         ecx
 00537122    mov         dword ptr fs:[eax],edx
 00537125    push        53713A
 0053712A    mov         eax,dword ptr [ebp-8]
 0053712D    call        TObject.Free
 00537132    ret
>00537133    jmp         @HandleFinally
>00537138    jmp         0053712A
 0053713A    mov         al,byte ptr [ebp-1]
 0053713D    pop         ebx
 0053713E    mov         esp,ebp
 00537140    pop         ebp
 00537141    ret
end;*}

//00537144
{*function sub_00537144:?;
begin
 00537144    push        ebp
 00537145    mov         ebp,esp
 00537147    add         esp,0FFFFFFE4
 0053714A    push        ebx
 0053714B    mov         eax,[0056E5A4];^gvar_0056DF04
 00537150    mov         byte ptr [eax],0
 00537153    mov         word ptr [ebp-1A],0
 00537159    mov         dl,1
 0053715B    mov         eax,[0041DE14];TMemoryStream
 00537160    call        TObject.Create;TMemoryStream.Create
 00537165    mov         dword ptr [ebp-8],eax
 00537168    xor         eax,eax
 0053716A    push        ebp
 0053716B    push        53741F
 00537170    push        dword ptr fs:[eax]
 00537173    mov         dword ptr fs:[eax],esp
 00537176    mov         edx,dword ptr [ebp-8]
 00537179    mov         ax,28
 0053717D    call        005095B8
 00537182    mov         byte ptr [ebp-1],al
 00537185    cmp         byte ptr [ebp-1],0
>00537189    je          00537409
 0053718F    xor         ecx,ecx
 00537191    xor         edx,edx
 00537193    mov         eax,dword ptr [ebp-8]
 00537196    mov         ebx,dword ptr [eax]
 00537198    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053719B    mov         eax,dword ptr [ebp-8]
 0053719E    call        004CE56C
 005371A3    mov         dword ptr [ebp-0C],eax
 005371A6    cmp         dword ptr [ebp-0C],4C594F52
>005371AD    jne         005371EB
 005371AF    xor         ecx,ecx
 005371B1    mov         edx,30
 005371B6    mov         eax,dword ptr [ebp-8]
 005371B9    mov         ebx,dword ptr [eax]
 005371BB    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005371BE    mov         word ptr [ebp-14],38
 005371C4    mov         eax,dword ptr [ebp-8]
 005371C7    call        004CE548
 005371CC    mov         word ptr [ebp-16],ax
 005371D0    mov         eax,dword ptr [ebp-8]
 005371D3    call        004CE548
 005371D8    mov         word ptr [ebp-18],ax
 005371DC    cmp         word ptr [ebp-18],0
>005371E1    jne         00537250
 005371E3    mov         word ptr [ebp-18],88
>005371E9    jmp         00537250
 005371EB    xor         ecx,ecx
 005371ED    mov         edx,6
 005371F2    mov         eax,dword ptr [ebp-8]
 005371F5    mov         ebx,dword ptr [eax]
 005371F7    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005371FA    mov         eax,dword ptr [ebp-8]
 005371FD    call        004CE548
 00537202    mov         word ptr [ebp-0E],ax
 00537206    cmp         word ptr [ebp-0E],3033
>0053720C    jne         00537216
 0053720E    mov         word ptr [ebp-14],20
>00537214    jmp         0053721C
 00537216    mov         word ptr [ebp-14],1C
 0053721C    xor         ecx,ecx
 0053721E    mov         edx,18
 00537223    mov         eax,dword ptr [ebp-8]
 00537226    mov         ebx,dword ptr [eax]
 00537228    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053722B    mov         eax,dword ptr [ebp-8]
 0053722E    call        004CE548
 00537233    mov         word ptr [ebp-16],ax
 00537237    mov         eax,dword ptr [ebp-8]
 0053723A    call        004CE548
 0053723F    mov         word ptr [ebp-18],ax
 00537243    cmp         word ptr [ebp-18],0
>00537248    jne         00537250
 0053724A    mov         word ptr [ebp-18],74
 00537250    movzx       edx,word ptr [ebp-14]
 00537254    xor         ecx,ecx
 00537256    mov         eax,dword ptr [ebp-8]
 00537259    mov         ebx,dword ptr [eax]
 0053725B    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053725E    mov         word ptr [ebp-0E],0FFFF
>00537264    jmp         00537289
 00537266    mov         eax,dword ptr [ebp-8]
 00537269    call        004CE548
 0053726E    mov         word ptr [ebp-0E],ax
 00537272    movzx       edx,word ptr [ebp-18]
 00537276    sub         edx,2
 00537279    mov         cx,1
 0053727D    mov         eax,dword ptr [ebp-8]
 00537280    mov         ebx,dword ptr [eax]
 00537282    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00537285    inc         word ptr [ebp-1A]
 00537289    cmp         word ptr [ebp-0E],0
>0053728E    je          005372BE
 00537290    mov         eax,dword ptr [ebp-8]
 00537293    mov         edx,dword ptr [eax]
 00537295    call        dword ptr [edx];TMemoryStream.sub_004235A0
 00537297    push        edx
 00537298    push        eax
 00537299    mov         eax,dword ptr [ebp-8]
 0053729C    call        TStream.GetPosition
 005372A1    cmp         edx,dword ptr [esp+4]
>005372A5    jne         005372B0
 005372A7    cmp         eax,dword ptr [esp]
 005372AA    pop         edx
 005372AB    pop         eax
>005372AC    jae         005372BE
>005372AE    jmp         005372B4
 005372B0    pop         edx
 005372B1    pop         eax
>005372B2    jge         005372BE
 005372B4    mov         eax,[0056E5A4];^gvar_0056DF04
 005372B9    cmp         byte ptr [eax],0
>005372BC    je          00537266
 005372BE    dec         word ptr [ebp-1A]
 005372C2    movzx       edx,word ptr [ebp-14]
 005372C6    xor         ecx,ecx
 005372C8    mov         eax,dword ptr [ebp-8]
 005372CB    mov         ebx,dword ptr [eax]
 005372CD    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005372D0    mov         word ptr [ebp-0E],0FFFF
>005372D6    jmp         0053739A
 005372DB    mov         eax,dword ptr [ebp-8]
 005372DE    call        004CE548
 005372E3    mov         word ptr [ebp-0E],ax
 005372E7    cmp         word ptr [ebp-0E],0DC
>005372ED    je          00537387
 005372F3    mov         cx,1
 005372F7    mov         edx,48
 005372FC    mov         eax,dword ptr [ebp-8]
 005372FF    mov         ebx,dword ptr [eax]
 00537301    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00537304    mov         word ptr [ebp-10],0FFFF
 0053730A    lea         edx,[ebp-1A]
 0053730D    mov         ecx,2
 00537312    mov         eax,dword ptr [ebp-8]
 00537315    call        TStream.WriteBuffer
 0053731A    lea         edx,[ebp-10]
 0053731D    mov         ecx,2
 00537322    mov         eax,dword ptr [ebp-8]
 00537325    call        TStream.WriteBuffer
 0053732A    mov         word ptr [ebp-12],4E
>00537330    jmp         0053734D
 00537332    mov         word ptr [ebp-10],0
 00537338    lea         edx,[ebp-10]
 0053733B    mov         ecx,2
 00537340    mov         eax,dword ptr [ebp-8]
 00537343    call        TStream.WriteBuffer
 00537348    add         word ptr [ebp-12],2
 0053734D    mov         ax,word ptr [ebp-12]
 00537351    cmp         ax,word ptr [ebp-18]
>00537355    jae         0053739A
 00537357    mov         eax,dword ptr [ebp-8]
 0053735A    mov         edx,dword ptr [eax]
 0053735C    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0053735E    push        edx
 0053735F    push        eax
 00537360    mov         eax,dword ptr [ebp-8]
 00537363    call        TStream.GetPosition
 00537368    cmp         edx,dword ptr [esp+4]
>0053736C    jne         00537377
 0053736E    cmp         eax,dword ptr [esp]
 00537371    pop         edx
 00537372    pop         eax
>00537373    jae         0053739A
>00537375    jmp         0053737B
 00537377    pop         edx
 00537378    pop         eax
>00537379    jge         0053739A
 0053737B    mov         eax,[0056E5A4];^gvar_0056DF04
 00537380    cmp         byte ptr [eax],0
>00537383    je          00537332
>00537385    jmp         0053739A
 00537387    movzx       edx,word ptr [ebp-18]
 0053738B    sub         edx,2
 0053738E    mov         cx,1
 00537392    mov         eax,dword ptr [ebp-8]
 00537395    mov         ebx,dword ptr [eax]
 00537397    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053739A    cmp         word ptr [ebp-0E],0
>0053739F    je          005373D3
 005373A1    mov         eax,dword ptr [ebp-8]
 005373A4    mov         edx,dword ptr [eax]
 005373A6    call        dword ptr [edx];TMemoryStream.sub_004235A0
 005373A8    push        edx
 005373A9    push        eax
 005373AA    mov         eax,dword ptr [ebp-8]
 005373AD    call        TStream.GetPosition
 005373B2    cmp         edx,dword ptr [esp+4]
>005373B6    jne         005373C1
 005373B8    cmp         eax,dword ptr [esp]
 005373BB    pop         edx
 005373BC    pop         eax
>005373BD    jae         005373D3
>005373BF    jmp         005373C5
 005373C1    pop         edx
 005373C2    pop         eax
>005373C3    jge         005373D3
 005373C5    mov         eax,[0056E5A4];^gvar_0056DF04
 005373CA    cmp         byte ptr [eax],0
>005373CD    je          005372DB
 005373D3    mov         dl,1
 005373D5    mov         eax,dword ptr [ebp-8]
 005373D8    call        005014D0
 005373DD    push        10
 005373DF    call        user32.GetKeyState
 005373E4    test        ax,ax
>005373E7    jge         005373FA
 005373E9    mov         edx,dword ptr [ebp-8]
 005373EC    mov         ax,28
 005373F0    call        0050980C
 005373F5    mov         byte ptr [ebp-1],al
>005373F8    jmp         00537409
 005373FA    mov         edx,dword ptr [ebp-8]
 005373FD    mov         ax,28
 00537401    call        004CF728
 00537406    mov         byte ptr [ebp-1],al
 00537409    xor         eax,eax
 0053740B    pop         edx
 0053740C    pop         ecx
 0053740D    pop         ecx
 0053740E    mov         dword ptr fs:[eax],edx
 00537411    push        537426
 00537416    mov         eax,dword ptr [ebp-8]
 00537419    call        TObject.Free
 0053741E    ret
>0053741F    jmp         @HandleFinally
>00537424    jmp         00537416
 00537426    mov         al,byte ptr [ebp-1]
 00537429    pop         ebx
 0053742A    mov         esp,ebp
 0053742C    pop         ebp
 0053742D    ret
end;*}

//00537430
procedure TfmScript.btGoClick(Sender:TObject);
begin
{*
 00537430    push        ebp
 00537431    mov         ebp,esp
 00537433    xor         ecx,ecx
 00537435    push        ecx
 00537436    push        ecx
 00537437    push        ecx
 00537438    push        ecx
 00537439    push        ecx
 0053743A    mov         dword ptr [ebp-0C],edx
 0053743D    mov         dword ptr [ebp-4],eax
 00537440    xor         eax,eax
 00537442    push        ebp
 00537443    push        53751B
 00537448    push        dword ptr fs:[eax]
 0053744B    mov         dword ptr fs:[eax],esp
 0053744E    mov         eax,dword ptr [ebp-4]
 00537451    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537457    mov         edx,dword ptr [eax]
 00537459    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 0053745F    inc         eax
>00537460    je          005374F8
 00537466    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053746B    mov         eax,dword ptr [eax]
 0053746D    xor         edx,edx
 0053746F    call        TfmHDD.miClrIBIAbortCodeClick
 00537474    mov         eax,dword ptr [ebp-4]
 00537477    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053747D    mov         edx,dword ptr [eax]
 0053747F    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00537485    inc         eax
 00537486    call        00508448
 0053748B    test        al,al
>0053748D    je          0053749E
 0053748F    lea         eax,[ebp-8]
 00537492    mov         edx,537530;'OK'
 00537497    call        @LStrLAsg
>0053749C    jmp         005374AB
 0053749E    lea         eax,[ebp-8]
 005374A1    mov         edx,53753C;'Error'
 005374A6    call        @LStrLAsg
 005374AB    push        53754C;'Set SelfScan Step to '
 005374B0    mov         eax,dword ptr [ebp-4]
 005374B3    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005374B9    mov         edx,dword ptr [eax]
 005374BB    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005374C1    inc         eax
 005374C2    lea         edx,[ebp-14]
 005374C5    call        IntToStr
 005374CA    push        dword ptr [ebp-14]
 005374CD    push        53756C;' - '
 005374D2    push        dword ptr [ebp-8]
 005374D5    lea         eax,[ebp-10]
 005374D8    mov         edx,4
 005374DD    call        @LStrCatN
 005374E2    mov         eax,dword ptr [ebp-10]
 005374E5    call        00544EB4
 005374EA    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005374EF    mov         eax,dword ptr [eax]
 005374F1    xor         edx,edx
 005374F3    call        TfmHDD.miSelfScanStartClick
 005374F8    xor         eax,eax
 005374FA    pop         edx
 005374FB    pop         ecx
 005374FC    pop         ecx
 005374FD    mov         dword ptr fs:[eax],edx
 00537500    push        537522
 00537505    lea         eax,[ebp-14]
 00537508    mov         edx,2
 0053750D    call        @LStrArrayClr
 00537512    lea         eax,[ebp-8]
 00537515    call        @LStrClr
 0053751A    ret
>0053751B    jmp         @HandleFinally
>00537520    jmp         00537505
 00537522    mov         esp,ebp
 00537524    pop         ebp
 00537525    ret
*}
end;

//00537570
procedure TfmScript.btRunClick(Sender:TObject);
begin
{*
 00537570    push        ebp
 00537571    mov         ebp,esp
 00537573    add         esp,0FFFFFFE4
 00537576    xor         ecx,ecx
 00537578    mov         dword ptr [ebp-1C],ecx
 0053757B    mov         dword ptr [ebp-10],ecx
 0053757E    mov         dword ptr [ebp-0C],edx
 00537581    mov         dword ptr [ebp-4],eax
 00537584    xor         eax,eax
 00537586    push        ebp
 00537587    push        537706
 0053758C    push        dword ptr fs:[eax]
 0053758F    mov         dword ptr fs:[eax],esp
 00537592    mov         eax,dword ptr [ebp-4]
 00537595    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053759B    mov         edx,dword ptr [eax]
 0053759D    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005375A3    inc         eax
>005375A4    je          005376E8
 005375AA    call        004CE5B0
 005375AF    mov         eax,dword ptr [ebp-4]
 005375B2    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005375B8    mov         edx,dword ptr [eax]
 005375BA    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 005375C0    mov         edx,eax
 005375C2    mov         eax,dword ptr [ebp-4]
 005375C5    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005375CB    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005375D1    call        0045AF80
 005375D6    mov         eax,dword ptr [eax+0C]
 005375D9    mov         edx,dword ptr ds:[56E270];^gvar_00571EC0
 005375DF    add         edx,4
 005375E2    mov         ecx,dword ptr [ebp-4]
 005375E5    mov         ecx,dword ptr [ecx+348]
 005375EB    call        Move
 005375F0    mov         eax,[0056E270];^gvar_00571EC0
 005375F5    mov         word ptr [eax],19
 005375FA    push        10
 005375FC    call        user32.GetKeyState
 00537601    test        ax,ax
>00537604    jge         00537613
 00537606    mov         eax,[0056E270];^gvar_00571EC0
 0053760B    mov         word ptr [eax+2],4
>00537611    jmp         0053761E
 00537613    mov         eax,[0056E270];^gvar_00571EC0
 00537618    mov         word ptr [eax+2],3
 0053761E    mov         eax,[0056E270];^gvar_00571EC0
 00537623    mov         ax,word ptr [eax+4]
 00537627    mov         word ptr [ebp-6],ax
 0053762B    lea         eax,[ebp-10]
 0053762E    push        eax
 0053762F    movzx       eax,word ptr [ebp-6]
 00537633    mov         dword ptr [ebp-18],eax
 00537636    mov         byte ptr [ebp-14],0
 0053763A    lea         edx,[ebp-18]
 0053763D    xor         ecx,ecx
 0053763F    mov         eax,53771C;'Test %x - Start'
 00537644    call        0040D630
 00537649    mov         eax,dword ptr [ebp-10]
 0053764C    call        00544EB4
 00537651    call        004CED2C
 00537656    push        4F
 00537658    push        0C2
 0053765D    push        0A0
 00537662    push        0B0
 00537667    mov         cl,0BE
 00537669    mov         dl,1
 0053766B    mov         al,0D6
 0053766D    call        0055FFC4
 00537672    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 00537677    cmp         byte ptr [eax],0
>0053767A    je          00537683
 0053767C    call        005600F0
>00537681    jmp         00537688
 00537683    call        00560080
 00537688    call        004CE5C4
 0053768D    push        10
 0053768F    call        user32.GetKeyState
 00537694    test        ax,ax
>00537697    jge         005376B1
 00537699    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 0053769E    cmp         byte ptr [eax],0
>005376A1    je          005376AA
 005376A3    call        005600F0
>005376A8    jmp         005376BD
 005376AA    call        00560080
>005376AF    jmp         005376BD
 005376B1    mov         al,1
 005376B3    call        004CED14
 005376B8    call        004CCA5C
 005376BD    lea         eax,[ebp-1C]
 005376C0    push        eax
 005376C1    movzx       eax,word ptr [ebp-6]
 005376C5    mov         dword ptr [ebp-18],eax
 005376C8    mov         byte ptr [ebp-14],0
 005376CC    lea         edx,[ebp-18]
 005376CF    xor         ecx,ecx
 005376D1    mov         eax,537734;'Test %x End -'
 005376D6    call        0040D630
 005376DB    mov         eax,dword ptr [ebp-1C]
 005376DE    call        00544F6C
 005376E3    call        005451D0
 005376E8    xor         eax,eax
 005376EA    pop         edx
 005376EB    pop         ecx
 005376EC    pop         ecx
 005376ED    mov         dword ptr fs:[eax],edx
 005376F0    push        53770D
 005376F5    lea         eax,[ebp-1C]
 005376F8    call        @LStrClr
 005376FD    lea         eax,[ebp-10]
 00537700    call        @LStrClr
 00537705    ret
>00537706    jmp         @HandleFinally
>0053770B    jmp         005376F5
 0053770D    mov         esp,ebp
 0053770F    pop         ebp
 00537710    ret
*}
end;

//00537744
procedure TfmScript.miGenCOScriptClick(Sender:TObject);
begin
{*
 00537744    push        ebp
 00537745    mov         ebp,esp
 00537747    add         esp,0FFFFFFF8
 0053774A    mov         dword ptr [ebp-8],edx
 0053774D    mov         dword ptr [ebp-4],eax
 00537750    mov         eax,dword ptr [ebp-4]
 00537753    call        00537B84
 00537758    pop         ecx
 00537759    pop         ecx
 0053775A    pop         ebp
 0053775B    ret
*}
end;

//0053775C
{*procedure sub_0053775C(?:?; ?:?);
begin
 0053775C    push        ebp
 0053775D    mov         ebp,esp
 0053775F    add         esp,0FFFFFFF4
 00537762    push        ebx
 00537763    mov         word ptr [ebp-2],ax
 00537767    mov         eax,dword ptr [ebp+8]
 0053776A    add         eax,0FFFFFF00
 0053776F    xor         ecx,ecx
 00537771    mov         edx,100
 00537776    call        @FillChar
 0053777B    mov         dl,1
 0053777D    mov         eax,[0041DE14];TMemoryStream
 00537782    call        TObject.Create;TMemoryStream.Create
 00537787    mov         edx,dword ptr [ebp+8]
 0053778A    mov         dword ptr [edx-104],eax
 00537790    xor         eax,eax
 00537792    push        ebp
 00537793    push        5379AF
 00537798    push        dword ptr fs:[eax]
 0053779B    mov         dword ptr fs:[eax],esp
 0053779E    mov         eax,dword ptr [ebp+8]
 005377A1    mov         edx,dword ptr [eax-104]
 005377A7    mov         ax,word ptr [ebp-2]
 005377AB    call        005095B8
 005377B0    test        al,al
>005377B2    je          00537993
 005377B8    mov         eax,dword ptr [ebp+8]
 005377BB    mov         eax,dword ptr [eax-104]
 005377C1    xor         ecx,ecx
 005377C3    xor         edx,edx
 005377C5    mov         ebx,dword ptr [eax]
 005377C7    call        dword ptr [ebx+14]
 005377CA    mov         eax,dword ptr [ebp+8]
 005377CD    mov         eax,dword ptr [eax-104]
 005377D3    call        004CE56C
 005377D8    mov         dword ptr [ebp-8],eax
 005377DB    cmp         dword ptr [ebp-8],4C594F52
>005377E2    jne         0053794B
 005377E8    mov         eax,dword ptr [ebp+8]
 005377EB    mov         eax,dword ptr [eax-104]
 005377F1    xor         ecx,ecx
 005377F3    mov         edx,6
 005377F8    mov         ebx,dword ptr [eax]
 005377FA    call        dword ptr [ebx+14]
 005377FD    mov         eax,dword ptr [ebp+8]
 00537800    mov         eax,dword ptr [eax-104]
 00537806    call        004CE548
 0053780B    mov         word ptr [ebp-0A],ax
 0053780F    movzx       edx,word ptr [ebp-0A]
 00537813    mov         eax,dword ptr [ebp+8]
 00537816    mov         eax,dword ptr [eax-104]
 0053781C    xor         ecx,ecx
 0053781E    mov         ebx,dword ptr [eax]
 00537820    call        dword ptr [ebx+14]
 00537823    mov         eax,[0056E304];^gvar_0056DF54
 00537828    movzx       eax,word ptr [eax]
 0053782B    add         eax,0FFFFFF88
 0053782E    cmp         eax,30
>00537831    ja          005378F1
 00537837    mov         al,byte ptr [eax+537844]
 0053783D    jmp         dword ptr [eax*4+537875]
 0053783D    db          1
 0053783D    db          0
 0053783D    db          2
 0053783D    db          0
 0053783D    db          0
 0053783D    db          2
 0053783D    db          0
 0053783D    db          2
 0053783D    db          0
 0053783D    db          2
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          2
 0053783D    db          2
 0053783D    db          2
 0053783D    db          0
 0053783D    db          2
 0053783D    db          1
 0053783D    db          0
 0053783D    db          2
 0053783D    db          3
 0053783D    db          3
 0053783D    db          0
 0053783D    db          3
 0053783D    db          0
 0053783D    db          4
 0053783D    db          0
 0053783D    db          3
 0053783D    db          0
 0053783D    db          0
 0053783D    db          3
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          0
 0053783D    db          3
 0053783D    db          3
 0053783D    db          0
 0053783D    db          0
 0053783D    db          3
 0053783D    dd          005378F1
 0053783D    dd          00537889
 0053783D    dd          005378A3
 0053783D    dd          005378BD
 0053783D    dd          005378D7
 00537889    mov         eax,dword ptr [ebp+8]
 0053788C    mov         eax,dword ptr [eax-104]
 00537892    xor         ecx,ecx
 00537894    mov         edx,9B
 00537899    mov         ebx,dword ptr [eax]
 0053789B    call        dword ptr [ebx+14]
>0053789E    jmp         00537977
 005378A3    mov         eax,dword ptr [ebp+8]
 005378A6    mov         eax,dword ptr [eax-104]
 005378AC    xor         ecx,ecx
 005378AE    mov         edx,93
 005378B3    mov         ebx,dword ptr [eax]
 005378B5    call        dword ptr [ebx+14]
>005378B8    jmp         00537977
 005378BD    mov         eax,dword ptr [ebp+8]
 005378C0    mov         eax,dword ptr [eax-104]
 005378C6    xor         ecx,ecx
 005378C8    mov         edx,94
 005378CD    mov         ebx,dword ptr [eax]
 005378CF    call        dword ptr [ebx+14]
>005378D2    jmp         00537977
 005378D7    mov         eax,dword ptr [ebp+8]
 005378DA    mov         eax,dword ptr [eax-104]
 005378E0    xor         ecx,ecx
 005378E2    mov         edx,9E
 005378E7    mov         ebx,dword ptr [eax]
 005378E9    call        dword ptr [ebx+14]
>005378EC    jmp         00537977
 005378F1    mov         eax,dword ptr [ebp+8]
 005378F4    mov         eax,dword ptr [eax-104]
 005378FA    xor         ecx,ecx
 005378FC    mov         edx,93
 00537901    mov         ebx,dword ptr [eax]
 00537903    call        dword ptr [ebx+14]
 00537906    mov         eax,dword ptr [ebp+8]
 00537909    mov         eax,dword ptr [eax-104]
 0053790F    call        004CE528
 00537914    mov         byte ptr [ebp-0B],al
 00537917    cmp         byte ptr [ebp-0B],0
>0053791B    je          00537934
 0053791D    mov         eax,dword ptr [ebp+8]
 00537920    mov         eax,dword ptr [eax-104]
 00537926    mov         cx,1
 0053792A    or          edx,0FFFFFFFF
 0053792D    mov         ebx,dword ptr [eax]
 0053792F    call        dword ptr [ebx+14]
>00537932    jmp         00537977
 00537934    mov         eax,dword ptr [ebp+8]
 00537937    mov         eax,dword ptr [eax-104]
 0053793D    xor         ecx,ecx
 0053793F    mov         edx,0B1
 00537944    mov         ebx,dword ptr [eax]
 00537946    call        dword ptr [ebx+14]
>00537949    jmp         00537977
 0053794B    mov         eax,dword ptr [ebp+8]
 0053794E    mov         eax,dword ptr [eax-104]
 00537954    xor         ecx,ecx
 00537956    mov         edx,18
 0053795B    mov         ebx,dword ptr [eax]
 0053795D    call        dword ptr [ebx+14]
 00537960    mov         eax,dword ptr [ebp+8]
 00537963    mov         eax,dword ptr [eax-104]
 00537969    mov         cx,1
 0053796D    mov         edx,75
 00537972    mov         ebx,dword ptr [eax]
 00537974    call        dword ptr [ebx+14]
 00537977    mov         eax,dword ptr [ebp+8]
 0053797A    lea         edx,[eax-100]
 00537980    mov         eax,dword ptr [ebp+8]
 00537983    mov         eax,dword ptr [eax-104]
 00537989    mov         ecx,38
 0053798E    call        TStream.ReadBuffer
 00537993    xor         eax,eax
 00537995    pop         edx
 00537996    pop         ecx
 00537997    pop         ecx
 00537998    mov         dword ptr fs:[eax],edx
 0053799B    push        5379B6
 005379A0    mov         eax,dword ptr [ebp+8]
 005379A3    mov         eax,dword ptr [eax-104]
 005379A9    call        TObject.Free
 005379AE    ret
>005379AF    jmp         @HandleFinally
>005379B4    jmp         005379A0
 005379B6    pop         ebx
 005379B7    mov         esp,ebp
 005379B9    pop         ebp
 005379BA    ret
end;*}

//005379BC
{*procedure sub_005379BC(?:?; ?:?; ?:?);
begin
 005379BC    push        ebp
 005379BD    mov         ebp,esp
 005379BF    xor         ecx,ecx
 005379C1    push        ecx
 005379C2    push        ecx
 005379C3    push        ecx
 005379C4    push        ecx
 005379C5    push        ecx
 005379C6    push        ebx
 005379C7    mov         word ptr [ebp-4],dx
 005379CB    mov         word ptr [ebp-2],ax
 005379CF    xor         eax,eax
 005379D1    push        ebp
 005379D2    push        537B69
 005379D7    push        dword ptr fs:[eax]
 005379DA    mov         dword ptr fs:[eax],esp
 005379DD    mov         eax,dword ptr [ebp+8]
 005379E0    push        eax
 005379E1    mov         ax,word ptr [ebp-2]
 005379E5    call        0053775C
 005379EA    pop         ecx
 005379EB    mov         eax,dword ptr [ebp+8]
 005379EE    cmp         byte ptr [eax-100],0
>005379F5    je          00537B4E
 005379FB    mov         eax,dword ptr [ebp+8]
 005379FE    mov         eax,dword ptr [eax-108]
 00537A04    xor         edx,edx
 00537A06    call        TfmScript.miInsertClick
 00537A0B    mov         eax,dword ptr [ebp+8]
 00537A0E    mov         eax,dword ptr [eax-108]
 00537A14    mov         eax,dword ptr [eax+304]
 00537A1A    xor         edx,edx
 00537A1C    mov         ecx,dword ptr [eax]
 00537A1E    call        dword ptr [ecx+0D0]
 00537A24    mov         eax,dword ptr [ebp+8]
 00537A27    mov         eax,dword ptr [eax-108]
 00537A2D    mov         eax,dword ptr [eax+304]
 00537A33    mov         eax,dword ptr [eax+22C]
 00537A39    xor         edx,edx
 00537A3B    call        0045AF80
 00537A40    mov         eax,dword ptr [eax+0C]
 00537A43    mov         edx,dword ptr [ebp+8]
 00537A46    mov         dword ptr [edx-10C],eax
 00537A4C    mov         eax,dword ptr [ebp+8]
 00537A4F    mov         eax,dword ptr [eax-10C]
 00537A55    xor         ecx,ecx
 00537A57    mov         edx,38
 00537A5C    call        @FillChar
 00537A61    mov         eax,dword ptr [ebp+8]
 00537A64    mov         eax,dword ptr [eax-10C]
 00537A6A    mov         dx,word ptr [ebp-4]
 00537A6E    mov         word ptr [eax],dx
 00537A71    mov         eax,dword ptr [ebp+8]
 00537A74    mov         eax,dword ptr [eax-10C]
 00537A7A    add         eax,2
 00537A7D    mov         word ptr [eax],1
 00537A82    mov         eax,dword ptr [ebp+8]
 00537A85    mov         eax,dword ptr [eax-10C]
 00537A8B    lea         edx,[eax+4]
 00537A8E    mov         eax,dword ptr [ebp+8]
 00537A91    add         eax,0FFFFFF00
 00537A96    mov         ecx,38
 00537A9B    call        Move
 00537AA0    lea         ecx,[ebp-8]
 00537AA3    mov         eax,dword ptr [ebp+8]
 00537AA6    mov         eax,dword ptr [eax-10C]
 00537AAC    movzx       eax,byte ptr [eax]
 00537AAF    mov         edx,2
 00537AB4    call        IntToHex
 00537AB9    mov         eax,dword ptr [ebp-8]
 00537ABC    push        eax
 00537ABD    mov         eax,dword ptr [ebp+8]
 00537AC0    mov         eax,dword ptr [eax-108]
 00537AC6    mov         eax,dword ptr [eax+304]
 00537ACC    mov         eax,dword ptr [eax+22C]
 00537AD2    xor         edx,edx
 00537AD4    call        0045AF80
 00537AD9    pop         edx
 00537ADA    call        0045A750
 00537ADF    lea         eax,[ebp-10]
 00537AE2    mov         edx,dword ptr [ebp+8]
 00537AE5    mov         edx,dword ptr [edx-10C]
 00537AEB    add         edx,4
 00537AEE    mov         dl,byte ptr [edx]
 00537AF0    call        @LStrFromChar
 00537AF5    push        dword ptr [ebp-10]
 00537AF8    push        537B80;' - '
 00537AFD    mov         eax,dword ptr [ebp+8]
 00537B00    mov         eax,dword ptr [eax-10C]
 00537B06    add         eax,4
 00537B09    mov         al,byte ptr [eax]
 00537B0B    lea         edx,[ebp-14]
 00537B0E    call        005336BC
 00537B13    push        dword ptr [ebp-14]
 00537B16    lea         eax,[ebp-0C]
 00537B19    mov         edx,3
 00537B1E    call        @LStrCatN
 00537B23    mov         eax,dword ptr [ebp-0C]
 00537B26    push        eax
 00537B27    mov         eax,dword ptr [ebp+8]
 00537B2A    mov         eax,dword ptr [eax-108]
 00537B30    mov         eax,dword ptr [eax+304]
 00537B36    mov         eax,dword ptr [eax+22C]
 00537B3C    xor         edx,edx
 00537B3E    call        0045AF80
 00537B43    mov         eax,dword ptr [eax+8]
 00537B46    xor         edx,edx
 00537B48    pop         ecx
 00537B49    mov         ebx,dword ptr [eax]
 00537B4B    call        dword ptr [ebx+20]
 00537B4E    xor         eax,eax
 00537B50    pop         edx
 00537B51    pop         ecx
 00537B52    pop         ecx
 00537B53    mov         dword ptr fs:[eax],edx
 00537B56    push        537B70
 00537B5B    lea         eax,[ebp-14]
 00537B5E    mov         edx,4
 00537B63    call        @LStrArrayClr
 00537B68    ret
>00537B69    jmp         @HandleFinally
>00537B6E    jmp         00537B5B
 00537B70    pop         ebx
 00537B71    mov         esp,ebp
 00537B73    pop         ebp
 00537B74    ret
end;*}

//00537B84
procedure sub_00537B84(?:TfmScript);
begin
{*
 00537B84    push        ebp
 00537B85    mov         ebp,esp
 00537B87    add         esp,0FFFFFEE8
 00537B8D    push        ebx
 00537B8E    xor         edx,edx
 00537B90    mov         dword ptr [ebp-118],edx
 00537B96    mov         dword ptr [ebp-114],edx
 00537B9C    mov         dword ptr [ebp-110],edx
 00537BA2    mov         dword ptr [ebp-108],eax
 00537BA8    xor         eax,eax
 00537BAA    push        ebp
 00537BAB    push        537F88
 00537BB0    push        dword ptr fs:[eax]
 00537BB3    mov         dword ptr fs:[eax],esp
 00537BB6    mov         eax,dword ptr [ebp-108]
 00537BBC    call        00535650
 00537BC1    mov         eax,dword ptr [ebp-108]
 00537BC7    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537BCD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537BD3    call        0045AF28
 00537BD8    test        eax,eax
>00537BDA    jle         00537F6A
 00537BE0    mov         eax,dword ptr [ebp-108]
 00537BE6    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537BEC    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537BF2    call        TListItems.BeginUpdate
 00537BF7    mov         eax,dword ptr [ebp-108]
 00537BFD    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537C03    mov         edx,dword ptr [eax]
 00537C05    call        dword ptr [edx+0D8];TCustomListView.Clear
 00537C0B    xor         edx,edx
 00537C0D    mov         eax,dword ptr [ebp-108]
 00537C13    call        TfmScript.miInsertClick
 00537C18    mov         eax,dword ptr [ebp-108]
 00537C1E    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537C24    xor         edx,edx
 00537C26    mov         ecx,dword ptr [eax]
 00537C28    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
 00537C2E    mov         eax,dword ptr [ebp-108]
 00537C34    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537C3A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537C40    xor         edx,edx
 00537C42    call        0045AF80
 00537C47    mov         eax,dword ptr [eax+0C]
 00537C4A    mov         dword ptr [ebp-10C],eax
 00537C50    mov         eax,dword ptr [ebp-10C]
 00537C56    add         eax,2
 00537C59    mov         word ptr [eax],2
 00537C5E    mov         eax,dword ptr [ebp-10C]
 00537C64    add         eax,8
 00537C67    mov         word ptr [eax],5
 00537C6C    mov         eax,dword ptr [ebp-10C]
 00537C72    add         eax,0C
 00537C75    mov         word ptr [eax],0FFFF
 00537C7A    mov         eax,dword ptr [ebp-10C]
 00537C80    add         eax,48
 00537C83    mov         word ptr [eax],0FFFF
 00537C88    mov         eax,dword ptr [ebp-10C]
 00537C8E    add         eax,4A
 00537C91    mov         word ptr [eax],0FFFF
 00537C96    lea         ecx,[ebp-110]
 00537C9C    mov         eax,dword ptr [ebp-10C]
 00537CA2    movzx       eax,byte ptr [eax]
 00537CA5    mov         edx,2
 00537CAA    call        IntToHex
 00537CAF    mov         eax,dword ptr [ebp-110]
 00537CB5    push        eax
 00537CB6    mov         eax,dword ptr [ebp-108]
 00537CBC    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537CC2    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537CC8    xor         edx,edx
 00537CCA    call        0045AF80
 00537CCF    pop         edx
 00537CD0    call        0045A750
 00537CD5    mov         eax,dword ptr [ebp-108]
 00537CDB    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537CE1    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537CE7    xor         edx,edx
 00537CE9    call        0045AF80
 00537CEE    mov         eax,dword ptr [eax+8]
 00537CF1    mov         ecx,537F9C;'Xmit DASP Line Test'
 00537CF6    xor         edx,edx
 00537CF8    mov         ebx,dword ptr [eax]
 00537CFA    call        dword ptr [ebx+20]
 00537CFD    xor         edx,edx
 00537CFF    mov         eax,dword ptr [ebp-108]
 00537D05    call        TfmScript.miInsertClick
 00537D0A    mov         eax,dword ptr [ebp-108]
 00537D10    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537D16    xor         edx,edx
 00537D18    mov         ecx,dword ptr [eax]
 00537D1A    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
 00537D20    mov         eax,dword ptr [ebp-108]
 00537D26    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537D2C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537D32    xor         edx,edx
 00537D34    call        0045AF80
 00537D39    mov         eax,dword ptr [eax+0C]
 00537D3C    mov         dword ptr [ebp-10C],eax
 00537D42    mov         eax,dword ptr [ebp-10C]
 00537D48    xor         ecx,ecx
 00537D4A    mov         edx,38
 00537D4F    call        @FillChar
 00537D54    mov         eax,dword ptr [ebp-10C]
 00537D5A    mov         word ptr [eax],0B2
 00537D5F    mov         eax,dword ptr [ebp-10C]
 00537D65    add         eax,2
 00537D68    mov         word ptr [eax],1
 00537D6D    lea         ecx,[ebp-114]
 00537D73    mov         eax,dword ptr [ebp-10C]
 00537D79    movzx       eax,byte ptr [eax]
 00537D7C    mov         edx,2
 00537D81    call        IntToHex
 00537D86    mov         eax,dword ptr [ebp-114]
 00537D8C    push        eax
 00537D8D    mov         eax,dword ptr [ebp-108]
 00537D93    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537D99    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537D9F    xor         edx,edx
 00537DA1    call        0045AF80
 00537DA6    pop         edx
 00537DA7    call        0045A750
 00537DAC    mov         eax,dword ptr [ebp-108]
 00537DB2    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537DB8    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537DBE    xor         edx,edx
 00537DC0    call        0045AF80
 00537DC5    mov         eax,dword ptr [eax+8]
 00537DC8    mov         ecx,537FB8;'IBI PServo Wedge RRO Test'
 00537DCD    xor         edx,edx
 00537DCF    mov         ebx,dword ptr [eax]
 00537DD1    call        dword ptr [ebx+20]
 00537DD4    xor         edx,edx
 00537DD6    mov         eax,dword ptr [ebp-108]
 00537DDC    call        TfmScript.miInsertClick
 00537DE1    mov         eax,dword ptr [ebp-108]
 00537DE7    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537DED    xor         edx,edx
 00537DEF    mov         ecx,dword ptr [eax]
 00537DF1    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
 00537DF7    mov         eax,dword ptr [ebp-108]
 00537DFD    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537E03    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537E09    xor         edx,edx
 00537E0B    call        0045AF80
 00537E10    mov         eax,dword ptr [eax+0C]
 00537E13    mov         dword ptr [ebp-10C],eax
 00537E19    mov         eax,dword ptr [ebp-10C]
 00537E1F    xor         ecx,ecx
 00537E21    mov         edx,38
 00537E26    call        @FillChar
 00537E2B    mov         eax,dword ptr [ebp-10C]
 00537E31    mov         word ptr [eax],0B1
 00537E36    lea         ecx,[ebp-118]
 00537E3C    mov         eax,dword ptr [ebp-10C]
 00537E42    movzx       eax,byte ptr [eax]
 00537E45    mov         edx,2
 00537E4A    call        IntToHex
 00537E4F    mov         eax,dword ptr [ebp-118]
 00537E55    push        eax
 00537E56    mov         eax,dword ptr [ebp-108]
 00537E5C    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537E62    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537E68    xor         edx,edx
 00537E6A    call        0045AF80
 00537E6F    pop         edx
 00537E70    call        0045A750
 00537E75    mov         eax,dword ptr [ebp-108]
 00537E7B    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537E81    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537E87    xor         edx,edx
 00537E89    call        0045AF80
 00537E8E    mov         eax,dword ptr [eax+8]
 00537E91    mov         ecx,537FDC;'IBI PServo Calibrate Test'
 00537E96    xor         edx,edx
 00537E98    mov         ebx,dword ptr [eax]
 00537E9A    call        dword ptr [ebx+20]
 00537E9D    push        ebp
 00537E9E    mov         dx,0C4
 00537EA2    mov         ax,2040
 00537EA6    call        005379BC
 00537EAB    pop         ecx
 00537EAC    push        ebp
 00537EAD    mov         dx,0C4
 00537EB1    mov         ax,2070
 00537EB5    call        005379BC
 00537EBA    pop         ecx
 00537EBB    push        ebp
 00537EBC    mov         dx,0C4
 00537EC0    mov         ax,2060
 00537EC4    call        005379BC
 00537EC9    pop         ecx
 00537ECA    push        ebp
 00537ECB    mov         dx,0C8
 00537ECF    mov         ax,2010
 00537ED3    call        005379BC
 00537ED8    pop         ecx
 00537ED9    push        ebp
 00537EDA    mov         dx,0C3
 00537EDE    mov         ax,2030
 00537EE2    call        005379BC
 00537EE7    pop         ecx
 00537EE8    push        ebp
 00537EE9    mov         dx,0C4
 00537EED    mov         ax,2020
 00537EF1    call        005379BC
 00537EF6    pop         ecx
 00537EF7    push        ebp
 00537EF8    mov         dx,0C4
 00537EFC    mov         ax,2050
 00537F00    call        005379BC
 00537F05    pop         ecx
 00537F06    push        ebp
 00537F07    mov         dx,0C4
 00537F0B    mov         ax,2000
 00537F0F    call        005379BC
 00537F14    pop         ecx
 00537F15    mov         eax,dword ptr [ebp-108]
 00537F1B    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537F21    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537F27    call        TListItems.EndUpdate
 00537F2C    push        0
 00537F2E    mov         eax,dword ptr [ebp-108]
 00537F34    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537F3A    mov         edx,dword ptr [eax]
 00537F3C    call        dword ptr [edx+0CC];TListView.sub_0045D57C
 00537F42    mov         edx,eax
 00537F44    mov         eax,dword ptr [ebp-108]
 00537F4A    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00537F50    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00537F56    call        0045AF80
 00537F5B    mov         ecx,eax
 00537F5D    xor         edx,edx
 00537F5F    mov         eax,dword ptr [ebp-108]
 00537F65    call        TfmScript.lvScriptChange
 00537F6A    xor         eax,eax
 00537F6C    pop         edx
 00537F6D    pop         ecx
 00537F6E    pop         ecx
 00537F6F    mov         dword ptr fs:[eax],edx
 00537F72    push        537F8F
 00537F77    lea         eax,[ebp-118]
 00537F7D    mov         edx,3
 00537F82    call        @LStrArrayClr
 00537F87    ret
>00537F88    jmp         @HandleFinally
>00537F8D    jmp         00537F77
 00537F8F    pop         ebx
 00537F90    mov         esp,ebp
 00537F92    pop         ebp
 00537F93    ret
*}
end;

//00537FF8
{*procedure TfmScript.cbModIdChange(?:?);
begin
 00537FF8    push        ebp
 00537FF9    mov         ebp,esp
 00537FFB    add         esp,0FFFFFFF8
 00537FFE    mov         dword ptr [ebp-8],edx
 00538001    mov         dword ptr [ebp-4],eax
 00538004    mov         eax,dword ptr [ebp-4]
 00538007    call        005356CC
 0053800C    pop         ecx
 0053800D    pop         ecx
 0053800E    pop         ebp
 0053800F    ret
end;*}

//00538010
procedure TfmScript.miBuckUpClick(Sender:TObject);
begin
{*
 00538010    push        ebp
 00538011    mov         ebp,esp
 00538013    add         esp,0FFFFFFF8
 00538016    mov         dword ptr [ebp-8],edx
 00538019    mov         dword ptr [ebp-4],eax
 0053801C    mov         dx,3F
 00538020    mov         ax,28
 00538024    call        005078AC
 00538029    mov         eax,538040;'BuckUp Script to ID3F - '
 0053802E    call        00544F6C
 00538033    pop         ecx
 00538034    pop         ecx
 00538035    pop         ebp
 00538036    ret
*}
end;

//0053805C
procedure TfmScript.GenScriptfromCommonLog1Click(Sender:TObject);
begin
{*
 0053805C    push        ebp
 0053805D    mov         ebp,esp
 0053805F    mov         ecx,6C
 00538064    push        0
 00538066    push        0
 00538068    dec         ecx
>00538069    jne         00538064
 0053806B    push        ebx
 0053806C    mov         dword ptr [ebp-28],edx
 0053806F    mov         dword ptr [ebp-4],eax
 00538072    xor         eax,eax
 00538074    push        ebp
 00538075    push        538728
 0053807A    push        dword ptr fs:[eax]
 0053807D    mov         dword ptr fs:[eax],esp
 00538080    mov         eax,[0056E5A4];^gvar_0056DF04
 00538085    mov         byte ptr [eax],0
 00538088    lea         edx,[ebp-338]
 0053808E    xor         eax,eax
 00538090    call        00403214
 00538095    mov         eax,dword ptr [ebp-338]
 0053809B    lea         edx,[ebp-334]
 005380A1    call        0040CC5C
 005380A6    lea         eax,[ebp-334]
 005380AC    mov         edx,53873C;'wdm.ini'
 005380B1    call        @LStrCat
 005380B6    mov         ecx,dword ptr [ebp-334]
 005380BC    mov         dl,1
 005380BE    mov         eax,[004497F8];TIniFile
 005380C3    call        TIniFile.Create;TIniFile.Create
 005380C8    mov         dword ptr [ebp-24],eax
 005380CB    xor         eax,eax
 005380CD    push        ebp
 005380CE    push        5386EB
 005380D3    push        dword ptr fs:[eax]
 005380D6    mov         dword ptr fs:[eax],esp
 005380D9    mov         dl,1
 005380DB    mov         eax,[0041DE14];TMemoryStream
 005380E0    call        TObject.Create;TMemoryStream.Create
 005380E5    mov         dword ptr [ebp-0C],eax
 005380E8    xor         eax,eax
 005380EA    push        ebp
 005380EB    push        5386CE
 005380F0    push        dword ptr fs:[eax]
 005380F3    mov         dword ptr fs:[eax],esp
 005380F6    mov         edx,dword ptr [ebp-0C]
 005380F9    mov         ax,0E6
 005380FD    call        005095B8
 00538102    test        al,al
>00538104    je          005386B8
 0053810A    xor         ecx,ecx
 0053810C    xor         edx,edx
 0053810E    mov         eax,dword ptr [ebp-0C]
 00538111    mov         ebx,dword ptr [eax]
 00538113    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00538116    mov         eax,dword ptr [ebp-0C]
 00538119    call        004CE56C
 0053811E    mov         dword ptr [ebp-10],eax
 00538121    cmp         dword ptr [ebp-10],4C594F52
>00538128    jne         0053813B
 0053812A    xor         ecx,ecx
 0053812C    mov         edx,30
 00538131    mov         eax,dword ptr [ebp-0C]
 00538134    mov         ebx,dword ptr [eax]
 00538136    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>00538139    jmp         0053814A
 0053813B    xor         ecx,ecx
 0053813D    mov         edx,18
 00538142    mov         eax,dword ptr [ebp-0C]
 00538145    mov         ebx,dword ptr [eax]
 00538147    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053814A    xor         eax,eax
 0053814C    mov         dword ptr [ebp-1C],eax
 0053814F    mov         eax,dword ptr [ebp-0C]
 00538152    call        004CE56C
 00538157    mov         dword ptr [ebp-8],eax
 0053815A    and         dword ptr [ebp-8],0FF
 00538161    cmp         dword ptr [ebp-8],0
>00538165    jne         00538176
 00538167    call        @TryFinallyExit
 0053816C    call        @TryFinallyExit
>00538171    jmp         005386F2
 00538176    cmp         dword ptr [ebp-8],0
>0053817A    jbe         005386B8
>00538180    jmp         00538197
 00538182    mov         eax,dword ptr [ebp-0C]
 00538185    call        004CE56C
 0053818A    mov         edx,dword ptr [ebp-1C]
 0053818D    mov         dword ptr [ebp+edx*4-22C],eax
 00538194    inc         dword ptr [ebp-1C]
 00538197    mov         eax,dword ptr [ebp-1C]
 0053819A    cdq
 0053819B    push        edx
 0053819C    push        eax
 0053819D    mov         eax,dword ptr [ebp-8]
 005381A0    xor         edx,edx
 005381A2    cmp         edx,dword ptr [esp+4]
>005381A6    jne         005381B1
 005381A8    cmp         eax,dword ptr [esp]
 005381AB    pop         edx
 005381AC    pop         eax
>005381AD    jbe         005381E9
>005381AF    jmp         005381B5
 005381B1    pop         edx
 005381B2    pop         eax
>005381B3    jle         005381E9
 005381B5    mov         eax,dword ptr [ebp-0C]
 005381B8    mov         edx,dword ptr [eax]
 005381BA    call        dword ptr [edx];TMemoryStream.sub_004235A0
 005381BC    sub         eax,18
 005381BF    sbb         edx,0
 005381C2    push        edx
 005381C3    push        eax
 005381C4    mov         eax,dword ptr [ebp-0C]
 005381C7    call        TStream.GetPosition
 005381CC    cmp         edx,dword ptr [esp+4]
>005381D0    jne         005381DB
 005381D2    cmp         eax,dword ptr [esp]
 005381D5    pop         edx
 005381D6    pop         eax
>005381D7    jae         005381E9
>005381D9    jmp         005381DF
 005381DB    pop         edx
 005381DC    pop         eax
>005381DD    jge         005381E9
 005381DF    mov         eax,[0056E5A4];^gvar_0056DF04
 005381E4    cmp         byte ptr [eax],0
>005381E7    je          00538182
 005381E9    cmp         dword ptr [ebp-224],0
>005381F0    je          005386B8
 005381F6    mov         eax,dword ptr [ebp-4]
 005381F9    call        00535650
 005381FE    mov         eax,dword ptr [ebp-4]
 00538201    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00538207    mov         edx,dword ptr [eax]
 00538209    call        dword ptr [edx+0D8];TCustomListView.Clear
 0053820F    xor         ecx,ecx
 00538211    mov         edx,dword ptr [ebp-224]
 00538217    mov         eax,dword ptr [ebp-0C]
 0053821A    mov         ebx,dword ptr [eax]
 0053821C    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053821F    mov         word ptr [ebp-12],1
 00538225    xor         eax,eax
 00538227    mov         dword ptr [ebp-1C],eax
>0053822A    jmp         0053826C
 0053822C    mov         eax,dword ptr [ebp-0C]
 0053822F    call        004CE548
 00538234    mov         word ptr [ebp-12],ax
 00538238    mov         cx,1
 0053823C    mov         edx,0E
 00538241    mov         eax,dword ptr [ebp-0C]
 00538244    mov         ebx,dword ptr [eax]
 00538246    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00538249    cmp         word ptr [ebp-12],0
>0053824E    jbe         0053826C
 00538250    mov         eax,[0056E5A4];^gvar_0056DF04
 00538255    cmp         byte ptr [eax],0
>00538258    jne         0053826C
 0053825A    mov         eax,dword ptr [ebp-1C]
 0053825D    mov         dx,word ptr [ebp-12]
 00538261    mov         word ptr [ebp+eax*2-32E],dx
 00538269    inc         dword ptr [ebp-1C]
 0053826C    cmp         word ptr [ebp-12],0
>00538271    jbe         005382A7
 00538273    mov         eax,dword ptr [ebp-0C]
 00538276    mov         edx,dword ptr [eax]
 00538278    call        dword ptr [edx];TMemoryStream.sub_004235A0
 0053827A    sub         eax,18
 0053827D    sbb         edx,0
 00538280    push        edx
 00538281    push        eax
 00538282    mov         eax,dword ptr [ebp-0C]
 00538285    call        TStream.GetPosition
 0053828A    cmp         edx,dword ptr [esp+4]
>0053828E    jne         00538299
 00538290    cmp         eax,dword ptr [esp]
 00538293    pop         edx
 00538294    pop         eax
>00538295    jae         005382A7
>00538297    jmp         0053829D
 00538299    pop         edx
 0053829A    pop         eax
>0053829B    jge         005382A7
 0053829D    mov         eax,[0056E5A4];^gvar_0056DF04
 005382A2    cmp         byte ptr [eax],0
>005382A5    je          0053822C
 005382A7    xor         edx,edx
 005382A9    mov         eax,dword ptr [ebp-4]
 005382AC    call        TfmScript.miInsertClick
 005382B1    mov         eax,dword ptr [ebp-4]
 005382B4    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005382BA    xor         edx,edx
 005382BC    mov         ecx,dword ptr [eax]
 005382BE    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
 005382C4    mov         eax,dword ptr [ebp-4]
 005382C7    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005382CD    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005382D3    xor         edx,edx
 005382D5    call        0045AF80
 005382DA    mov         eax,dword ptr [eax+0C]
 005382DD    mov         dword ptr [ebp-20],eax
 005382E0    mov         eax,dword ptr [ebp-20]
 005382E3    add         eax,2
 005382E6    mov         word ptr [eax],2
 005382EB    mov         eax,dword ptr [ebp-20]
 005382EE    add         eax,8
 005382F1    mov         word ptr [eax],2
 005382F6    mov         eax,dword ptr [ebp-20]
 005382F9    add         eax,0C
 005382FC    mov         word ptr [eax],0FFFF
 00538301    mov         eax,dword ptr [ebp-20]
 00538304    add         eax,0E
 00538307    mov         word ptr [eax],0CB
 0053830C    mov         eax,dword ptr [ebp-20]
 0053830F    add         eax,48
 00538312    mov         word ptr [eax],0FFFF
 00538317    mov         eax,dword ptr [ebp-20]
 0053831A    add         eax,4A
 0053831D    mov         word ptr [eax],0FFFF
 00538322    lea         ecx,[ebp-33C]
 00538328    mov         eax,dword ptr [ebp-20]
 0053832B    movzx       eax,byte ptr [eax]
 0053832E    mov         edx,2
 00538333    call        IntToHex
 00538338    mov         eax,dword ptr [ebp-33C]
 0053833E    push        eax
 0053833F    mov         eax,dword ptr [ebp-4]
 00538342    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00538348    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0053834E    xor         edx,edx
 00538350    call        0045AF80
 00538355    pop         edx
 00538356    call        0045A750
 0053835B    mov         eax,dword ptr [ebp-4]
 0053835E    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00538364    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0053836A    xor         edx,edx
 0053836C    call        0045AF80
 00538371    mov         eax,dword ptr [eax+8]
 00538374    mov         ecx,53874C;'Xmit DASP Line Test'
 00538379    xor         edx,edx
 0053837B    mov         ebx,dword ptr [eax]
 0053837D    call        dword ptr [ebx+20]
 00538380    xor         edx,edx
 00538382    mov         eax,dword ptr [ebp-4]
 00538385    call        TfmScript.miInsertClick
 0053838A    mov         eax,dword ptr [ebp-4]
 0053838D    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00538393    xor         edx,edx
 00538395    mov         ecx,dword ptr [eax]
 00538397    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
 0053839D    mov         eax,dword ptr [ebp-4]
 005383A0    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005383A6    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005383AC    xor         edx,edx
 005383AE    call        0045AF80
 005383B3    mov         eax,dword ptr [eax+0C]
 005383B6    mov         dword ptr [ebp-20],eax
 005383B9    mov         eax,dword ptr [ebp-20]
 005383BC    add         eax,2
 005383BF    mov         word ptr [eax],2
 005383C4    mov         eax,dword ptr [ebp-20]
 005383C7    add         eax,8
 005383CA    mov         word ptr [eax],2
 005383CF    mov         eax,dword ptr [ebp-20]
 005383D2    add         eax,0C
 005383D5    mov         word ptr [eax],0FFFF
 005383DA    mov         eax,dword ptr [ebp-20]
 005383DD    add         eax,0E
 005383E0    mov         word ptr [eax],0CB
 005383E5    mov         eax,dword ptr [ebp-20]
 005383E8    add         eax,48
 005383EB    mov         word ptr [eax],0FFFF
 005383F0    mov         eax,dword ptr [ebp-20]
 005383F3    add         eax,4A
 005383F6    mov         word ptr [eax],0FFFF
 005383FB    lea         ecx,[ebp-340]
 00538401    mov         eax,dword ptr [ebp-20]
 00538404    movzx       eax,byte ptr [eax]
 00538407    mov         edx,2
 0053840C    call        IntToHex
 00538411    mov         eax,dword ptr [ebp-340]
 00538417    push        eax
 00538418    mov         eax,dword ptr [ebp-4]
 0053841B    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00538421    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00538427    xor         edx,edx
 00538429    call        0045AF80
 0053842E    pop         edx
 0053842F    call        0045A750
 00538434    mov         eax,dword ptr [ebp-4]
 00538437    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053843D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00538443    xor         edx,edx
 00538445    call        0045AF80
 0053844A    mov         eax,dword ptr [eax+8]
 0053844D    mov         ecx,53874C;'Xmit DASP Line Test'
 00538452    xor         edx,edx
 00538454    mov         ebx,dword ptr [eax]
 00538456    call        dword ptr [ebx+20]
 00538459    dec         dword ptr [ebp-1C]
>0053845C    jmp         005385E1
 00538461    xor         edx,edx
 00538463    mov         eax,dword ptr [ebp-4]
 00538466    call        TfmScript.miInsertClick
 0053846B    mov         eax,dword ptr [ebp-4]
 0053846E    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00538474    xor         edx,edx
 00538476    mov         ecx,dword ptr [eax]
 00538478    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
 0053847E    mov         eax,dword ptr [ebp-4]
 00538481    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00538487    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0053848D    xor         edx,edx
 0053848F    call        0045AF80
 00538494    mov         eax,dword ptr [eax+0C]
 00538497    mov         dword ptr [ebp-20],eax
 0053849A    mov         eax,dword ptr [ebp-20]
 0053849D    xor         ecx,ecx
 0053849F    mov         edx,38
 005384A4    call        @FillChar
 005384A9    mov         eax,dword ptr [ebp-1C]
 005384AC    mov         ax,word ptr [ebp+eax*2-32E]
 005384B4    mov         edx,dword ptr [ebp-20]
 005384B7    mov         word ptr [edx],ax
 005384BA    mov         eax,dword ptr [ebp-20]
 005384BD    add         eax,2
 005384C0    mov         word ptr [eax],1
 005384C5    mov         eax,dword ptr [ebp-20]
 005384C8    add         eax,4A
 005384CB    mov         word ptr [eax],0FFFF
 005384D0    lea         eax,[ebp-344]
 005384D6    push        eax
 005384D7    mov         eax,dword ptr [ebp-20]
 005384DA    movzx       eax,word ptr [eax]
 005384DD    mov         dword ptr [ebp-34C],eax
 005384E3    mov         byte ptr [ebp-348],0
 005384EA    lea         edx,[ebp-34C]
 005384F0    xor         ecx,ecx
 005384F2    mov         eax,538768;'%x'
 005384F7    call        0040D630
 005384FC    mov         eax,dword ptr [ebp-344]
 00538502    push        eax
 00538503    mov         eax,dword ptr [ebp-4]
 00538506    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053850C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00538512    xor         edx,edx
 00538514    call        0045AF80
 00538519    pop         edx
 0053851A    call        0045A750
 0053851F    cmp         word ptr [ebp-12],0FF
>00538525    jbe         00538572
 00538527    push        0
 00538529    lea         eax,[ebp-18]
 0053852C    push        eax
 0053852D    lea         ecx,[ebp-354]
 00538533    mov         eax,dword ptr [ebp-1C]
 00538536    movzx       eax,word ptr [ebp+eax*2-32E]
 0053853E    mov         edx,4
 00538543    call        IntToHex
 00538548    mov         ecx,dword ptr [ebp-354]
 0053854E    lea         eax,[ebp-350]
 00538554    mov         edx,538774;'ID'
 00538559    call        @LStrCat3
 0053855E    mov         ecx,dword ptr [ebp-350]
 00538564    mov         edx,538780;'BLOCKS'
 00538569    mov         eax,dword ptr [ebp-24]
 0053856C    mov         ebx,dword ptr [eax]
 0053856E    call        dword ptr [ebx];TIniFile.sub_0044A254
>00538570    jmp         005385BB
 00538572    push        0
 00538574    lea         eax,[ebp-18]
 00538577    push        eax
 00538578    lea         ecx,[ebp-35C]
 0053857E    mov         eax,dword ptr [ebp-1C]
 00538581    movzx       eax,word ptr [ebp+eax*2-32E]
 00538589    mov         edx,2
 0053858E    call        IntToHex
 00538593    mov         ecx,dword ptr [ebp-35C]
 00538599    lea         eax,[ebp-358]
 0053859F    mov         edx,538774;'ID'
 005385A4    call        @LStrCat3
 005385A9    mov         ecx,dword ptr [ebp-358]
 005385AF    mov         edx,538780;'BLOCKS'
 005385B4    mov         eax,dword ptr [ebp-24]
 005385B7    mov         ebx,dword ptr [eax]
 005385B9    call        dword ptr [ebx];TIniFile.sub_0044A254
 005385BB    mov         eax,dword ptr [ebp-4]
 005385BE    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 005385C4    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005385CA    xor         edx,edx
 005385CC    call        0045AF80
 005385D1    mov         eax,dword ptr [eax+8]
 005385D4    mov         ecx,dword ptr [ebp-18]
 005385D7    xor         edx,edx
 005385D9    mov         ebx,dword ptr [eax]
 005385DB    call        dword ptr [ebx+20]
 005385DE    dec         dword ptr [ebp-1C]
 005385E1    cmp         dword ptr [ebp-1C],0
>005385E5    jl          005385F5
 005385E7    mov         eax,[0056E5A4];^gvar_0056DF04
 005385EC    cmp         byte ptr [eax],0
>005385EF    je          00538461
 005385F5    xor         edx,edx
 005385F7    mov         eax,dword ptr [ebp-4]
 005385FA    call        TfmScript.miInsertClick
 005385FF    mov         eax,dword ptr [ebp-4]
 00538602    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00538608    xor         edx,edx
 0053860A    mov         ecx,dword ptr [eax]
 0053860C    call        dword ptr [ecx+0D0];TListView.sub_0045CE88
 00538612    mov         eax,dword ptr [ebp-4]
 00538615    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053861B    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00538621    xor         edx,edx
 00538623    call        0045AF80
 00538628    mov         eax,dword ptr [eax+0C]
 0053862B    mov         dword ptr [ebp-20],eax
 0053862E    mov         eax,dword ptr [ebp-20]
 00538631    add         eax,2
 00538634    mov         word ptr [eax],1
 00538639    mov         eax,dword ptr [ebp-20]
 0053863C    add         eax,8
 0053863F    mov         word ptr [eax],1
 00538644    mov         eax,dword ptr [ebp-20]
 00538647    add         eax,0C
 0053864A    mov         word ptr [eax],0A
 0053864F    mov         eax,dword ptr [ebp-20]
 00538652    add         eax,4A
 00538655    mov         word ptr [eax],0FFFF
 0053865A    lea         ecx,[ebp-360]
 00538660    mov         eax,dword ptr [ebp-20]
 00538663    movzx       eax,byte ptr [eax]
 00538666    mov         edx,2
 0053866B    call        IntToHex
 00538670    mov         eax,dword ptr [ebp-360]
 00538676    push        eax
 00538677    mov         eax,dword ptr [ebp-4]
 0053867A    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 00538680    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00538686    xor         edx,edx
 00538688    call        0045AF80
 0053868D    pop         edx
 0053868E    call        0045A750
 00538693    mov         eax,dword ptr [ebp-4]
 00538696    mov         eax,dword ptr [eax+304];TfmScript.lvScript:TListView
 0053869C    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005386A2    xor         edx,edx
 005386A4    call        0045AF80
 005386A9    mov         eax,dword ptr [eax+8]
 005386AC    mov         ecx,53874C;'Xmit DASP Line Test'
 005386B1    xor         edx,edx
 005386B3    mov         ebx,dword ptr [eax]
 005386B5    call        dword ptr [ebx+20]
 005386B8    xor         eax,eax
 005386BA    pop         edx
 005386BB    pop         ecx
 005386BC    pop         ecx
 005386BD    mov         dword ptr fs:[eax],edx
 005386C0    push        5386D5
 005386C5    mov         eax,dword ptr [ebp-0C]
 005386C8    call        TObject.Free
 005386CD    ret
>005386CE    jmp         @HandleFinally
>005386D3    jmp         005386C5
 005386D5    xor         eax,eax
 005386D7    pop         edx
 005386D8    pop         ecx
 005386D9    pop         ecx
 005386DA    mov         dword ptr fs:[eax],edx
 005386DD    push        5386F2
 005386E2    mov         eax,dword ptr [ebp-24]
 005386E5    call        TObject.Free
 005386EA    ret
>005386EB    jmp         @HandleFinally
>005386F0    jmp         005386E2
 005386F2    xor         eax,eax
 005386F4    pop         edx
 005386F5    pop         ecx
 005386F6    pop         ecx
 005386F7    mov         dword ptr fs:[eax],edx
 005386FA    push        53872F
 005386FF    lea         eax,[ebp-360]
 00538705    mov         edx,5
 0053870A    call        @LStrArrayClr
 0053870F    lea         eax,[ebp-344]
 00538715    mov         edx,5
 0053871A    call        @LStrArrayClr
 0053871F    lea         eax,[ebp-18]
 00538722    call        @LStrClr
 00538727    ret
>00538728    jmp         @HandleFinally
>0053872D    jmp         005386FF
 0053872F    pop         ebx
 00538730    mov         esp,ebp
 00538732    pop         ebp
 00538733    ret
*}
end;

end.