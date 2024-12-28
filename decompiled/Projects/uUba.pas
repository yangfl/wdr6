//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uUba;

interface

uses
  SysUtils, Classes, StdCtrls, ExtCtrls, ComCtrls;

type
  TfmUba = class(TForm)
  published
    btDump:TButton;//f2F8
    btRead:TButton;//f2FC
    btWrite:TButton;//f300
    edLen:TLabeledEdit;//f304
    edStart:TLabeledEdit;//f308
    pbUba:TProgressBar;//f30C
    btMaxUba:TButton;//f310
    cbAltUba:TCheckBox;//f314
    btMaxUba2:TButton;//f318
    btErase:TButton;//f31C
    procedure btMaxUba2Click(Sender:TObject);//004FFF98
    procedure cbAltUbaClick(Sender:TObject);//004FFF6C
    procedure FormShow(Sender:TObject);//00500670
    procedure btEraseClick(Sender:TObject);//005002C8
    procedure btMaxUbaClick(Sender:TObject);//004FFC1C
    procedure btDumpClick(Sender:TObject);//004FF100
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//004FF0D8
    procedure btWriteClick(Sender:TObject);//004FF928
    procedure btReadClick(Sender:TObject);//004FF6BC
  end;
    procedure sub_004FF084(?:TfmUba; ?:TfmHDD);//004FF084
    //function sub_004FF1E4(?:?; ?:?; ?:TStream):?;//004FF1E4
    //function sub_004FF4C4(?:?; ?:?; ?:TMemoryStream):?;//004FF4C4

implementation

{$R *.DFM}

//004FF084
procedure sub_004FF084(?:TfmUba; ?:TfmHDD);
begin
{*
 004FF084    push        ebp
 004FF085    mov         ebp,esp
 004FF087    add         esp,0FFFFFFF8
 004FF08A    mov         dword ptr [ebp-8],edx
 004FF08D    mov         dword ptr [ebp-4],eax
 004FF090    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>004FF097    jne         004FF0AD
 004FF099    mov         ecx,dword ptr [ebp-8]
 004FF09C    mov         dl,1
 004FF09E    mov         eax,[004FEDD0];TfmUba
 004FF0A3    call        TfmProgress.Create;TfmUba.Create
 004FF0A8    mov         [0056D400],eax;gvar_0056D400:TfmUba
 004FF0AD    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF0B2    cmp         byte ptr [eax+1A6],0;TfmUba.FShowing:Boolean
>004FF0B9    je          004FF0CA
 004FF0BB    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF0C0    mov         edx,dword ptr [eax]
 004FF0C2    call        dword ptr [edx+0C4];TfmUba.sub_004A746C
>004FF0C8    jmp         004FF0D4
 004FF0CA    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF0CF    call        004A7450
 004FF0D4    pop         ecx
 004FF0D5    pop         ecx
 004FF0D6    pop         ebp
 004FF0D7    ret
*}
end;

//004FF0D8
procedure TfmUba.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 004FF0D8    push        ebp
 004FF0D9    mov         ebp,esp
 004FF0DB    add         esp,0FFFFFFF4
 004FF0DE    mov         dword ptr [ebp-8],ecx
 004FF0E1    mov         dword ptr [ebp-0C],edx
 004FF0E4    mov         dword ptr [ebp-4],eax
 004FF0E7    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF0EC    mov         byte ptr [eax],1
 004FF0EF    xor         eax,eax
 004FF0F1    mov         [0056D400],eax;gvar_0056D400:TfmUba
 004FF0F6    mov         eax,dword ptr [ebp-8]
 004FF0F9    mov         byte ptr [eax],2
 004FF0FC    mov         esp,ebp
 004FF0FE    pop         ebp
 004FF0FF    ret
*}
end;

//004FF100
procedure TfmUba.btDumpClick(Sender:TObject);
begin
{*
 004FF100    push        ebp
 004FF101    mov         ebp,esp
 004FF103    add         esp,0FFFFFFE8
 004FF106    xor         ecx,ecx
 004FF108    mov         dword ptr [ebp-18],ecx
 004FF10B    mov         dword ptr [ebp-14],ecx
 004FF10E    mov         dword ptr [ebp-8],ecx
 004FF111    mov         dword ptr [ebp-10],edx
 004FF114    mov         dword ptr [ebp-4],eax
 004FF117    xor         eax,eax
 004FF119    push        ebp
 004FF11A    push        4FF1B9
 004FF11F    push        dword ptr fs:[eax]
 004FF122    mov         dword ptr fs:[eax],esp
 004FF125    lea         edx,[ebp-14]
 004FF128    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF12D    mov         eax,dword ptr [eax+308];TfmUba.edStart:TLabeledEdit
 004FF133    call        TPanel.GetCaption
 004FF138    mov         eax,dword ptr [ebp-14]
 004FF13B    xor         edx,edx
 004FF13D    call        0040C4A8
 004FF142    mov         dword ptr [ebp-0C],eax
 004FF145    mov         eax,[0056E2D0];^gvar_0056DF38
 004FF14A    push        dword ptr [eax]
 004FF14C    push        4FF1CC;'Uba\'
 004FF151    mov         eax,dword ptr [ebp-0C]
 004FF154    xor         edx,edx
 004FF156    push        edx
 004FF157    push        eax
 004FF158    lea         edx,[ebp-18]
 004FF15B    mov         eax,8
 004FF160    call        IntToHex
 004FF165    push        dword ptr [ebp-18]
 004FF168    push        4FF1DC;'.bin'
 004FF16D    lea         eax,[ebp-8]
 004FF170    mov         edx,4
 004FF175    call        @LStrCatN
 004FF17A    mov         eax,dword ptr [ebp-8]
 004FF17D    call        0040C94C
 004FF182    test        al,al
>004FF184    je          004FF193
 004FF186    mov         edx,dword ptr [ebp-8]
 004FF189    mov         eax,[004F3EB8];TfmViewer
 004FF18E    call        004F4640
 004FF193    xor         eax,eax
 004FF195    pop         edx
 004FF196    pop         ecx
 004FF197    pop         ecx
 004FF198    mov         dword ptr fs:[eax],edx
 004FF19B    push        4FF1C0
 004FF1A0    lea         eax,[ebp-18]
 004FF1A3    call        @LStrClr
 004FF1A8    lea         eax,[ebp-14]
 004FF1AB    call        @LStrClr
 004FF1B0    lea         eax,[ebp-8]
 004FF1B3    call        @LStrClr
 004FF1B8    ret
>004FF1B9    jmp         @HandleFinally
>004FF1BE    jmp         004FF1A0
 004FF1C0    mov         esp,ebp
 004FF1C2    pop         ebp
 004FF1C3    ret
*}
end;

