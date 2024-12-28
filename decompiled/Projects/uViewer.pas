//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uViewer;

interface

uses
  SysUtils, Classes, MPHexEditorEx, Dialogs, Menus, Controls, ComCtrls, ActnList;

type
  TfmViewer = class(TForm)
  published
    MPHexEditorEx1:TMPHexEditorEx;//f2F8
    SaveDialog1:TSaveDialog;//f2FC
    PopupMenu2:TPopupMenu;//f300
    miStartSelect:TMenuItem;//f304
    miEndSelect:TMenuItem;//f308
    miRecalcCRC8:TMenuItem;//f30C
    miRecalcCRC16:TMenuItem;//f310
    ImageList1:TImageList;//f314
    ToolBar1:TToolBar;//f318
    ToolButton5:TToolButton;//f31C
    ToolButton6:TToolButton;//f320
    ToolButton7:TToolButton;//f324
    ToolButton9:TToolButton;//f328
    ToolButton12:TToolButton;//f32C
    ActionList1:TActionList;//f330
    acFileOpen:TAction;//f334
    acFileNew:TAction;//f338
    acFileSave:TAction;//f33C
    acFileSaveAs:TAction;//f340
    acFileExit:TAction;//f344
    acEditUndo:TAction;//f348
    acEditRedo:TAction;//f34C
    acEditCut:TAction;//f350
    acEditCopy:TAction;//f354
    acEditPaste:TAction;//f358
    acEditInsertNibble:TAction;//f35C
    acEditDeleteNibble:TAction;//f360
    acEditSelectAll:TAction;//f364
    acEditFind:TAction;//f368
    acEditFindNext:TAction;//f36C
    acEditConvert:TAction;//f370
    acViewTranslationEditCustom:TAction;//f374
    acEditReplace:TAction;//f378
    acFilePrint:TAction;//f37C
    acFilePrintSetup:TAction;//f380
    acViewOffsetEditFormat:TAction;//f384
    acViewOffsetHex:TAction;//f388
    acViewOffsetDec:TAction;//f38C
    acViewOffsetOct:TAction;//f390
    acViewBytesPerRow:TAction;//f394
    acViewBytesPerColumn:TAction;//f398
    acViewBytesPerUnit:TAction;//f39C
    acEditGoto:TAction;//f3A0
    acViewBytesPerBlock:TAction;//f3A4
    acViewReadOnlyView:TAction;//f3A8
    acViewOptions:TAction;//f3AC
    acViewUnicode:TAction;//f3B0
    acViewUnicodeBE:TAction;//f3B4
    Redo1:TMenuItem;//f3B8
    Undo1:TMenuItem;//f3BC
    SelectAll1:TMenuItem;//f3C0
    ToolButton1:TToolButton;//f3C4
    ToolButton2:TToolButton;//f3C8
    ToolButton3:TToolButton;//f3CC
    ToolButton4:TToolButton;//f3D0
    ToolButton8:TToolButton;//f3D4
    N1:TMenuItem;//f3D8
    miRecalcCRC32:TMenuItem;//f3DC
    //procedure acEditCopyExecute(?:?);//004F4C50
    //procedure acEditRedoExecute(?:?);//004F4C30
    //procedure acEditUndoExecute(?:?);//004F4C10
    //procedure acEditPasteExecute(?:?);//004F4C70
    procedure miRecalcCRC32Click(Sender:TObject);//004F4D50
    //procedure acEditDeleteNibbleExecute(?:?);//004F4CF0
    //procedure acEditInsertNibbleExecute(?:?);//004F4C90
    //procedure acEditSelectAllExecute(?:?);//004F4BF0
    procedure miRecalcCRC8Click(Sender:TObject);//004F48E8
    procedure FormCloseQuery(Sender:TObject; var CanClose:Boolean);//004F46F8
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//004F46D8
    procedure miRecalcCRC16Click(Sender:TObject);//004F49D4
    procedure FormShow(Sender:TObject);//004F4BC8
    procedure miEndSelectClick(Sender:TObject);//004F4B34
    procedure miStartSelectClick(Sender:TObject);//004F4AF0
  public
    f3E0:dword;//f3E0
    f3E4:dword;//f3E4
    f3E8:String;//f3E8
  end;
    procedure sub_004F4640(?:TfmViewer; ?:AnsiString);//004F4640

implementation

{$R *.DFM}

