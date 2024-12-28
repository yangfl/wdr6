//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uTable;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls;

type
  TfmTable = class(TForm)
  published
    cbTable:TComboBox;//f2F8
    edOffset:TLabeledEdit;//f2FC
    edLen:TLabeledEdit;//f300
    btRead:TButton;//f304
    btReadAll:TButton;//f308
    btDump:TButton;//f30C
    edNum:TLabeledEdit;//f310
    procedure btReadAllClick(Sender:TObject);//0053B110
    procedure btDumpClick(Sender:TObject);//0053B348
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0053ADE0
    procedure btReadClick(Sender:TObject);//0053AE08
  end;
    procedure sub_0053AD8C(?:TfmTable; ?:TfmHDD);//0053AD8C

implementation

{$R *.DFM}

//0053AD8C
procedure sub_0053AD8C(?:TfmTable; ?:TfmHDD);
begin
{*
 0053AD8C    push        ebp
 0053AD8D    mov         ebp,esp
 0053AD8F    add         esp,0FFFFFFF8
 0053AD92    mov         dword ptr [ebp-8],edx
 0053AD95    mov         dword ptr [ebp-4],eax
 0053AD98    cmp         dword ptr ds:[56DDDC],0;gvar_0056DDDC:TfmTable
>0053AD9F    jne         0053ADB5
 0053ADA1    mov         ecx,dword ptr [ebp-8]
 0053ADA4    mov         dl,1
 0053ADA6    mov         eax,[0053AB60];TfmTable
 0053ADAB    call        TfmProgress.Create;TfmTable.Create
 0053ADB0    mov         [0056DDDC],eax;gvar_0056DDDC:TfmTable
 0053ADB5    mov         eax,[0056DDDC];0x0 gvar_0056DDDC:TfmTable
 0053ADBA    cmp         byte ptr [eax+1A6],0;TfmTable.FShowing:Boolean
>0053ADC1    je          0053ADD2
 0053ADC3    mov         eax,[0056DDDC];0x0 gvar_0056DDDC:TfmTable
 0053ADC8    mov         edx,dword ptr [eax]
 0053ADCA    call        dword ptr [edx+0C4];TfmTable.sub_004A746C
>0053ADD0    jmp         0053ADDC
 0053ADD2    mov         eax,[0056DDDC];0x0 gvar_0056DDDC:TfmTable
 0053ADD7    call        004A7450
 0053ADDC    pop         ecx
 0053ADDD    pop         ecx
 0053ADDE    pop         ebp
 0053ADDF    ret
*}
end;

//0053ADE0
procedure TfmTable.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0053ADE0    push        ebp
 0053ADE1    mov         ebp,esp
 0053ADE3    add         esp,0FFFFFFF4
 0053ADE6    mov         dword ptr [ebp-8],ecx
 0053ADE9    mov         dword ptr [ebp-0C],edx
 0053ADEC    mov         dword ptr [ebp-4],eax
 0053ADEF    mov         eax,[0056E5A4];^gvar_0056DF04
 0053ADF4    mov         byte ptr [eax],1
 0053ADF7    xor         eax,eax
 0053ADF9    mov         [0056DDDC],eax;gvar_0056DDDC:TfmTable
 0053ADFE    mov         eax,dword ptr [ebp-8]
 0053AE01    mov         byte ptr [eax],2
 0053AE04    mov         esp,ebp
 0053AE06    pop         ebp
 0053AE07    ret
*}
end;