//004FF1E4
{*function sub_004FF1E4(?:?; ?:?; ?:TStream):?;
begin
 004FF1E4    push        ebp
 004FF1E5    mov         ebp,esp
 004FF1E7    add         esp,0FFFFFFBC
 004FF1EA    push        ebx
 004FF1EB    xor         ebx,ebx
 004FF1ED    mov         dword ptr [ebp-3C],ebx
 004FF1F0    mov         dword ptr [ebp-28],ebx
 004FF1F3    mov         dword ptr [ebp-2C],ebx
 004FF1F6    mov         dword ptr [ebp-30],ebx
 004FF1F9    mov         dword ptr [ebp-34],ebx
 004FF1FC    mov         dword ptr [ebp-38],ebx
 004FF1FF    mov         dword ptr [ebp-14],ebx
 004FF202    mov         dword ptr [ebp-0C],ecx
 004FF205    mov         dword ptr [ebp-8],edx
 004FF208    mov         dword ptr [ebp-4],eax
 004FF20B    xor         eax,eax
 004FF20D    push        ebp
 004FF20E    push        4FF462
 004FF213    push        dword ptr fs:[eax]
 004FF216    mov         dword ptr fs:[eax],esp
 004FF219    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF21E    mov         byte ptr [eax],0
 004FF221    mov         byte ptr [ebp-0D],1
 004FF225    call        004CED2C
 004FF22A    mov         eax,dword ptr [ebp-8]
 004FF22D    mov         dword ptr [ebp-18],eax
 004FF230    mov         eax,dword ptr [ebp-4]
 004FF233    mov         dword ptr [ebp-1C],eax
 004FF236    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>004FF23D    je          004FF40C
 004FF243    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF248    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF24E    xor         edx,edx
 004FF250    call        TProgressBar.SetMin
 004FF255    mov         edx,dword ptr [ebp-4]
 004FF258    add         edx,dword ptr [ebp-8]
 004FF25B    shr         edx,3
 004FF25E    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF263    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF269    call        TProgressBar.SetMax
 004FF26E    mov         edx,dword ptr [ebp-4]
 004FF271    shr         edx,3
 004FF274    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF279    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF27F    call        TProgressBar.SetMin
>004FF284    jmp         004FF40C
 004FF289    mov         edx,dword ptr [ebp-1C]
 004FF28C    mov         eax,1
 004FF291    call        004CF080
 004FF296    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FF29B    cmp         byte ptr [eax],0
>004FF29E    jne         004FF2D8
 004FF2A0    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF2A5    cmp         byte ptr [eax],0
>004FF2A8    jne         004FF2D8
 004FF2AA    call        004CEAB4
 004FF2AF    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FF2B4    cmp         byte ptr [eax],0
>004FF2B7    jne         004FF3A6
 004FF2BD    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF2C2    cmp         byte ptr [eax],0
>004FF2C5    jne         004FF3A6
 004FF2CB    mov         eax,dword ptr [ebp-0C]
 004FF2CE    call        00560288
>004FF2D3    jmp         004FF3A6
 004FF2D8    mov         eax,dword ptr [ebp-0C]
 004FF2DB    call        005602C8
 004FF2E0    lea         eax,[ebp-24]
 004FF2E3    push        eax
 004FF2E4    lea         ecx,[ebp-22]
 004FF2E7    lea         edx,[ebp-20]
 004FF2EA    mov         eax,dword ptr [ebp-1C]
 004FF2ED    call        004D0AB4
 004FF2F2    mov         eax,dword ptr [ebp-1C]
 004FF2F5    xor         edx,edx
 004FF2F7    push        edx
 004FF2F8    push        eax
 004FF2F9    lea         edx,[ebp-28]
 004FF2FC    mov         eax,4
 004FF301    call        IntToHex
 004FF306    push        dword ptr [ebp-28]
 004FF309    push        4FF47C;' Err'
 004FF30E    push        4FF48C;' T:'
 004FF313    mov         eax,dword ptr [ebp-20]
 004FF316    neg         eax
 004FF318    xor         edx,edx
 004FF31A    push        edx
 004FF31B    push        eax
 004FF31C    lea         edx,[ebp-2C]
 004FF31F    mov         eax,2
 004FF324    call        IntToHex
 004FF329    push        dword ptr [ebp-2C]
 004FF32C    push        4FF498;' ('
 004FF331    mov         eax,dword ptr [ebp-20]
 004FF334    xor         edx,edx
 004FF336    push        edx
 004FF337    push        eax
 004FF338    lea         edx,[ebp-30]
 004FF33B    mov         eax,2
 004FF340    call        IntToHex
 004FF345    push        dword ptr [ebp-30]
 004FF348    push        4FF4A4;') S:'
 004FF34D    lea         ecx,[ebp-34]
 004FF350    movzx       eax,word ptr [ebp-22]
 004FF354    mov         edx,4
 004FF359    call        IntToHex
 004FF35E    push        dword ptr [ebp-34]
 004FF361    push        4FF4B4;' H:'
 004FF366    lea         ecx,[ebp-38]
 004FF369    movzx       eax,word ptr [ebp-24]
 004FF36D    mov         edx,2
 004FF372    call        IntToHex
 004FF377    push        dword ptr [ebp-38]
 004FF37A    lea         eax,[ebp-14]
 004FF37D    mov         edx,0A
 004FF382    call        @LStrCatN
 004FF387    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FF38C    mov         eax,dword ptr [eax]
 004FF38E    mov         eax,dword ptr [eax+2F8]
 004FF394    mov         eax,dword ptr [eax+248]
 004FF39A    mov         edx,dword ptr [ebp-14]
 004FF39D    mov         ecx,dword ptr [eax]
 004FF39F    call        dword ptr [ecx+38]
 004FF3A2    mov         byte ptr [ebp-0D],0
 004FF3A6    inc         dword ptr [ebp-1C]
 004FF3A9    dec         dword ptr [ebp-18]
 004FF3AC    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>004FF3B3    je          004FF40C
 004FF3B5    lea         eax,[ebp-3C]
 004FF3B8    push        eax
 004FF3B9    mov         eax,dword ptr [ebp-1C]
 004FF3BC    mov         dword ptr [ebp-44],eax
 004FF3BF    mov         byte ptr [ebp-40],0
 004FF3C3    lea         edx,[ebp-44]
 004FF3C6    xor         ecx,ecx
 004FF3C8    mov         eax,4FF4C0;'%x'
 004FF3CD    call        0040D630
 004FF3D2    mov         edx,dword ptr [ebp-3C]
 004FF3D5    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF3DA    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF3E0    add         eax,80;TProgressBar.Hint:String
 004FF3E5    call        @LStrAsg
 004FF3EA    mov         edx,dword ptr [ebp-1C]
 004FF3ED    shr         edx,3
 004FF3F0    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF3F5    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF3FB    call        TProgressBar.SetPosition
 004FF400    mov         eax,[0056E3C0];^Application:TApplication
 004FF405    mov         eax,dword ptr [eax]
 004FF407    call        004AB51C
 004FF40C    cmp         dword ptr [ebp-18],0
>004FF410    jbe         004FF420
 004FF412    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF417    cmp         byte ptr [eax],0
>004FF41A    je          004FF289
 004FF420    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>004FF427    je          004FF43F
 004FF429    mov         edx,dword ptr [ebp-1C]
 004FF42C    shr         edx,3
 004FF42F    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF434    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF43A    call        TProgressBar.SetPosition
 004FF43F    xor         eax,eax
 004FF441    pop         edx
 004FF442    pop         ecx
 004FF443    pop         ecx
 004FF444    mov         dword ptr fs:[eax],edx
 004FF447    push        4FF469
 004FF44C    lea         eax,[ebp-3C]
 004FF44F    mov         edx,6
 004FF454    call        @LStrArrayClr
 004FF459    lea         eax,[ebp-14]
 004FF45C    call        @LStrClr
 004FF461    ret
>004FF462    jmp         @HandleFinally
>004FF467    jmp         004FF44C
 004FF469    mov         al,byte ptr [ebp-0D]
 004FF46C    pop         ebx
 004FF46D    mov         esp,ebp
 004FF46F    pop         ebp
 004FF470    ret
end;*}

//004FF4C4
{*function sub_004FF4C4(?:?; ?:?; ?:TMemoryStream):?;
begin
 004FF4C4    push        ebp
 004FF4C5    mov         ebp,esp
 004FF4C7    add         esp,0FFFFFFD4
 004FF4CA    push        ebx
 004FF4CB    xor         ebx,ebx
 004FF4CD    mov         dword ptr [ebp-24],ebx
 004FF4D0    mov         dword ptr [ebp-20],ebx
 004FF4D3    mov         dword ptr [ebp-14],ebx
 004FF4D6    mov         dword ptr [ebp-0C],ecx
 004FF4D9    mov         dword ptr [ebp-8],edx
 004FF4DC    mov         dword ptr [ebp-4],eax
 004FF4DF    xor         eax,eax
 004FF4E1    push        ebp
 004FF4E2    push        4FF690
 004FF4E7    push        dword ptr fs:[eax]
 004FF4EA    mov         dword ptr fs:[eax],esp
 004FF4ED    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF4F2    mov         byte ptr [eax],0
 004FF4F5    mov         byte ptr [ebp-0D],1
 004FF4F9    call        004CED2C
 004FF4FE    mov         eax,dword ptr [ebp-8]
 004FF501    mov         dword ptr [ebp-18],eax
 004FF504    mov         eax,dword ptr [ebp-4]
 004FF507    mov         dword ptr [ebp-1C],eax
 004FF50A    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>004FF511    je          004FF63A
 004FF517    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF51C    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF522    xor         edx,edx
 004FF524    call        TProgressBar.SetMin
 004FF529    mov         edx,dword ptr [ebp-4]
 004FF52C    add         edx,dword ptr [ebp-8]
 004FF52F    shr         edx,3
 004FF532    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF537    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF53D    call        TProgressBar.SetMax
 004FF542    mov         edx,dword ptr [ebp-4]
 004FF545    shr         edx,3
 004FF548    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF54D    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF553    call        TProgressBar.SetMin
>004FF558    jmp         004FF63A
 004FF55D    mov         eax,dword ptr [ebp-0C]
 004FF560    call        005602A8
 004FF565    mov         edx,dword ptr [ebp-1C]
 004FF568    mov         eax,1
 004FF56D    call        004CF108
 004FF572    mov         eax,[0056E3F8];^gvar_0059BF4C
 004FF577    cmp         byte ptr [eax],0
>004FF57A    jne         004FF591
 004FF57C    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF581    cmp         byte ptr [eax],0
>004FF584    jne         004FF591
 004FF586    call        004CEC08
 004FF58B    mov         byte ptr [ebp-0D],1
>004FF58F    jmp         004FF5D4
 004FF591    mov         eax,dword ptr [ebp-1C]
 004FF594    xor         edx,edx
 004FF596    push        edx
 004FF597    push        eax
 004FF598    lea         edx,[ebp-20]
 004FF59B    mov         eax,4
 004FF5A0    call        IntToHex
 004FF5A5    mov         edx,dword ptr [ebp-20]
 004FF5A8    lea         eax,[ebp-14]
 004FF5AB    mov         ecx,4FF6A8;' Err'
 004FF5B0    call        @LStrCat3
 004FF5B5    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FF5BA    mov         eax,dword ptr [eax]
 004FF5BC    mov         eax,dword ptr [eax+2F8]
 004FF5C2    mov         eax,dword ptr [eax+248]
 004FF5C8    mov         edx,dword ptr [ebp-14]
 004FF5CB    mov         ecx,dword ptr [eax]
 004FF5CD    call        dword ptr [ecx+38]
 004FF5D0    mov         byte ptr [ebp-0D],0
 004FF5D4    inc         dword ptr [ebp-1C]
 004FF5D7    dec         dword ptr [ebp-18]
 004FF5DA    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>004FF5E1    je          004FF63A
 004FF5E3    lea         eax,[ebp-24]
 004FF5E6    push        eax
 004FF5E7    mov         eax,dword ptr [ebp-1C]
 004FF5EA    mov         dword ptr [ebp-2C],eax
 004FF5ED    mov         byte ptr [ebp-28],0
 004FF5F1    lea         edx,[ebp-2C]
 004FF5F4    xor         ecx,ecx
 004FF5F6    mov         eax,4FF6B8;'%x'
 004FF5FB    call        0040D630
 004FF600    mov         edx,dword ptr [ebp-24]
 004FF603    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF608    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF60E    add         eax,80;TProgressBar.Hint:String
 004FF613    call        @LStrAsg
 004FF618    mov         edx,dword ptr [ebp-1C]
 004FF61B    shr         edx,3
 004FF61E    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF623    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF629    call        TProgressBar.SetPosition
 004FF62E    mov         eax,[0056E3C0];^Application:TApplication
 004FF633    mov         eax,dword ptr [eax]
 004FF635    call        004AB51C
 004FF63A    cmp         dword ptr [ebp-18],0
>004FF63E    jbe         004FF64E
 004FF640    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF645    cmp         byte ptr [eax],0
>004FF648    je          004FF55D
 004FF64E    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>004FF655    je          004FF66D
 004FF657    mov         edx,dword ptr [ebp-1C]
 004FF65A    shr         edx,3
 004FF65D    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 004FF662    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 004FF668    call        TProgressBar.SetPosition
 004FF66D    xor         eax,eax
 004FF66F    pop         edx
 004FF670    pop         ecx
 004FF671    pop         ecx
 004FF672    mov         dword ptr fs:[eax],edx
 004FF675    push        4FF697
 004FF67A    lea         eax,[ebp-24]
 004FF67D    mov         edx,2
 004FF682    call        @LStrArrayClr
 004FF687    lea         eax,[ebp-14]
 004FF68A    call        @LStrClr
 004FF68F    ret
>004FF690    jmp         @HandleFinally
>004FF695    jmp         004FF67A
 004FF697    mov         al,byte ptr [ebp-0D]
 004FF69A    pop         ebx
 004FF69B    mov         esp,ebp
 004FF69D    pop         ebp
 004FF69E    ret
end;*}