//004F4640
procedure sub_004F4640(?:TfmViewer; ?:AnsiString);
begin
{*
 004F4640    push        ebp
 004F4641    mov         ebp,esp
 004F4643    add         esp,0FFFFFFF8
 004F4646    mov         dword ptr [ebp-8],edx
 004F4649    mov         dword ptr [ebp-4],eax
 004F464C    mov         eax,dword ptr [ebp-8]
 004F464F    call        @LStrAddRef
 004F4654    xor         eax,eax
 004F4656    push        ebp
 004F4657    push        4F46CD
 004F465C    push        dword ptr fs:[eax]
 004F465F    mov         dword ptr fs:[eax],esp
 004F4662    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 004F4668    mov         ecx,dword ptr [ecx]
 004F466A    mov         dl,1
 004F466C    mov         eax,[004F3EB8];TfmViewer
 004F4671    call        TfmProgress.Create;TfmViewer.Create
 004F4676    mov         [0056D20C],eax;gvar_0056D20C:TfmViewer
 004F467B    mov         eax,[0056D20C];0x0 gvar_0056D20C:TfmViewer
 004F4680    add         eax,3E8;TfmViewer.?f3E8:String
 004F4685    mov         edx,dword ptr [ebp-8]
 004F4688    call        @LStrAsg
 004F468D    mov         eax,[0056D20C];0x0 gvar_0056D20C:TfmViewer
 004F4692    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4698    mov         edx,dword ptr [ebp-8]
 004F469B    call        004E095C
 004F46A0    mov         edx,dword ptr [ebp-8]
 004F46A3    mov         eax,[0056D20C];0x0 gvar_0056D20C:TfmViewer
 004F46A8    call        TPanel.SetCaption
 004F46AD    mov         eax,[0056D20C];0x0 gvar_0056D20C:TfmViewer
 004F46B2    call        004A7450
 004F46B7    xor         eax,eax
 004F46B9    pop         edx
 004F46BA    pop         ecx
 004F46BB    pop         ecx
 004F46BC    mov         dword ptr fs:[eax],edx
 004F46BF    push        4F46D4
 004F46C4    lea         eax,[ebp-8]
 004F46C7    call        @LStrClr
 004F46CC    ret
>004F46CD    jmp         @HandleFinally
>004F46D2    jmp         004F46C4
 004F46D4    pop         ecx
 004F46D5    pop         ecx
 004F46D6    pop         ebp
 004F46D7    ret
*}
end;

//004F46D8
procedure TfmViewer.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 004F46D8    push        ebp
 004F46D9    mov         ebp,esp
 004F46DB    add         esp,0FFFFFFF4
 004F46DE    mov         dword ptr [ebp-8],ecx
 004F46E1    mov         dword ptr [ebp-0C],edx
 004F46E4    mov         dword ptr [ebp-4],eax
 004F46E7    mov         eax,dword ptr [ebp-8]
 004F46EA    mov         byte ptr [eax],2
 004F46ED    xor         eax,eax
 004F46EF    mov         [0056D20C],eax;gvar_0056D20C:TfmViewer
 004F46F4    mov         esp,ebp
 004F46F6    pop         ebp
 004F46F7    ret
*}
end;

