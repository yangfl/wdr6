//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uField;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls;

type
  TfmField = class(TForm)
  published
    edSection:TLabeledEdit;//f2F8
    edOffset:TLabeledEdit;//f2FC
    edLen:TLabeledEdit;//f300
    btRead:TButton;//f304
    btReadAll:TButton;//f308
    btDump:TButton;//f30C
    edFileId:TLabeledEdit;//f310
    btWrite:TButton;//f314
    cbFileId:TComboBox;//f318
    cbSection:TComboBox;//f31C
    procedure btWriteClick(Sender:TObject);//0053BCD4
    //procedure cbFileIdChange(?:?);//0053C2F4
    //procedure cbSectionChange(?:?);//0053CC48
    procedure btDumpClick(Sender:TObject);//0053C0B4
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0053B750
    procedure btReadClick(Sender:TObject);//0053B778
    procedure btReadAllClick(Sender:TObject);//0053BA6C
  end;
    procedure sub_0053B6FC(?:TfmField; ?:TfmHDD);//0053B6FC

implementation

{$R *.DFM}

//0053B6FC
procedure sub_0053B6FC(?:TfmField; ?:TfmHDD);
begin
{*
 0053B6FC    push        ebp
 0053B6FD    mov         ebp,esp
 0053B6FF    add         esp,0FFFFFFF8
 0053B702    mov         dword ptr [ebp-8],edx
 0053B705    mov         dword ptr [ebp-4],eax
 0053B708    cmp         dword ptr ds:[56DDE0],0;gvar_0056DDE0:TfmField
>0053B70F    jne         0053B725
 0053B711    mov         ecx,dword ptr [ebp-8]
 0053B714    mov         dl,1
 0053B716    mov         eax,[0053B460];TfmField
 0053B71B    call        TfmProgress.Create;TfmField.Create
 0053B720    mov         [0056DDE0],eax;gvar_0056DDE0:TfmField
 0053B725    mov         eax,[0056DDE0];0x0 gvar_0056DDE0:TfmField
 0053B72A    cmp         byte ptr [eax+1A6],0;TfmField.FShowing:Boolean
>0053B731    je          0053B742
 0053B733    mov         eax,[0056DDE0];0x0 gvar_0056DDE0:TfmField
 0053B738    mov         edx,dword ptr [eax]
 0053B73A    call        dword ptr [edx+0C4];TfmField.sub_004A746C
>0053B740    jmp         0053B74C
 0053B742    mov         eax,[0056DDE0];0x0 gvar_0056DDE0:TfmField
 0053B747    call        004A7450
 0053B74C    pop         ecx
 0053B74D    pop         ecx
 0053B74E    pop         ebp
 0053B74F    ret
*}
end;

//0053B750
procedure TfmField.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0053B750    push        ebp
 0053B751    mov         ebp,esp
 0053B753    add         esp,0FFFFFFF4
 0053B756    mov         dword ptr [ebp-8],ecx
 0053B759    mov         dword ptr [ebp-0C],edx
 0053B75C    mov         dword ptr [ebp-4],eax
 0053B75F    mov         eax,[0056E5A4];^gvar_0056DF04
 0053B764    mov         byte ptr [eax],1
 0053B767    xor         eax,eax
 0053B769    mov         [0056DDE0],eax;gvar_0056DDE0:TfmField
 0053B76E    mov         eax,dword ptr [ebp-8]
 0053B771    mov         byte ptr [eax],2
 0053B774    mov         esp,ebp
 0053B776    pop         ebp
 0053B777    ret
*}
end;