//004FF6BC
procedure TfmUba.btReadClick(Sender:TObject);
begin
{*
 004FF6BC    push        ebp
 004FF6BD    mov         ebp,esp
 004FF6BF    mov         ecx,5
 004FF6C4    push        0
 004FF6C6    push        0
 004FF6C8    dec         ecx
>004FF6C9    jne         004FF6C4
 004FF6CB    push        ecx
 004FF6CC    mov         dword ptr [ebp-18],edx
 004FF6CF    mov         dword ptr [ebp-4],eax
 004FF6D2    xor         eax,eax
 004FF6D4    push        ebp
 004FF6D5    push        4FF8D7
 004FF6DA    push        dword ptr fs:[eax]
 004FF6DD    mov         dword ptr fs:[eax],esp
 004FF6E0    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 004FF6E6    mov         edx,dword ptr [edx]
 004FF6E8    lea         eax,[ebp-1C]
 004FF6EB    mov         ecx,4FF8EC;'Uba'
 004FF6F0    call        @LStrCat3
 004FF6F5    mov         eax,dword ptr [ebp-1C]
 004FF6F8    call        0040C9A4
 004FF6FD    test        al,al
>004FF6FF    jne         004FF733
 004FF701    push        4FF8F8;'Cannot create '
 004FF706    mov         eax,[0056E2D0];^gvar_0056DF38
 004FF70B    push        dword ptr [eax]
 004FF70D    push        4FF8EC;'Uba'
 004FF712    lea         eax,[ebp-20]
 004FF715    mov         edx,3
 004FF71A    call        @LStrCatN
 004FF71F    mov         ecx,dword ptr [ebp-20]
 004FF722    mov         dl,1
 004FF724    mov         eax,[0040B004];Exception
 004FF729    call        Exception.Create;Exception.Create
 004FF72E    call        @RaiseExcept
 004FF733    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF738    mov         byte ptr [eax],0
 004FF73B    mov         eax,dword ptr [ebp-4]
 004FF73E    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 004FF744    xor         edx,edx
 004FF746    mov         ecx,dword ptr [eax]
 004FF748    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF74B    mov         eax,dword ptr [ebp-4]
 004FF74E    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 004FF754    xor         edx,edx
 004FF756    mov         ecx,dword ptr [eax]
 004FF758    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF75B    mov         eax,dword ptr [ebp-4]
 004FF75E    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 004FF764    xor         edx,edx
 004FF766    mov         ecx,dword ptr [eax]
 004FF768    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF76B    mov         eax,dword ptr [ebp-4]
 004FF76E    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 004FF774    xor         edx,edx
 004FF776    mov         ecx,dword ptr [eax]
 004FF778    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF77B    mov         eax,dword ptr [ebp-4]
 004FF77E    mov         eax,dword ptr [eax+31C];TfmUba.btErase:TButton
 004FF784    xor         edx,edx
 004FF786    mov         ecx,dword ptr [eax]
 004FF788    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF78B    lea         edx,[ebp-24]
 004FF78E    mov         eax,dword ptr [ebp-4]
 004FF791    mov         eax,dword ptr [eax+308];TfmUba.edStart:TLabeledEdit
 004FF797    call        TPanel.GetCaption
 004FF79C    mov         eax,dword ptr [ebp-24]
 004FF79F    xor         edx,edx
 004FF7A1    call        0040C4A8
 004FF7A6    mov         dword ptr [ebp-8],eax
 004FF7A9    lea         edx,[ebp-28]
 004FF7AC    mov         eax,dword ptr [ebp-4]
 004FF7AF    mov         eax,dword ptr [eax+304];TfmUba.edLen:TLabeledEdit
 004FF7B5    call        TPanel.GetCaption
 004FF7BA    mov         eax,dword ptr [ebp-28]
 004FF7BD    mov         edx,1
 004FF7C2    call        0040C4A8
 004FF7C7    mov         dword ptr [ebp-0C],eax
 004FF7CA    mov         eax,[0056E2D0];^gvar_0056DF38
 004FF7CF    push        dword ptr [eax]
 004FF7D1    push        4FF910;'Uba\'
 004FF7D6    mov         eax,dword ptr [ebp-8]
 004FF7D9    xor         edx,edx
 004FF7DB    push        edx
 004FF7DC    push        eax
 004FF7DD    lea         edx,[ebp-2C]
 004FF7E0    mov         eax,8
 004FF7E5    call        IntToHex
 004FF7EA    push        dword ptr [ebp-2C]
 004FF7ED    push        4FF920;'.bin'
 004FF7F2    lea         eax,[ebp-10]
 004FF7F5    mov         edx,4
 004FF7FA    call        @LStrCatN
 004FF7FF    push        0FFFF
 004FF804    mov         ecx,dword ptr [ebp-10]
 004FF807    mov         dl,1
 004FF809    mov         eax,[0041DD24];TFileStream
 004FF80E    call        TFileStream.Create;TFileStream.Create
 004FF813    mov         dword ptr [ebp-14],eax
 004FF816    xor         eax,eax
 004FF818    push        ebp
 004FF819    push        4FF848
 004FF81E    push        dword ptr fs:[eax]
 004FF821    mov         dword ptr fs:[eax],esp
 004FF824    mov         ecx,dword ptr [ebp-14]
 004FF827    mov         edx,dword ptr [ebp-0C]
 004FF82A    mov         eax,dword ptr [ebp-8]
 004FF82D    call        004FF1E4
 004FF832    xor         eax,eax
 004FF834    pop         edx
 004FF835    pop         ecx
 004FF836    pop         ecx
 004FF837    mov         dword ptr fs:[eax],edx
 004FF83A    push        4FF84F
 004FF83F    mov         eax,dword ptr [ebp-14]
 004FF842    call        TObject.Free
 004FF847    ret
>004FF848    jmp         @HandleFinally
>004FF84D    jmp         004FF83F
 004FF84F    mov         eax,dword ptr [ebp-4]
 004FF852    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 004FF858    mov         dl,1
 004FF85A    mov         ecx,dword ptr [eax]
 004FF85C    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF85F    mov         eax,dword ptr [ebp-4]
 004FF862    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 004FF868    mov         dl,1
 004FF86A    mov         ecx,dword ptr [eax]
 004FF86C    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF86F    mov         eax,dword ptr [ebp-4]
 004FF872    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 004FF878    mov         dl,1
 004FF87A    mov         ecx,dword ptr [eax]
 004FF87C    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF87F    mov         eax,dword ptr [ebp-4]
 004FF882    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 004FF888    mov         dl,1
 004FF88A    mov         ecx,dword ptr [eax]
 004FF88C    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF88F    mov         eax,dword ptr [ebp-4]
 004FF892    mov         eax,dword ptr [eax+31C];TfmUba.btErase:TButton
 004FF898    mov         dl,1
 004FF89A    mov         ecx,dword ptr [eax]
 004FF89C    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF89F    xor         eax,eax
 004FF8A1    pop         edx
 004FF8A2    pop         ecx
 004FF8A3    pop         ecx
 004FF8A4    mov         dword ptr fs:[eax],edx
 004FF8A7    push        4FF8DE
 004FF8AC    lea         eax,[ebp-2C]
 004FF8AF    call        @LStrClr
 004FF8B4    lea         eax,[ebp-28]
 004FF8B7    mov         edx,2
 004FF8BC    call        @LStrArrayClr
 004FF8C1    lea         eax,[ebp-20]
 004FF8C4    mov         edx,2
 004FF8C9    call        @LStrArrayClr
 004FF8CE    lea         eax,[ebp-10]
 004FF8D1    call        @LStrClr
 004FF8D6    ret
>004FF8D7    jmp         @HandleFinally
>004FF8DC    jmp         004FF8AC
 004FF8DE    mov         esp,ebp
 004FF8E0    pop         ebp
 004FF8E1    ret
*}
end;