//004F46F8
procedure TfmViewer.FormCloseQuery(Sender:TObject; var CanClose:Boolean);
begin
{*
 004F46F8    push        ebp
 004F46F9    mov         ebp,esp
 004F46FB    push        ecx
 004F46FC    mov         ecx,5
 004F4701    push        0
 004F4703    push        0
 004F4705    dec         ecx
>004F4706    jne         004F4701
 004F4708    xchg        ecx,dword ptr [ebp-4]
 004F470B    push        ebx
 004F470C    push        esi
 004F470D    push        edi
 004F470E    mov         dword ptr [ebp-14],ecx
 004F4711    mov         dword ptr [ebp-10],edx
 004F4714    mov         dword ptr [ebp-4],eax
 004F4717    xor         eax,eax
 004F4719    push        ebp
 004F471A    push        4F48AB
 004F471F    push        dword ptr fs:[eax]
 004F4722    mov         dword ptr fs:[eax],esp
 004F4725    mov         eax,dword ptr [ebp-4]
 004F4728    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F472E    call        004E60CC
 004F4733    test        al,al
>004F4735    je          004F4878
 004F473B    push        0
 004F473D    mov         cx,word ptr ds:[4F48BC];0x3 gvar_004F48BC
 004F4744    mov         dl,3
 004F4746    mov         eax,4F48C8;'Save to file ?'
 004F474B    call        0043F788
 004F4750    cmp         eax,6
>004F4753    jne         004F4878
 004F4759    xor         eax,eax
 004F475B    push        ebp
 004F475C    push        4F4850
 004F4761    push        dword ptr fs:[eax]
 004F4764    mov         dword ptr fs:[eax],esp
 004F4767    push        10
 004F4769    call        user32.GetKeyState
 004F476E    test        ax,ax
>004F4771    jge         004F482D
 004F4777    mov         eax,dword ptr [ebp-4]
 004F477A    mov         eax,dword ptr [eax+2FC];TfmViewer.SaveDialog1:TSaveDialog
 004F4780    mov         dword ptr [ebp-8],eax
 004F4783    mov         eax,dword ptr [ebp-8]
 004F4786    add         eax,78;TSaveDialog.FileName:TFileName
 004F4789    mov         edx,dword ptr [ebp-4]
 004F478C    mov         edx,dword ptr [edx+3E8];TfmViewer.?f3E8:String
 004F4792    call        @LStrAsg
 004F4797    lea         edx,[ebp-18]
 004F479A    mov         eax,dword ptr [ebp-4]
 004F479D    mov         eax,dword ptr [eax+3E8];TfmViewer.?f3E8:String
 004F47A3    call        0040CC5C
 004F47A8    mov         edx,dword ptr [ebp-18]
 004F47AB    mov         eax,dword ptr [ebp-8]
 004F47AE    call        TOpenDialog.SetInitialDir
 004F47B3    mov         eax,dword ptr [ebp-8]
 004F47B6    mov         edx,dword ptr [eax]
 004F47B8    call        dword ptr [edx+3C];TSaveDialog.Execute
 004F47BB    test        al,al
>004F47BD    je          004F4846
 004F47C3    lea         edx,[ebp-1C]
 004F47C6    mov         eax,dword ptr [ebp-8]
 004F47C9    call        TOpenDialog.GetFileName
 004F47CE    mov         eax,dword ptr [ebp-1C]
 004F47D1    call        0040C94C
 004F47D6    test        al,al
>004F47D8    je          004F480D
 004F47DA    lea         edx,[ebp-24]
 004F47DD    mov         eax,dword ptr [ebp-8]
 004F47E0    call        TOpenDialog.GetFileName
 004F47E5    mov         eax,dword ptr [ebp-24]
 004F47E8    lea         ecx,[ebp-20]
 004F47EB    mov         edx,4F48E0;'.bak'
 004F47F0    call        0040CBBC
 004F47F5    mov         eax,dword ptr [ebp-20]
 004F47F8    push        eax
 004F47F9    lea         edx,[ebp-28]
 004F47FC    mov         eax,dword ptr [ebp-8]
 004F47FF    call        TOpenDialog.GetFileName
 004F4804    mov         eax,dword ptr [ebp-28]
 004F4807    pop         edx
 004F4808    call        0040CACC
 004F480D    lea         edx,[ebp-2C]
 004F4810    mov         eax,dword ptr [ebp-8]
 004F4813    call        TOpenDialog.GetFileName
 004F4818    mov         edx,dword ptr [ebp-2C]
 004F481B    mov         eax,dword ptr [ebp-4]
 004F481E    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4824    mov         cl,1
 004F4826    call        004E06D0
>004F482B    jmp         004F4846
 004F482D    mov         eax,dword ptr [ebp-4]
 004F4830    mov         edx,dword ptr [eax+3E8];TfmViewer.?f3E8:String
 004F4836    mov         eax,dword ptr [ebp-4]
 004F4839    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F483F    mov         cl,1
 004F4841    call        004E06D0
 004F4846    xor         eax,eax
 004F4848    pop         edx
 004F4849    pop         ecx
 004F484A    pop         ecx
 004F484B    mov         dword ptr fs:[eax],edx
>004F484E    jmp         004F4878
>004F4850    jmp         @HandleOnException
 004F4855    dd          1
 004F4859    dd          0040B004;Exception
 004F485D    dd          004F4861
 004F4861    mov         dword ptr [ebp-0C],eax
 004F4864    mov         eax,[0056E3C0];^Application:TApplication
 004F4869    mov         eax,dword ptr [eax]
 004F486B    mov         edx,dword ptr [ebp-0C]
 004F486E    call        004ABA5C
 004F4873    call        @DoneExcept
 004F4878    xor         eax,eax
 004F487A    pop         edx
 004F487B    pop         ecx
 004F487C    pop         ecx
 004F487D    mov         dword ptr fs:[eax],edx
 004F4880    push        4F48B2
 004F4885    lea         eax,[ebp-2C]
 004F4888    mov         edx,3
 004F488D    call        @LStrArrayClr
 004F4892    lea         eax,[ebp-20]
 004F4895    call        @LStrClr
 004F489A    lea         eax,[ebp-1C]
 004F489D    call        @LStrClr
 004F48A2    lea         eax,[ebp-18]
 004F48A5    call        @LStrClr
 004F48AA    ret
>004F48AB    jmp         @HandleFinally
>004F48B0    jmp         004F4885
 004F48B2    pop         edi
 004F48B3    pop         esi
 004F48B4    pop         ebx
 004F48B5    mov         esp,ebp
 004F48B7    pop         ebp
 004F48B8    ret
*}
end;

