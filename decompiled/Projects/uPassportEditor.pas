//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uPassportEditor;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls;

type
  TfmPassport = class(TForm)
  published
    btWrite:TButton;//f2F8
    btRead:TButton;//f2FC
    edModel:TLabeledEdit;//f300
    edSerial:TLabeledEdit;//f304
    edLba0:TLabeledEdit;//f308
    edLba1:TLabeledEdit;//f30C
    edLba2:TLabeledEdit;//f310
    edLba3:TLabeledEdit;//f314
    edHeads:TLabeledEdit;//f318
    edSectors:TLabeledEdit;//f31C
    edTracks:TLabeledEdit;//f320
    cbAuto:TComboBox;//f324
    edPsw:TLabeledEdit;//f328
    cbUpdateValue:TCheckBox;//f32C
    cbReadFact:TComboBox;//f330
    procedure FormDestroy(Sender:TObject);//004F7034
    procedure FormShow(Sender:TObject);//004F6F74
    procedure cbUpdateValueClick(Sender:TObject);//004F7954
    //procedure cbReadFactChange(?:?);//004F7710
    procedure btWriteClick(Sender:TObject);//004F6D0C
    procedure btReadClick(Sender:TObject);//004F6C14
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//004F6F54
    //procedure cbAutoChange(?:?);//004F6D4C
  end;
    procedure sub_004F63C8(?:TfmPassport; ?:TfmHDD);//004F63C8
    //function sub_004F641C(?:TMemoryStream):?;//004F641C
    procedure sub_004F64C8(?:TMemoryStream);//004F64C8
    procedure sub_004F64D4(?:TMemoryStream);//004F64D4
    procedure sub_004F67F4(?:TMemoryStream);//004F67F4
    //procedure sub_004F7058(?:?; ?:?);//004F7058

implementation

{$R *.DFM}

//004F63C8
procedure sub_004F63C8(?:TfmPassport; ?:TfmHDD);
begin
{*
 004F63C8    push        ebp
 004F63C9    mov         ebp,esp
 004F63CB    add         esp,0FFFFFFF8
 004F63CE    mov         dword ptr [ebp-8],edx
 004F63D1    mov         dword ptr [ebp-4],eax
 004F63D4    cmp         dword ptr ds:[56D210],0;gvar_0056D210:TfmPassport
>004F63DB    jne         004F63F1
 004F63DD    mov         ecx,dword ptr [ebp-8]
 004F63E0    mov         dl,1
 004F63E2    mov         eax,[004F4ECC];TfmPassport
 004F63E7    call        TfmProgress.Create;TfmPassport.Create
 004F63EC    mov         [0056D210],eax;gvar_0056D210:TfmPassport
 004F63F1    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F63F6    cmp         byte ptr [eax+1A6],0;TfmPassport.FShowing:Boolean
>004F63FD    je          004F640E
 004F63FF    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6404    mov         edx,dword ptr [eax]
 004F6406    call        dword ptr [edx+0C4];TfmPassport.sub_004A746C
>004F640C    jmp         004F6418
 004F640E    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6413    call        004A7450
 004F6418    pop         ecx
 004F6419    pop         ecx
 004F641A    pop         ebp
 004F641B    ret
*}
end;

//004F641C
{*function sub_004F641C(?:TMemoryStream):?;
begin
 004F641C    push        ebp
 004F641D    mov         ebp,esp
 004F641F    add         esp,0FFFFFFE8
 004F6422    push        ebx
 004F6423    mov         dword ptr [ebp-4],eax
 004F6426    xor         ecx,ecx
 004F6428    xor         edx,edx
 004F642A    mov         eax,dword ptr [ebp-4]
 004F642D    mov         ebx,dword ptr [eax]
 004F642F    call        dword ptr [ebx+14]
 004F6432    mov         eax,dword ptr [ebp-4]
 004F6435    call        004CE56C
 004F643A    mov         dword ptr [ebp-14],eax
 004F643D    cmp         dword ptr [ebp-14],4C594F52
>004F6444    jne         004F6457
 004F6446    xor         ecx,ecx
 004F6448    mov         edx,30
 004F644D    mov         eax,dword ptr [ebp-4]
 004F6450    mov         ebx,dword ptr [eax]
 004F6452    call        dword ptr [ebx+14]
>004F6455    jmp         004F6466
 004F6457    xor         ecx,ecx
 004F6459    mov         edx,18
 004F645E    mov         eax,dword ptr [ebp-4]
 004F6461    mov         ebx,dword ptr [eax]
 004F6463    call        dword ptr [ebx+14]
 004F6466    mov         eax,dword ptr [ebp-4]
 004F6469    call        004CE548
 004F646E    mov         byte ptr [ebp-0D],al
 004F6471    xor         eax,eax
 004F6473    mov         al,byte ptr [ebp-0D]
 004F6476    dec         eax
 004F6477    test        eax,eax
>004F6479    jl          004F64B4
 004F647B    inc         eax
 004F647C    mov         dword ptr [ebp-18],eax
 004F647F    mov         dword ptr [ebp-0C],0
 004F6486    mov         eax,dword ptr [ebp-4]
 004F6489    call        004CE548
 004F648E    mov         edx,dword ptr [ebp-0C]
 004F6491    mov         word ptr [edx*4+572440],ax;gvar_00572440
 004F6499    mov         eax,dword ptr [ebp-4]
 004F649C    call        004CE548
 004F64A1    mov         edx,dword ptr [ebp-0C]
 004F64A4    mov         word ptr [edx*4+572442],ax;gvar_00572442
 004F64AC    inc         dword ptr [ebp-0C]
 004F64AF    dec         dword ptr [ebp-18]
>004F64B2    jne         004F6486
 004F64B4    xor         eax,eax
 004F64B6    mov         al,byte ptr [ebp-0D]
 004F64B9    mov         word ptr [ebp-6],ax
 004F64BD    mov         ax,word ptr [ebp-6]
 004F64C1    pop         ebx
 004F64C2    mov         esp,ebp
 004F64C4    pop         ebp
 004F64C5    ret
end;*}

//004F64C8
procedure sub_004F64C8(?:TMemoryStream);
begin
{*
 004F64C8    push        ebp
 004F64C9    mov         ebp,esp
 004F64CB    push        ecx
 004F64CC    mov         dword ptr [ebp-4],eax
 004F64CF    pop         ecx
 004F64D0    pop         ebp
 004F64D1    ret
*}
end;