//0053B778
procedure TfmField.btReadClick(Sender:TObject);
begin
{*
 0053B778    push        ebp
 0053B779    mov         ebp,esp
 0053B77B    mov         ecx,9
 0053B780    push        0
 0053B782    push        0
 0053B784    dec         ecx
>0053B785    jne         0053B780
 0053B787    push        ecx
 0053B788    mov         dword ptr [ebp-14],edx
 0053B78B    mov         dword ptr [ebp-4],eax
 0053B78E    xor         eax,eax
 0053B790    push        ebp
 0053B791    push        53B9E9
 0053B796    push        dword ptr fs:[eax]
 0053B799    mov         dword ptr fs:[eax],esp
 0053B79C    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053B7A2    mov         edx,dword ptr [edx]
 0053B7A4    lea         eax,[ebp-18]
 0053B7A7    mov         ecx,53B9FC;'Field'
 0053B7AC    call        @LStrCat3
 0053B7B1    mov         eax,dword ptr [ebp-18]
 0053B7B4    call        0040C9A4
 0053B7B9    test        al,al
>0053B7BB    jne         0053B7EF
 0053B7BD    push        53BA0C;'Cannot create '
 0053B7C2    mov         eax,[0056E2D0];^gvar_0056DF38
 0053B7C7    push        dword ptr [eax]
 0053B7C9    push        53B9FC;'Field'
 0053B7CE    lea         eax,[ebp-1C]
 0053B7D1    mov         edx,3
 0053B7D6    call        @LStrCatN
 0053B7DB    mov         ecx,dword ptr [ebp-1C]
 0053B7DE    mov         dl,1
 0053B7E0    mov         eax,[0040B004];Exception
 0053B7E5    call        Exception.Create;Exception.Create
 0053B7EA    call        @RaiseExcept
 0053B7EF    mov         eax,dword ptr [ebp-4]
 0053B7F2    mov         eax,dword ptr [eax+308];TfmField.btReadAll:TButton
 0053B7F8    xor         edx,edx
 0053B7FA    mov         ecx,dword ptr [eax]
 0053B7FC    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B7FF    mov         eax,dword ptr [ebp-4]
 0053B802    mov         eax,dword ptr [eax+304];TfmField.btRead:TButton
 0053B808    xor         edx,edx
 0053B80A    mov         ecx,dword ptr [eax]
 0053B80C    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B80F    mov         eax,dword ptr [ebp-4]
 0053B812    mov         eax,dword ptr [eax+314];TfmField.btWrite:TButton
 0053B818    xor         edx,edx
 0053B81A    mov         ecx,dword ptr [eax]
 0053B81C    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B81F    mov         dl,1
 0053B821    mov         eax,[0041DE14];TMemoryStream
 0053B826    call        TObject.Create;TMemoryStream.Create
 0053B82B    mov         dword ptr [ebp-8],eax
 0053B82E    xor         eax,eax
 0053B830    push        ebp
 0053B831    push        53B97D
 0053B836    push        dword ptr fs:[eax]
 0053B839    mov         dword ptr fs:[eax],esp
 0053B83C    lea         edx,[ebp-20]
 0053B83F    mov         eax,dword ptr [ebp-4]
 0053B842    mov         eax,dword ptr [eax+310];TfmField.edFileId:TLabeledEdit
 0053B848    call        TPanel.GetCaption
 0053B84D    mov         eax,dword ptr [ebp-20]
 0053B850    xor         edx,edx
 0053B852    call        0040C4A8
 0053B857    mov         word ptr [ebp-0A],ax
 0053B85B    lea         edx,[ebp-24]
 0053B85E    mov         eax,dword ptr [ebp-4]
 0053B861    mov         eax,dword ptr [eax+2F8];TfmField.edSection:TLabeledEdit
 0053B867    call        TPanel.GetCaption
 0053B86C    mov         eax,dword ptr [ebp-24]
 0053B86F    xor         edx,edx
 0053B871    call        0040C4A8
 0053B876    mov         word ptr [ebp-0C],ax
 0053B87A    lea         edx,[ebp-28]
 0053B87D    mov         eax,dword ptr [ebp-4]
 0053B880    mov         eax,dword ptr [eax+2FC];TfmField.edOffset:TLabeledEdit
 0053B886    call        TPanel.GetCaption
 0053B88B    mov         eax,dword ptr [ebp-28]
 0053B88E    xor         edx,edx
 0053B890    call        0040C4A8
 0053B895    mov         word ptr [ebp-0E],ax
 0053B899    lea         edx,[ebp-2C]
 0053B89C    mov         eax,dword ptr [ebp-4]
 0053B89F    mov         eax,dword ptr [eax+300];TfmField.edLen:TLabeledEdit
 0053B8A5    call        TPanel.GetCaption
 0053B8AA    mov         eax,dword ptr [ebp-2C]
 0053B8AD    xor         edx,edx
 0053B8AF    call        0040C4A8
 0053B8B4    mov         word ptr [ebp-10],ax
 0053B8B8    mov         ax,word ptr [ebp-10]
 0053B8BC    push        eax
 0053B8BD    mov         eax,dword ptr [ebp-8]
 0053B8C0    push        eax
 0053B8C1    mov         cx,word ptr [ebp-0E]
 0053B8C5    mov         dx,word ptr [ebp-0C]
 0053B8C9    mov         ax,word ptr [ebp-0A]
 0053B8CD    call        004D1570
 0053B8D2    test        al,al
>0053B8D4    je          0053B92E
 0053B8D6    mov         eax,[0056E2D0];^gvar_0056DF38
 0053B8DB    push        dword ptr [eax]
 0053B8DD    push        53BA24;'Field\Field_'
 0053B8E2    lea         ecx,[ebp-34]
 0053B8E5    movzx       eax,word ptr [ebp-0A]
 0053B8E9    mov         edx,2
 0053B8EE    call        IntToHex
 0053B8F3    push        dword ptr [ebp-34]
 0053B8F6    push        53BA3C;'_'
 0053B8FB    lea         ecx,[ebp-38]
 0053B8FE    movzx       eax,word ptr [ebp-0C]
 0053B902    mov         edx,2
 0053B907    call        IntToHex
 0053B90C    push        dword ptr [ebp-38]
 0053B90F    push        53BA48;'.bin'
 0053B914    lea         eax,[ebp-30]
 0053B917    mov         edx,6
 0053B91C    call        @LStrCatN
 0053B921    mov         edx,dword ptr [ebp-30]
 0053B924    mov         eax,dword ptr [ebp-8]
 0053B927    call        00423E84
>0053B92C    jmp         0053B967
 0053B92E    call        004CEB6C
 0053B933    lea         eax,[ebp-3C]
 0053B936    push        eax
 0053B937    movzx       eax,word ptr [ebp-0A]
 0053B93B    mov         dword ptr [ebp-4C],eax
 0053B93E    mov         byte ptr [ebp-48],0
 0053B942    movzx       eax,word ptr [ebp-0C]
 0053B946    mov         dword ptr [ebp-44],eax
 0053B949    mov         byte ptr [ebp-40],0
 0053B94D    lea         edx,[ebp-4C]
 0053B950    mov         ecx,1
 0053B955    mov         eax,53BA58;'Read Field %x %x - '
 0053B95A    call        0040D630
 0053B95F    mov         eax,dword ptr [ebp-3C]
 0053B962    call        00544F6C
 0053B967    xor         eax,eax
 0053B969    pop         edx
 0053B96A    pop         ecx
 0053B96B    pop         ecx
 0053B96C    mov         dword ptr fs:[eax],edx
 0053B96F    push        53B984
 0053B974    mov         eax,dword ptr [ebp-8]
 0053B977    call        TObject.Free
 0053B97C    ret
>0053B97D    jmp         @HandleFinally
>0053B982    jmp         0053B974
 0053B984    mov         eax,dword ptr [ebp-4]
 0053B987    mov         eax,dword ptr [eax+308];TfmField.btReadAll:TButton
 0053B98D    mov         dl,1
 0053B98F    mov         ecx,dword ptr [eax]
 0053B991    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B994    mov         eax,dword ptr [ebp-4]
 0053B997    mov         eax,dword ptr [eax+304];TfmField.btRead:TButton
 0053B99D    mov         dl,1
 0053B99F    mov         ecx,dword ptr [eax]
 0053B9A1    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B9A4    mov         eax,dword ptr [ebp-4]
 0053B9A7    mov         eax,dword ptr [eax+314];TfmField.btWrite:TButton
 0053B9AD    mov         dl,1
 0053B9AF    mov         ecx,dword ptr [eax]
 0053B9B1    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B9B4    xor         eax,eax
 0053B9B6    pop         edx
 0053B9B7    pop         ecx
 0053B9B8    pop         ecx
 0053B9B9    mov         dword ptr fs:[eax],edx
 0053B9BC    push        53B9F0
 0053B9C1    lea         eax,[ebp-3C]
 0053B9C4    mov         edx,4
 0053B9C9    call        @LStrArrayClr
 0053B9CE    lea         eax,[ebp-2C]
 0053B9D1    mov         edx,4
 0053B9D6    call        @LStrArrayClr
 0053B9DB    lea         eax,[ebp-1C]
 0053B9DE    mov         edx,2
 0053B9E3    call        @LStrArrayClr
 0053B9E8    ret
>0053B9E9    jmp         @HandleFinally
>0053B9EE    jmp         0053B9C1
 0053B9F0    mov         esp,ebp
 0053B9F2    pop         ebp
 0053B9F3    ret
*}
end;