//004F48E8
procedure TfmViewer.miRecalcCRC8Click(Sender:TObject);
begin
{*
 004F48E8    push        ebp
 004F48E9    mov         ebp,esp
 004F48EB    add         esp,0FFFFFFE0
 004F48EE    xor         ecx,ecx
 004F48F0    mov         dword ptr [ebp-1C],ecx
 004F48F3    mov         dword ptr [ebp-20],ecx
 004F48F6    mov         dword ptr [ebp-18],edx
 004F48F9    mov         dword ptr [ebp-4],eax
 004F48FC    xor         eax,eax
 004F48FE    push        ebp
 004F48FF    push        4F49B4
 004F4904    push        dword ptr fs:[eax]
 004F4907    mov         dword ptr fs:[eax],esp
 004F490A    mov         eax,dword ptr [ebp-4]
 004F490D    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4913    mov         dword ptr [ebp-14],eax
 004F4916    mov         eax,dword ptr [ebp-14]
 004F4919    call        004E3E34
 004F491E    push        eax
 004F491F    mov         eax,dword ptr [ebp-14]
 004F4922    call        004E3DEC
 004F4927    pop         edx
 004F4928    call        004DF5E8
 004F492D    mov         dword ptr [ebp-0C],eax
 004F4930    mov         eax,dword ptr [ebp-14]
 004F4933    call        004E3E34
 004F4938    push        eax
 004F4939    mov         eax,dword ptr [ebp-14]
 004F493C    call        004E3DEC
 004F4941    pop         edx
 004F4942    call        004DF5BC
 004F4947    mov         dword ptr [ebp-10],eax
 004F494A    mov         byte ptr [ebp-5],81
 004F494E    mov         eax,dword ptr [ebp-10]
 004F4951    cmp         eax,dword ptr [ebp-0C]
>004F4954    ja          004F496F
 004F4956    mov         edx,dword ptr [ebp-10]
 004F4959    mov         eax,dword ptr [ebp-14]
 004F495C    call        004E8F14
 004F4961    xor         byte ptr [ebp-5],al
 004F4964    inc         dword ptr [ebp-10]
 004F4967    mov         eax,dword ptr [ebp-10]
 004F496A    cmp         eax,dword ptr [ebp-0C]
>004F496D    jbe         004F4956
 004F496F    lea         ecx,[ebp-20]
 004F4972    xor         eax,eax
 004F4974    mov         al,byte ptr [ebp-5]
 004F4977    mov         edx,2
 004F497C    call        IntToHex
 004F4981    mov         ecx,dword ptr [ebp-20]
 004F4984    lea         eax,[ebp-1C]
 004F4987    mov         edx,4F49C8;'CRC8 is: $'
 004F498C    call        @LStrCat3
 004F4991    mov         eax,dword ptr [ebp-1C]
 004F4994    call        0043F8B4
 004F4999    xor         eax,eax
 004F499B    pop         edx
 004F499C    pop         ecx
 004F499D    pop         ecx
 004F499E    mov         dword ptr fs:[eax],edx
 004F49A1    push        4F49BB
 004F49A6    lea         eax,[ebp-20]
 004F49A9    mov         edx,2
 004F49AE    call        @LStrArrayClr
 004F49B3    ret
>004F49B4    jmp         @HandleFinally
>004F49B9    jmp         004F49A6
 004F49BB    mov         esp,ebp
 004F49BD    pop         ebp
 004F49BE    ret
*}
end;