//004F64D4
procedure sub_004F64D4(?:TMemoryStream);
begin
{*
 004F64D4    push        ebp
 004F64D5    mov         ebp,esp
 004F64D7    mov         ecx,1E
 004F64DC    push        0
 004F64DE    push        0
 004F64E0    dec         ecx
>004F64E1    jne         004F64DC
 004F64E3    push        ecx
 004F64E4    push        ebx
 004F64E5    mov         dword ptr [ebp-4],eax
 004F64E8    xor         eax,eax
 004F64EA    push        ebp
 004F64EB    push        4F67DA
 004F64F0    push        dword ptr fs:[eax]
 004F64F3    mov         dword ptr fs:[eax],esp
 004F64F6    mov         eax,dword ptr [ebp-4]
 004F64F9    call        004F641C
 004F64FE    mov         byte ptr [ebp-5],al
 004F6501    cmp         byte ptr [ebp-5],0
>004F6505    jbe         004F67BC
 004F650B    movzx       edx,word ptr ds:[572440];0x0 gvar_00572440
 004F6512    add         edx,2
 004F6515    xor         ecx,ecx
 004F6517    mov         eax,dword ptr [ebp-4]
 004F651A    mov         ebx,dword ptr [eax]
 004F651C    call        dword ptr [ebx+14]
 004F651F    movzx       ecx,word ptr ds:[572442];0x0 gvar_00572442
 004F6526    sub         ecx,2
 004F6529    lea         edx,[ebp-46]
 004F652C    mov         eax,dword ptr [ebp-4]
 004F652F    call        TStream.ReadBuffer
 004F6534    lea         eax,[ebp-0CC]
 004F653A    lea         edx,[ebp-46]
 004F653D    mov         ecx,41
 004F6542    call        @LStrFromArray
 004F6547    mov         edx,dword ptr [ebp-0CC]
 004F654D    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6552    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F6558    call        TPanel.SetCaption
 004F655D    movzx       edx,word ptr ds:[572442];0x0 gvar_00572442
 004F6564    sub         edx,2
 004F6567    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F656C    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F6572    call        TLabeledEdit.SetMaxLength
 004F6577    movzx       edx,word ptr ds:[572480];0x0 gvar_00572480
 004F657E    add         edx,2
 004F6581    xor         ecx,ecx
 004F6583    mov         eax,dword ptr [ebp-4]
 004F6586    mov         ebx,dword ptr [eax]
 004F6588    call        dword ptr [ebx+14]
 004F658B    movzx       ecx,word ptr ds:[572482];0x0 gvar_00572482
 004F6592    sub         ecx,2
 004F6595    lea         edx,[ebp-87]
 004F659B    mov         eax,dword ptr [ebp-4]
 004F659E    call        TStream.ReadBuffer
 004F65A3    lea         eax,[ebp-0D0]
 004F65A9    lea         edx,[ebp-87]
 004F65AF    mov         ecx,41
 004F65B4    call        @LStrFromArray
 004F65B9    mov         edx,dword ptr [ebp-0D0]
 004F65BF    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F65C4    mov         eax,dword ptr [eax+300];TfmPassport.edModel:TLabeledEdit
 004F65CA    call        TPanel.SetCaption
 004F65CF    movzx       edx,word ptr ds:[572482];0x0 gvar_00572482
 004F65D6    sub         edx,2
 004F65D9    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F65DE    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F65E4    call        TLabeledEdit.SetMaxLength
 004F65E9    movzx       edx,word ptr ds:[572444];0x0 gvar_00572444
 004F65F0    add         edx,2
 004F65F3    xor         ecx,ecx
 004F65F5    mov         eax,dword ptr [ebp-4]
 004F65F8    mov         ebx,dword ptr [eax]
 004F65FA    call        dword ptr [ebx+14]
 004F65FD    mov         eax,dword ptr [ebp-4]
 004F6600    call        004CE528
 004F6605    and         eax,0FF
 004F660A    lea         edx,[ebp-0D4]
 004F6610    call        IntToStr
 004F6615    mov         edx,dword ptr [ebp-0D4]
 004F661B    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6620    mov         eax,dword ptr [eax+318];TfmPassport.edHeads:TLabeledEdit
 004F6626    call        TPanel.SetCaption
 004F662B    mov         eax,dword ptr [ebp-4]
 004F662E    call        004CE528
 004F6633    and         eax,0FF
 004F6638    lea         edx,[ebp-0D8]
 004F663E    call        IntToStr
 004F6643    mov         edx,dword ptr [ebp-0D8]
 004F6649    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F664E    mov         eax,dword ptr [eax+31C];TfmPassport.edSectors:TLabeledEdit
 004F6654    call        TPanel.SetCaption
 004F6659    mov         eax,dword ptr [ebp-4]
 004F665C    call        004CE56C
 004F6661    xor         edx,edx
 004F6663    push        edx
 004F6664    push        eax
 004F6665    lea         eax,[ebp-0DC]
 004F666B    call        IntToStr
 004F6670    mov         edx,dword ptr [ebp-0DC]
 004F6676    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F667B    mov         eax,dword ptr [eax+320];TfmPassport.edTracks:TLabeledEdit
 004F6681    call        TPanel.SetCaption
 004F6686    mov         eax,dword ptr [ebp-4]
 004F6689    call        004CE56C
 004F668E    xor         edx,edx
 004F6690    push        edx
 004F6691    push        eax
 004F6692    lea         eax,[ebp-0E0]
 004F6698    call        IntToStr
 004F669D    mov         edx,dword ptr [ebp-0E0]
 004F66A3    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F66A8    mov         eax,dword ptr [eax+308];TfmPassport.edLba0:TLabeledEdit
 004F66AE    call        TPanel.SetCaption
 004F66B3    mov         eax,dword ptr [ebp-4]
 004F66B6    call        004CE56C
 004F66BB    xor         edx,edx
 004F66BD    push        edx
 004F66BE    push        eax
 004F66BF    lea         eax,[ebp-0E4]
 004F66C5    call        IntToStr
 004F66CA    mov         edx,dword ptr [ebp-0E4]
 004F66D0    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F66D5    mov         eax,dword ptr [eax+30C];TfmPassport.edLba1:TLabeledEdit
 004F66DB    call        TPanel.SetCaption
 004F66E0    mov         eax,dword ptr [ebp-4]
 004F66E3    call        004CE56C
 004F66E8    xor         edx,edx
 004F66EA    push        edx
 004F66EB    push        eax
 004F66EC    lea         eax,[ebp-0E8]
 004F66F2    call        IntToStr
 004F66F7    mov         edx,dword ptr [ebp-0E8]
 004F66FD    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6702    mov         eax,dword ptr [eax+310];TfmPassport.edLba2:TLabeledEdit
 004F6708    call        TPanel.SetCaption
 004F670D    mov         eax,dword ptr [ebp-4]
 004F6710    call        004CE56C
 004F6715    xor         edx,edx
 004F6717    push        edx
 004F6718    push        eax
 004F6719    lea         eax,[ebp-0EC]
 004F671F    call        IntToStr
 004F6724    mov         edx,dword ptr [ebp-0EC]
 004F672A    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F672F    mov         eax,dword ptr [eax+314];TfmPassport.edLba3:TLabeledEdit
 004F6735    call        TPanel.SetCaption
 004F673A    movzx       edx,word ptr ds:[572488];0x0 gvar_00572488
 004F6741    add         edx,2
 004F6744    xor         ecx,ecx
 004F6746    mov         eax,dword ptr [ebp-4]
 004F6749    mov         ebx,dword ptr [eax]
 004F674B    call        dword ptr [ebx+14]
 004F674E    mov         eax,dword ptr [ebp-4]
 004F6751    call        004CE548
 004F6756    movzx       eax,ax
 004F6759    lea         ecx,[ebp-0F4]
 004F675F    mov         edx,4
 004F6764    call        IntToHex
 004F6769    mov         ecx,dword ptr [ebp-0F4]
 004F676F    lea         eax,[ebp-0F0]
 004F6775    mov         edx,4F67F0;'$'
 004F677A    call        @LStrCat3
 004F677F    mov         edx,dword ptr [ebp-0F0]
 004F6785    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F678A    mov         eax,dword ptr [eax+328];TfmPassport.edPsw:TLabeledEdit
 004F6790    call        TPanel.SetCaption
 004F6795    movzx       edx,word ptr ds:[572484];0x0 gvar_00572484
 004F679C    add         edx,2
 004F679F    xor         ecx,ecx
 004F67A1    mov         eax,dword ptr [ebp-4]
 004F67A4    mov         ebx,dword ptr [eax]
 004F67A6    call        dword ptr [ebx+14]
 004F67A9    lea         edx,[ebp-0C8]
 004F67AF    mov         ecx,16
 004F67B4    mov         eax,dword ptr [ebp-4]
 004F67B7    call        TStream.ReadBuffer
 004F67BC    xor         eax,eax
 004F67BE    pop         edx
 004F67BF    pop         ecx
 004F67C0    pop         ecx
 004F67C1    mov         dword ptr fs:[eax],edx
 004F67C4    push        4F67E1
 004F67C9    lea         eax,[ebp-0F4]
 004F67CF    mov         edx,0B
 004F67D4    call        @LStrArrayClr
 004F67D9    ret
>004F67DA    jmp         @HandleFinally
>004F67DF    jmp         004F67C9
 004F67E1    pop         ebx
 004F67E2    mov         esp,ebp
 004F67E4    pop         ebp
 004F67E5    ret
*}
end;