//0053BA6C
procedure TfmField.btReadAllClick(Sender:TObject);
begin
{*
 0053BA6C    push        ebp
 0053BA6D    mov         ebp,esp
 0053BA6F    mov         ecx,5
 0053BA74    push        0
 0053BA76    push        0
 0053BA78    dec         ecx
>0053BA79    jne         0053BA74
 0053BA7B    push        ecx
 0053BA7C    mov         dword ptr [ebp-14],edx
 0053BA7F    mov         dword ptr [ebp-4],eax
 0053BA82    xor         eax,eax
 0053BA84    push        ebp
 0053BA85    push        53BC6A
 0053BA8A    push        dword ptr fs:[eax]
 0053BA8D    mov         dword ptr fs:[eax],esp
 0053BA90    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053BA96    mov         edx,dword ptr [edx]
 0053BA98    lea         eax,[ebp-18]
 0053BA9B    mov         ecx,53BC80;'Field'
 0053BAA0    call        @LStrCat3
 0053BAA5    mov         eax,dword ptr [ebp-18]
 0053BAA8    call        0040C9A4
 0053BAAD    test        al,al
>0053BAAF    jne         0053BAE3
 0053BAB1    push        53BC90;'Cannot create '
 0053BAB6    mov         eax,[0056E2D0];^gvar_0056DF38
 0053BABB    push        dword ptr [eax]
 0053BABD    push        53BC80;'Field'
 0053BAC2    lea         eax,[ebp-1C]
 0053BAC5    mov         edx,3
 0053BACA    call        @LStrCatN
 0053BACF    mov         ecx,dword ptr [ebp-1C]
 0053BAD2    mov         dl,1
 0053BAD4    mov         eax,[0040B004];Exception
 0053BAD9    call        Exception.Create;Exception.Create
 0053BADE    call        @RaiseExcept
 0053BAE3    mov         eax,dword ptr [ebp-4]
 0053BAE6    mov         eax,dword ptr [eax+308];TfmField.btReadAll:TButton
 0053BAEC    xor         edx,edx
 0053BAEE    mov         ecx,dword ptr [eax]
 0053BAF0    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BAF3    mov         eax,dword ptr [ebp-4]
 0053BAF6    mov         eax,dword ptr [eax+304];TfmField.btRead:TButton
 0053BAFC    xor         edx,edx
 0053BAFE    mov         ecx,dword ptr [eax]
 0053BB00    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BB03    mov         eax,dword ptr [ebp-4]
 0053BB06    mov         eax,dword ptr [eax+314];TfmField.btWrite:TButton
 0053BB0C    xor         edx,edx
 0053BB0E    mov         ecx,dword ptr [eax]
 0053BB10    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BB13    mov         dl,1
 0053BB15    mov         eax,[0041DE14];TMemoryStream
 0053BB1A    call        TObject.Create;TMemoryStream.Create
 0053BB1F    mov         dword ptr [ebp-8],eax
 0053BB22    xor         eax,eax
 0053BB24    push        ebp
 0053BB25    push        53BC03
 0053BB2A    push        dword ptr fs:[eax]
 0053BB2D    mov         dword ptr fs:[eax],esp
 0053BB30    mov         word ptr [ebp-0E],0
 0053BB36    mov         word ptr [ebp-10],0
 0053BB3C    lea         edx,[ebp-20]
 0053BB3F    mov         eax,dword ptr [ebp-4]
 0053BB42    mov         eax,dword ptr [eax+310];TfmField.edFileId:TLabeledEdit
 0053BB48    call        TPanel.GetCaption
 0053BB4D    mov         eax,dword ptr [ebp-20]
 0053BB50    xor         edx,edx
 0053BB52    call        0040C4A8
 0053BB57    mov         word ptr [ebp-0A],ax
 0053BB5B    mov         word ptr [ebp-0C],0
 0053BB61    mov         eax,dword ptr [ebp-8]
 0053BB64    call        00423F20
 0053BB69    mov         ax,word ptr [ebp-10]
 0053BB6D    push        eax
 0053BB6E    mov         eax,dword ptr [ebp-8]
 0053BB71    push        eax
 0053BB72    mov         cx,word ptr [ebp-0E]
 0053BB76    mov         dx,word ptr [ebp-0C]
 0053BB7A    mov         ax,word ptr [ebp-0A]
 0053BB7E    call        004D1570
 0053BB83    test        al,al
>0053BB85    je          0053BBDD
 0053BB87    mov         eax,[0056E2D0];^gvar_0056DF38
 0053BB8C    push        dword ptr [eax]
 0053BB8E    push        53BCA8;'Field\Field_'
 0053BB93    lea         ecx,[ebp-28]
 0053BB96    movzx       eax,word ptr [ebp-0A]
 0053BB9A    mov         edx,2
 0053BB9F    call        IntToHex
 0053BBA4    push        dword ptr [ebp-28]
 0053BBA7    push        53BCC0;'_'
 0053BBAC    lea         ecx,[ebp-2C]
 0053BBAF    movzx       eax,word ptr [ebp-0C]
 0053BBB3    mov         edx,2
 0053BBB8    call        IntToHex
 0053BBBD    push        dword ptr [ebp-2C]
 0053BBC0    push        53BCCC;'.bin'
 0053BBC5    lea         eax,[ebp-24]
 0053BBC8    mov         edx,6
 0053BBCD    call        @LStrCatN
 0053BBD2    mov         edx,dword ptr [ebp-24]
 0053BBD5    mov         eax,dword ptr [ebp-8]
 0053BBD8    call        00423E84
 0053BBDD    inc         word ptr [ebp-0C]
 0053BBE1    cmp         word ptr [ebp-0C],100
>0053BBE7    jne         0053BB61
 0053BBED    xor         eax,eax
 0053BBEF    pop         edx
 0053BBF0    pop         ecx
 0053BBF1    pop         ecx
 0053BBF2    mov         dword ptr fs:[eax],edx
 0053BBF5    push        53BC0A
 0053BBFA    mov         eax,dword ptr [ebp-8]
 0053BBFD    call        TObject.Free
 0053BC02    ret
>0053BC03    jmp         @HandleFinally
>0053BC08    jmp         0053BBFA
 0053BC0A    mov         eax,dword ptr [ebp-4]
 0053BC0D    mov         eax,dword ptr [eax+308];TfmField.btReadAll:TButton
 0053BC13    mov         dl,1
 0053BC15    mov         ecx,dword ptr [eax]
 0053BC17    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BC1A    mov         eax,dword ptr [ebp-4]
 0053BC1D    mov         eax,dword ptr [eax+304];TfmField.btRead:TButton
 0053BC23    mov         dl,1
 0053BC25    mov         ecx,dword ptr [eax]
 0053BC27    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BC2A    mov         eax,dword ptr [ebp-4]
 0053BC2D    mov         eax,dword ptr [eax+314];TfmField.btWrite:TButton
 0053BC33    mov         dl,1
 0053BC35    mov         ecx,dword ptr [eax]
 0053BC37    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BC3A    xor         eax,eax
 0053BC3C    pop         edx
 0053BC3D    pop         ecx
 0053BC3E    pop         ecx
 0053BC3F    mov         dword ptr fs:[eax],edx
 0053BC42    push        53BC71
 0053BC47    lea         eax,[ebp-2C]
 0053BC4A    mov         edx,3
 0053BC4F    call        @LStrArrayClr
 0053BC54    lea         eax,[ebp-20]
 0053BC57    call        @LStrClr
 0053BC5C    lea         eax,[ebp-1C]
 0053BC5F    mov         edx,2
 0053BC64    call        @LStrArrayClr
 0053BC69    ret
>0053BC6A    jmp         @HandleFinally
>0053BC6F    jmp         0053BC47
 0053BC71    mov         esp,ebp
 0053BC73    pop         ebp
 0053BC74    ret
*}
end;