//004F49D4
procedure TfmViewer.miRecalcCRC16Click(Sender:TObject);
begin
{*
 004F49D4    push        ebp
 004F49D5    mov         ebp,esp
 004F49D7    add         esp,0FFFFFFE0
 004F49DA    xor         ecx,ecx
 004F49DC    mov         dword ptr [ebp-1C],ecx
 004F49DF    mov         dword ptr [ebp-20],ecx
 004F49E2    mov         dword ptr [ebp-18],edx
 004F49E5    mov         dword ptr [ebp-4],eax
 004F49E8    xor         eax,eax
 004F49EA    push        ebp
 004F49EB    push        4F4ACF
 004F49F0    push        dword ptr fs:[eax]
 004F49F3    mov         dword ptr fs:[eax],esp
 004F49F6    mov         eax,dword ptr [ebp-4]
 004F49F9    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F49FF    mov         dword ptr [ebp-14],eax
 004F4A02    mov         eax,dword ptr [ebp-14]
 004F4A05    call        004E3E34
 004F4A0A    push        eax
 004F4A0B    mov         eax,dword ptr [ebp-14]
 004F4A0E    call        004E3DEC
 004F4A13    pop         edx
 004F4A14    call        004DF5E8
 004F4A19    mov         dword ptr [ebp-0C],eax
 004F4A1C    mov         eax,dword ptr [ebp-14]
 004F4A1F    call        004E3E34
 004F4A24    push        eax
 004F4A25    mov         eax,dword ptr [ebp-14]
 004F4A28    call        004E3DEC
 004F4A2D    pop         edx
 004F4A2E    call        004DF5BC
 004F4A33    mov         dword ptr [ebp-10],eax
 004F4A36    mov         word ptr [ebp-6],0
 004F4A3C    mov         eax,dword ptr [ebp-10]
 004F4A3F    cmp         eax,dword ptr [ebp-0C]
>004F4A42    ja          004F4A8B
 004F4A44    mov         edx,dword ptr [ebp-10]
 004F4A47    inc         edx
 004F4A48    mov         eax,dword ptr [ebp-14]
 004F4A4B    call        004E8F14
 004F4A50    and         eax,0FF
 004F4A55    mov         word ptr [ebp-8],ax
 004F4A59    mov         edx,dword ptr [ebp-10]
 004F4A5C    mov         eax,dword ptr [ebp-14]
 004F4A5F    call        004E8F14
 004F4A64    and         eax,0FF
 004F4A69    mov         dx,word ptr [ebp-8]
 004F4A6D    shl         edx,8
 004F4A70    or          ax,dx
 004F4A73    mov         word ptr [ebp-8],ax
 004F4A77    mov         ax,word ptr [ebp-8]
 004F4A7B    xor         word ptr [ebp-6],ax
 004F4A7F    add         dword ptr [ebp-10],2
 004F4A83    mov         eax,dword ptr [ebp-10]
 004F4A86    cmp         eax,dword ptr [ebp-0C]
>004F4A89    jbe         004F4A44
 004F4A8B    lea         ecx,[ebp-20]
 004F4A8E    movzx       eax,word ptr [ebp-6]
 004F4A92    mov         edx,4
 004F4A97    call        IntToHex
 004F4A9C    mov         ecx,dword ptr [ebp-20]
 004F4A9F    lea         eax,[ebp-1C]
 004F4AA2    mov         edx,4F4AE4;'CRC16 is: $'
 004F4AA7    call        @LStrCat3
 004F4AAC    mov         eax,dword ptr [ebp-1C]
 004F4AAF    call        0043F8B4
 004F4AB4    xor         eax,eax
 004F4AB6    pop         edx
 004F4AB7    pop         ecx
 004F4AB8    pop         ecx
 004F4AB9    mov         dword ptr fs:[eax],edx
 004F4ABC    push        4F4AD6
 004F4AC1    lea         eax,[ebp-20]
 004F4AC4    mov         edx,2
 004F4AC9    call        @LStrArrayClr
 004F4ACE    ret
>004F4ACF    jmp         @HandleFinally
>004F4AD4    jmp         004F4AC1
 004F4AD6    mov         esp,ebp
 004F4AD8    pop         ebp
 004F4AD9    ret
*}
end;

//004F4AF0
procedure TfmViewer.miStartSelectClick(Sender:TObject);
begin
{*
 004F4AF0    push        ebp
 004F4AF1    mov         ebp,esp
 004F4AF3    add         esp,0FFFFFFF4
 004F4AF6    mov         dword ptr [ebp-0C],edx
 004F4AF9    mov         dword ptr [ebp-4],eax
 004F4AFC    mov         eax,dword ptr [ebp-4]
 004F4AFF    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4B05    mov         dword ptr [ebp-8],eax
 004F4B08    mov         dl,1
 004F4B0A    mov         eax,dword ptr [ebp-8]
 004F4B0D    call        004E31CC
 004F4B12    mov         eax,dword ptr [ebp-8]
 004F4B15    call        004E4A74
 004F4B1A    mov         edx,dword ptr [ebp-4]
 004F4B1D    mov         dword ptr [edx+3E0],eax;TfmViewer.?f3E0:dword
 004F4B23    mov         edx,1
 004F4B28    mov         eax,dword ptr [ebp-8]
 004F4B2B    call        004E4014
 004F4B30    mov         esp,ebp
 004F4B32    pop         ebp
 004F4B33    ret
*}
end;