//004F67F4
procedure sub_004F67F4(?:TMemoryStream);
begin
{*
 004F67F4    push        ebp
 004F67F5    mov         ebp,esp
 004F67F7    mov         ecx,39
 004F67FC    push        0
 004F67FE    push        0
 004F6800    dec         ecx
>004F6801    jne         004F67FC
 004F6803    push        ebx
 004F6804    mov         dword ptr [ebp-4],eax
 004F6807    xor         eax,eax
 004F6809    push        ebp
 004F680A    push        4F6BF9
 004F680F    push        dword ptr fs:[eax]
 004F6812    mov         dword ptr fs:[eax],esp
 004F6815    mov         eax,dword ptr [ebp-4]
 004F6818    call        004F641C
 004F681D    mov         byte ptr [ebp-5],al
 004F6820    cmp         byte ptr [ebp-5],0
>004F6824    jbe         004F6BCB
 004F682A    movzx       edx,word ptr ds:[572440];0x0 gvar_00572440
 004F6831    add         edx,2
 004F6834    xor         ecx,ecx
 004F6836    mov         eax,dword ptr [ebp-4]
 004F6839    mov         ebx,dword ptr [eax]
 004F683B    call        dword ptr [ebx+14]
>004F683E    jmp         004F687C
 004F6840    lea         edx,[ebp-94]
 004F6846    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F684B    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F6851    call        TPanel.GetCaption
 004F6856    lea         eax,[ebp-94]
 004F685C    mov         edx,4F6C10;' '
 004F6861    call        @LStrCat
 004F6866    mov         edx,dword ptr [ebp-94]
 004F686C    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6871    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F6877    call        TPanel.SetCaption
 004F687C    lea         edx,[ebp-98]
 004F6882    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6887    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F688D    call        TPanel.GetCaption
 004F6892    mov         eax,dword ptr [ebp-98]
 004F6898    call        @LStrLen
 004F689D    movzx       edx,word ptr ds:[572442];0x0 gvar_00572442
 004F68A4    sub         edx,2
 004F68A7    cmp         eax,edx
>004F68A9    jl          004F6840
 004F68AB    lea         edx,[ebp-19C]
 004F68B1    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F68B6    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F68BC    call        TPanel.GetCaption
 004F68C1    mov         edx,dword ptr [ebp-19C]
 004F68C7    lea         eax,[ebp-198]
 004F68CD    mov         ecx,0FF
 004F68D2    call        @LStrToString
 004F68D7    lea         edx,[ebp-198]
 004F68DD    lea         eax,[ebp-8E]
 004F68E3    mov         cl,40
 004F68E5    call        @PStrNCpy
 004F68EA    movzx       ecx,word ptr ds:[572442];0x0 gvar_00572442
 004F68F1    sub         ecx,2
 004F68F4    lea         edx,[ebp-8D]
 004F68FA    mov         eax,dword ptr [ebp-4]
 004F68FD    call        TStream.WriteBuffer
 004F6902    movzx       edx,word ptr ds:[572480];0x0 gvar_00572480
 004F6909    add         edx,2
 004F690C    xor         ecx,ecx
 004F690E    mov         eax,dword ptr [ebp-4]
 004F6911    mov         ebx,dword ptr [eax]
 004F6913    call        dword ptr [ebx+14]
>004F6916    jmp         004F6954
 004F6918    lea         edx,[ebp-1A0]
 004F691E    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6923    mov         eax,dword ptr [eax+300];TfmPassport.edModel:TLabeledEdit
 004F6929    call        TPanel.GetCaption
 004F692E    lea         eax,[ebp-1A0]
 004F6934    mov         edx,4F6C10;' '
 004F6939    call        @LStrCat
 004F693E    mov         edx,dword ptr [ebp-1A0]
 004F6944    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6949    mov         eax,dword ptr [eax+300];TfmPassport.edModel:TLabeledEdit
 004F694F    call        TPanel.SetCaption
 004F6954    lea         edx,[ebp-1A4]
 004F695A    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F695F    mov         eax,dword ptr [eax+300];TfmPassport.edModel:TLabeledEdit
 004F6965    call        TPanel.GetCaption
 004F696A    mov         eax,dword ptr [ebp-1A4]
 004F6970    call        @LStrLen
 004F6975    movzx       edx,word ptr ds:[572482];0x0 gvar_00572482
 004F697C    sub         edx,2
 004F697F    cmp         eax,edx
>004F6981    jl          004F6918
 004F6983    lea         edx,[ebp-1A8]
 004F6989    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F698E    mov         eax,dword ptr [eax+300];TfmPassport.edModel:TLabeledEdit
 004F6994    call        TPanel.GetCaption
 004F6999    mov         edx,dword ptr [ebp-1A8]
 004F699F    lea         eax,[ebp-198]
 004F69A5    mov         ecx,0FF
 004F69AA    call        @LStrToString
 004F69AF    lea         edx,[ebp-198]
 004F69B5    lea         eax,[ebp-4D]
 004F69B8    mov         cl,40
 004F69BA    call        @PStrNCpy
 004F69BF    movzx       ecx,word ptr ds:[572482];0x0 gvar_00572482
 004F69C6    sub         ecx,2
 004F69C9    lea         edx,[ebp-4C]
 004F69CC    mov         eax,dword ptr [ebp-4]
 004F69CF    call        TStream.WriteBuffer
 004F69D4    movzx       edx,word ptr ds:[572444];0x0 gvar_00572444
 004F69DB    add         edx,2
 004F69DE    xor         ecx,ecx
 004F69E0    mov         eax,dword ptr [ebp-4]
 004F69E3    mov         ebx,dword ptr [eax]
 004F69E5    call        dword ptr [ebx+14]
 004F69E8    lea         edx,[ebp-1AC]
 004F69EE    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F69F3    mov         eax,dword ptr [eax+318];TfmPassport.edHeads:TLabeledEdit
 004F69F9    call        TPanel.GetCaption
 004F69FE    mov         eax,dword ptr [ebp-1AC]
 004F6A04    xor         edx,edx
 004F6A06    call        0040C4A8
 004F6A0B    mov         byte ptr [ebp-6],al
 004F6A0E    lea         edx,[ebp-6]
 004F6A11    mov         ecx,1
 004F6A16    mov         eax,dword ptr [ebp-4]
 004F6A19    call        TStream.WriteBuffer
 004F6A1E    lea         edx,[ebp-1B0]
 004F6A24    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6A29    mov         eax,dword ptr [eax+31C];TfmPassport.edSectors:TLabeledEdit
 004F6A2F    call        TPanel.GetCaption
 004F6A34    mov         eax,dword ptr [ebp-1B0]
 004F6A3A    xor         edx,edx
 004F6A3C    call        0040C4A8
 004F6A41    mov         byte ptr [ebp-6],al
 004F6A44    lea         edx,[ebp-6]
 004F6A47    mov         ecx,1
 004F6A4C    mov         eax,dword ptr [ebp-4]
 004F6A4F    call        TStream.WriteBuffer
 004F6A54    lea         edx,[ebp-1B4]
 004F6A5A    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6A5F    mov         eax,dword ptr [eax+320];TfmPassport.edTracks:TLabeledEdit
 004F6A65    call        TPanel.GetCaption
 004F6A6A    mov         eax,dword ptr [ebp-1B4]
 004F6A70    xor         edx,edx
 004F6A72    call        0040C4A8
 004F6A77    mov         dword ptr [ebp-0C],eax
 004F6A7A    lea         edx,[ebp-0C]
 004F6A7D    mov         ecx,4
 004F6A82    mov         eax,dword ptr [ebp-4]
 004F6A85    call        TStream.WriteBuffer
 004F6A8A    lea         edx,[ebp-1B8]
 004F6A90    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6A95    mov         eax,dword ptr [eax+308];TfmPassport.edLba0:TLabeledEdit
 004F6A9B    call        TPanel.GetCaption
 004F6AA0    mov         eax,dword ptr [ebp-1B8]
 004F6AA6    xor         edx,edx
 004F6AA8    call        0040C4A8
 004F6AAD    mov         dword ptr [ebp-0C],eax
 004F6AB0    lea         edx,[ebp-0C]
 004F6AB3    mov         ecx,4
 004F6AB8    mov         eax,dword ptr [ebp-4]
 004F6ABB    call        TStream.WriteBuffer
 004F6AC0    lea         edx,[ebp-1BC]
 004F6AC6    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6ACB    mov         eax,dword ptr [eax+30C];TfmPassport.edLba1:TLabeledEdit
 004F6AD1    call        TPanel.GetCaption
 004F6AD6    mov         eax,dword ptr [ebp-1BC]
 004F6ADC    xor         edx,edx
 004F6ADE    call        0040C4A8
 004F6AE3    mov         dword ptr [ebp-0C],eax
 004F6AE6    lea         edx,[ebp-0C]
 004F6AE9    mov         ecx,4
 004F6AEE    mov         eax,dword ptr [ebp-4]
 004F6AF1    call        TStream.WriteBuffer
 004F6AF6    lea         edx,[ebp-1C0]
 004F6AFC    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6B01    mov         eax,dword ptr [eax+310];TfmPassport.edLba2:TLabeledEdit
 004F6B07    call        TPanel.GetCaption
 004F6B0C    mov         eax,dword ptr [ebp-1C0]
 004F6B12    xor         edx,edx
 004F6B14    call        0040C4A8
 004F6B19    mov         dword ptr [ebp-0C],eax
 004F6B1C    lea         edx,[ebp-0C]
 004F6B1F    mov         ecx,4
 004F6B24    mov         eax,dword ptr [ebp-4]
 004F6B27    call        TStream.WriteBuffer
 004F6B2C    lea         edx,[ebp-1C4]
 004F6B32    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6B37    mov         eax,dword ptr [eax+314];TfmPassport.edLba3:TLabeledEdit
 004F6B3D    call        TPanel.GetCaption
 004F6B42    mov         eax,dword ptr [ebp-1C4]
 004F6B48    xor         edx,edx
 004F6B4A    call        0040C4A8
 004F6B4F    mov         dword ptr [ebp-0C],eax
 004F6B52    lea         edx,[ebp-0C]
 004F6B55    mov         ecx,4
 004F6B5A    mov         eax,dword ptr [ebp-4]
 004F6B5D    call        TStream.WriteBuffer
 004F6B62    movzx       edx,word ptr ds:[572488];0x0 gvar_00572488
 004F6B69    add         edx,2
 004F6B6C    xor         ecx,ecx
 004F6B6E    mov         eax,dword ptr [ebp-4]
 004F6B71    mov         ebx,dword ptr [eax]
 004F6B73    call        dword ptr [ebx+14]
 004F6B76    lea         edx,[ebp-1C8]
 004F6B7C    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6B81    mov         eax,dword ptr [eax+328];TfmPassport.edPsw:TLabeledEdit
 004F6B87    call        TPanel.GetCaption
 004F6B8C    mov         eax,dword ptr [ebp-1C8]
 004F6B92    xor         edx,edx
 004F6B94    call        0040C4A8
 004F6B99    mov         word ptr [ebp-8],ax
 004F6B9D    lea         edx,[ebp-8]
 004F6BA0    mov         ecx,2
 004F6BA5    mov         eax,dword ptr [ebp-4]
 004F6BA8    call        TStream.WriteBuffer
 004F6BAD    movzx       edx,word ptr ds:[572484];0x0 gvar_00572484
 004F6BB4    add         edx,2
 004F6BB7    xor         ecx,ecx
 004F6BB9    mov         eax,dword ptr [ebp-4]
 004F6BBC    mov         ebx,dword ptr [eax]
 004F6BBE    call        dword ptr [ebx+14]
 004F6BC1    mov         dl,1
 004F6BC3    mov         eax,dword ptr [ebp-4]
 004F6BC6    call        005014D0
 004F6BCB    xor         eax,eax
 004F6BCD    pop         edx
 004F6BCE    pop         ecx
 004F6BCF    pop         ecx
 004F6BD0    mov         dword ptr fs:[eax],edx
 004F6BD3    push        4F6C00
 004F6BD8    lea         eax,[ebp-1C8]
 004F6BDE    mov         edx,0C
 004F6BE3    call        @LStrArrayClr
 004F6BE8    lea         eax,[ebp-98]
 004F6BEE    mov         edx,2
 004F6BF3    call        @LStrArrayClr
 004F6BF8    ret
>004F6BF9    jmp         @HandleFinally
>004F6BFE    jmp         004F6BD8
 004F6C00    pop         ebx
 004F6C01    mov         esp,ebp
 004F6C03    pop         ebp
 004F6C04    ret
*}
end;

//004F6C14
procedure TfmPassport.btReadClick(Sender:TObject);
begin
{*
 004F6C14    push        ebp
 004F6C15    mov         ebp,esp
 004F6C17    add         esp,0FFFFFFF8
 004F6C1A    mov         dword ptr [ebp-8],edx
 004F6C1D    mov         dword ptr [ebp-4],eax
 004F6C20    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6C25    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F6C2B    xor         edx,edx
 004F6C2D    call        TPanel.SetCaption
 004F6C32    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6C37    mov         eax,dword ptr [eax+300];TfmPassport.edModel:TLabeledEdit
 004F6C3D    xor         edx,edx
 004F6C3F    call        TPanel.SetCaption
 004F6C44    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6C49    mov         eax,dword ptr [eax+318];TfmPassport.edHeads:TLabeledEdit
 004F6C4F    xor         edx,edx
 004F6C51    call        TPanel.SetCaption
 004F6C56    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6C5B    mov         eax,dword ptr [eax+31C];TfmPassport.edSectors:TLabeledEdit
 004F6C61    xor         edx,edx
 004F6C63    call        TPanel.SetCaption
 004F6C68    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6C6D    mov         eax,dword ptr [eax+320];TfmPassport.edTracks:TLabeledEdit
 004F6C73    xor         edx,edx
 004F6C75    call        TPanel.SetCaption
 004F6C7A    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6C7F    mov         eax,dword ptr [eax+308];TfmPassport.edLba0:TLabeledEdit
 004F6C85    xor         edx,edx
 004F6C87    call        TPanel.SetCaption
 004F6C8C    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6C91    mov         eax,dword ptr [eax+30C];TfmPassport.edLba1:TLabeledEdit
 004F6C97    xor         edx,edx
 004F6C99    call        TPanel.SetCaption
 004F6C9E    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6CA3    mov         eax,dword ptr [eax+310];TfmPassport.edLba2:TLabeledEdit
 004F6CA9    xor         edx,edx
 004F6CAB    call        TPanel.SetCaption
 004F6CB0    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6CB5    mov         eax,dword ptr [eax+314];TfmPassport.edLba3:TLabeledEdit
 004F6CBB    xor         edx,edx
 004F6CBD    call        TPanel.SetCaption
 004F6CC2    cmp         dword ptr ds:[56D214],0;gvar_0056D214:TMemoryStream
>004F6CC9    jne         004F6CDE
 004F6CCB    mov         dl,1
 004F6CCD    mov         eax,[0041DE14];TMemoryStream
 004F6CD2    call        TObject.Create;TMemoryStream.Create
 004F6CD7    mov         [0056D214],eax;gvar_0056D214:TMemoryStream
>004F6CDC    jmp         004F6CE8
 004F6CDE    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F6CE3    call        00423F20
 004F6CE8    mov         edx,dword ptr ds:[56D214];0x0 gvar_0056D214:TMemoryStream
 004F6CEE    mov         ax,2
 004F6CF2    call        005095B8
 004F6CF7    test        al,al
>004F6CF9    je          004F6D05
 004F6CFB    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F6D00    call        004F64D4
 004F6D05    pop         ecx
 004F6D06    pop         ecx
 004F6D07    pop         ebp
 004F6D08    ret
*}
end;