//0053AE08
procedure TfmTable.btReadClick(Sender:TObject);
begin
{*
 0053AE08    push        ebp
 0053AE09    mov         ebp,esp
 0053AE0B    add         esp,0FFFFFFB8
 0053AE0E    xor         ecx,ecx
 0053AE10    mov         dword ptr [ebp-44],ecx
 0053AE13    mov         dword ptr [ebp-48],ecx
 0053AE16    mov         dword ptr [ebp-2C],ecx
 0053AE19    mov         dword ptr [ebp-30],ecx
 0053AE1C    mov         dword ptr [ebp-28],ecx
 0053AE1F    mov         dword ptr [ebp-24],ecx
 0053AE22    mov         dword ptr [ebp-20],ecx
 0053AE25    mov         dword ptr [ebp-1C],ecx
 0053AE28    mov         dword ptr [ebp-18],ecx
 0053AE2B    mov         dword ptr [ebp-14],edx
 0053AE2E    mov         dword ptr [ebp-4],eax
 0053AE31    xor         eax,eax
 0053AE33    push        ebp
 0053AE34    push        53B093
 0053AE39    push        dword ptr fs:[eax]
 0053AE3C    mov         dword ptr fs:[eax],esp
 0053AE3F    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053AE45    mov         edx,dword ptr [edx]
 0053AE47    lea         eax,[ebp-18]
 0053AE4A    mov         ecx,53B0A8;'Table'
 0053AE4F    call        @LStrCat3
 0053AE54    mov         eax,dword ptr [ebp-18]
 0053AE57    call        0040C9A4
 0053AE5C    test        al,al
>0053AE5E    jne         0053AE92
 0053AE60    push        53B0B8;'Cannot create '
 0053AE65    mov         eax,[0056E2D0];^gvar_0056DF38
 0053AE6A    push        dword ptr [eax]
 0053AE6C    push        53B0A8;'Table'
 0053AE71    lea         eax,[ebp-1C]
 0053AE74    mov         edx,3
 0053AE79    call        @LStrCatN
 0053AE7E    mov         ecx,dword ptr [ebp-1C]
 0053AE81    mov         dl,1
 0053AE83    mov         eax,[0040B004];Exception
 0053AE88    call        Exception.Create;Exception.Create
 0053AE8D    call        @RaiseExcept
 0053AE92    mov         eax,dword ptr [ebp-4]
 0053AE95    mov         eax,dword ptr [eax+308];TfmTable.btReadAll:TButton
 0053AE9B    xor         edx,edx
 0053AE9D    mov         ecx,dword ptr [eax]
 0053AE9F    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AEA2    mov         eax,dword ptr [ebp-4]
 0053AEA5    mov         eax,dword ptr [eax+304];TfmTable.btRead:TButton
 0053AEAB    xor         edx,edx
 0053AEAD    mov         ecx,dword ptr [eax]
 0053AEAF    call        dword ptr [ecx+64];TImage.SetEnabled
 0053AEB2    mov         dl,1
 0053AEB4    mov         eax,[0041DE14];TMemoryStream
 0053AEB9    call        TObject.Create;TMemoryStream.Create
 0053AEBE    mov         dword ptr [ebp-8],eax
 0053AEC1    xor         eax,eax
 0053AEC3    push        ebp
 0053AEC4    push        53B02A
 0053AEC9    push        dword ptr fs:[eax]
 0053AECC    mov         dword ptr fs:[eax],esp
 0053AECF    mov         eax,dword ptr [ebp-4]
 0053AED2    mov         eax,dword ptr [eax+2F8];TfmTable.cbTable:TComboBox
 0053AED8    mov         edx,dword ptr [eax]
 0053AEDA    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 0053AEE0    sub         eax,1
>0053AEE3    jb          0053AEEF
>0053AEE5    je          0053AEF7
 0053AEE7    dec         eax
>0053AEE8    je          0053AEFF
 0053AEEA    dec         eax
>0053AEEB    je          0053AF07
>0053AEED    jmp         0053AF0F
 0053AEEF    mov         word ptr [ebp-10],1
>0053AEF5    jmp         0053AF15
 0053AEF7    mov         word ptr [ebp-10],4
>0053AEFD    jmp         0053AF15
 0053AEFF    mov         word ptr [ebp-10],7
>0053AF05    jmp         0053AF15
 0053AF07    mov         word ptr [ebp-10],0A
>0053AF0D    jmp         0053AF15
 0053AF0F    mov         word ptr [ebp-10],1
 0053AF15    lea         edx,[ebp-20]
 0053AF18    mov         eax,dword ptr [ebp-4]
 0053AF1B    mov         eax,dword ptr [eax+310];TfmTable.edNum:TLabeledEdit
 0053AF21    call        TPanel.GetCaption
 0053AF26    mov         eax,dword ptr [ebp-20]
 0053AF29    xor         edx,edx
 0053AF2B    call        0040C4A8
 0053AF30    mov         word ptr [ebp-0C],ax
 0053AF34    lea         edx,[ebp-24]
 0053AF37    mov         eax,dword ptr [ebp-4]
 0053AF3A    mov         eax,dword ptr [eax+2FC];TfmTable.edOffset:TLabeledEdit
 0053AF40    call        TPanel.GetCaption
 0053AF45    mov         eax,dword ptr [ebp-24]
 0053AF48    xor         edx,edx
 0053AF4A    call        0040C4A8
 0053AF4F    mov         word ptr [ebp-0A],ax
 0053AF53    lea         edx,[ebp-28]
 0053AF56    mov         eax,dword ptr [ebp-4]
 0053AF59    mov         eax,dword ptr [eax+300];TfmTable.edLen:TLabeledEdit
 0053AF5F    call        TPanel.GetCaption
 0053AF64    mov         eax,dword ptr [ebp-28]
 0053AF67    xor         edx,edx
 0053AF69    call        0040C4A8
 0053AF6E    mov         word ptr [ebp-0E],ax
 0053AF72    mov         ax,word ptr [ebp-10]
 0053AF76    push        eax
 0053AF77    mov         eax,dword ptr [ebp-8]
 0053AF7A    push        eax
 0053AF7B    mov         cx,word ptr [ebp-0E]
 0053AF7F    mov         dx,word ptr [ebp-0A]
 0053AF83    mov         ax,word ptr [ebp-0C]
 0053AF87    call        004D108C
 0053AF8C    test        al,al
>0053AF8E    je          0053AFDC
 0053AF90    lea         eax,[ebp-30]
 0053AF93    push        eax
 0053AF94    movzx       eax,word ptr [ebp-10]
 0053AF98    mov         dword ptr [ebp-40],eax
 0053AF9B    mov         byte ptr [ebp-3C],0
 0053AF9F    movzx       eax,word ptr [ebp-0C]
 0053AFA3    mov         dword ptr [ebp-38],eax
 0053AFA6    mov         byte ptr [ebp-34],0
 0053AFAA    lea         edx,[ebp-40]
 0053AFAD    mov         ecx,1
 0053AFB2    mov         eax,53B0D0;'Table\Table_%x_%x.bin'
 0053AFB7    call        0040D630
 0053AFBC    mov         ecx,dword ptr [ebp-30]
 0053AFBF    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053AFC5    mov         edx,dword ptr [edx]
 0053AFC7    lea         eax,[ebp-2C]
 0053AFCA    call        @LStrCat3
 0053AFCF    mov         edx,dword ptr [ebp-2C]
 0053AFD2    mov         eax,dword ptr [ebp-8]
 0053AFD5    call        00423E84
>0053AFDA    jmp         0053B014
 0053AFDC    call        004CEB6C
 0053AFE1    push        53B0F0;'Read Memory Table '
 0053AFE6    lea         ecx,[ebp-48]
 0053AFE9    movzx       eax,word ptr [ebp-0C]
 0053AFED    mov         edx,4
 0053AFF2    call        IntToHex
 0053AFF7    push        dword ptr [ebp-48]
 0053AFFA    push        53B10C;' - '
 0053AFFF    lea         eax,[ebp-44]
 0053B002    mov         edx,3
 0053B007    call        @LStrCatN
 0053B00C    mov         eax,dword ptr [ebp-44]
 0053B00F    call        00544F6C
 0053B014    xor         eax,eax
 0053B016    pop         edx
 0053B017    pop         ecx
 0053B018    pop         ecx
 0053B019    mov         dword ptr fs:[eax],edx
 0053B01C    push        53B031
 0053B021    mov         eax,dword ptr [ebp-8]
 0053B024    call        TObject.Free
 0053B029    ret
>0053B02A    jmp         @HandleFinally
>0053B02F    jmp         0053B021
 0053B031    mov         eax,dword ptr [ebp-4]
 0053B034    mov         eax,dword ptr [eax+308];TfmTable.btReadAll:TButton
 0053B03A    mov         dl,1
 0053B03C    mov         ecx,dword ptr [eax]
 0053B03E    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B041    mov         eax,dword ptr [ebp-4]
 0053B044    mov         eax,dword ptr [eax+304];TfmTable.btRead:TButton
 0053B04A    mov         dl,1
 0053B04C    mov         ecx,dword ptr [eax]
 0053B04E    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B051    xor         eax,eax
 0053B053    pop         edx
 0053B054    pop         ecx
 0053B055    pop         ecx
 0053B056    mov         dword ptr fs:[eax],edx
 0053B059    push        53B09A
 0053B05E    lea         eax,[ebp-48]
 0053B061    mov         edx,2
 0053B066    call        @LStrArrayClr
 0053B06B    lea         eax,[ebp-30]
 0053B06E    mov         edx,2
 0053B073    call        @LStrArrayClr
 0053B078    lea         eax,[ebp-28]
 0053B07B    mov         edx,3
 0053B080    call        @LStrArrayClr
 0053B085    lea         eax,[ebp-1C]
 0053B088    mov         edx,2
 0053B08D    call        @LStrArrayClr
 0053B092    ret
>0053B093    jmp         @HandleFinally
>0053B098    jmp         0053B05E
 0053B09A    mov         esp,ebp
 0053B09C    pop         ebp
 0053B09D    ret
*}
end;