//004F4B34
procedure TfmViewer.miEndSelectClick(Sender:TObject);
begin
{*
 004F4B34    push        ebp
 004F4B35    mov         ebp,esp
 004F4B37    add         esp,0FFFFFFF4
 004F4B3A    mov         dword ptr [ebp-0C],edx
 004F4B3D    mov         dword ptr [ebp-4],eax
 004F4B40    mov         eax,dword ptr [ebp-4]
 004F4B43    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4B49    mov         dword ptr [ebp-8],eax
 004F4B4C    mov         eax,dword ptr [ebp-8]
 004F4B4F    call        004E4A74
 004F4B54    mov         edx,dword ptr [ebp-4]
 004F4B57    mov         dword ptr [edx+3E4],eax;TfmViewer.?f3E4:dword
 004F4B5D    mov         dl,1
 004F4B5F    mov         eax,dword ptr [ebp-8]
 004F4B62    call        004E31CC
 004F4B67    mov         eax,dword ptr [ebp-4]
 004F4B6A    mov         edx,dword ptr [eax+3E4];TfmViewer.?f3E4:dword
 004F4B70    mov         eax,dword ptr [ebp-4]
 004F4B73    mov         eax,dword ptr [eax+3E0];TfmViewer.?f3E0:dword
 004F4B79    call        004DF5BC
 004F4B7E    mov         edx,eax
 004F4B80    mov         eax,dword ptr [ebp-8]
 004F4B83    call        004E3E9C
 004F4B88    mov         eax,dword ptr [ebp-4]
 004F4B8B    mov         edx,dword ptr [eax+3E4];TfmViewer.?f3E4:dword
 004F4B91    mov         eax,dword ptr [ebp-4]
 004F4B94    mov         eax,dword ptr [eax+3E0];TfmViewer.?f3E0:dword
 004F4B9A    call        004DF5E8
 004F4B9F    push        eax
 004F4BA0    mov         eax,dword ptr [ebp-4]
 004F4BA3    mov         edx,dword ptr [eax+3E4];TfmViewer.?f3E4:dword
 004F4BA9    mov         eax,dword ptr [ebp-4]
 004F4BAC    mov         eax,dword ptr [eax+3E0];TfmViewer.?f3E0:dword
 004F4BB2    call        004DF5BC
 004F4BB7    pop         edx
 004F4BB8    sub         edx,eax
 004F4BBA    inc         edx
 004F4BBB    mov         eax,dword ptr [ebp-8]
 004F4BBE    call        004E4014
 004F4BC3    mov         esp,ebp
 004F4BC5    pop         ebp
 004F4BC6    ret
*}
end;

//004F4BC8
procedure TfmViewer.FormShow(Sender:TObject);
begin
{*
 004F4BC8    push        ebp
 004F4BC9    mov         ebp,esp
 004F4BCB    add         esp,0FFFFFFF8
 004F4BCE    mov         dword ptr [ebp-8],edx
 004F4BD1    mov         dword ptr [ebp-4],eax
 004F4BD4    mov         eax,dword ptr [ebp-4]
 004F4BD7    xor         edx,edx
 004F4BD9    mov         dword ptr [eax+3E0],edx;TfmViewer.?f3E0:dword
 004F4BDF    mov         eax,dword ptr [ebp-4]
 004F4BE2    xor         edx,edx
 004F4BE4    mov         dword ptr [eax+3E4],edx;TfmViewer.?f3E4:dword
 004F4BEA    pop         ecx
 004F4BEB    pop         ecx
 004F4BEC    pop         ebp
 004F4BED    ret
*}
end;

//004F4BF0
{*procedure TfmViewer.acEditSelectAllExecute(?:?);
begin
 004F4BF0    push        ebp
 004F4BF1    mov         ebp,esp
 004F4BF3    add         esp,0FFFFFFF8
 004F4BF6    mov         dword ptr [ebp-8],edx
 004F4BF9    mov         dword ptr [ebp-4],eax
 004F4BFC    mov         eax,dword ptr [ebp-4]
 004F4BFF    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4C05    call        004E853C
 004F4C0A    pop         ecx
 004F4C0B    pop         ecx
 004F4C0C    pop         ebp
 004F4C0D    ret
end;*}

//004F4C10
{*procedure TfmViewer.acEditUndoExecute(?:?);
begin
 004F4C10    push        ebp
 004F4C11    mov         ebp,esp
 004F4C13    add         esp,0FFFFFFF8
 004F4C16    mov         dword ptr [ebp-8],edx
 004F4C19    mov         dword ptr [ebp-4],eax
 004F4C1C    mov         eax,dword ptr [ebp-4]
 004F4C1F    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4C25    call        004E837C
 004F4C2A    pop         ecx
 004F4C2B    pop         ecx
 004F4C2C    pop         ebp
 004F4C2D    ret
end;*}

//004F4C30
{*procedure TfmViewer.acEditRedoExecute(?:?);
begin
 004F4C30    push        ebp
 004F4C31    mov         ebp,esp
 004F4C33    add         esp,0FFFFFFF8
 004F4C36    mov         dword ptr [ebp-8],edx
 004F4C39    mov         dword ptr [ebp-4],eax
 004F4C3C    mov         eax,dword ptr [ebp-4]
 004F4C3F    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4C45    call        004E83A0
 004F4C4A    pop         ecx
 004F4C4B    pop         ecx
 004F4C4C    pop         ebp
 004F4C4D    ret
end;*}

//004F4C50
{*procedure TfmViewer.acEditCopyExecute(?:?);
begin
 004F4C50    push        ebp
 004F4C51    mov         ebp,esp
 004F4C53    add         esp,0FFFFFFF8
 004F4C56    mov         dword ptr [ebp-8],edx
 004F4C59    mov         dword ptr [ebp-4],eax
 004F4C5C    mov         eax,dword ptr [ebp-4]
 004F4C5F    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4C65    call        004F00DC
 004F4C6A    pop         ecx
 004F4C6B    pop         ecx
 004F4C6C    pop         ebp
 004F4C6D    ret
end;*}