//004F6D0C
procedure TfmPassport.btWriteClick(Sender:TObject);
begin
{*
 004F6D0C    push        ebp
 004F6D0D    mov         ebp,esp
 004F6D0F    add         esp,0FFFFFFF8
 004F6D12    mov         dword ptr [ebp-8],edx
 004F6D15    mov         dword ptr [ebp-4],eax
 004F6D18    mov         eax,dword ptr [ebp-4]
 004F6D1B    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F6D21    mov         edx,dword ptr [eax]
 004F6D23    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F6D29    test        al,al
>004F6D2B    je          004F6D37
 004F6D2D    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F6D32    call        004F67F4
 004F6D37    mov         edx,dword ptr ds:[56D214];0x0 gvar_0056D214:TMemoryStream
 004F6D3D    mov         ax,2
 004F6D41    call        0050980C
 004F6D46    pop         ecx
 004F6D47    pop         ecx
 004F6D48    pop         ebp
 004F6D49    ret
*}
end;

//004F6D4C
{*procedure TfmPassport.cbAutoChange(?:?);
begin
 004F6D4C    push        ebp
 004F6D4D    mov         ebp,esp
 004F6D4F    mov         ecx,7
 004F6D54    push        0
 004F6D56    push        0
 004F6D58    dec         ecx
>004F6D59    jne         004F6D54
 004F6D5B    mov         dword ptr [ebp-8],edx
 004F6D5E    mov         dword ptr [ebp-4],eax
 004F6D61    xor         eax,eax
 004F6D63    push        ebp
 004F6D64    push        4F6F47
 004F6D69    push        dword ptr fs:[eax]
 004F6D6C    mov         dword ptr fs:[eax],esp
 004F6D6F    mov         eax,dword ptr [ebp-4]
 004F6D72    mov         eax,dword ptr [eax+324];TfmPassport.cbAuto:TComboBox
 004F6D78    mov         edx,dword ptr [eax]
 004F6D7A    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 004F6D80    sub         eax,1
>004F6D83    jb          004F6D97
>004F6D85    je          004F6E10
 004F6D8B    dec         eax
>004F6D8C    je          004F6E86
>004F6D92    jmp         004F6EFA
 004F6D97    lea         edx,[ebp-10]
 004F6D9A    mov         eax,dword ptr [ebp-4]
 004F6D9D    mov         eax,dword ptr [eax+308];TfmPassport.edLba0:TLabeledEdit
 004F6DA3    call        TPanel.GetCaption
 004F6DA8    mov         eax,dword ptr [ebp-10]
 004F6DAB    call        0040C468
 004F6DB0    push        eax
 004F6DB1    lea         edx,[ebp-14]
 004F6DB4    mov         eax,dword ptr [ebp-4]
 004F6DB7    mov         eax,dword ptr [eax+318];TfmPassport.edHeads:TLabeledEdit
 004F6DBD    call        TPanel.GetCaption
 004F6DC2    mov         eax,dword ptr [ebp-14]
 004F6DC5    call        0040C468
 004F6DCA    pop         edx
 004F6DCB    xchg        eax,edx
 004F6DCC    mov         ecx,edx
 004F6DCE    cdq
 004F6DCF    idiv        eax,ecx
 004F6DD1    push        eax
 004F6DD2    lea         edx,[ebp-18]
 004F6DD5    mov         eax,dword ptr [ebp-4]
 004F6DD8    mov         eax,dword ptr [eax+31C];TfmPassport.edSectors:TLabeledEdit
 004F6DDE    call        TPanel.GetCaption
 004F6DE3    mov         eax,dword ptr [ebp-18]
 004F6DE6    call        0040C468
 004F6DEB    pop         edx
 004F6DEC    xchg        eax,edx
 004F6DED    mov         ecx,edx
 004F6DEF    cdq
 004F6DF0    idiv        eax,ecx
 004F6DF2    lea         edx,[ebp-0C]
 004F6DF5    call        IntToStr
 004F6DFA    mov         edx,dword ptr [ebp-0C]
 004F6DFD    mov         eax,dword ptr [ebp-4]
 004F6E00    mov         eax,dword ptr [eax+320];TfmPassport.edTracks:TLabeledEdit
 004F6E06    call        TPanel.SetCaption
>004F6E0B    jmp         004F6EFA
 004F6E10    lea         edx,[ebp-20]
 004F6E13    mov         eax,dword ptr [ebp-4]
 004F6E16    mov         eax,dword ptr [eax+30C];TfmPassport.edLba1:TLabeledEdit
 004F6E1C    call        TPanel.GetCaption
 004F6E21    mov         eax,dword ptr [ebp-20]
 004F6E24    call        0040C468
 004F6E29    push        eax
 004F6E2A    lea         edx,[ebp-24]
 004F6E2D    mov         eax,dword ptr [ebp-4]
 004F6E30    mov         eax,dword ptr [eax+318];TfmPassport.edHeads:TLabeledEdit
 004F6E36    call        TPanel.GetCaption
 004F6E3B    mov         eax,dword ptr [ebp-24]
 004F6E3E    call        0040C468
 004F6E43    pop         edx
 004F6E44    xchg        eax,edx
 004F6E45    mov         ecx,edx
 004F6E47    cdq
 004F6E48    idiv        eax,ecx
 004F6E4A    push        eax
 004F6E4B    lea         edx,[ebp-28]
 004F6E4E    mov         eax,dword ptr [ebp-4]
 004F6E51    mov         eax,dword ptr [eax+31C];TfmPassport.edSectors:TLabeledEdit
 004F6E57    call        TPanel.GetCaption
 004F6E5C    mov         eax,dword ptr [ebp-28]
 004F6E5F    call        0040C468
 004F6E64    pop         edx
 004F6E65    xchg        eax,edx
 004F6E66    mov         ecx,edx
 004F6E68    cdq
 004F6E69    idiv        eax,ecx
 004F6E6B    lea         edx,[ebp-1C]
 004F6E6E    call        IntToStr
 004F6E73    mov         edx,dword ptr [ebp-1C]
 004F6E76    mov         eax,dword ptr [ebp-4]
 004F6E79    mov         eax,dword ptr [eax+320];TfmPassport.edTracks:TLabeledEdit
 004F6E7F    call        TPanel.SetCaption
>004F6E84    jmp         004F6EFA
 004F6E86    lea         edx,[ebp-30]
 004F6E89    mov         eax,dword ptr [ebp-4]
 004F6E8C    mov         eax,dword ptr [eax+310];TfmPassport.edLba2:TLabeledEdit
 004F6E92    call        TPanel.GetCaption
 004F6E97    mov         eax,dword ptr [ebp-30]
 004F6E9A    call        0040C468
 004F6E9F    push        eax
 004F6EA0    lea         edx,[ebp-34]
 004F6EA3    mov         eax,dword ptr [ebp-4]
 004F6EA6    mov         eax,dword ptr [eax+318];TfmPassport.edHeads:TLabeledEdit
 004F6EAC    call        TPanel.GetCaption
 004F6EB1    mov         eax,dword ptr [ebp-34]
 004F6EB4    call        0040C468
 004F6EB9    pop         edx
 004F6EBA    xchg        eax,edx
 004F6EBB    mov         ecx,edx
 004F6EBD    cdq
 004F6EBE    idiv        eax,ecx
 004F6EC0    push        eax
 004F6EC1    lea         edx,[ebp-38]
 004F6EC4    mov         eax,dword ptr [ebp-4]
 004F6EC7    mov         eax,dword ptr [eax+31C];TfmPassport.edSectors:TLabeledEdit
 004F6ECD    call        TPanel.GetCaption
 004F6ED2    mov         eax,dword ptr [ebp-38]
 004F6ED5    call        0040C468
 004F6EDA    pop         edx
 004F6EDB    xchg        eax,edx
 004F6EDC    mov         ecx,edx
 004F6EDE    cdq
 004F6EDF    idiv        eax,ecx
 004F6EE1    lea         edx,[ebp-2C]
 004F6EE4    call        IntToStr
 004F6EE9    mov         edx,dword ptr [ebp-2C]
 004F6EEC    mov         eax,dword ptr [ebp-4]
 004F6EEF    mov         eax,dword ptr [eax+320];TfmPassport.edTracks:TLabeledEdit
 004F6EF5    call        TPanel.SetCaption
 004F6EFA    xor         eax,eax
 004F6EFC    pop         edx
 004F6EFD    pop         ecx
 004F6EFE    pop         ecx
 004F6EFF    mov         dword ptr fs:[eax],edx
 004F6F02    push        4F6F4E
 004F6F07    lea         eax,[ebp-38]
 004F6F0A    mov         edx,3
 004F6F0F    call        @LStrArrayClr
 004F6F14    lea         eax,[ebp-2C]
 004F6F17    call        @LStrClr
 004F6F1C    lea         eax,[ebp-28]
 004F6F1F    mov         edx,3
 004F6F24    call        @LStrArrayClr
 004F6F29    lea         eax,[ebp-1C]
 004F6F2C    call        @LStrClr
 004F6F31    lea         eax,[ebp-18]
 004F6F34    mov         edx,3
 004F6F39    call        @LStrArrayClr
 004F6F3E    lea         eax,[ebp-0C]
 004F6F41    call        @LStrClr
 004F6F46    ret
>004F6F47    jmp         @HandleFinally
>004F6F4C    jmp         004F6F07
 004F6F4E    mov         esp,ebp
 004F6F50    pop         ebp
 004F6F51    ret
end;*}