//004FF928
procedure TfmUba.btWriteClick(Sender:TObject);
begin
{*
 004FF928    push        ebp
 004FF929    mov         ebp,esp
 004FF92B    mov         ecx,6
 004FF930    push        0
 004FF932    push        0
 004FF934    dec         ecx
>004FF935    jne         004FF930
 004FF937    mov         dword ptr [ebp-14],edx
 004FF93A    mov         dword ptr [ebp-4],eax
 004FF93D    xor         eax,eax
 004FF93F    push        ebp
 004FF940    push        4FFBCD
 004FF945    push        dword ptr fs:[eax]
 004FF948    mov         dword ptr fs:[eax],esp
 004FF94B    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 004FF951    mov         edx,dword ptr [edx]
 004FF953    lea         eax,[ebp-18]
 004FF956    mov         ecx,4FFBE0;'Uba'
 004FF95B    call        @LStrCat3
 004FF960    mov         eax,dword ptr [ebp-18]
 004FF963    call        0040C9A4
 004FF968    test        al,al
>004FF96A    jne         004FF99E
 004FF96C    push        4FFBEC;'Cannot create '
 004FF971    mov         eax,[0056E2D0];^gvar_0056DF38
 004FF976    push        dword ptr [eax]
 004FF978    push        4FFBE0;'Uba'
 004FF97D    lea         eax,[ebp-1C]
 004FF980    mov         edx,3
 004FF985    call        @LStrCatN
 004FF98A    mov         ecx,dword ptr [ebp-1C]
 004FF98D    mov         dl,1
 004FF98F    mov         eax,[0040B004];Exception
 004FF994    call        Exception.Create;Exception.Create
 004FF999    call        @RaiseExcept
 004FF99E    mov         eax,[0056E5A4];^gvar_0056DF04
 004FF9A3    mov         byte ptr [eax],0
 004FF9A6    mov         eax,dword ptr [ebp-4]
 004FF9A9    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 004FF9AF    xor         edx,edx
 004FF9B1    mov         ecx,dword ptr [eax]
 004FF9B3    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF9B6    mov         eax,dword ptr [ebp-4]
 004FF9B9    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 004FF9BF    xor         edx,edx
 004FF9C1    mov         ecx,dword ptr [eax]
 004FF9C3    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF9C6    mov         eax,dword ptr [ebp-4]
 004FF9C9    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 004FF9CF    xor         edx,edx
 004FF9D1    mov         ecx,dword ptr [eax]
 004FF9D3    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF9D6    mov         eax,dword ptr [ebp-4]
 004FF9D9    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 004FF9DF    xor         edx,edx
 004FF9E1    mov         ecx,dword ptr [eax]
 004FF9E3    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF9E6    mov         eax,dword ptr [ebp-4]
 004FF9E9    mov         eax,dword ptr [eax+31C];TfmUba.btErase:TButton
 004FF9EF    xor         edx,edx
 004FF9F1    mov         ecx,dword ptr [eax]
 004FF9F3    call        dword ptr [ecx+64];TImage.SetEnabled
 004FF9F6    lea         edx,[ebp-20]
 004FF9F9    mov         eax,dword ptr [ebp-4]
 004FF9FC    mov         eax,dword ptr [eax+308];TfmUba.edStart:TLabeledEdit
 004FFA02    call        TPanel.GetCaption
 004FFA07    mov         eax,dword ptr [ebp-20]
 004FFA0A    xor         edx,edx
 004FFA0C    call        0040C4A8
 004FFA11    mov         dword ptr [ebp-8],eax
 004FFA14    lea         edx,[ebp-24]
 004FFA17    mov         eax,dword ptr [ebp-4]
 004FFA1A    mov         eax,dword ptr [eax+304];TfmUba.edLen:TLabeledEdit
 004FFA20    call        TPanel.GetCaption
 004FFA25    mov         eax,dword ptr [ebp-24]
 004FFA28    xor         edx,edx
 004FFA2A    call        0040C4A8
 004FFA2F    mov         dword ptr [ebp-0C],eax
 004FFA32    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 004FFA38    mov         edx,dword ptr [edx]
 004FFA3A    lea         eax,[ebp-28]
 004FFA3D    mov         ecx,4FFC04;'Uba\'
 004FFA42    call        @LStrCat3
 004FFA47    mov         edx,dword ptr [ebp-28]
 004FFA4A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FFA4F    mov         eax,dword ptr [eax]
 004FFA51    mov         eax,dword ptr [eax+35C]
 004FFA57    call        TOpenDialog.SetInitialDir
 004FFA5C    mov         eax,dword ptr [ebp-8]
 004FFA5F    xor         edx,edx
 004FFA61    push        edx
 004FFA62    push        eax
 004FFA63    lea         edx,[ebp-2C]
 004FFA66    mov         eax,8
 004FFA6B    call        IntToHex
 004FFA70    mov         edx,dword ptr [ebp-2C]
 004FFA73    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FFA78    mov         eax,dword ptr [eax]
 004FFA7A    mov         eax,dword ptr [eax+35C]
 004FFA80    add         eax,78
 004FFA83    mov         ecx,4FFC14;'.bin'
 004FFA88    call        @LStrCat3
 004FFA8D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FFA92    mov         eax,dword ptr [eax]
 004FFA94    mov         eax,dword ptr [eax+35C]
 004FFA9A    mov         edx,dword ptr [eax]
 004FFA9C    call        dword ptr [edx+3C]
 004FFA9F    test        al,al
>004FFAA1    je          004FFB2B
 004FFAA7    mov         dl,1
 004FFAA9    mov         eax,[0041DE14];TMemoryStream
 004FFAAE    call        TObject.Create;TMemoryStream.Create
 004FFAB3    mov         dword ptr [ebp-10],eax
 004FFAB6    xor         eax,eax
 004FFAB8    push        ebp
 004FFAB9    push        4FFB24
 004FFABE    push        dword ptr fs:[eax]
 004FFAC1    mov         dword ptr fs:[eax],esp
 004FFAC4    lea         edx,[ebp-30]
 004FFAC7    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FFACC    mov         eax,dword ptr [eax]
 004FFACE    mov         eax,dword ptr [eax+35C]
 004FFAD4    call        TOpenDialog.GetFileName
 004FFAD9    mov         edx,dword ptr [ebp-30]
 004FFADC    mov         eax,dword ptr [ebp-10]
 004FFADF    call        00423F8C
 004FFAE4    cmp         dword ptr [ebp-0C],0
>004FFAE8    jne         004FFB00
 004FFAEA    push        0
 004FFAEC    push        200
 004FFAF1    mov         eax,dword ptr [ebp-10]
 004FFAF4    mov         edx,dword ptr [eax]
 004FFAF6    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004FFAF8    call        @_lldiv
 004FFAFD    mov         dword ptr [ebp-0C],eax
 004FFB00    mov         ecx,dword ptr [ebp-10]
 004FFB03    mov         edx,dword ptr [ebp-0C]
 004FFB06    mov         eax,dword ptr [ebp-8]
 004FFB09    call        004FF4C4
 004FFB0E    xor         eax,eax
 004FFB10    pop         edx
 004FFB11    pop         ecx
 004FFB12    pop         ecx
 004FFB13    mov         dword ptr fs:[eax],edx
 004FFB16    push        4FFB2B
 004FFB1B    mov         eax,dword ptr [ebp-10]
 004FFB1E    call        TObject.Free
 004FFB23    ret
>004FFB24    jmp         @HandleFinally
>004FFB29    jmp         004FFB1B
 004FFB2B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FFB30    mov         eax,dword ptr [eax]
 004FFB32    mov         eax,dword ptr [eax+35C]
 004FFB38    add         eax,78
 004FFB3B    call        @LStrClr
 004FFB40    mov         eax,dword ptr [ebp-4]
 004FFB43    mov         eax,dword ptr [eax+31C];TfmUba.btErase:TButton
 004FFB49    mov         dl,1
 004FFB4B    mov         ecx,dword ptr [eax]
 004FFB4D    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFB50    mov         eax,dword ptr [ebp-4]
 004FFB53    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 004FFB59    mov         dl,1
 004FFB5B    mov         ecx,dword ptr [eax]
 004FFB5D    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFB60    mov         eax,dword ptr [ebp-4]
 004FFB63    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 004FFB69    mov         dl,1
 004FFB6B    mov         ecx,dword ptr [eax]
 004FFB6D    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFB70    mov         eax,dword ptr [ebp-4]
 004FFB73    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 004FFB79    mov         dl,1
 004FFB7B    mov         ecx,dword ptr [eax]
 004FFB7D    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFB80    mov         eax,dword ptr [ebp-4]
 004FFB83    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 004FFB89    mov         dl,1
 004FFB8B    mov         ecx,dword ptr [eax]
 004FFB8D    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFB90    xor         eax,eax
 004FFB92    pop         edx
 004FFB93    pop         ecx
 004FFB94    pop         ecx
 004FFB95    mov         dword ptr fs:[eax],edx
 004FFB98    push        4FFBD4
 004FFB9D    lea         eax,[ebp-30]
 004FFBA0    call        @LStrClr
 004FFBA5    lea         eax,[ebp-2C]
 004FFBA8    mov         edx,2
 004FFBAD    call        @LStrArrayClr
 004FFBB2    lea         eax,[ebp-24]
 004FFBB5    mov         edx,2
 004FFBBA    call        @LStrArrayClr
 004FFBBF    lea         eax,[ebp-1C]
 004FFBC2    mov         edx,2
 004FFBC7    call        @LStrArrayClr
 004FFBCC    ret
>004FFBCD    jmp         @HandleFinally
>004FFBD2    jmp         004FFB9D
 004FFBD4    mov         esp,ebp
 004FFBD6    pop         ebp
 004FFBD7    ret
*}
end;