//004F4C70
{*procedure TfmViewer.acEditPasteExecute(?:?);
begin
 004F4C70    push        ebp
 004F4C71    mov         ebp,esp
 004F4C73    add         esp,0FFFFFFF8
 004F4C76    mov         dword ptr [ebp-8],edx
 004F4C79    mov         dword ptr [ebp-4],eax
 004F4C7C    mov         eax,dword ptr [ebp-4]
 004F4C7F    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4C85    call        004F02C8
 004F4C8A    pop         ecx
 004F4C8B    pop         ecx
 004F4C8C    pop         ebp
 004F4C8D    ret
end;*}

//004F4C90
{*procedure TfmViewer.acEditInsertNibbleExecute(?:?);
begin
 004F4C90    push        ebp
 004F4C91    mov         ebp,esp
 004F4C93    add         esp,0FFFFFFF4
 004F4C96    mov         dword ptr [ebp-0C],edx
 004F4C99    mov         dword ptr [ebp-4],eax
 004F4C9C    mov         eax,dword ptr [ebp-4]
 004F4C9F    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4CA5    mov         dword ptr [ebp-8],eax
 004F4CA8    push        0
 004F4CAA    mov         eax,dword ptr [ebp-8]
 004F4CAD    call        004E409C
 004F4CB2    test        al,al
>004F4CB4    jne         004F4CD3
 004F4CB6    mov         eax,dword ptr [ebp-8]
 004F4CB9    mov         eax,dword ptr [eax+228];TMPHexEditorEx.FCurrent:TGridCoord
 004F4CBF    and         eax,80000001
>004F4CC4    jns         004F4CCB
 004F4CC6    dec         eax
 004F4CC7    or          eax,0FFFFFFFE
 004F4CCA    inc         eax
 004F4CCB    test        eax,eax
>004F4CCD    je          004F4CD3
 004F4CCF    xor         eax,eax
>004F4CD1    jmp         004F4CD5
 004F4CD3    mov         al,1
 004F4CD5    push        eax
 004F4CD6    mov         eax,dword ptr [ebp-8]
 004F4CD9    call        004E4A74
 004F4CDE    mov         edx,eax
 004F4CE0    mov         eax,dword ptr [ebp-8]
 004F4CE3    pop         ecx
 004F4CE4    call        004E37DC
 004F4CE9    mov         esp,ebp
 004F4CEB    pop         ebp
 004F4CEC    ret
end;*}

//004F4CF0
{*procedure TfmViewer.acEditDeleteNibbleExecute(?:?);
begin
 004F4CF0    push        ebp
 004F4CF1    mov         ebp,esp
 004F4CF3    add         esp,0FFFFFFF4
 004F4CF6    mov         dword ptr [ebp-0C],edx
 004F4CF9    mov         dword ptr [ebp-4],eax
 004F4CFC    mov         eax,dword ptr [ebp-4]
 004F4CFF    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4D05    mov         dword ptr [ebp-8],eax
 004F4D08    push        0
 004F4D0A    mov         eax,dword ptr [ebp-8]
 004F4D0D    call        004E409C
 004F4D12    test        al,al
>004F4D14    jne         004F4D33
 004F4D16    mov         eax,dword ptr [ebp-8]
 004F4D19    mov         eax,dword ptr [eax+228];TMPHexEditorEx.FCurrent:TGridCoord
 004F4D1F    and         eax,80000001
>004F4D24    jns         004F4D2B
 004F4D26    dec         eax
 004F4D27    or          eax,0FFFFFFFE
 004F4D2A    inc         eax
 004F4D2B    test        eax,eax
>004F4D2D    je          004F4D33
 004F4D2F    xor         eax,eax
>004F4D31    jmp         004F4D35
 004F4D33    mov         al,1
 004F4D35    push        eax
 004F4D36    mov         eax,dword ptr [ebp-8]
 004F4D39    call        004E4A74
 004F4D3E    mov         edx,eax
 004F4D40    mov         eax,dword ptr [ebp-8]
 004F4D43    pop         ecx
 004F4D44    call        004E3A44
 004F4D49    mov         esp,ebp
 004F4D4B    pop         ebp
 004F4D4C    ret
end;*}