//0053BCD4
procedure TfmField.btWriteClick(Sender:TObject);
begin
{*
 0053BCD4    push        ebp
 0053BCD5    mov         ebp,esp
 0053BCD7    mov         ecx,0C
 0053BCDC    push        0
 0053BCDE    push        0
 0053BCE0    dec         ecx
>0053BCE1    jne         0053BCDC
 0053BCE3    push        ecx
 0053BCE4    mov         dword ptr [ebp-14],edx
 0053BCE7    mov         dword ptr [ebp-4],eax
 0053BCEA    xor         eax,eax
 0053BCEC    push        ebp
 0053BCED    push        53C00A
 0053BCF2    push        dword ptr fs:[eax]
 0053BCF5    mov         dword ptr fs:[eax],esp
 0053BCF8    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053BCFE    mov         edx,dword ptr [edx]
 0053BD00    lea         eax,[ebp-18]
 0053BD03    mov         ecx,53C020;'Field'
 0053BD08    call        @LStrCat3
 0053BD0D    mov         eax,dword ptr [ebp-18]
 0053BD10    call        0040C9A4
 0053BD15    test        al,al
>0053BD17    jne         0053BD4B
 0053BD19    push        53C030;'Cannot create '
 0053BD1E    mov         eax,[0056E2D0];^gvar_0056DF38
 0053BD23    push        dword ptr [eax]
 0053BD25    push        53C020;'Field'
 0053BD2A    lea         eax,[ebp-1C]
 0053BD2D    mov         edx,3
 0053BD32    call        @LStrCatN
 0053BD37    mov         ecx,dword ptr [ebp-1C]
 0053BD3A    mov         dl,1
 0053BD3C    mov         eax,[0040B004];Exception
 0053BD41    call        Exception.Create;Exception.Create
 0053BD46    call        @RaiseExcept
 0053BD4B    mov         eax,dword ptr [ebp-4]
 0053BD4E    mov         eax,dword ptr [eax+308];TfmField.btReadAll:TButton
 0053BD54    xor         edx,edx
 0053BD56    mov         ecx,dword ptr [eax]
 0053BD58    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BD5B    mov         eax,dword ptr [ebp-4]
 0053BD5E    mov         eax,dword ptr [eax+304];TfmField.btRead:TButton
 0053BD64    xor         edx,edx
 0053BD66    mov         ecx,dword ptr [eax]
 0053BD68    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BD6B    mov         eax,dword ptr [ebp-4]
 0053BD6E    mov         eax,dword ptr [eax+314];TfmField.btWrite:TButton
 0053BD74    xor         edx,edx
 0053BD76    mov         ecx,dword ptr [eax]
 0053BD78    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BD7B    lea         edx,[ebp-20]
 0053BD7E    mov         eax,dword ptr [ebp-4]
 0053BD81    mov         eax,dword ptr [eax+310];TfmField.edFileId:TLabeledEdit
 0053BD87    call        TPanel.GetCaption
 0053BD8C    mov         eax,dword ptr [ebp-20]
 0053BD8F    xor         edx,edx
 0053BD91    call        0040C4A8
 0053BD96    mov         word ptr [ebp-0A],ax
 0053BD9A    lea         edx,[ebp-24]
 0053BD9D    mov         eax,dword ptr [ebp-4]
 0053BDA0    mov         eax,dword ptr [eax+2F8];TfmField.edSection:TLabeledEdit
 0053BDA6    call        TPanel.GetCaption
 0053BDAB    mov         eax,dword ptr [ebp-24]
 0053BDAE    xor         edx,edx
 0053BDB0    call        0040C4A8
 0053BDB5    mov         word ptr [ebp-0C],ax
 0053BDB9    lea         edx,[ebp-28]
 0053BDBC    mov         eax,dword ptr [ebp-4]
 0053BDBF    mov         eax,dword ptr [eax+2FC];TfmField.edOffset:TLabeledEdit
 0053BDC5    call        TPanel.GetCaption
 0053BDCA    mov         eax,dword ptr [ebp-28]
 0053BDCD    xor         edx,edx
 0053BDCF    call        0040C4A8
 0053BDD4    mov         word ptr [ebp-0E],ax
 0053BDD8    lea         edx,[ebp-2C]
 0053BDDB    mov         eax,dword ptr [ebp-4]
 0053BDDE    mov         eax,dword ptr [eax+300];TfmField.edLen:TLabeledEdit
 0053BDE4    call        TPanel.GetCaption
 0053BDE9    mov         eax,dword ptr [ebp-2C]
 0053BDEC    xor         edx,edx
 0053BDEE    call        0040C4A8
 0053BDF3    mov         word ptr [ebp-10],ax
 0053BDF7    mov         eax,[0056E2D0];^gvar_0056DF38
 0053BDFC    push        dword ptr [eax]
 0053BDFE    push        53C048;'Field\Field_'
 0053BE03    lea         ecx,[ebp-34]
 0053BE06    movzx       eax,word ptr [ebp-0A]
 0053BE0A    mov         edx,2
 0053BE0F    call        IntToHex
 0053BE14    push        dword ptr [ebp-34]
 0053BE17    push        53C060;'_'
 0053BE1C    lea         ecx,[ebp-38]
 0053BE1F    movzx       eax,word ptr [ebp-0C]
 0053BE23    mov         edx,2
 0053BE28    call        IntToHex
 0053BE2D    push        dword ptr [ebp-38]
 0053BE30    push        53C06C;'.bin'
 0053BE35    lea         eax,[ebp-30]
 0053BE38    mov         edx,6
 0053BE3D    call        @LStrCatN
 0053BE42    mov         eax,dword ptr [ebp-30]
 0053BE45    call        0040C94C
 0053BE4A    test        al,al
>0053BE4C    je          0053BF39
 0053BE52    mov         dl,1
 0053BE54    mov         eax,[0041DE14];TMemoryStream
 0053BE59    call        TObject.Create;TMemoryStream.Create
 0053BE5E    mov         dword ptr [ebp-8],eax
 0053BE61    xor         eax,eax
 0053BE63    push        ebp
 0053BE64    push        53BF32
 0053BE69    push        dword ptr fs:[eax]
 0053BE6C    mov         dword ptr fs:[eax],esp
 0053BE6F    mov         eax,[0056E2D0];^gvar_0056DF38
 0053BE74    push        dword ptr [eax]
 0053BE76    push        53C048;'Field\Field_'
 0053BE7B    lea         ecx,[ebp-40]
 0053BE7E    movzx       eax,word ptr [ebp-0A]
 0053BE82    mov         edx,2
 0053BE87    call        IntToHex
 0053BE8C    push        dword ptr [ebp-40]
 0053BE8F    push        53C060;'_'
 0053BE94    lea         ecx,[ebp-44]
 0053BE97    movzx       eax,word ptr [ebp-0C]
 0053BE9B    mov         edx,2
 0053BEA0    call        IntToHex
 0053BEA5    push        dword ptr [ebp-44]
 0053BEA8    push        53C06C;'.bin'
 0053BEAD    lea         eax,[ebp-3C]
 0053BEB0    mov         edx,6
 0053BEB5    call        @LStrCatN
 0053BEBA    mov         edx,dword ptr [ebp-3C]
 0053BEBD    mov         eax,dword ptr [ebp-8]
 0053BEC0    call        00423F8C
 0053BEC5    mov         ax,word ptr [ebp-10]
 0053BEC9    push        eax
 0053BECA    mov         eax,dword ptr [ebp-8]
 0053BECD    push        eax
 0053BECE    mov         cx,word ptr [ebp-0E]
 0053BED2    mov         dx,word ptr [ebp-0C]
 0053BED6    mov         ax,word ptr [ebp-0A]
 0053BEDA    call        004D16E8
 0053BEDF    test        al,al
>0053BEE1    jne         0053BF1C
 0053BEE3    call        004CEB6C
 0053BEE8    lea         eax,[ebp-48]
 0053BEEB    push        eax
 0053BEEC    movzx       eax,word ptr [ebp-0A]
 0053BEF0    mov         dword ptr [ebp-58],eax
 0053BEF3    mov         byte ptr [ebp-54],0
 0053BEF7    movzx       eax,word ptr [ebp-0C]
 0053BEFB    mov         dword ptr [ebp-50],eax
 0053BEFE    mov         byte ptr [ebp-4C],0
 0053BF02    lea         edx,[ebp-58]
 0053BF05    mov         ecx,1
 0053BF0A    mov         eax,53C07C;'Write Field %x %x - '
 0053BF0F    call        0040D630
 0053BF14    mov         eax,dword ptr [ebp-48]
 0053BF17    call        00544F6C
 0053BF1C    xor         eax,eax
 0053BF1E    pop         edx
 0053BF1F    pop         ecx
 0053BF20    pop         ecx
 0053BF21    mov         dword ptr fs:[eax],edx
 0053BF24    push        53BF98
 0053BF29    mov         eax,dword ptr [ebp-8]
 0053BF2C    call        TObject.Free
 0053BF31    ret
>0053BF32    jmp         @HandleFinally
>0053BF37    jmp         0053BF29
 0053BF39    push        53C09C;'No file: Field\Field_'
 0053BF3E    lea         ecx,[ebp-60]
 0053BF41    movzx       eax,word ptr [ebp-0A]
 0053BF45    mov         edx,2
 0053BF4A    call        IntToHex
 0053BF4F    push        dword ptr [ebp-60]
 0053BF52    push        53C060;'_'
 0053BF57    lea         ecx,[ebp-64]
 0053BF5A    movzx       eax,word ptr [ebp-0C]
 0053BF5E    mov         edx,2
 0053BF63    call        IntToHex
 0053BF68    push        dword ptr [ebp-64]
 0053BF6B    push        53C06C;'.bin'
 0053BF70    lea         eax,[ebp-5C]
 0053BF73    mov         edx,5
 0053BF78    call        @LStrCatN
 0053BF7D    mov         edx,dword ptr [ebp-5C]
 0053BF80    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053BF85    mov         eax,dword ptr [eax]
 0053BF87    mov         eax,dword ptr [eax+2F8]
 0053BF8D    mov         eax,dword ptr [eax+248]
 0053BF93    mov         ecx,dword ptr [eax]
 0053BF95    call        dword ptr [ecx+38]
 0053BF98    mov         eax,dword ptr [ebp-4]
 0053BF9B    mov         eax,dword ptr [eax+308];TfmField.btReadAll:TButton
 0053BFA1    mov         dl,1
 0053BFA3    mov         ecx,dword ptr [eax]
 0053BFA5    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BFA8    mov         eax,dword ptr [ebp-4]
 0053BFAB    mov         eax,dword ptr [eax+304];TfmField.btRead:TButton
 0053BFB1    mov         dl,1
 0053BFB3    mov         ecx,dword ptr [eax]
 0053BFB5    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BFB8    mov         eax,dword ptr [ebp-4]
 0053BFBB    mov         eax,dword ptr [eax+314];TfmField.btWrite:TButton
 0053BFC1    mov         dl,1
 0053BFC3    mov         ecx,dword ptr [eax]
 0053BFC5    call        dword ptr [ecx+64];TImage.SetEnabled
 0053BFC8    xor         eax,eax
 0053BFCA    pop         edx
 0053BFCB    pop         ecx
 0053BFCC    pop         ecx
 0053BFCD    mov         dword ptr fs:[eax],edx
 0053BFD0    push        53C011
 0053BFD5    lea         eax,[ebp-64]
 0053BFD8    mov         edx,3
 0053BFDD    call        @LStrArrayClr
 0053BFE2    lea         eax,[ebp-48]
 0053BFE5    mov         edx,7
 0053BFEA    call        @LStrArrayClr
 0053BFEF    lea         eax,[ebp-2C]
 0053BFF2    mov         edx,4
 0053BFF7    call        @LStrArrayClr
 0053BFFC    lea         eax,[ebp-1C]
 0053BFFF    mov         edx,2
 0053C004    call        @LStrArrayClr
 0053C009    ret
>0053C00A    jmp         @HandleFinally
>0053C00F    jmp         0053BFD5
 0053C011    mov         esp,ebp
 0053C013    pop         ebp
 0053C014    ret
*}
end;