//004FFC1C
procedure TfmUba.btMaxUbaClick(Sender:TObject);
begin
{*
 004FFC1C    push        ebp
 004FFC1D    mov         ebp,esp
 004FFC1F    add         esp,0FFFFFFC8
 004FFC22    push        ebx
 004FFC23    xor         ecx,ecx
 004FFC25    mov         dword ptr [ebp-34],ecx
 004FFC28    mov         dword ptr [ebp-38],ecx
 004FFC2B    mov         dword ptr [ebp-2C],ecx
 004FFC2E    mov         dword ptr [ebp-30],ecx
 004FFC31    mov         dword ptr [ebp-1C],ecx
 004FFC34    mov         dword ptr [ebp-20],ecx
 004FFC37    mov         dword ptr [ebp-18],ecx
 004FFC3A    mov         dword ptr [ebp-14],edx
 004FFC3D    mov         dword ptr [ebp-4],eax
 004FFC40    xor         eax,eax
 004FFC42    push        ebp
 004FFC43    push        4FFF35
 004FFC48    push        dword ptr fs:[eax]
 004FFC4B    mov         dword ptr fs:[eax],esp
 004FFC4E    mov         eax,dword ptr [ebp-4]
 004FFC51    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 004FFC57    xor         edx,edx
 004FFC59    mov         ecx,dword ptr [eax]
 004FFC5B    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFC5E    mov         eax,dword ptr [ebp-4]
 004FFC61    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 004FFC67    xor         edx,edx
 004FFC69    mov         ecx,dword ptr [eax]
 004FFC6B    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFC6E    mov         eax,dword ptr [ebp-4]
 004FFC71    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 004FFC77    xor         edx,edx
 004FFC79    mov         ecx,dword ptr [eax]
 004FFC7B    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFC7E    mov         eax,dword ptr [ebp-4]
 004FFC81    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 004FFC87    xor         edx,edx
 004FFC89    mov         ecx,dword ptr [eax]
 004FFC8B    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFC8E    mov         eax,dword ptr [ebp-4]
 004FFC91    mov         eax,dword ptr [eax+31C];TfmUba.btErase:TButton
 004FFC97    xor         edx,edx
 004FFC99    mov         ecx,dword ptr [eax]
 004FFC9B    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFC9E    push        10
 004FFCA0    call        user32.GetKeyState
 004FFCA5    test        ax,ax
>004FFCA8    jge         004FFE75
 004FFCAE    lea         edx,[ebp-18]
 004FFCB1    mov         eax,dword ptr [ebp-4]
 004FFCB4    mov         eax,dword ptr [eax+308];TfmUba.edStart:TLabeledEdit
 004FFCBA    call        TPanel.GetCaption
 004FFCBF    mov         eax,dword ptr [ebp-18]
 004FFCC2    mov         edx,10000
 004FFCC7    call        0040C4A8
 004FFCCC    cmp         eax,10000
>004FFCD1    jne         004FFE60
 004FFCD7    mov         dl,1
 004FFCD9    mov         eax,[0041DE14];TMemoryStream
 004FFCDE    call        TObject.Create;TMemoryStream.Create
 004FFCE3    mov         dword ptr [ebp-8],eax
 004FFCE6    xor         eax,eax
 004FFCE8    push        ebp
 004FFCE9    push        4FFE59
 004FFCEE    push        dword ptr fs:[eax]
 004FFCF1    mov         dword ptr fs:[eax],esp
 004FFCF4    mov         eax,[0056E040];^gvar_005720C0
 004FFCF9    cmp         byte ptr [eax],0
>004FFCFC    jne         004FFD22
 004FFCFE    mov         eax,[0056E304];^gvar_0056DF54
 004FFD03    cmp         word ptr [eax],65
>004FFD07    je          004FFD22
 004FFD09    mov         eax,[0056E304];^gvar_0056DF54
 004FFD0E    cmp         word ptr [eax],73
>004FFD12    je          004FFD22
 004FFD14    mov         eax,[0056E01C];^gvar_005720C1
 004FFD19    cmp         byte ptr [eax],0
>004FFD1C    je          004FFDB7
 004FFD22    mov         ecx,dword ptr [ebp-8]
 004FFD25    xor         edx,edx
 004FFD27    mov         ax,0D
 004FFD2B    call        004CFEC8
 004FFD30    test        al,al
>004FFD32    je          004FFE43
 004FFD38    xor         ecx,ecx
 004FFD3A    mov         edx,32
 004FFD3F    mov         eax,dword ptr [ebp-8]
 004FFD42    mov         ebx,dword ptr [eax]
 004FFD44    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FFD47    mov         eax,dword ptr [ebp-8]
 004FFD4A    call        004CE56C
 004FFD4F    not         eax
 004FFD51    inc         eax
 004FFD52    mov         dword ptr [ebp-0C],eax
 004FFD55    xor         ecx,ecx
 004FFD57    mov         edx,42
 004FFD5C    mov         eax,dword ptr [ebp-8]
 004FFD5F    mov         ebx,dword ptr [eax]
 004FFD61    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FFD64    mov         eax,dword ptr [ebp-8]
 004FFD67    call        004CE548
 004FFD6C    mov         word ptr [ebp-0E],ax
 004FFD70    lea         eax,[ebp-20]
 004FFD73    push        eax
 004FFD74    movzx       eax,word ptr [ebp-0E]
 004FFD78    imul        dword ptr [ebp-0C]
 004FFD7B    mov         dword ptr [ebp-28],eax
 004FFD7E    mov         byte ptr [ebp-24],0
 004FFD82    lea         edx,[ebp-28]
 004FFD85    xor         ecx,ecx
 004FFD87    mov         eax,4FFF4C;'%x'
 004FFD8C    call        0040D630
 004FFD91    mov         ecx,dword ptr [ebp-20]
 004FFD94    lea         eax,[ebp-1C]
 004FFD97    mov         edx,4FFF58;'$'
 004FFD9C    call        @LStrCat3
 004FFDA1    mov         edx,dword ptr [ebp-1C]
 004FFDA4    mov         eax,dword ptr [ebp-4]
 004FFDA7    mov         eax,dword ptr [eax+308];TfmUba.edStart:TLabeledEdit
 004FFDAD    call        TPanel.SetCaption
>004FFDB2    jmp         004FFE43
 004FFDB7    mov         ecx,dword ptr [ebp-8]
 004FFDBA    xor         edx,edx
 004FFDBC    mov         ax,5
 004FFDC0    call        004CFEC8
 004FFDC5    test        al,al
>004FFDC7    je          004FFE43
 004FFDC9    xor         ecx,ecx
 004FFDCB    mov         edx,14
 004FFDD0    mov         eax,dword ptr [ebp-8]
 004FFDD3    mov         ebx,dword ptr [eax]
 004FFDD5    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FFDD8    mov         eax,dword ptr [ebp-8]
 004FFDDB    call        004CE56C
 004FFDE0    not         eax
 004FFDE2    inc         eax
 004FFDE3    mov         dword ptr [ebp-0C],eax
 004FFDE6    xor         ecx,ecx
 004FFDE8    mov         edx,28
 004FFDED    mov         eax,dword ptr [ebp-8]
 004FFDF0    mov         ebx,dword ptr [eax]
 004FFDF2    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FFDF5    mov         eax,dword ptr [ebp-8]
 004FFDF8    call        004CE548
 004FFDFD    mov         word ptr [ebp-0E],ax
 004FFE01    lea         eax,[ebp-30]
 004FFE04    push        eax
 004FFE05    movzx       eax,word ptr [ebp-0E]
 004FFE09    imul        dword ptr [ebp-0C]
 004FFE0C    mov         dword ptr [ebp-28],eax
 004FFE0F    mov         byte ptr [ebp-24],0
 004FFE13    lea         edx,[ebp-28]
 004FFE16    xor         ecx,ecx
 004FFE18    mov         eax,4FFF4C;'%x'
 004FFE1D    call        0040D630
 004FFE22    mov         ecx,dword ptr [ebp-30]
 004FFE25    lea         eax,[ebp-2C]
 004FFE28    mov         edx,4FFF58;'$'
 004FFE2D    call        @LStrCat3
 004FFE32    mov         edx,dword ptr [ebp-2C]
 004FFE35    mov         eax,dword ptr [ebp-4]
 004FFE38    mov         eax,dword ptr [eax+308];TfmUba.edStart:TLabeledEdit
 004FFE3E    call        TPanel.SetCaption
 004FFE43    xor         eax,eax
 004FFE45    pop         edx
 004FFE46    pop         ecx
 004FFE47    pop         ecx
 004FFE48    mov         dword ptr fs:[eax],edx
 004FFE4B    push        4FFEB5
 004FFE50    mov         eax,dword ptr [ebp-8]
 004FFE53    call        TObject.Free
 004FFE58    ret
>004FFE59    jmp         @HandleFinally
>004FFE5E    jmp         004FFE50
 004FFE60    mov         eax,dword ptr [ebp-4]
 004FFE63    mov         eax,dword ptr [eax+308];TfmUba.edStart:TLabeledEdit
 004FFE69    mov         edx,4FFF64;'$10000'
 004FFE6E    call        TPanel.SetCaption
>004FFE73    jmp         004FFEB5
 004FFE75    lea         eax,[ebp-38]
 004FFE78    push        eax
 004FFE79    call        004FEC80
 004FFE7E    mov         dword ptr [ebp-28],eax
 004FFE81    mov         byte ptr [ebp-24],0
 004FFE85    lea         edx,[ebp-28]
 004FFE88    xor         ecx,ecx
 004FFE8A    mov         eax,4FFF4C;'%x'
 004FFE8F    call        0040D630
 004FFE94    mov         ecx,dword ptr [ebp-38]
 004FFE97    lea         eax,[ebp-34]
 004FFE9A    mov         edx,4FFF58;'$'
 004FFE9F    call        @LStrCat3
 004FFEA4    mov         edx,dword ptr [ebp-34]
 004FFEA7    mov         eax,dword ptr [ebp-4]
 004FFEAA    mov         eax,dword ptr [eax+308];TfmUba.edStart:TLabeledEdit
 004FFEB0    call        TPanel.SetCaption
 004FFEB5    mov         eax,dword ptr [ebp-4]
 004FFEB8    mov         eax,dword ptr [eax+31C];TfmUba.btErase:TButton
 004FFEBE    mov         dl,1
 004FFEC0    mov         ecx,dword ptr [eax]
 004FFEC2    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFEC5    mov         eax,dword ptr [ebp-4]
 004FFEC8    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 004FFECE    mov         dl,1
 004FFED0    mov         ecx,dword ptr [eax]
 004FFED2    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFED5    mov         eax,dword ptr [ebp-4]
 004FFED8    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 004FFEDE    mov         dl,1
 004FFEE0    mov         ecx,dword ptr [eax]
 004FFEE2    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFEE5    mov         eax,dword ptr [ebp-4]
 004FFEE8    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 004FFEEE    mov         dl,1
 004FFEF0    mov         ecx,dword ptr [eax]
 004FFEF2    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFEF5    mov         eax,dword ptr [ebp-4]
 004FFEF8    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 004FFEFE    mov         dl,1
 004FFF00    mov         ecx,dword ptr [eax]
 004FFF02    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFF05    xor         eax,eax
 004FFF07    pop         edx
 004FFF08    pop         ecx
 004FFF09    pop         ecx
 004FFF0A    mov         dword ptr fs:[eax],edx
 004FFF0D    push        4FFF3C
 004FFF12    lea         eax,[ebp-38]
 004FFF15    mov         edx,4
 004FFF1A    call        @LStrArrayClr
 004FFF1F    lea         eax,[ebp-20]
 004FFF22    mov         edx,2
 004FFF27    call        @LStrArrayClr
 004FFF2C    lea         eax,[ebp-18]
 004FFF2F    call        @LStrClr
 004FFF34    ret
>004FFF35    jmp         @HandleFinally
>004FFF3A    jmp         004FFF12
 004FFF3C    pop         ebx
 004FFF3D    mov         esp,ebp
 004FFF3F    pop         ebp
 004FFF40    ret
*}
end;