//004F4D50
procedure TfmViewer.miRecalcCRC32Click(Sender:TObject);
begin
{*
 004F4D50    push        ebp
 004F4D51    mov         ebp,esp
 004F4D53    add         esp,0FFFFFFDC
 004F4D56    push        ebx
 004F4D57    xor         ecx,ecx
 004F4D59    mov         dword ptr [ebp-20],ecx
 004F4D5C    mov         dword ptr [ebp-24],ecx
 004F4D5F    mov         dword ptr [ebp-1C],edx
 004F4D62    mov         dword ptr [ebp-4],eax
 004F4D65    xor         eax,eax
 004F4D67    push        ebp
 004F4D68    push        4F4E71
 004F4D6D    push        dword ptr fs:[eax]
 004F4D70    mov         dword ptr fs:[eax],esp
 004F4D73    mov         eax,dword ptr [ebp-4]
 004F4D76    mov         eax,dword ptr [eax+2F8];TfmViewer.MPHexEditorEx1:TMPHexEditorEx
 004F4D7C    mov         dword ptr [ebp-18],eax
 004F4D7F    mov         eax,dword ptr [ebp-18]
 004F4D82    call        004E3E34
 004F4D87    push        eax
 004F4D88    mov         eax,dword ptr [ebp-18]
 004F4D8B    call        004E3DEC
 004F4D90    pop         edx
 004F4D91    call        004DF5E8
 004F4D96    mov         dword ptr [ebp-10],eax
 004F4D99    mov         eax,dword ptr [ebp-18]
 004F4D9C    call        004E3E34
 004F4DA1    push        eax
 004F4DA2    mov         eax,dword ptr [ebp-18]
 004F4DA5    call        004E3DEC
 004F4DAA    pop         edx
 004F4DAB    call        004DF5BC
 004F4DB0    mov         dword ptr [ebp-14],eax
 004F4DB3    xor         eax,eax
 004F4DB5    mov         dword ptr [ebp-8],eax
 004F4DB8    mov         eax,dword ptr [ebp-14]
 004F4DBB    cmp         eax,dword ptr [ebp-10]
>004F4DBE    ja          004F4E2A
 004F4DC0    mov         edx,dword ptr [ebp-14]
 004F4DC3    add         edx,3
 004F4DC6    mov         eax,dword ptr [ebp-18]
 004F4DC9    call        004E8F14
 004F4DCE    xor         ebx,ebx
 004F4DD0    mov         bl,al
 004F4DD2    shl         ebx,18
 004F4DD5    mov         edx,dword ptr [ebp-14]
 004F4DD8    add         edx,2
 004F4DDB    mov         eax,dword ptr [ebp-18]
 004F4DDE    call        004E8F14
 004F4DE3    and         eax,0FF
 004F4DE8    shl         eax,10
 004F4DEB    or          ebx,eax
 004F4DED    mov         edx,dword ptr [ebp-14]
 004F4DF0    inc         edx
 004F4DF1    mov         eax,dword ptr [ebp-18]
 004F4DF4    call        004E8F14
 004F4DF9    and         eax,0FF
 004F4DFE    shl         eax,8
 004F4E01    or          ebx,eax
 004F4E03    mov         edx,dword ptr [ebp-14]
 004F4E06    mov         eax,dword ptr [ebp-18]
 004F4E09    call        004E8F14
 004F4E0E    and         eax,0FF
 004F4E13    or          ebx,eax
 004F4E15    mov         dword ptr [ebp-0C],ebx
 004F4E18    mov         eax,dword ptr [ebp-0C]
 004F4E1B    xor         dword ptr [ebp-8],eax
 004F4E1E    add         dword ptr [ebp-14],4
 004F4E22    mov         eax,dword ptr [ebp-14]
 004F4E25    cmp         eax,dword ptr [ebp-10]
>004F4E28    jbe         004F4DC0
 004F4E2A    mov         eax,dword ptr [ebp-8]
 004F4E2D    xor         edx,edx
 004F4E2F    push        edx
 004F4E30    push        eax
 004F4E31    lea         edx,[ebp-24]
 004F4E34    mov         eax,8
 004F4E39    call        IntToHex
 004F4E3E    mov         ecx,dword ptr [ebp-24]
 004F4E41    lea         eax,[ebp-20]
 004F4E44    mov         edx,4F4E88;'CRC32 is: $'
 004F4E49    call        @LStrCat3
 004F4E4E    mov         eax,dword ptr [ebp-20]
 004F4E51    call        0043F8B4
 004F4E56    xor         eax,eax
 004F4E58    pop         edx
 004F4E59    pop         ecx
 004F4E5A    pop         ecx
 004F4E5B    mov         dword ptr fs:[eax],edx
 004F4E5E    push        4F4E78
 004F4E63    lea         eax,[ebp-24]
 004F4E66    mov         edx,2
 004F4E6B    call        @LStrArrayClr
 004F4E70    ret
>004F4E71    jmp         @HandleFinally
>004F4E76    jmp         004F4E63
 004F4E78    pop         ebx
 004F4E79    mov         esp,ebp
 004F4E7B    pop         ebp
 004F4E7C    ret
*}
end;

end.