//004F6F54
procedure TfmPassport.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 004F6F54    push        ebp
 004F6F55    mov         ebp,esp
 004F6F57    add         esp,0FFFFFFF4
 004F6F5A    mov         dword ptr [ebp-8],ecx
 004F6F5D    mov         dword ptr [ebp-0C],edx
 004F6F60    mov         dword ptr [ebp-4],eax
 004F6F63    xor         eax,eax
 004F6F65    mov         [0056D210],eax;gvar_0056D210:TfmPassport
 004F6F6A    mov         eax,dword ptr [ebp-8]
 004F6F6D    mov         byte ptr [eax],2
 004F6F70    mov         esp,ebp
 004F6F72    pop         ebp
 004F6F73    ret
*}
end;

//004F6F74
procedure TfmPassport.FormShow(Sender:TObject);
begin
{*
 004F6F74    push        ebp
 004F6F75    mov         ebp,esp
 004F6F77    add         esp,0FFFFFFF0
 004F6F7A    xor         ecx,ecx
 004F6F7C    mov         dword ptr [ebp-0C],ecx
 004F6F7F    mov         dword ptr [ebp-10],ecx
 004F6F82    mov         dword ptr [ebp-8],edx
 004F6F85    mov         dword ptr [ebp-4],eax
 004F6F88    xor         eax,eax
 004F6F8A    push        ebp
 004F6F8B    push        4F701D
 004F6F90    push        dword ptr fs:[eax]
 004F6F93    mov         dword ptr fs:[eax],esp
 004F6F96    mov         dl,1
 004F6F98    mov         eax,[0041DE14];TMemoryStream
 004F6F9D    call        TObject.Create;TMemoryStream.Create
 004F6FA2    mov         [0056D214],eax;gvar_0056D214:TMemoryStream
 004F6FA7    mov         eax,[0056E284];^gvar_0056DF34
 004F6FAC    mov         eax,dword ptr [eax]
 004F6FAE    mov         eax,dword ptr [eax+408]
 004F6FB4    cmp         byte ptr [eax+38],0
>004F6FB8    je          004F6FC6
 004F6FBA    xor         edx,edx
 004F6FBC    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6FC1    call        TfmPassport.btReadClick
 004F6FC6    lea         edx,[ebp-10]
 004F6FC9    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6FCE    call        TPanel.GetCaption
 004F6FD3    push        dword ptr [ebp-10]
 004F6FD6    push        4F7030;' '
 004F6FDB    mov         eax,[0056E284];^gvar_0056DF34
 004F6FE0    mov         eax,dword ptr [eax]
 004F6FE2    push        dword ptr [eax+420]
 004F6FE8    lea         eax,[ebp-0C]
 004F6FEB    mov         edx,3
 004F6FF0    call        @LStrCatN
 004F6FF5    mov         edx,dword ptr [ebp-0C]
 004F6FF8    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F6FFD    call        TPanel.SetCaption
 004F7002    xor         eax,eax
 004F7004    pop         edx
 004F7005    pop         ecx
 004F7006    pop         ecx
 004F7007    mov         dword ptr fs:[eax],edx
 004F700A    push        4F7024
 004F700F    lea         eax,[ebp-10]
 004F7012    mov         edx,2
 004F7017    call        @LStrArrayClr
 004F701C    ret
>004F701D    jmp         @HandleFinally
>004F7022    jmp         004F700F
 004F7024    mov         esp,ebp
 004F7026    pop         ebp
 004F7027    ret
*}
end;

//004F7034
procedure TfmPassport.FormDestroy(Sender:TObject);
begin
{*
 004F7034    push        ebp
 004F7035    mov         ebp,esp
 004F7037    add         esp,0FFFFFFF8
 004F703A    mov         dword ptr [ebp-8],edx
 004F703D    mov         dword ptr [ebp-4],eax
 004F7040    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F7045    call        TObject.Free
 004F704A    xor         eax,eax
 004F704C    mov         [0056D210],eax;gvar_0056D210:TfmPassport
 004F7051    pop         ecx
 004F7052    pop         ecx
 004F7053    pop         ebp
 004F7054    ret
*}
end;