//004FFF6C
procedure TfmUba.cbAltUbaClick(Sender:TObject);
begin
{*
 004FFF6C    push        ebp
 004FFF6D    mov         ebp,esp
 004FFF6F    add         esp,0FFFFFFF8
 004FFF72    mov         dword ptr [ebp-8],edx
 004FFF75    mov         dword ptr [ebp-4],eax
 004FFF78    mov         eax,dword ptr [ebp-4]
 004FFF7B    mov         eax,dword ptr [eax+314];TfmUba.cbAltUba:TCheckBox
 004FFF81    mov         edx,dword ptr [eax]
 004FFF83    call        dword ptr [edx+0C8];TCheckBox.GetChecked
 004FFF89    mov         edx,dword ptr ds:[56E4C4];^gvar_0056CC3C:Boolean
 004FFF8F    mov         byte ptr [edx],al
 004FFF91    pop         ecx
 004FFF92    pop         ecx
 004FFF93    pop         ebp
 004FFF94    ret
*}
end;

//004FFF98
procedure TfmUba.btMaxUba2Click(Sender:TObject);
begin
{*
 004FFF98    push        ebp
 004FFF99    mov         ebp,esp
 004FFF9B    add         esp,0FFFFFFC8
 004FFF9E    push        ebx
 004FFF9F    xor         ecx,ecx
 004FFFA1    mov         dword ptr [ebp-34],ecx
 004FFFA4    mov         dword ptr [ebp-38],ecx
 004FFFA7    mov         dword ptr [ebp-2C],ecx
 004FFFAA    mov         dword ptr [ebp-30],ecx
 004FFFAD    mov         dword ptr [ebp-1C],ecx
 004FFFB0    mov         dword ptr [ebp-20],ecx
 004FFFB3    mov         dword ptr [ebp-18],ecx
 004FFFB6    mov         dword ptr [ebp-14],edx
 004FFFB9    mov         dword ptr [ebp-4],eax
 004FFFBC    xor         eax,eax
 004FFFBE    push        ebp
 004FFFBF    push        500291
 004FFFC4    push        dword ptr fs:[eax]
 004FFFC7    mov         dword ptr fs:[eax],esp
 004FFFCA    mov         eax,dword ptr [ebp-4]
 004FFFCD    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 004FFFD3    xor         edx,edx
 004FFFD5    mov         ecx,dword ptr [eax]
 004FFFD7    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFFDA    mov         eax,dword ptr [ebp-4]
 004FFFDD    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 004FFFE3    xor         edx,edx
 004FFFE5    mov         ecx,dword ptr [eax]
 004FFFE7    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFFEA    mov         eax,dword ptr [ebp-4]
 004FFFED    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 004FFFF3    xor         edx,edx
 004FFFF5    mov         ecx,dword ptr [eax]
 004FFFF7    call        dword ptr [ecx+64];TImage.SetEnabled
 004FFFFA    mov         eax,dword ptr [ebp-4]
 004FFFFD    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 00500003    xor         edx,edx
 00500005    mov         ecx,dword ptr [eax]
 00500007    call        dword ptr [ecx+64];TImage.SetEnabled
 0050000A    push        10
 0050000C    call        user32.GetKeyState
 00500011    test        ax,ax
>00500014    jge         005001E1
 0050001A    lea         edx,[ebp-18]
 0050001D    mov         eax,dword ptr [ebp-4]
 00500020    mov         eax,dword ptr [eax+304];TfmUba.edLen:TLabeledEdit
 00500026    call        TPanel.GetCaption
 0050002B    mov         eax,dword ptr [ebp-18]
 0050002E    mov         edx,10000
 00500033    call        0040C4A8
 00500038    cmp         eax,10000
>0050003D    jne         005001CC
 00500043    mov         dl,1
 00500045    mov         eax,[0041DE14];TMemoryStream
 0050004A    call        TObject.Create;TMemoryStream.Create
 0050004F    mov         dword ptr [ebp-8],eax
 00500052    xor         eax,eax
 00500054    push        ebp
 00500055    push        5001C5
 0050005A    push        dword ptr fs:[eax]
 0050005D    mov         dword ptr fs:[eax],esp
 00500060    mov         eax,[0056E040];^gvar_005720C0
 00500065    cmp         byte ptr [eax],0
>00500068    jne         0050008E
 0050006A    mov         eax,[0056E304];^gvar_0056DF54
 0050006F    cmp         word ptr [eax],65
>00500073    je          0050008E
 00500075    mov         eax,[0056E304];^gvar_0056DF54
 0050007A    cmp         word ptr [eax],73
>0050007E    je          0050008E
 00500080    mov         eax,[0056E01C];^gvar_005720C1
 00500085    cmp         byte ptr [eax],0
>00500088    je          00500123
 0050008E    mov         ecx,dword ptr [ebp-8]
 00500091    xor         edx,edx
 00500093    mov         ax,0D
 00500097    call        004CFEC8
 0050009C    test        al,al
>0050009E    je          005001AF
 005000A4    xor         ecx,ecx
 005000A6    mov         edx,32
 005000AB    mov         eax,dword ptr [ebp-8]
 005000AE    mov         ebx,dword ptr [eax]
 005000B0    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005000B3    mov         eax,dword ptr [ebp-8]
 005000B6    call        004CE56C
 005000BB    not         eax
 005000BD    inc         eax
 005000BE    mov         dword ptr [ebp-0C],eax
 005000C1    xor         ecx,ecx
 005000C3    mov         edx,42
 005000C8    mov         eax,dword ptr [ebp-8]
 005000CB    mov         ebx,dword ptr [eax]
 005000CD    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 005000D0    mov         eax,dword ptr [ebp-8]
 005000D3    call        004CE548
 005000D8    mov         word ptr [ebp-0E],ax
 005000DC    lea         eax,[ebp-20]
 005000DF    push        eax
 005000E0    movzx       eax,word ptr [ebp-0E]
 005000E4    imul        dword ptr [ebp-0C]
 005000E7    mov         dword ptr [ebp-28],eax
 005000EA    mov         byte ptr [ebp-24],0
 005000EE    lea         edx,[ebp-28]
 005000F1    xor         ecx,ecx
 005000F3    mov         eax,5002A8;'%x'
 005000F8    call        0040D630
 005000FD    mov         ecx,dword ptr [ebp-20]
 00500100    lea         eax,[ebp-1C]
 00500103    mov         edx,5002B4;'$'
 00500108    call        @LStrCat3
 0050010D    mov         edx,dword ptr [ebp-1C]
 00500110    mov         eax,dword ptr [ebp-4]
 00500113    mov         eax,dword ptr [eax+304];TfmUba.edLen:TLabeledEdit
 00500119    call        TPanel.SetCaption
>0050011E    jmp         005001AF
 00500123    mov         ecx,dword ptr [ebp-8]
 00500126    xor         edx,edx
 00500128    mov         ax,5
 0050012C    call        004CFEC8
 00500131    test        al,al
>00500133    je          005001AF
 00500135    xor         ecx,ecx
 00500137    mov         edx,14
 0050013C    mov         eax,dword ptr [ebp-8]
 0050013F    mov         ebx,dword ptr [eax]
 00500141    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00500144    mov         eax,dword ptr [ebp-8]
 00500147    call        004CE56C
 0050014C    not         eax
 0050014E    inc         eax
 0050014F    mov         dword ptr [ebp-0C],eax
 00500152    xor         ecx,ecx
 00500154    mov         edx,28
 00500159    mov         eax,dword ptr [ebp-8]
 0050015C    mov         ebx,dword ptr [eax]
 0050015E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 00500161    mov         eax,dword ptr [ebp-8]
 00500164    call        004CE548
 00500169    mov         word ptr [ebp-0E],ax
 0050016D    lea         eax,[ebp-30]
 00500170    push        eax
 00500171    movzx       eax,word ptr [ebp-0E]
 00500175    imul        dword ptr [ebp-0C]
 00500178    mov         dword ptr [ebp-28],eax
 0050017B    mov         byte ptr [ebp-24],0
 0050017F    lea         edx,[ebp-28]
 00500182    xor         ecx,ecx
 00500184    mov         eax,5002A8;'%x'
 00500189    call        0040D630
 0050018E    mov         ecx,dword ptr [ebp-30]
 00500191    lea         eax,[ebp-2C]
 00500194    mov         edx,5002B4;'$'
 00500199    call        @LStrCat3
 0050019E    mov         edx,dword ptr [ebp-2C]
 005001A1    mov         eax,dword ptr [ebp-4]
 005001A4    mov         eax,dword ptr [eax+304];TfmUba.edLen:TLabeledEdit
 005001AA    call        TPanel.SetCaption
 005001AF    xor         eax,eax
 005001B1    pop         edx
 005001B2    pop         ecx
 005001B3    pop         ecx
 005001B4    mov         dword ptr fs:[eax],edx
 005001B7    push        500221
 005001BC    mov         eax,dword ptr [ebp-8]
 005001BF    call        TObject.Free
 005001C4    ret
>005001C5    jmp         @HandleFinally
>005001CA    jmp         005001BC
 005001CC    mov         eax,dword ptr [ebp-4]
 005001CF    mov         eax,dword ptr [eax+304];TfmUba.edLen:TLabeledEdit
 005001D5    mov         edx,5002C0;'$10000'
 005001DA    call        TPanel.SetCaption
>005001DF    jmp         00500221
 005001E1    lea         eax,[ebp-38]
 005001E4    push        eax
 005001E5    call        004FEC80
 005001EA    mov         dword ptr [ebp-28],eax
 005001ED    mov         byte ptr [ebp-24],0
 005001F1    lea         edx,[ebp-28]
 005001F4    xor         ecx,ecx
 005001F6    mov         eax,5002A8;'%x'
 005001FB    call        0040D630
 00500200    mov         ecx,dword ptr [ebp-38]
 00500203    lea         eax,[ebp-34]
 00500206    mov         edx,5002B4;'$'
 0050020B    call        @LStrCat3
 00500210    mov         edx,dword ptr [ebp-34]
 00500213    mov         eax,dword ptr [ebp-4]
 00500216    mov         eax,dword ptr [eax+304];TfmUba.edLen:TLabeledEdit
 0050021C    call        TPanel.SetCaption
 00500221    mov         eax,dword ptr [ebp-4]
 00500224    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 0050022A    mov         dl,1
 0050022C    mov         ecx,dword ptr [eax]
 0050022E    call        dword ptr [ecx+64];TImage.SetEnabled
 00500231    mov         eax,dword ptr [ebp-4]
 00500234    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 0050023A    mov         dl,1
 0050023C    mov         ecx,dword ptr [eax]
 0050023E    call        dword ptr [ecx+64];TImage.SetEnabled
 00500241    mov         eax,dword ptr [ebp-4]
 00500244    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 0050024A    mov         dl,1
 0050024C    mov         ecx,dword ptr [eax]
 0050024E    call        dword ptr [ecx+64];TImage.SetEnabled
 00500251    mov         eax,dword ptr [ebp-4]
 00500254    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 0050025A    mov         dl,1
 0050025C    mov         ecx,dword ptr [eax]
 0050025E    call        dword ptr [ecx+64];TImage.SetEnabled
 00500261    xor         eax,eax
 00500263    pop         edx
 00500264    pop         ecx
 00500265    pop         ecx
 00500266    mov         dword ptr fs:[eax],edx
 00500269    push        500298
 0050026E    lea         eax,[ebp-38]
 00500271    mov         edx,4
 00500276    call        @LStrArrayClr
 0050027B    lea         eax,[ebp-20]
 0050027E    mov         edx,2
 00500283    call        @LStrArrayClr
 00500288    lea         eax,[ebp-18]
 0050028B    call        @LStrClr
 00500290    ret
>00500291    jmp         @HandleFinally
>00500296    jmp         0050026E
 00500298    pop         ebx
 00500299    mov         esp,ebp
 0050029B    pop         ebp
 0050029C    ret
*}
end;