//0053C0B4
procedure TfmField.btDumpClick(Sender:TObject);
begin
{*
 0053C0B4    push        ebp
 0053C0B5    mov         ebp,esp
 0053C0B7    mov         ecx,8
 0053C0BC    push        0
 0053C0BE    push        0
 0053C0C0    dec         ecx
>0053C0C1    jne         0053C0BC
 0053C0C3    mov         dword ptr [ebp-10],edx
 0053C0C6    mov         dword ptr [ebp-4],eax
 0053C0C9    xor         eax,eax
 0053C0CB    push        ebp
 0053C0CC    push        53C28A
 0053C0D1    push        dword ptr fs:[eax]
 0053C0D4    mov         dword ptr fs:[eax],esp
 0053C0D7    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053C0DD    mov         edx,dword ptr [edx]
 0053C0DF    lea         eax,[ebp-14]
 0053C0E2    mov         ecx,53C2A0;'Field'
 0053C0E7    call        @LStrCat3
 0053C0EC    mov         eax,dword ptr [ebp-14]
 0053C0EF    call        0040C9A4
 0053C0F4    test        al,al
>0053C0F6    jne         0053C12A
 0053C0F8    push        53C2B0;'Cannot create '
 0053C0FD    mov         eax,[0056E2D0];^gvar_0056DF38
 0053C102    push        dword ptr [eax]
 0053C104    push        53C2A0;'Field'
 0053C109    lea         eax,[ebp-18]
 0053C10C    mov         edx,3
 0053C111    call        @LStrCatN
 0053C116    mov         ecx,dword ptr [ebp-18]
 0053C119    mov         dl,1
 0053C11B    mov         eax,[0040B004];Exception
 0053C120    call        Exception.Create;Exception.Create
 0053C125    call        @RaiseExcept
 0053C12A    lea         edx,[ebp-1C]
 0053C12D    mov         eax,dword ptr [ebp-4]
 0053C130    mov         eax,dword ptr [eax+310];TfmField.edFileId:TLabeledEdit
 0053C136    call        TPanel.GetCaption
 0053C13B    mov         eax,dword ptr [ebp-1C]
 0053C13E    xor         edx,edx
 0053C140    call        0040C4A8
 0053C145    mov         word ptr [ebp-6],ax
 0053C149    lea         edx,[ebp-20]
 0053C14C    mov         eax,dword ptr [ebp-4]
 0053C14F    mov         eax,dword ptr [eax+2F8];TfmField.edSection:TLabeledEdit
 0053C155    call        TPanel.GetCaption
 0053C15A    mov         eax,dword ptr [ebp-20]
 0053C15D    xor         edx,edx
 0053C15F    call        0040C4A8
 0053C164    mov         word ptr [ebp-8],ax
 0053C168    lea         edx,[ebp-24]
 0053C16B    mov         eax,dword ptr [ebp-4]
 0053C16E    mov         eax,dword ptr [eax+2FC];TfmField.edOffset:TLabeledEdit
 0053C174    call        TPanel.GetCaption
 0053C179    mov         eax,dword ptr [ebp-24]
 0053C17C    xor         edx,edx
 0053C17E    call        0040C4A8
 0053C183    mov         word ptr [ebp-0A],ax
 0053C187    lea         edx,[ebp-28]
 0053C18A    mov         eax,dword ptr [ebp-4]
 0053C18D    mov         eax,dword ptr [eax+300];TfmField.edLen:TLabeledEdit
 0053C193    call        TPanel.GetCaption
 0053C198    mov         eax,dword ptr [ebp-28]
 0053C19B    xor         edx,edx
 0053C19D    call        0040C4A8
 0053C1A2    mov         word ptr [ebp-0C],ax
 0053C1A6    mov         eax,[0056E2D0];^gvar_0056DF38
 0053C1AB    push        dword ptr [eax]
 0053C1AD    push        53C2C8;'Field\Field_'
 0053C1B2    lea         ecx,[ebp-30]
 0053C1B5    movzx       eax,word ptr [ebp-6]
 0053C1B9    mov         edx,2
 0053C1BE    call        IntToHex
 0053C1C3    push        dword ptr [ebp-30]
 0053C1C6    push        53C2E0;'_'
 0053C1CB    lea         ecx,[ebp-34]
 0053C1CE    movzx       eax,word ptr [ebp-8]
 0053C1D2    mov         edx,2
 0053C1D7    call        IntToHex
 0053C1DC    push        dword ptr [ebp-34]
 0053C1DF    push        53C2EC;'.bin'
 0053C1E4    lea         eax,[ebp-2C]
 0053C1E7    mov         edx,6
 0053C1EC    call        @LStrCatN
 0053C1F1    mov         eax,dword ptr [ebp-2C]
 0053C1F4    call        0040C94C
 0053C1F9    test        al,al
>0053C1FB    je          0053C255
 0053C1FD    mov         eax,[0056E2D0];^gvar_0056DF38
 0053C202    push        dword ptr [eax]
 0053C204    push        53C2C8;'Field\Field_'
 0053C209    lea         ecx,[ebp-3C]
 0053C20C    movzx       eax,word ptr [ebp-6]
 0053C210    mov         edx,2
 0053C215    call        IntToHex
 0053C21A    push        dword ptr [ebp-3C]
 0053C21D    push        53C2E0;'_'
 0053C222    lea         ecx,[ebp-40]
 0053C225    movzx       eax,word ptr [ebp-8]
 0053C229    mov         edx,2
 0053C22E    call        IntToHex
 0053C233    push        dword ptr [ebp-40]
 0053C236    push        53C2EC;'.bin'
 0053C23B    lea         eax,[ebp-38]
 0053C23E    mov         edx,6
 0053C243    call        @LStrCatN
 0053C248    mov         edx,dword ptr [ebp-38]
 0053C24B    mov         eax,[004F3EB8];TfmViewer
 0053C250    call        004F4640
 0053C255    xor         eax,eax
 0053C257    pop         edx
 0053C258    pop         ecx
 0053C259    pop         ecx
 0053C25A    mov         dword ptr fs:[eax],edx
 0053C25D    push        53C291
 0053C262    lea         eax,[ebp-40]
 0053C265    mov         edx,6
 0053C26A    call        @LStrArrayClr
 0053C26F    lea         eax,[ebp-28]
 0053C272    mov         edx,4
 0053C277    call        @LStrArrayClr
 0053C27C    lea         eax,[ebp-18]
 0053C27F    mov         edx,2
 0053C284    call        @LStrArrayClr
 0053C289    ret
>0053C28A    jmp         @HandleFinally
>0053C28F    jmp         0053C262
 0053C291    mov         esp,ebp
 0053C293    pop         ebp
 0053C294    ret
*}
end;