//0053B110
procedure TfmTable.btReadAllClick(Sender:TObject);
begin
{*
 0053B110    push        ebp
 0053B111    mov         ebp,esp
 0053B113    add         esp,0FFFFFFCC
 0053B116    xor         ecx,ecx
 0053B118    mov         dword ptr [ebp-20],ecx
 0053B11B    mov         dword ptr [ebp-24],ecx
 0053B11E    mov         dword ptr [ebp-1C],ecx
 0053B121    mov         dword ptr [ebp-18],ecx
 0053B124    mov         dword ptr [ebp-14],edx
 0053B127    mov         dword ptr [ebp-4],eax
 0053B12A    xor         eax,eax
 0053B12C    push        ebp
 0053B12D    push        53B2F4
 0053B132    push        dword ptr fs:[eax]
 0053B135    mov         dword ptr fs:[eax],esp
 0053B138    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053B13E    mov         edx,dword ptr [edx]
 0053B140    lea         eax,[ebp-18]
 0053B143    mov         ecx,53B308;'Table'
 0053B148    call        @LStrCat3
 0053B14D    mov         eax,dword ptr [ebp-18]
 0053B150    call        0040C9A4
 0053B155    test        al,al
>0053B157    jne         0053B18B
 0053B159    push        53B318;'Cannot create '
 0053B15E    mov         eax,[0056E2D0];^gvar_0056DF38
 0053B163    push        dword ptr [eax]
 0053B165    push        53B308;'Table'
 0053B16A    lea         eax,[ebp-1C]
 0053B16D    mov         edx,3
 0053B172    call        @LStrCatN
 0053B177    mov         ecx,dword ptr [ebp-1C]
 0053B17A    mov         dl,1
 0053B17C    mov         eax,[0040B004];Exception
 0053B181    call        Exception.Create;Exception.Create
 0053B186    call        @RaiseExcept
 0053B18B    mov         eax,dword ptr [ebp-4]
 0053B18E    mov         eax,dword ptr [eax+308];TfmTable.btReadAll:TButton
 0053B194    xor         edx,edx
 0053B196    mov         ecx,dword ptr [eax]
 0053B198    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B19B    mov         eax,dword ptr [ebp-4]
 0053B19E    mov         eax,dword ptr [eax+304];TfmTable.btRead:TButton
 0053B1A4    xor         edx,edx
 0053B1A6    mov         ecx,dword ptr [eax]
 0053B1A8    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B1AB    mov         dl,1
 0053B1AD    mov         eax,[0041DE14];TMemoryStream
 0053B1B2    call        TObject.Create;TMemoryStream.Create
 0053B1B7    mov         dword ptr [ebp-8],eax
 0053B1BA    xor         eax,eax
 0053B1BC    push        ebp
 0053B1BD    push        53B2B2
 0053B1C2    push        dword ptr fs:[eax]
 0053B1C5    mov         dword ptr fs:[eax],esp
 0053B1C8    mov         eax,dword ptr [ebp-4]
 0053B1CB    mov         eax,dword ptr [eax+2F8];TfmTable.cbTable:TComboBox
 0053B1D1    mov         edx,dword ptr [eax]
 0053B1D3    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 0053B1D9    sub         eax,1
>0053B1DC    jb          0053B1E8
>0053B1DE    je          0053B1F0
 0053B1E0    dec         eax
>0053B1E1    je          0053B1F8
 0053B1E3    dec         eax
>0053B1E4    je          0053B200
>0053B1E6    jmp         0053B208
 0053B1E8    mov         word ptr [ebp-10],1
>0053B1EE    jmp         0053B20E
 0053B1F0    mov         word ptr [ebp-10],4
>0053B1F6    jmp         0053B20E
 0053B1F8    mov         word ptr [ebp-10],7
>0053B1FE    jmp         0053B20E
 0053B200    mov         word ptr [ebp-10],0A
>0053B206    jmp         0053B20E
 0053B208    mov         word ptr [ebp-10],1
 0053B20E    mov         word ptr [ebp-0A],0
 0053B214    mov         word ptr [ebp-0E],0
 0053B21A    mov         word ptr [ebp-0C],0
 0053B220    mov         eax,dword ptr [ebp-8]
 0053B223    call        00423F20
 0053B228    mov         ax,word ptr [ebp-10]
 0053B22C    push        eax
 0053B22D    mov         eax,dword ptr [ebp-8]
 0053B230    push        eax
 0053B231    mov         cx,word ptr [ebp-0E]
 0053B235    mov         dx,word ptr [ebp-0A]
 0053B239    mov         ax,word ptr [ebp-0C]
 0053B23D    call        004D108C
 0053B242    test        al,al
>0053B244    je          0053B290
 0053B246    lea         eax,[ebp-24]
 0053B249    push        eax
 0053B24A    movzx       eax,word ptr [ebp-10]
 0053B24E    mov         dword ptr [ebp-34],eax
 0053B251    mov         byte ptr [ebp-30],0
 0053B255    movzx       eax,word ptr [ebp-0C]
 0053B259    mov         dword ptr [ebp-2C],eax
 0053B25C    mov         byte ptr [ebp-28],0
 0053B260    lea         edx,[ebp-34]
 0053B263    mov         ecx,1
 0053B268    mov         eax,53B330;'Table\Table_%x_%x.bin'
 0053B26D    call        0040D630
 0053B272    mov         ecx,dword ptr [ebp-24]
 0053B275    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053B27B    mov         edx,dword ptr [edx]
 0053B27D    lea         eax,[ebp-20]
 0053B280    call        @LStrCat3
 0053B285    mov         edx,dword ptr [ebp-20]
 0053B288    mov         eax,dword ptr [ebp-8]
 0053B28B    call        00423E84
 0053B290    inc         word ptr [ebp-0C]
 0053B294    cmp         word ptr [ebp-0C],100
>0053B29A    jne         0053B220
 0053B29C    xor         eax,eax
 0053B29E    pop         edx
 0053B29F    pop         ecx
 0053B2A0    pop         ecx
 0053B2A1    mov         dword ptr fs:[eax],edx
 0053B2A4    push        53B2B9
 0053B2A9    mov         eax,dword ptr [ebp-8]
 0053B2AC    call        TObject.Free
 0053B2B1    ret
>0053B2B2    jmp         @HandleFinally
>0053B2B7    jmp         0053B2A9
 0053B2B9    mov         eax,dword ptr [ebp-4]
 0053B2BC    mov         eax,dword ptr [eax+308];TfmTable.btReadAll:TButton
 0053B2C2    mov         dl,1
 0053B2C4    mov         ecx,dword ptr [eax]
 0053B2C6    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B2C9    mov         eax,dword ptr [ebp-4]
 0053B2CC    mov         eax,dword ptr [eax+304];TfmTable.btRead:TButton
 0053B2D2    mov         dl,1
 0053B2D4    mov         ecx,dword ptr [eax]
 0053B2D6    call        dword ptr [ecx+64];TImage.SetEnabled
 0053B2D9    xor         eax,eax
 0053B2DB    pop         edx
 0053B2DC    pop         ecx
 0053B2DD    pop         ecx
 0053B2DE    mov         dword ptr fs:[eax],edx
 0053B2E1    push        53B2FB
 0053B2E6    lea         eax,[ebp-24]
 0053B2E9    mov         edx,4
 0053B2EE    call        @LStrArrayClr
 0053B2F3    ret
>0053B2F4    jmp         @HandleFinally
>0053B2F9    jmp         0053B2E6
 0053B2FB    mov         esp,ebp
 0053B2FD    pop         ebp
 0053B2FE    ret
*}
end;