//005002C8
procedure TfmUba.btEraseClick(Sender:TObject);
begin
{*
 005002C8    push        ebp
 005002C9    mov         ebp,esp
 005002CB    add         esp,0FFFFFFC4
 005002CE    xor         ecx,ecx
 005002D0    mov         dword ptr [ebp-34],ecx
 005002D3    mov         dword ptr [ebp-30],ecx
 005002D6    mov         dword ptr [ebp-2C],ecx
 005002D9    mov         dword ptr [ebp-28],ecx
 005002DC    mov         dword ptr [ebp-24],ecx
 005002DF    mov         dword ptr [ebp-20],ecx
 005002E2    mov         dword ptr [ebp-10],ecx
 005002E5    mov         dword ptr [ebp-1C],edx
 005002E8    mov         dword ptr [ebp-4],eax
 005002EB    xor         eax,eax
 005002ED    push        ebp
 005002EE    push        5005FC
 005002F3    push        dword ptr fs:[eax]
 005002F6    mov         dword ptr fs:[eax],esp
 005002F9    mov         edx,dword ptr ds:[56E2D0];^gvar_0056DF38
 005002FF    mov         edx,dword ptr [edx]
 00500301    lea         eax,[ebp-20]
 00500304    mov         ecx,500610;'Uba'
 00500309    call        @LStrCat3
 0050030E    mov         eax,dword ptr [ebp-20]
 00500311    call        0040C9A4
 00500316    test        al,al
>00500318    jne         0050034C
 0050031A    push        50061C;'Cannot create '
 0050031F    mov         eax,[0056E2D0];^gvar_0056DF38
 00500324    push        dword ptr [eax]
 00500326    push        500610;'Uba'
 0050032B    lea         eax,[ebp-24]
 0050032E    mov         edx,3
 00500333    call        @LStrCatN
 00500338    mov         ecx,dword ptr [ebp-24]
 0050033B    mov         dl,1
 0050033D    mov         eax,[0040B004];Exception
 00500342    call        Exception.Create;Exception.Create
 00500347    call        @RaiseExcept
 0050034C    push        0
 0050034E    mov         cx,word ptr ds:[50062C];0x3 gvar_0050062C
 00500355    xor         edx,edx
 00500357    mov         eax,500638;'Erase UBA!'+#10+Are You sure?'
 0050035C    call        0043F788
 00500361    cmp         eax,6
>00500364    jne         005005BF
 0050036A    xor         edx,edx
 0050036C    mov         eax,dword ptr [ebp-4]
 0050036F    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 00500375    mov         ecx,dword ptr [eax]
 00500377    call        dword ptr [ecx+64];TImage.SetEnabled
 0050037A    xor         edx,edx
 0050037C    mov         eax,dword ptr [ebp-4]
 0050037F    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 00500385    mov         ecx,dword ptr [eax]
 00500387    call        dword ptr [ecx+64];TImage.SetEnabled
 0050038A    xor         edx,edx
 0050038C    mov         eax,dword ptr [ebp-4]
 0050038F    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 00500395    mov         ecx,dword ptr [eax]
 00500397    call        dword ptr [ecx+64];TImage.SetEnabled
 0050039A    xor         edx,edx
 0050039C    mov         eax,dword ptr [ebp-4]
 0050039F    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 005003A5    mov         ecx,dword ptr [eax]
 005003A7    call        dword ptr [ecx+64];TImage.SetEnabled
 005003AA    xor         edx,edx
 005003AC    mov         eax,dword ptr [ebp-4]
 005003AF    mov         eax,dword ptr [eax+31C];TfmUba.btErase:TButton
 005003B5    mov         ecx,dword ptr [eax]
 005003B7    call        dword ptr [ecx+64];TImage.SetEnabled
 005003BA    mov         eax,[0056E5A4];^gvar_0056DF04
 005003BF    mov         byte ptr [eax],0
 005003C2    call        004CED2C
 005003C7    lea         edx,[ebp-28]
 005003CA    mov         eax,dword ptr [ebp-4]
 005003CD    mov         eax,dword ptr [eax+308];TfmUba.edStart:TLabeledEdit
 005003D3    call        TPanel.GetCaption
 005003D8    mov         eax,dword ptr [ebp-28]
 005003DB    xor         edx,edx
 005003DD    call        0040C4A8
 005003E2    mov         dword ptr [ebp-8],eax
 005003E5    lea         edx,[ebp-2C]
 005003E8    mov         eax,dword ptr [ebp-4]
 005003EB    mov         eax,dword ptr [eax+304];TfmUba.edLen:TLabeledEdit
 005003F1    call        TPanel.GetCaption
 005003F6    mov         eax,dword ptr [ebp-2C]
 005003F9    xor         edx,edx
 005003FB    call        0040C4A8
 00500400    mov         dword ptr [ebp-0C],eax
 00500403    mov         eax,dword ptr [ebp-0C]
 00500406    mov         dword ptr [ebp-14],eax
 00500409    mov         eax,dword ptr [ebp-8]
 0050040C    mov         dword ptr [ebp-18],eax
 0050040F    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>00500416    je          00500459
 00500418    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 0050041D    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 00500423    xor         edx,edx
 00500425    call        TProgressBar.SetMin
 0050042A    mov         edx,dword ptr [ebp-8]
 0050042D    add         edx,dword ptr [ebp-0C]
 00500430    shr         edx,3
 00500433    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 00500438    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 0050043E    call        TProgressBar.SetMax
 00500443    mov         edx,dword ptr [ebp-8]
 00500446    shr         edx,3
 00500449    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 0050044E    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 00500454    call        TProgressBar.SetMin
 00500459    mov         eax,[0056E344];^gvar_0059BF5C
 0050045E    xor         ecx,ecx
 00500460    mov         edx,3000
 00500465    call        @FillChar
>0050046A    jmp         0050053C
 0050046F    mov         edx,dword ptr [ebp-18]
 00500472    mov         eax,1
 00500477    call        004CF108
 0050047C    mov         eax,[0056E3F8];^gvar_0059BF4C
 00500481    cmp         byte ptr [eax],0
>00500484    jne         00500497
 00500486    mov         eax,[0056E5A4];^gvar_0056DF04
 0050048B    cmp         byte ptr [eax],0
>0050048E    jne         00500497
 00500490    call        004CEC08
>00500495    jmp         005004D6
 00500497    mov         eax,dword ptr [ebp-18]
 0050049A    xor         edx,edx
 0050049C    push        edx
 0050049D    push        eax
 0050049E    lea         edx,[ebp-30]
 005004A1    mov         eax,4
 005004A6    call        IntToHex
 005004AB    mov         edx,dword ptr [ebp-30]
 005004AE    lea         eax,[ebp-10]
 005004B1    mov         ecx,50065C;' Err'
 005004B6    call        @LStrCat3
 005004BB    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 005004C0    mov         eax,dword ptr [eax]
 005004C2    mov         eax,dword ptr [eax+2F8]
 005004C8    mov         eax,dword ptr [eax+248]
 005004CE    mov         edx,dword ptr [ebp-10]
 005004D1    mov         ecx,dword ptr [eax]
 005004D3    call        dword ptr [ecx+38]
 005004D6    inc         dword ptr [ebp-18]
 005004D9    dec         dword ptr [ebp-14]
 005004DC    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>005004E3    je          0050053C
 005004E5    lea         eax,[ebp-34]
 005004E8    push        eax
 005004E9    mov         eax,dword ptr [ebp-18]
 005004EC    mov         dword ptr [ebp-3C],eax
 005004EF    mov         byte ptr [ebp-38],0
 005004F3    lea         edx,[ebp-3C]
 005004F6    xor         ecx,ecx
 005004F8    mov         eax,50066C;'%x'
 005004FD    call        0040D630
 00500502    mov         edx,dword ptr [ebp-34]
 00500505    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 0050050A    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 00500510    add         eax,80;TProgressBar.Hint:String
 00500515    call        @LStrAsg
 0050051A    mov         edx,dword ptr [ebp-18]
 0050051D    shr         edx,3
 00500520    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 00500525    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 0050052B    call        TProgressBar.SetPosition
 00500530    mov         eax,[0056E3C0];^Application:TApplication
 00500535    mov         eax,dword ptr [eax]
 00500537    call        004AB51C
 0050053C    cmp         dword ptr [ebp-14],0
>00500540    jbe         00500550
 00500542    mov         eax,[0056E5A4];^gvar_0056DF04
 00500547    cmp         byte ptr [eax],0
>0050054A    je          0050046F
 00500550    cmp         dword ptr ds:[56D400],0;gvar_0056D400:TfmUba
>00500557    je          0050056F
 00500559    mov         edx,dword ptr [ebp-18]
 0050055C    shr         edx,3
 0050055F    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 00500564    mov         eax,dword ptr [eax+30C];TfmUba.pbUba:TProgressBar
 0050056A    call        TProgressBar.SetPosition
 0050056F    mov         dl,1
 00500571    mov         eax,dword ptr [ebp-4]
 00500574    mov         eax,dword ptr [eax+31C];TfmUba.btErase:TButton
 0050057A    mov         ecx,dword ptr [eax]
 0050057C    call        dword ptr [ecx+64];TImage.SetEnabled
 0050057F    mov         dl,1
 00500581    mov         eax,dword ptr [ebp-4]
 00500584    mov         eax,dword ptr [eax+2FC];TfmUba.btRead:TButton
 0050058A    mov         ecx,dword ptr [eax]
 0050058C    call        dword ptr [ecx+64];TImage.SetEnabled
 0050058F    mov         dl,1
 00500591    mov         eax,dword ptr [ebp-4]
 00500594    mov         eax,dword ptr [eax+300];TfmUba.btWrite:TButton
 0050059A    mov         ecx,dword ptr [eax]
 0050059C    call        dword ptr [ecx+64];TImage.SetEnabled
 0050059F    mov         dl,1
 005005A1    mov         eax,dword ptr [ebp-4]
 005005A4    mov         eax,dword ptr [eax+310];TfmUba.btMaxUba:TButton
 005005AA    mov         ecx,dword ptr [eax]
 005005AC    call        dword ptr [ecx+64];TImage.SetEnabled
 005005AF    mov         dl,1
 005005B1    mov         eax,dword ptr [ebp-4]
 005005B4    mov         eax,dword ptr [eax+318];TfmUba.btMaxUba2:TButton
 005005BA    mov         ecx,dword ptr [eax]
 005005BC    call        dword ptr [ecx+64];TImage.SetEnabled
 005005BF    xor         eax,eax
 005005C1    pop         edx
 005005C2    pop         ecx
 005005C3    pop         ecx
 005005C4    mov         dword ptr fs:[eax],edx
 005005C7    push        500603
 005005CC    lea         eax,[ebp-34]
 005005CF    mov         edx,2
 005005D4    call        @LStrArrayClr
 005005D9    lea         eax,[ebp-2C]
 005005DC    mov         edx,2
 005005E1    call        @LStrArrayClr
 005005E6    lea         eax,[ebp-24]
 005005E9    mov         edx,2
 005005EE    call        @LStrArrayClr
 005005F3    lea         eax,[ebp-10]
 005005F6    call        @LStrClr
 005005FB    ret
>005005FC    jmp         @HandleFinally
>00500601    jmp         005005CC
 00500603    mov         esp,ebp
 00500605    pop         ebp
 00500606    ret
*}
end;