//0053C2F4
{*procedure TfmField.cbFileIdChange(?:?);
begin
 0053C2F4    push        ebp
 0053C2F5    mov         ebp,esp
 0053C2F7    add         esp,0FFFFFFF8
 0053C2FA    mov         dword ptr [ebp-8],edx
 0053C2FD    mov         dword ptr [ebp-4],eax
 0053C300    mov         eax,dword ptr [ebp-4]
 0053C303    mov         eax,dword ptr [eax+318];TfmField.cbFileId:TComboBox
 0053C309    mov         edx,dword ptr [eax]
 0053C30B    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 0053C311    sub         eax,1
>0053C314    jb          0053C31D
>0053C316    je          0053C332
 0053C318    dec         eax
>0053C319    je          0053C347
>0053C31B    jmp         0053C35A
 0053C31D    mov         edx,53C81C;'$00'
 0053C322    mov         eax,dword ptr [ebp-4]
 0053C325    mov         eax,dword ptr [eax+310];TfmField.edFileId:TLabeledEdit
 0053C32B    call        TPanel.SetCaption
>0053C330    jmp         0053C35A
 0053C332    mov         edx,53C828;'$02'
 0053C337    mov         eax,dword ptr [ebp-4]
 0053C33A    mov         eax,dword ptr [eax+310];TfmField.edFileId:TLabeledEdit
 0053C340    call        TPanel.SetCaption
>0053C345    jmp         0053C35A
 0053C347    mov         edx,53C834;'$21'
 0053C34C    mov         eax,dword ptr [ebp-4]
 0053C34F    mov         eax,dword ptr [eax+310];TfmField.edFileId:TLabeledEdit
 0053C355    call        TPanel.SetCaption
 0053C35A    mov         eax,dword ptr [ebp-4]
 0053C35D    mov         eax,dword ptr [eax+318];TfmField.cbFileId:TComboBox
 0053C363    mov         edx,dword ptr [eax]
 0053C365    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 0053C36B    sub         eax,1
>0053C36E    jb          0053C37B
>0053C370    je          0053C598
>0053C376    jmp         0053C7FD
 0053C37B    mov         eax,dword ptr [ebp-4]
 0053C37E    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C384    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C38A    mov         edx,dword ptr [eax]
 0053C38C    call        dword ptr [edx+44];TStrings.Clear
 0053C38F    mov         eax,dword ptr [ebp-4]
 0053C392    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C398    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C39E    mov         edx,53C840;'Std Fmt Model'
 0053C3A3    mov         ecx,dword ptr [eax]
 0053C3A5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C3A8    mov         eax,dword ptr [ebp-4]
 0053C3AB    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C3B1    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C3B7    mov         edx,53C858;'Alt1 Fmt Model'
 0053C3BC    mov         ecx,dword ptr [eax]
 0053C3BE    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C3C1    mov         eax,dword ptr [ebp-4]
 0053C3C4    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C3CA    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C3D0    mov         edx,53C870;'Alt2 Fmt Model'
 0053C3D5    mov         ecx,dword ptr [eax]
 0053C3D7    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C3DA    mov         eax,dword ptr [ebp-4]
 0053C3DD    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C3E3    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C3E9    mov         edx,53C888;'Alt3 Fmt Model'
 0053C3EE    mov         ecx,dword ptr [eax]
 0053C3F0    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C3F3    mov         eax,dword ptr [ebp-4]
 0053C3F6    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C3FC    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C402    mov         edx,53C8A0;'Alt4 Fmt Model'
 0053C407    mov         ecx,dword ptr [eax]
 0053C409    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C40C    mov         eax,dword ptr [ebp-4]
 0053C40F    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C415    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C41B    mov         edx,53C8B8;'Alt5 Fmt Model'
 0053C420    mov         ecx,dword ptr [eax]
 0053C422    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C425    mov         eax,dword ptr [ebp-4]
 0053C428    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C42E    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C434    mov         edx,53C8D0;'Std Max LBA'
 0053C439    mov         ecx,dword ptr [eax]
 0053C43B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C43E    mov         eax,dword ptr [ebp-4]
 0053C441    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C447    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C44D    mov         edx,53C8E4;'Alt1 Max LBA'
 0053C452    mov         ecx,dword ptr [eax]
 0053C454    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C457    mov         eax,dword ptr [ebp-4]
 0053C45A    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C460    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C466    mov         edx,53C8FC;'Alt2 Max LBA'
 0053C46B    mov         ecx,dword ptr [eax]
 0053C46D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C470    mov         eax,dword ptr [ebp-4]
 0053C473    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C479    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C47F    mov         edx,53C914;'Alt3 Max LBA'
 0053C484    mov         ecx,dword ptr [eax]
 0053C486    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C489    mov         eax,dword ptr [ebp-4]
 0053C48C    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C492    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C498    mov         edx,53C92C;'Alt4 Max LBA'
 0053C49D    mov         ecx,dword ptr [eax]
 0053C49F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C4A2    mov         eax,dword ptr [ebp-4]
 0053C4A5    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C4AB    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C4B1    mov         edx,53C944;'Alt5 Max LBA'
 0053C4B6    mov         ecx,dword ptr [eax]
 0053C4B8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C4BB    mov         eax,dword ptr [ebp-4]
 0053C4BE    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C4C4    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C4CA    mov         edx,53C95C;'Serial Number sting'
 0053C4CF    mov         ecx,dword ptr [eax]
 0053C4D1    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C4D4    mov         eax,dword ptr [ebp-4]
 0053C4D7    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C4DD    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C4E3    mov         edx,53C978;'Model string'
 0053C4E8    mov         ecx,dword ptr [eax]
 0053C4EA    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C4ED    mov         eax,dword ptr [ebp-4]
 0053C4F0    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C4F6    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C4FC    mov         edx,53C990;'DCM string'
 0053C501    mov         ecx,dword ptr [eax]
 0053C503    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C506    mov         eax,dword ptr [ebp-4]
 0053C509    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C50F    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C515    mov         edx,53C9A4;'Build Original string'
 0053C51A    mov         ecx,dword ptr [eax]
 0053C51C    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C51F    mov         eax,dword ptr [ebp-4]
 0053C522    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C528    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C52E    mov         edx,53C9C4;'Build Reconfig string'
 0053C533    mov         ecx,dword ptr [eax]
 0053C535    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C538    mov         eax,dword ptr [ebp-4]
 0053C53B    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C541    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C547    mov         edx,53C9E4;'Alt FW Ver string'
 0053C54C    mov         ecx,dword ptr [eax]
 0053C54E    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C551    mov         eax,dword ptr [ebp-4]
 0053C554    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C55A    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C560    mov         edx,53CA00;'Read_TLER'
 0053C565    mov         ecx,dword ptr [eax]
 0053C567    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C56A    mov         eax,dword ptr [ebp-4]
 0053C56D    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C573    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C579    mov         edx,53CA14;'Write_TLER'
 0053C57E    mov         ecx,dword ptr [eax]
 0053C580    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C583    mov         dl,1
 0053C585    mov         eax,dword ptr [ebp-4]
 0053C588    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C58E    mov         ecx,dword ptr [eax]
 0053C590    call        dword ptr [ecx+64];TImage.SetEnabled
>0053C593    jmp         0053C80D
 0053C598    mov         eax,dword ptr [ebp-4]
 0053C59B    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C5A1    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C5A7    mov         edx,dword ptr [eax]
 0053C5A9    call        dword ptr [edx+44];TStrings.Clear
 0053C5AC    mov         eax,dword ptr [ebp-4]
 0053C5AF    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C5B5    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C5BB    mov         edx,53CA28;'Serial Number'
 0053C5C0    mov         ecx,dword ptr [eax]
 0053C5C2    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C5C5    mov         eax,dword ptr [ebp-4]
 0053C5C8    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C5CE    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C5D4    mov         edx,53CA40;'Capacity Config'
 0053C5D9    mov         ecx,dword ptr [eax]
 0053C5DB    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C5DE    mov         eax,dword ptr [ebp-4]
 0053C5E1    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C5E7    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C5ED    mov         edx,53CA58;'Feature Control'
 0053C5F2    mov         ecx,dword ptr [eax]
 0053C5F4    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C5F7    mov         eax,dword ptr [ebp-4]
 0053C5FA    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C600    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C606    mov         edx,53CA70;'Cache Config 2mb'
 0053C60B    mov         ecx,dword ptr [eax]
 0053C60D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C610    mov         eax,dword ptr [ebp-4]
 0053C613    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C619    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C61F    mov         edx,53CA8C;'MRM RPO Config 2mb'
 0053C624    mov         ecx,dword ptr [eax]
 0053C626    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C629    mov         eax,dword ptr [ebp-4]
 0053C62C    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C632    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C638    mov         edx,53CAA8;'RSC Config 2mb'
 0053C63D    mov         ecx,dword ptr [eax]
 0053C63F    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C642    mov         eax,dword ptr [ebp-4]
 0053C645    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C64B    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C651    mov         edx,53CAC0;'Defect Management'
 0053C656    mov         ecx,dword ptr [eax]
 0053C658    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C65B    mov         eax,dword ptr [ebp-4]
 0053C65E    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C664    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C66A    mov         edx,53CADC;'Disk Config'
 0053C66F    mov         ecx,dword ptr [eax]
 0053C671    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C674    mov         eax,dword ptr [ebp-4]
 0053C677    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C67D    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C683    mov         edx,53CAF0;'Servo Config'
 0053C688    mov         ecx,dword ptr [eax]
 0053C68A    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C68D    mov         eax,dword ptr [ebp-4]
 0053C690    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C696    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C69C    mov         edx,53CB08;'Read Channel Config'
 0053C6A1    mov         ecx,dword ptr [eax]
 0053C6A3    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C6A6    mov         eax,dword ptr [ebp-4]
 0053C6A9    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C6AF    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C6B5    mov         edx,53CB24;'SMART Config'
 0053C6BA    mov         ecx,dword ptr [eax]
 0053C6BC    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C6BF    mov         eax,dword ptr [ebp-4]
 0053C6C2    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C6C8    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C6CE    mov         edx,53CB3C;'VSC Config'
 0053C6D3    mov         ecx,dword ptr [eax]
 0053C6D5    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C6D8    mov         eax,dword ptr [ebp-4]
 0053C6DB    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C6E1    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C6E7    mov         edx,53CB50;'Background Config'
 0053C6EC    mov         ecx,dword ptr [eax]
 0053C6EE    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C6F1    mov         eax,dword ptr [ebp-4]
 0053C6F4    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C6FA    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C700    mov         edx,53CB6C;'CDD Config'
 0053C705    mov         ecx,dword ptr [eax]
 0053C707    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C70A    mov         eax,dword ptr [ebp-4]
 0053C70D    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C713    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C719    mov         edx,53CB80;'Error Recovery'
 0053C71E    mov         ecx,dword ptr [eax]
 0053C720    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C723    mov         eax,dword ptr [ebp-4]
 0053C726    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C72C    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C732    mov         edx,53CB98;'Format'
 0053C737    mov         ecx,dword ptr [eax]
 0053C739    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C73C    mov         eax,dword ptr [ebp-4]
 0053C73F    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C745    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C74B    mov         edx,53CBA8;'Model String'
 0053C750    mov         ecx,dword ptr [eax]
 0053C752    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C755    mov         eax,dword ptr [ebp-4]
 0053C758    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C75E    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C764    mov         edx,53CBC0;'Drive Label'
 0053C769    mov         ecx,dword ptr [eax]
 0053C76B    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C76E    mov         eax,dword ptr [ebp-4]
 0053C771    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C777    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C77D    mov         edx,53CBD4;'Password'
 0053C782    mov         ecx,dword ptr [eax]
 0053C784    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C787    mov         eax,dword ptr [ebp-4]
 0053C78A    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C790    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C796    mov         edx,53CBE8;'Cache Config 8mb'
 0053C79B    mov         ecx,dword ptr [eax]
 0053C79D    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C7A0    mov         eax,dword ptr [ebp-4]
 0053C7A3    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C7A9    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C7AF    mov         edx,53CC04;'Mrm RPO Config 8mb'
 0053C7B4    mov         ecx,dword ptr [eax]
 0053C7B6    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C7B9    mov         eax,dword ptr [ebp-4]
 0053C7BC    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C7C2    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C7C8    mov         edx,53CC20;'RSC Config 8mb'
 0053C7CD    mov         ecx,dword ptr [eax]
 0053C7CF    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C7D2    mov         eax,dword ptr [ebp-4]
 0053C7D5    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C7DB    mov         eax,dword ptr [eax+23C];TComboBox.FItems:TStrings
 0053C7E1    mov         edx,53CC38;'SATA Section'
 0053C7E6    mov         ecx,dword ptr [eax]
 0053C7E8    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053C7EB    mov         dl,1
 0053C7ED    mov         eax,dword ptr [ebp-4]
 0053C7F0    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C7F6    mov         ecx,dword ptr [eax]
 0053C7F8    call        dword ptr [ecx+64];TImage.SetEnabled
>0053C7FB    jmp         0053C80D
 0053C7FD    xor         edx,edx
 0053C7FF    mov         eax,dword ptr [ebp-4]
 0053C802    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053C808    mov         ecx,dword ptr [eax]
 0053C80A    call        dword ptr [ecx+64];TImage.SetEnabled
 0053C80D    pop         ecx
 0053C80E    pop         ecx
 0053C80F    pop         ebp
 0053C810    ret
end;*}