//0053B348
procedure TfmTable.btDumpClick(Sender:TObject);
begin
{*
 0053B348    push        ebp
 0053B349    mov         ebp,esp
 0053B34B    xor         ecx,ecx
 0053B34D    push        ecx
 0053B34E    push        ecx
 0053B34F    push        ecx
 0053B350    push        ecx
 0053B351    push        ecx
 0053B352    mov         dword ptr [ebp-8],edx
 0053B355    mov         dword ptr [ebp-4],eax
 0053B358    xor         eax,eax
 0053B35A    push        ebp
 0053B35B    push        53B40C
 0053B360    push        dword ptr fs:[eax]
 0053B363    mov         dword ptr fs:[eax],esp
 0053B366    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053B36C    mov         edx,dword ptr [edx]
 0053B36E    lea         eax,[ebp-0C]
 0053B371    mov         ecx,53B420;'Table'
 0053B376    call        @LStrCat3
 0053B37B    mov         edx,dword ptr [ebp-0C]
 0053B37E    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053B383    mov         eax,dword ptr [eax]
 0053B385    mov         eax,dword ptr [eax+35C]
 0053B38B    call        TOpenDialog.SetInitialDir
 0053B390    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053B395    mov         eax,dword ptr [eax]
 0053B397    mov         eax,dword ptr [eax+35C]
 0053B39D    mov         edx,dword ptr [eax]
 0053B39F    call        dword ptr [edx+3C]
 0053B3A2    test        al,al
>0053B3A4    je          0053B3E9
 0053B3A6    lea         edx,[ebp-10]
 0053B3A9    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053B3AE    mov         eax,dword ptr [eax]
 0053B3B0    mov         eax,dword ptr [eax+35C]
 0053B3B6    call        TOpenDialog.GetFileName
 0053B3BB    mov         eax,dword ptr [ebp-10]
 0053B3BE    call        0040C94C
 0053B3C3    test        al,al
>0053B3C5    je          0053B3E9
 0053B3C7    lea         edx,[ebp-14]
 0053B3CA    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053B3CF    mov         eax,dword ptr [eax]
 0053B3D1    mov         eax,dword ptr [eax+35C]
 0053B3D7    call        TOpenDialog.GetFileName
 0053B3DC    mov         edx,dword ptr [ebp-14]
 0053B3DF    mov         eax,[004F3EB8];TfmViewer
 0053B3E4    call        004F4640
 0053B3E9    xor         eax,eax
 0053B3EB    pop         edx
 0053B3EC    pop         ecx
 0053B3ED    pop         ecx
 0053B3EE    mov         dword ptr fs:[eax],edx
 0053B3F1    push        53B413
 0053B3F6    lea         eax,[ebp-14]
 0053B3F9    mov         edx,2
 0053B3FE    call        @LStrArrayClr
 0053B403    lea         eax,[ebp-0C]
 0053B406    call        @LStrClr
 0053B40B    ret
>0053B40C    jmp         @HandleFinally
>0053B411    jmp         0053B3F6
 0053B413    mov         esp,ebp
 0053B415    pop         ebp
 0053B416    ret
*}
end;

end.