//00500670
procedure TfmUba.FormShow(Sender:TObject);
begin
{*
 00500670    push        ebp
 00500671    mov         ebp,esp
 00500673    add         esp,0FFFFFFF0
 00500676    xor         ecx,ecx
 00500678    mov         dword ptr [ebp-0C],ecx
 0050067B    mov         dword ptr [ebp-10],ecx
 0050067E    mov         dword ptr [ebp-8],edx
 00500681    mov         dword ptr [ebp-4],eax
 00500684    xor         eax,eax
 00500686    push        ebp
 00500687    push        5006E9
 0050068C    push        dword ptr fs:[eax]
 0050068F    mov         dword ptr fs:[eax],esp
 00500692    lea         edx,[ebp-10]
 00500695    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 0050069A    call        TPanel.GetCaption
 0050069F    push        dword ptr [ebp-10]
 005006A2    push        5006FC;' '
 005006A7    mov         eax,[0056E284];^gvar_0056DF34
 005006AC    mov         eax,dword ptr [eax]
 005006AE    push        dword ptr [eax+420]
 005006B4    lea         eax,[ebp-0C]
 005006B7    mov         edx,3
 005006BC    call        @LStrCatN
 005006C1    mov         edx,dword ptr [ebp-0C]
 005006C4    mov         eax,[0056D400];0x0 gvar_0056D400:TfmUba
 005006C9    call        TPanel.SetCaption
 005006CE    xor         eax,eax
 005006D0    pop         edx
 005006D1    pop         ecx
 005006D2    pop         ecx
 005006D3    mov         dword ptr fs:[eax],edx
 005006D6    push        5006F0
 005006DB    lea         eax,[ebp-10]
 005006DE    mov         edx,2
 005006E3    call        @LStrArrayClr
 005006E8    ret
>005006E9    jmp         @HandleFinally
>005006EE    jmp         005006DB
 005006F0    mov         esp,ebp
 005006F2    pop         ebp
 005006F3    ret
*}
end;

end.