//004F7058
{*procedure sub_004F7058(?:?; ?:?);
begin
 004F7058    push        ebp
 004F7059    mov         ebp,esp
 004F705B    add         esp,0FFFFFF1C
 004F7061    push        ebx
 004F7062    xor         ecx,ecx
 004F7064    mov         dword ptr [ebp-0E0],ecx
 004F706A    mov         dword ptr [ebp-0E4],ecx
 004F7070    mov         dword ptr [ebp-80],ecx
 004F7073    mov         dword ptr [ebp-84],ecx
 004F7079    mov         dword ptr [ebp-7C],ecx
 004F707C    mov         dword ptr [ebp-78],ecx
 004F707F    mov         dword ptr [ebp-8],edx
 004F7082    mov         dword ptr [ebp-4],eax
 004F7085    xor         eax,eax
 004F7087    push        ebp
 004F7088    push        4F768D
 004F708D    push        dword ptr fs:[eax]
 004F7090    mov         dword ptr fs:[eax],esp
 004F7093    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 004F7099    mov         edx,dword ptr [edx]
 004F709B    lea         eax,[ebp-78]
 004F709E    mov         ecx,4F76A4;'Modules'
 004F70A3    call        @LStrCat3
 004F70A8    mov         eax,dword ptr [ebp-78]
 004F70AB    call        0040C9A4
 004F70B0    test        al,al
>004F70B2    jne         004F70E6
 004F70B4    push        4F76B4;'Cannot create '
 004F70B9    mov         eax,[0056E2D0];^gvar_0056DF38
 004F70BE    push        dword ptr [eax]
 004F70C0    push        4F76A4;'Modules'
 004F70C5    lea         eax,[ebp-7C]
 004F70C8    mov         edx,3
 004F70CD    call        @LStrCatN
 004F70D2    mov         ecx,dword ptr [ebp-7C]
 004F70D5    mov         dl,1
 004F70D7    mov         eax,[0040B004];Exception
 004F70DC    call        Exception.Create;Exception.Create
 004F70E1    call        @RaiseExcept
 004F70E6    mov         byte ptr [ebp-1B],0
 004F70EA    mov         eax,dword ptr [ebp-8]
 004F70ED    call        @LStrClr
 004F70F2    mov         eax,[0056E5A4];^gvar_0056DF04
 004F70F7    mov         byte ptr [eax],0
 004F70FA    mov         dl,1
 004F70FC    mov         eax,[0041DE14];TMemoryStream
 004F7101    call        TObject.Create;TMemoryStream.Create
 004F7106    mov         dword ptr [ebp-0C],eax
 004F7109    xor         eax,eax
 004F710B    push        ebp
 004F710C    push        4F7658
 004F7111    push        dword ptr fs:[eax]
 004F7114    mov         dword ptr fs:[eax],esp
 004F7117    mov         eax,[0056E040];^gvar_005720C0
 004F711C    cmp         byte ptr [eax],0
>004F711F    jne         004F713B
 004F7121    mov         eax,[0056E304];^gvar_0056DF54
 004F7126    cmp         word ptr [eax],65
>004F712A    je          004F713B
 004F712C    mov         eax,[0056E304];^gvar_0056DF54
 004F7131    cmp         word ptr [eax],73
>004F7135    jne         004F73E1
 004F713B    mov         dl,1
 004F713D    mov         eax,[0041DE14];TMemoryStream
 004F7142    call        TObject.Create;TMemoryStream.Create
 004F7147    mov         dword ptr [ebp-10],eax
 004F714A    xor         eax,eax
 004F714C    push        ebp
 004F714D    push        4F7264
 004F7152    push        dword ptr fs:[eax]
 004F7155    mov         dword ptr fs:[eax],esp
 004F7158    mov         eax,dword ptr [ebp-4]
 004F715B    cmp         eax,4
>004F715E    ja          004F71CE
 004F7160    jmp         dword ptr [eax*4+4F7167]
 004F7160    dd          004F717B
 004F7160    dd          004F718C
 004F7160    dd          004F719D
 004F7160    dd          004F71AE
 004F7160    dd          004F71BF
 004F717B    mov         edx,dword ptr [ebp-0C]
 004F717E    mov         ax,2
 004F7182    call        005095B8
 004F7187    mov         byte ptr [ebp-1B],al
>004F718A    jmp         004F71CE
 004F718C    mov         edx,dword ptr [ebp-10]
 004F718F    mov         ax,802E
 004F7193    call        005095B8
 004F7198    mov         byte ptr [ebp-1B],al
>004F719B    jmp         004F71CE
 004F719D    mov         edx,dword ptr [ebp-10]
 004F71A0    mov         ax,802F
 004F71A4    call        005095B8
 004F71A9    mov         byte ptr [ebp-1B],al
>004F71AC    jmp         004F71CE
 004F71AE    mov         edx,dword ptr [ebp-10]
 004F71B1    mov         ax,8032
 004F71B5    call        005095B8
 004F71BA    mov         byte ptr [ebp-1B],al
>004F71BD    jmp         004F71CE
 004F71BF    mov         edx,dword ptr [ebp-0C]
 004F71C2    mov         ax,47
 004F71C6    call        005095B8
 004F71CB    mov         byte ptr [ebp-1B],al
 004F71CE    cmp         byte ptr [ebp-1B],0
>004F71D2    je          004F724E
 004F71D4    mov         eax,dword ptr [ebp-4]
 004F71D7    dec         eax
 004F71D8    sub         eax,3
>004F71DB    jae         004F7208
 004F71DD    xor         ecx,ecx
 004F71DF    mov         edx,200
 004F71E4    mov         eax,dword ptr [ebp-10]
 004F71E7    mov         ebx,dword ptr [eax]
 004F71E9    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F71EC    mov         eax,dword ptr [ebp-10]
 004F71EF    mov         edx,dword ptr [eax]
 004F71F1    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004F71F3    sub         eax,200
 004F71F8    sbb         edx,0
 004F71FB    push        edx
 004F71FC    push        eax
 004F71FD    mov         edx,dword ptr [ebp-10]
 004F7200    mov         eax,dword ptr [ebp-0C]
 004F7203    call        TStream.CopyFrom
 004F7208    mov         eax,dword ptr [ebp-4]
 004F720B    dec         eax
 004F720C    sub         eax,3
>004F720F    jae         004F724E
 004F7211    mov         eax,[0056E2D0];^gvar_0056DF38
 004F7216    push        dword ptr [eax]
 004F7218    push        4F76CC;'Modules\   0002_'
 004F721D    lea         edx,[ebp-84]
 004F7223    mov         eax,dword ptr [ebp-4]
 004F7226    call        IntToStr
 004F722B    push        dword ptr [ebp-84]
 004F7231    push        4F76E8;'.rpm'
 004F7236    lea         eax,[ebp-80]
 004F7239    mov         edx,4
 004F723E    call        @LStrCatN
 004F7243    mov         edx,dword ptr [ebp-80]
 004F7246    mov         eax,dword ptr [ebp-0C]
 004F7249    call        00423E84
 004F724E    xor         eax,eax
 004F7250    pop         edx
 004F7251    pop         ecx
 004F7252    pop         ecx
 004F7253    mov         dword ptr fs:[eax],edx
 004F7256    push        4F726B
 004F725B    mov         eax,dword ptr [ebp-10]
 004F725E    call        TObject.Free
 004F7263    ret
>004F7264    jmp         @HandleFinally
>004F7269    jmp         004F725B
 004F726B    cmp         byte ptr [ebp-1B],0
>004F726F    je          004F7642
 004F7275    mov         eax,dword ptr [ebp-4]
 004F7278    sub         eax,4
>004F727B    jb          004F7284
>004F727D    je          004F72F0
>004F727F    jmp         004F7642
 004F7284    mov         eax,dword ptr [ebp-0C]
 004F7287    call        004F641C
 004F728C    mov         byte ptr [ebp-11],al
 004F728F    cmp         byte ptr [ebp-11],0
>004F7293    jbe         004F7642
 004F7299    movzx       edx,word ptr ds:[572484];0x0 gvar_00572484
 004F72A0    add         edx,2
 004F72A3    xor         ecx,ecx
 004F72A5    mov         eax,dword ptr [ebp-0C]
 004F72A8    mov         ebx,dword ptr [eax]
 004F72AA    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F72AD    lea         edx,[ebp-73]
 004F72B0    mov         ecx,16
 004F72B5    mov         eax,dword ptr [ebp-0C]
 004F72B8    call        TStream.ReadBuffer
 004F72BD    lea         eax,[ebp-0C8]
 004F72C3    lea         edx,[ebp-73]
 004F72C6    mov         ecx,41
 004F72CB    call        @_CLenToPasStr
 004F72D0    lea         edx,[ebp-0C8]
 004F72D6    lea         eax,[ebp-32]
 004F72D9    mov         cl,16
 004F72DB    call        @PStrNCpy
 004F72E0    mov         eax,dword ptr [ebp-8]
 004F72E3    lea         edx,[ebp-32]
 004F72E6    call        @LStrFromString
>004F72EB    jmp         004F7642
 004F72F0    xor         ecx,ecx
 004F72F2    xor         edx,edx
 004F72F4    mov         eax,dword ptr [ebp-0C]
 004F72F7    mov         ebx,dword ptr [eax]
 004F72F9    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F72FC    mov         eax,dword ptr [ebp-0C]
 004F72FF    call        004CE56C
 004F7304    mov         dword ptr [ebp-18],eax
 004F7307    cmp         dword ptr [ebp-18],4C594F52
>004F730E    jne         004F7321
 004F7310    xor         ecx,ecx
 004F7312    mov         edx,2E
 004F7317    mov         eax,dword ptr [ebp-0C]
 004F731A    mov         ebx,dword ptr [eax]
 004F731C    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>004F731F    jmp         004F7330
 004F7321    xor         ecx,ecx
 004F7323    mov         edx,14
 004F7328    mov         eax,dword ptr [ebp-0C]
 004F732B    mov         ebx,dword ptr [eax]
 004F732D    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F7330    mov         eax,dword ptr [ebp-0C]
 004F7333    call        004CE548
 004F7338    mov         word ptr [ebp-1A],ax
 004F733C    mov         edx,4F76F0;'M'
 004F7341    lea         eax,[ebp-0CC]
 004F7347    call        @PStrCpy
 004F734C    lea         eax,[ebp-0D0]
 004F7352    movzx       edx,word ptr [ebp-1A]
 004F7356    shr         edx,8
 004F7359    mov         byte ptr [eax+1],dl
 004F735C    mov         byte ptr [eax],1
 004F735F    lea         edx,[ebp-0D0]
 004F7365    lea         eax,[ebp-0CC]
 004F736B    mov         cl,2
 004F736D    call        @PStrNCat
 004F7372    lea         edx,[ebp-0CC]
 004F7378    lea         eax,[ebp-0D4]
 004F737E    call        @PStrCpy
 004F7383    mov         edx,4F76F4;'H'
 004F7388    lea         eax,[ebp-0D4]
 004F738E    mov         cl,3
 004F7390    call        @PStrNCat
 004F7395    lea         edx,[ebp-0D4]
 004F739B    lea         eax,[ebp-0DC]
 004F73A1    call        @PStrCpy
 004F73A6    lea         eax,[ebp-0D0]
 004F73AC    mov         dx,word ptr [ebp-1A]
 004F73B0    and         dx,0FF
 004F73B5    mov         byte ptr [eax+1],dl
 004F73B8    mov         byte ptr [eax],1
 004F73BB    lea         edx,[ebp-0D0]
 004F73C1    lea         eax,[ebp-0DC]
 004F73C7    mov         cl,4
 004F73C9    call        @PStrNCat
 004F73CE    lea         edx,[ebp-0DC]
 004F73D4    mov         eax,dword ptr [ebp-8]
 004F73D7    call        @LStrFromString
>004F73DC    jmp         004F7642
 004F73E1    mov         eax,dword ptr [ebp-4]
 004F73E4    cmp         eax,4
>004F73E7    ja          004F747F
 004F73ED    jmp         dword ptr [eax*4+4F73F4]
 004F73ED    dd          004F7408
 004F73ED    dd          004F7419
 004F73ED    dd          004F7436
 004F73ED    dd          004F7453
 004F73ED    dd          004F7470
 004F7408    mov         edx,dword ptr [ebp-0C]
 004F740B    mov         ax,2
 004F740F    call        004CF5C8
 004F7414    mov         byte ptr [ebp-1B],al
>004F7417    jmp         004F747F
 004F7419    push        0
 004F741B    mov         eax,dword ptr [ebp-0C]
 004F741E    push        eax
 004F741F    mov         cx,2
 004F7423    mov         dx,0B2
 004F7427    mov         eax,4
 004F742C    call        004FB62C
 004F7431    mov         byte ptr [ebp-1B],al
>004F7434    jmp         004F747F
 004F7436    push        0
 004F7438    mov         eax,dword ptr [ebp-0C]
 004F743B    push        eax
 004F743C    mov         cx,2
 004F7440    mov         dx,0B4
 004F7444    mov         eax,4
 004F7449    call        004FB62C
 004F744E    mov         byte ptr [ebp-1B],al
>004F7451    jmp         004F747F
 004F7453    push        0
 004F7455    mov         eax,dword ptr [ebp-0C]
 004F7458    push        eax
 004F7459    mov         cx,2
 004F745D    mov         dx,0BA
 004F7461    mov         eax,4
 004F7466    call        004FB62C
 004F746B    mov         byte ptr [ebp-1B],al
>004F746E    jmp         004F747F
 004F7470    mov         edx,dword ptr [ebp-0C]
 004F7473    mov         ax,47
 004F7477    call        004CF5C8
 004F747C    mov         byte ptr [ebp-1B],al
 004F747F    cmp         byte ptr [ebp-1B],0
>004F7483    je          004F74D1
 004F7485    mov         eax,dword ptr [ebp-4]
 004F7488    dec         eax
 004F7489    sub         eax,3
>004F748C    jae         004F74D1
 004F748E    mov         eax,[0056E2D0];^gvar_0056DF38
 004F7493    push        dword ptr [eax]
 004F7495    push        4F7700;'Modules\   02_'
 004F749A    lea         edx,[ebp-0E4]
 004F74A0    mov         eax,dword ptr [ebp-4]
 004F74A3    call        IntToStr
 004F74A8    push        dword ptr [ebp-0E4]
 004F74AE    push        4F76E8;'.rpm'
 004F74B3    lea         eax,[ebp-0E0]
 004F74B9    mov         edx,4
 004F74BE    call        @LStrCatN
 004F74C3    mov         edx,dword ptr [ebp-0E0]
 004F74C9    mov         eax,dword ptr [ebp-0C]
 004F74CC    call        00423E84
 004F74D1    cmp         byte ptr [ebp-1B],0
>004F74D5    je          004F7642
 004F74DB    mov         eax,dword ptr [ebp-4]
 004F74DE    sub         eax,4
>004F74E1    jb          004F74EA
>004F74E3    je          004F7556
>004F74E5    jmp         004F7642
 004F74EA    mov         eax,dword ptr [ebp-0C]
 004F74ED    call        004F641C
 004F74F2    mov         byte ptr [ebp-11],al
 004F74F5    cmp         byte ptr [ebp-11],0
>004F74F9    jbe         004F7642
 004F74FF    movzx       edx,word ptr ds:[572484];0x0 gvar_00572484
 004F7506    add         edx,2
 004F7509    xor         ecx,ecx
 004F750B    mov         eax,dword ptr [ebp-0C]
 004F750E    mov         ebx,dword ptr [eax]
 004F7510    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F7513    lea         edx,[ebp-73]
 004F7516    mov         ecx,16
 004F751B    mov         eax,dword ptr [ebp-0C]
 004F751E    call        TStream.ReadBuffer
 004F7523    lea         eax,[ebp-0C8]
 004F7529    lea         edx,[ebp-73]
 004F752C    mov         ecx,41
 004F7531    call        @_CLenToPasStr
 004F7536    lea         edx,[ebp-0C8]
 004F753C    lea         eax,[ebp-32]
 004F753F    mov         cl,16
 004F7541    call        @PStrNCpy
 004F7546    mov         eax,dword ptr [ebp-8]
 004F7549    lea         edx,[ebp-32]
 004F754C    call        @LStrFromString
>004F7551    jmp         004F7642
 004F7556    xor         ecx,ecx
 004F7558    xor         edx,edx
 004F755A    mov         eax,dword ptr [ebp-0C]
 004F755D    mov         ebx,dword ptr [eax]
 004F755F    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F7562    mov         eax,dword ptr [ebp-0C]
 004F7565    call        004CE56C
 004F756A    mov         dword ptr [ebp-18],eax
 004F756D    cmp         dword ptr [ebp-18],4C594F52
>004F7574    jne         004F7587
 004F7576    xor         ecx,ecx
 004F7578    mov         edx,2E
 004F757D    mov         eax,dword ptr [ebp-0C]
 004F7580    mov         ebx,dword ptr [eax]
 004F7582    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>004F7585    jmp         004F7596
 004F7587    xor         ecx,ecx
 004F7589    mov         edx,14
 004F758E    mov         eax,dword ptr [ebp-0C]
 004F7591    mov         ebx,dword ptr [eax]
 004F7593    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F7596    mov         eax,dword ptr [ebp-0C]
 004F7599    call        004CE548
 004F759E    mov         word ptr [ebp-1A],ax
 004F75A2    mov         edx,4F76F0;'M'
 004F75A7    lea         eax,[ebp-0CC]
 004F75AD    call        @PStrCpy
 004F75B2    lea         eax,[ebp-0D0]
 004F75B8    movzx       edx,word ptr [ebp-1A]
 004F75BC    shr         edx,8
 004F75BF    mov         byte ptr [eax+1],dl
 004F75C2    mov         byte ptr [eax],1
 004F75C5    lea         edx,[ebp-0D0]
 004F75CB    lea         eax,[ebp-0CC]
 004F75D1    mov         cl,2
 004F75D3    call        @PStrNCat
 004F75D8    lea         edx,[ebp-0CC]
 004F75DE    lea         eax,[ebp-0D4]
 004F75E4    call        @PStrCpy
 004F75E9    mov         edx,4F76F4;'H'
 004F75EE    lea         eax,[ebp-0D4]
 004F75F4    mov         cl,3
 004F75F6    call        @PStrNCat
 004F75FB    lea         edx,[ebp-0D4]
 004F7601    lea         eax,[ebp-0DC]
 004F7607    call        @PStrCpy
 004F760C    lea         eax,[ebp-0D0]
 004F7612    mov         dx,word ptr [ebp-1A]
 004F7616    and         dx,0FF
 004F761B    mov         byte ptr [eax+1],dl
 004F761E    mov         byte ptr [eax],1
 004F7621    lea         edx,[ebp-0D0]
 004F7627    lea         eax,[ebp-0DC]
 004F762D    mov         cl,4
 004F762F    call        @PStrNCat
 004F7634    lea         edx,[ebp-0DC]
 004F763A    mov         eax,dword ptr [ebp-8]
 004F763D    call        @LStrFromString
 004F7642    xor         eax,eax
 004F7644    pop         edx
 004F7645    pop         ecx
 004F7646    pop         ecx
 004F7647    mov         dword ptr fs:[eax],edx
 004F764A    push        4F765F
 004F764F    mov         eax,dword ptr [ebp-0C]
 004F7652    call        TObject.Free
 004F7657    ret
>004F7658    jmp         @HandleFinally
>004F765D    jmp         004F764F
 004F765F    xor         eax,eax
 004F7661    pop         edx
 004F7662    pop         ecx
 004F7663    pop         ecx
 004F7664    mov         dword ptr fs:[eax],edx
 004F7667    push        4F7694
 004F766C    lea         eax,[ebp-0E4]
 004F7672    mov         edx,2
 004F7677    call        @LStrArrayClr
 004F767C    lea         eax,[ebp-84]
 004F7682    mov         edx,4
 004F7687    call        @LStrArrayClr
 004F768C    ret
>004F768D    jmp         @HandleFinally
>004F7692    jmp         004F766C
 004F7694    pop         ebx
 004F7695    mov         esp,ebp
 004F7697    pop         ebp
 004F7698    ret
end;*}