//0053CC48
{*procedure TfmField.cbSectionChange(?:?);
begin
 0053CC48    push        ebp
 0053CC49    mov         ebp,esp
 0053CC4B    add         esp,0FFFFFFEC
 0053CC4E    xor         ecx,ecx
 0053CC50    mov         dword ptr [ebp-0C],ecx
 0053CC53    mov         dword ptr [ebp-8],edx
 0053CC56    mov         dword ptr [ebp-4],eax
 0053CC59    xor         eax,eax
 0053CC5B    push        ebp
 0053CC5C    push        53CCBA
 0053CC61    push        dword ptr fs:[eax]
 0053CC64    mov         dword ptr fs:[eax],esp
 0053CC67    lea         eax,[ebp-0C]
 0053CC6A    push        eax
 0053CC6B    mov         eax,dword ptr [ebp-4]
 0053CC6E    mov         eax,dword ptr [eax+31C];TfmField.cbSection:TComboBox
 0053CC74    mov         edx,dword ptr [eax]
 0053CC76    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 0053CC7C    inc         eax
 0053CC7D    mov         dword ptr [ebp-14],eax
 0053CC80    mov         byte ptr [ebp-10],0
 0053CC84    lea         edx,[ebp-14]
 0053CC87    xor         ecx,ecx
 0053CC89    mov         eax,53CCD0;'$%x'
 0053CC8E    call        0040D630
 0053CC93    mov         edx,dword ptr [ebp-0C]
 0053CC96    mov         eax,dword ptr [ebp-4]
 0053CC99    mov         eax,dword ptr [eax+2F8];TfmField.edSection:TLabeledEdit
 0053CC9F    call        TPanel.SetCaption
 0053CCA4    xor         eax,eax
 0053CCA6    pop         edx
 0053CCA7    pop         ecx
 0053CCA8    pop         ecx
 0053CCA9    mov         dword ptr fs:[eax],edx
 0053CCAC    push        53CCC1
 0053CCB1    lea         eax,[ebp-0C]
 0053CCB4    call        @LStrClr
 0053CCB9    ret
>0053CCBA    jmp         @HandleFinally
>0053CCBF    jmp         0053CCB1
 0053CCC1    mov         esp,ebp
 0053CCC3    pop         ebp
 0053CCC4    ret
end;*}

end.