//004F7710
{*procedure TfmPassport.cbReadFactChange(?:?);
begin
 004F7710    push        ebp
 004F7711    mov         ebp,esp
 004F7713    add         esp,0FFFFFFEC
 004F7716    push        ebx
 004F7717    mov         dword ptr [ebp-14],edx
 004F771A    mov         dword ptr [ebp-4],eax
 004F771D    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F7722    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F7728    xor         edx,edx
 004F772A    call        TPanel.SetCaption
 004F772F    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F7734    mov         eax,dword ptr [eax+300];TfmPassport.edModel:TLabeledEdit
 004F773A    xor         edx,edx
 004F773C    call        TPanel.SetCaption
 004F7741    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F7746    mov         eax,dword ptr [eax+318];TfmPassport.edHeads:TLabeledEdit
 004F774C    xor         edx,edx
 004F774E    call        TPanel.SetCaption
 004F7753    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F7758    mov         eax,dword ptr [eax+31C];TfmPassport.edSectors:TLabeledEdit
 004F775E    xor         edx,edx
 004F7760    call        TPanel.SetCaption
 004F7765    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F776A    mov         eax,dword ptr [eax+320];TfmPassport.edTracks:TLabeledEdit
 004F7770    xor         edx,edx
 004F7772    call        TPanel.SetCaption
 004F7777    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F777C    mov         eax,dword ptr [eax+308];TfmPassport.edLba0:TLabeledEdit
 004F7782    xor         edx,edx
 004F7784    call        TPanel.SetCaption
 004F7789    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F778E    mov         eax,dword ptr [eax+30C];TfmPassport.edLba1:TLabeledEdit
 004F7794    xor         edx,edx
 004F7796    call        TPanel.SetCaption
 004F779B    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F77A0    mov         eax,dword ptr [eax+310];TfmPassport.edLba2:TLabeledEdit
 004F77A6    xor         edx,edx
 004F77A8    call        TPanel.SetCaption
 004F77AD    mov         eax,[0056D210];0x0 gvar_0056D210:TfmPassport
 004F77B2    mov         eax,dword ptr [eax+314];TfmPassport.edLba3:TLabeledEdit
 004F77B8    xor         edx,edx
 004F77BA    call        TPanel.SetCaption
 004F77BF    cmp         dword ptr ds:[56D214],0;gvar_0056D214:TMemoryStream
>004F77C6    jne         004F77DB
 004F77C8    mov         dl,1
 004F77CA    mov         eax,[0041DE14];TMemoryStream
 004F77CF    call        TObject.Create;TMemoryStream.Create
 004F77D4    mov         [0056D214],eax;gvar_0056D214:TMemoryStream
>004F77D9    jmp         004F77E5
 004F77DB    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F77E0    call        00423F20
 004F77E5    mov         byte ptr [ebp-5],0
 004F77E9    mov         eax,dword ptr [ebp-4]
 004F77EC    mov         eax,dword ptr [eax+330];TfmPassport.cbReadFact:TComboBox
 004F77F2    mov         edx,dword ptr [eax]
 004F77F4    call        dword ptr [edx+0CC];TComboBox.GetItemIndex
 004F77FA    mov         dword ptr [ebp-0C],eax
 004F77FD    mov         eax,[0056E040];^gvar_005720C0
 004F7802    cmp         byte ptr [eax],0
>004F7805    jne         004F7821
 004F7807    mov         eax,[0056E304];^gvar_0056DF54
 004F780C    cmp         word ptr [eax],65
>004F7810    je          004F7821
 004F7812    mov         eax,[0056E304];^gvar_0056DF54
 004F7817    cmp         word ptr [eax],73
>004F781B    jne         004F78C8
 004F7821    mov         dl,1
 004F7823    mov         eax,[0041DE14];TMemoryStream
 004F7828    call        TObject.Create;TMemoryStream.Create
 004F782D    mov         dword ptr [ebp-10],eax
 004F7830    xor         eax,eax
 004F7832    push        ebp
 004F7833    push        4F78C1
 004F7838    push        dword ptr fs:[eax]
 004F783B    mov         dword ptr fs:[eax],esp
 004F783E    mov         eax,dword ptr [ebp-0C]
 004F7841    sub         eax,1
>004F7844    jb          004F784D
>004F7846    je          004F785E
 004F7848    dec         eax
>004F7849    je          004F786F
>004F784B    jmp         004F787E
 004F784D    mov         edx,dword ptr [ebp-10]
 004F7850    mov         ax,802E
 004F7854    call        004CF5C8
 004F7859    mov         byte ptr [ebp-5],al
>004F785C    jmp         004F787E
 004F785E    mov         edx,dword ptr [ebp-10]
 004F7861    mov         ax,802F
 004F7865    call        004CF5C8
 004F786A    mov         byte ptr [ebp-5],al
>004F786D    jmp         004F787E
 004F786F    mov         edx,dword ptr [ebp-10]
 004F7872    mov         ax,8032
 004F7876    call        004CF5C8
 004F787B    mov         byte ptr [ebp-5],al
 004F787E    xor         ecx,ecx
 004F7880    mov         edx,200
 004F7885    mov         eax,dword ptr [ebp-10]
 004F7888    mov         ebx,dword ptr [eax]
 004F788A    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004F788D    mov         eax,dword ptr [ebp-10]
 004F7890    mov         edx,dword ptr [eax]
 004F7892    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004F7894    sub         eax,200
 004F7899    sbb         edx,0
 004F789C    push        edx
 004F789D    push        eax
 004F789E    mov         edx,dword ptr [ebp-10]
 004F78A1    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F78A6    call        TStream.CopyFrom
 004F78AB    xor         eax,eax
 004F78AD    pop         edx
 004F78AE    pop         ecx
 004F78AF    pop         ecx
 004F78B0    mov         dword ptr fs:[eax],edx
 004F78B3    push        4F7932
 004F78B8    mov         eax,dword ptr [ebp-10]
 004F78BB    call        TObject.Free
 004F78C0    ret
>004F78C1    jmp         @HandleFinally
>004F78C6    jmp         004F78B8
 004F78C8    mov         eax,dword ptr [ebp-0C]
 004F78CB    sub         eax,1
>004F78CE    jb          004F78D7
>004F78D0    je          004F78F6
 004F78D2    dec         eax
>004F78D3    je          004F7915
>004F78D5    jmp         004F7932
 004F78D7    push        0
 004F78D9    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F78DE    push        eax
 004F78DF    mov         cx,2
 004F78E3    mov         dx,0B2
 004F78E7    mov         eax,4
 004F78EC    call        004FB62C
 004F78F1    mov         byte ptr [ebp-5],al
>004F78F4    jmp         004F7932
 004F78F6    push        0
 004F78F8    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F78FD    push        eax
 004F78FE    mov         cx,2
 004F7902    mov         dx,0B4
 004F7906    mov         eax,4
 004F790B    call        004FB62C
 004F7910    mov         byte ptr [ebp-5],al
>004F7913    jmp         004F7932
 004F7915    push        0
 004F7917    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F791C    push        eax
 004F791D    mov         cx,2
 004F7921    mov         dx,0BA
 004F7925    mov         eax,4
 004F792A    call        004FB62C
 004F792F    mov         byte ptr [ebp-5],al
 004F7932    cmp         byte ptr [ebp-5],0
>004F7936    je          004F794C
 004F7938    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F793D    call        004F64D4
 004F7942    mov         eax,[0056D214];0x0 gvar_0056D214:TMemoryStream
 004F7947    call        004F64C8
 004F794C    pop         ebx
 004F794D    mov         esp,ebp
 004F794F    pop         ebp
 004F7950    ret
end;*}

//004F7954
procedure TfmPassport.cbUpdateValueClick(Sender:TObject);
begin
{*
 004F7954    push        ebp
 004F7955    mov         ebp,esp
 004F7957    add         esp,0FFFFFFF8
 004F795A    mov         dword ptr [ebp-8],edx
 004F795D    mov         dword ptr [ebp-4],eax
 004F7960    mov         eax,dword ptr [ebp-4]
 004F7963    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F7969    mov         edx,dword ptr [eax]
 004F796B    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F7971    mov         edx,eax
 004F7973    mov         eax,dword ptr [ebp-4]
 004F7976    mov         eax,dword ptr [eax+300];TfmPassport.edModel:TLabeledEdit
 004F797C    mov         ecx,dword ptr [eax]
 004F797E    call        dword ptr [ecx+64];TImage.SetEnabled
 004F7981    mov         eax,dword ptr [ebp-4]
 004F7984    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F798A    mov         edx,dword ptr [eax]
 004F798C    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F7992    mov         edx,eax
 004F7994    mov         eax,dword ptr [ebp-4]
 004F7997    mov         eax,dword ptr [eax+304];TfmPassport.edSerial:TLabeledEdit
 004F799D    mov         ecx,dword ptr [eax]
 004F799F    call        dword ptr [ecx+64];TImage.SetEnabled
 004F79A2    mov         eax,dword ptr [ebp-4]
 004F79A5    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F79AB    mov         edx,dword ptr [eax]
 004F79AD    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F79B3    mov         edx,eax
 004F79B5    mov         eax,dword ptr [ebp-4]
 004F79B8    mov         eax,dword ptr [eax+308];TfmPassport.edLba0:TLabeledEdit
 004F79BE    mov         ecx,dword ptr [eax]
 004F79C0    call        dword ptr [ecx+64];TImage.SetEnabled
 004F79C3    mov         eax,dword ptr [ebp-4]
 004F79C6    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F79CC    mov         edx,dword ptr [eax]
 004F79CE    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F79D4    mov         edx,eax
 004F79D6    mov         eax,dword ptr [ebp-4]
 004F79D9    mov         eax,dword ptr [eax+30C];TfmPassport.edLba1:TLabeledEdit
 004F79DF    mov         ecx,dword ptr [eax]
 004F79E1    call        dword ptr [ecx+64];TImage.SetEnabled
 004F79E4    mov         eax,dword ptr [ebp-4]
 004F79E7    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F79ED    mov         edx,dword ptr [eax]
 004F79EF    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F79F5    mov         edx,eax
 004F79F7    mov         eax,dword ptr [ebp-4]
 004F79FA    mov         eax,dword ptr [eax+310];TfmPassport.edLba2:TLabeledEdit
 004F7A00    mov         ecx,dword ptr [eax]
 004F7A02    call        dword ptr [ecx+64];TImage.SetEnabled
 004F7A05    mov         eax,dword ptr [ebp-4]
 004F7A08    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F7A0E    mov         edx,dword ptr [eax]
 004F7A10    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F7A16    mov         edx,eax
 004F7A18    mov         eax,dword ptr [ebp-4]
 004F7A1B    mov         eax,dword ptr [eax+314];TfmPassport.edLba3:TLabeledEdit
 004F7A21    mov         ecx,dword ptr [eax]
 004F7A23    call        dword ptr [ecx+64];TImage.SetEnabled
 004F7A26    mov         eax,dword ptr [ebp-4]
 004F7A29    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F7A2F    mov         edx,dword ptr [eax]
 004F7A31    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F7A37    mov         edx,eax
 004F7A39    mov         eax,dword ptr [ebp-4]
 004F7A3C    mov         eax,dword ptr [eax+318];TfmPassport.edHeads:TLabeledEdit
 004F7A42    mov         ecx,dword ptr [eax]
 004F7A44    call        dword ptr [ecx+64];TImage.SetEnabled
 004F7A47    mov         eax,dword ptr [ebp-4]
 004F7A4A    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F7A50    mov         edx,dword ptr [eax]
 004F7A52    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F7A58    mov         edx,eax
 004F7A5A    mov         eax,dword ptr [ebp-4]
 004F7A5D    mov         eax,dword ptr [eax+31C];TfmPassport.edSectors:TLabeledEdit
 004F7A63    mov         ecx,dword ptr [eax]
 004F7A65    call        dword ptr [ecx+64];TImage.SetEnabled
 004F7A68    mov         eax,dword ptr [ebp-4]
 004F7A6B    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F7A71    mov         edx,dword ptr [eax]
 004F7A73    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F7A79    mov         edx,eax
 004F7A7B    mov         eax,dword ptr [ebp-4]
 004F7A7E    mov         eax,dword ptr [eax+320];TfmPassport.edTracks:TLabeledEdit
 004F7A84    mov         ecx,dword ptr [eax]
 004F7A86    call        dword ptr [ecx+64];TImage.SetEnabled
 004F7A89    mov         eax,dword ptr [ebp-4]
 004F7A8C    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F7A92    mov         edx,dword ptr [eax]
 004F7A94    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F7A9A    mov         edx,eax
 004F7A9C    mov         eax,dword ptr [ebp-4]
 004F7A9F    mov         eax,dword ptr [eax+324];TfmPassport.cbAuto:TComboBox
 004F7AA5    mov         ecx,dword ptr [eax]
 004F7AA7    call        dword ptr [ecx+64];TImage.SetEnabled
 004F7AAA    mov         eax,dword ptr [ebp-4]
 004F7AAD    mov         eax,dword ptr [eax+32C];TfmPassport.cbUpdateValue:TCheckBox
 004F7AB3    mov         edx,dword ptr [eax]
 004F7AB5    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004F7ABB    mov         edx,eax
 004F7ABD    mov         eax,dword ptr [ebp-4]
 004F7AC0    mov         eax,dword ptr [eax+328];TfmPassport.edPsw:TLabeledEdit
 004F7AC6    mov         ecx,dword ptr [eax]
 004F7AC8    call        dword ptr [ecx+64];TImage.SetEnabled
 004F7ACB    pop         ecx
 004F7ACC    pop         ecx
 004F7ACD    pop         ebp
 004F7ACE    ret
*}
end;

Initialization
Finalization
//004F7AD0
{*
 004F7AD0    push        ebp
 004F7AD1    mov         ebp,esp
 004F7AD3    xor         eax,eax
 004F7AD5    push        ebp
 004F7AD6    push        4F7B0C
 004F7ADB    push        dword ptr fs:[eax]
 004F7ADE    mov         dword ptr fs:[eax],esp
 004F7AE1    inc         dword ptr ds:[572644]
>004F7AE7    jne         004F7AFE
 004F7AE9    mov         eax,56D218;^'AAM feature Set Support'
 004F7AEE    mov         ecx,71
 004F7AF3    mov         edx,dword ptr ds:[4010C0];String
 004F7AF9    call        @FinalizeArray
 004F7AFE    xor         eax,eax
 004F7B00    pop         edx
 004F7B01    pop         ecx
 004F7B02    pop         ecx
 004F7B03    mov         dword ptr fs:[eax],edx
 004F7B06    push        4F7B13
 004F7B0B    ret
>004F7B0C    jmp         @HandleFinally
>004F7B11    jmp         004F7B0B
 004F7B13    pop         ebp
 004F7B14    ret
*}
end.