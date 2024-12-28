//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uProgress;

interface

uses
  SysUtils, Classes, ExtCtrls, Controls;

type
  TfmProgress = class(TForm)
  published
    edProgress:TLabeledEdit;//f2F8
    edLba:TLabeledEdit;//f2FC
    edTrack:TLabeledEdit;//f300
    edHead:TLabeledEdit;//f304
    edZone:TLabeledEdit;//f308
    edStatus:TLabeledEdit;//f30C
    edCurState:TLabeledEdit;//f310
    edStep:TLabeledEdit;//f314
    edAta:TLabeledEdit;//f318
    tiProgress:TTimer;//f31C
    edStatusTxt:TLabeledEdit;//f320
    ilHdd:TImageList;//f324
    edStep1:TLabeledEdit;//f328
    edDtemp:TLabeledEdit;//f32C
    edJtemp:TLabeledEdit;//f330
    edCtemp:TLabeledEdit;//f334
    edFtemp:TLabeledEdit;//f338
    edDBSCode:TLabeledEdit;//f33C
    edServo:TLabeledEdit;//f340
    procedure FormShow(Sender:TObject);//004CE404
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//004CE3B4
    //procedure tiProgressTimer(?:?);//004CCD00
  public
    f344:dword;//f344
    f348:String;//f348
    f34C:byte;//f34C
    f34E:word;//f34E
    f350:word;//f350
  end;
    //procedure sub_004CC980(?:TfmProgress; ?:?);//004CC980
    //function sub_004CCA5C:?;//004CCA5C
    //procedure sub_004CCABC(?:?; ?:?);//004CCABC
    //procedure sub_004CCBF0(?:?; ?:?);//004CCBF0

implementation

{$R *.DFM}

//004CC980
{*procedure sub_004CC980(?:TfmProgress; ?:?);
begin
 004CC980    push        ebp
 004CC981    mov         ebp,esp
 004CC983    add         esp,0FFFFFFF4
 004CC986    xor         ecx,ecx
 004CC988    mov         dword ptr [ebp-0C],ecx
 004CC98B    mov         byte ptr [ebp-5],dl
 004CC98E    mov         dword ptr [ebp-4],eax
 004CC991    xor         eax,eax
 004CC993    push        ebp
 004CC994    push        4CCA4F
 004CC999    push        dword ptr fs:[eax]
 004CC99C    mov         dword ptr fs:[eax],esp
 004CC99F    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CC9A6    jne         004CC9E2
 004CC9A8    mov         ecx,dword ptr ds:[56E3C0];^Application:TApplication
 004CC9AE    mov         ecx,dword ptr [ecx]
 004CC9B0    mov         dl,1
 004CC9B2    mov         eax,[004CC69C];TfmProgress
 004CC9B7    call        TfmProgress.Create;TfmProgress.Create
 004CC9BC    mov         [0056CC34],eax;gvar_0056CC34:TfmProgress
 004CC9C1    lea         edx,[ebp-0C]
 004CC9C4    mov         eax,[0056E3C0];^Application:TApplication
 004CC9C9    mov         eax,dword ptr [eax]
 004CC9CB    call        004AB0D0
 004CC9D0    mov         edx,dword ptr [ebp-0C]
 004CC9D3    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CC9D8    add         eax,348;TfmProgress.?f348:String
 004CC9DD    call        @LStrAsg
 004CC9E2    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CC9E7    cmp         byte ptr [eax+1A6],0;TfmProgress.FShowing:Boolean
>004CC9EE    je          004CC9FF
 004CC9F0    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CC9F5    mov         edx,dword ptr [eax]
 004CC9F7    call        dword ptr [edx+0C4];TfmProgress.sub_004A746C
>004CC9FD    jmp         004CCA09
 004CC9FF    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CCA04    call        004A7450
 004CCA09    mov         al,byte ptr [ebp-5]
 004CCA0C    mov         [0056CC38],al;gvar_0056CC38
 004CCA11    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CCA16    mov         word ptr [eax+350],0;TfmProgress.?f350:word
 004CCA1F    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CCA24    mov         byte ptr [eax+34C],1;TfmProgress.?f34C:byte
 004CCA2B    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CCA30    mov         word ptr [eax+34E],0;TfmProgress.?f34E:word
 004CCA39    xor         eax,eax
 004CCA3B    pop         edx
 004CCA3C    pop         ecx
 004CCA3D    pop         ecx
 004CCA3E    mov         dword ptr fs:[eax],edx
 004CCA41    push        4CCA56
 004CCA46    lea         eax,[ebp-0C]
 004CCA49    call        @LStrClr
 004CCA4E    ret
>004CCA4F    jmp         @HandleFinally
>004CCA54    jmp         004CCA46
 004CCA56    mov         esp,ebp
 004CCA58    pop         ebp
 004CCA59    ret
end;*}

//004CCA5C
{*function sub_004CCA5C:?;
begin
 004CCA5C    push        ebp
 004CCA5D    mov         ebp,esp
 004CCA5F    push        ecx
 004CCA60    mov         byte ptr [ebp-1],1
 004CCA64    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CCA6B    je          004CCAB3
>004CCA6D    jmp         004CCA84
 004CCA6F    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CCA76    je          004CCAB3
 004CCA78    mov         eax,[0056E3C0];^Application:TApplication
 004CCA7D    mov         eax,dword ptr [eax]
 004CCA7F    call        004AB51C
 004CCA84    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CCA8B    je          004CCAA5
 004CCA8D    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CCA92    cmp         byte ptr [eax+34C],0;TfmProgress.?f34C:byte
>004CCA99    je          004CCAA5
 004CCA9B    mov         eax,[0056E5A4];^gvar_0056DF04
 004CCAA0    cmp         byte ptr [eax],0
>004CCAA3    je          004CCA6F
 004CCAA5    mov         eax,[0056E5A4];^gvar_0056DF04
 004CCAAA    cmp         byte ptr [eax],0
>004CCAAD    je          004CCAB3
 004CCAAF    mov         byte ptr [ebp-1],0
 004CCAB3    mov         al,byte ptr [ebp-1]
 004CCAB6    pop         ecx
 004CCAB7    pop         ebp
 004CCAB8    ret
end;*}

//004CCABC
{*procedure sub_004CCABC(?:?; ?:?);
begin
 004CCABC    push        ebp
 004CCABD    mov         ebp,esp
 004CCABF    xor         ecx,ecx
 004CCAC1    push        ecx
 004CCAC2    push        ecx
 004CCAC3    push        ecx
 004CCAC4    push        ecx
 004CCAC5    push        ecx
 004CCAC6    push        ecx
 004CCAC7    push        ecx
 004CCAC8    push        ecx
 004CCAC9    push        ebx
 004CCACA    mov         dword ptr [ebp-8],edx
 004CCACD    mov         word ptr [ebp-2],ax
 004CCAD1    xor         eax,eax
 004CCAD3    push        ebp
 004CCAD4    push        4CCBAA
 004CCAD9    push        dword ptr fs:[eax]
 004CCADC    mov         dword ptr fs:[eax],esp
 004CCADF    mov         eax,dword ptr [ebp-8]
 004CCAE2    call        @LStrClr
 004CCAE7    lea         edx,[ebp-14]
 004CCAEA    xor         eax,eax
 004CCAEC    call        00403214
 004CCAF1    mov         eax,dword ptr [ebp-14]
 004CCAF4    lea         edx,[ebp-10]
 004CCAF7    call        0040CC5C
 004CCAFC    lea         eax,[ebp-10]
 004CCAFF    mov         edx,4CCBC0;'wdm.ini'
 004CCB04    call        @LStrCat
 004CCB09    mov         ecx,dword ptr [ebp-10]
 004CCB0C    mov         dl,1
 004CCB0E    mov         eax,[004497F8];TIniFile
 004CCB13    call        TIniFile.Create;TIniFile.Create
 004CCB18    mov         dword ptr [ebp-0C],eax
 004CCB1B    xor         eax,eax
 004CCB1D    push        ebp
 004CCB1E    push        4CCB88
 004CCB23    push        dword ptr fs:[eax]
 004CCB26    mov         dword ptr fs:[eax],esp
 004CCB29    lea         ecx,[ebp-1C]
 004CCB2C    movzx       eax,word ptr [ebp-2]
 004CCB30    mov         edx,4
 004CCB35    call        IntToHex
 004CCB3A    mov         ecx,dword ptr [ebp-1C]
 004CCB3D    lea         eax,[ebp-18]
 004CCB40    mov         edx,4CCBD0;'UNKNOWN ERROR '
 004CCB45    call        @LStrCat3
 004CCB4A    mov         eax,dword ptr [ebp-18]
 004CCB4D    push        eax
 004CCB4E    mov         eax,dword ptr [ebp-8]
 004CCB51    push        eax
 004CCB52    lea         ecx,[ebp-20]
 004CCB55    movzx       eax,word ptr [ebp-2]
 004CCB59    mov         edx,4
 004CCB5E    call        IntToHex
 004CCB63    mov         ecx,dword ptr [ebp-20]
 004CCB66    mov         edx,4CCBE8;'ERRCODE'
 004CCB6B    mov         eax,dword ptr [ebp-0C]
 004CCB6E    mov         ebx,dword ptr [eax]
 004CCB70    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CCB72    xor         eax,eax
 004CCB74    pop         edx
 004CCB75    pop         ecx
 004CCB76    pop         ecx
 004CCB77    mov         dword ptr fs:[eax],edx
 004CCB7A    push        4CCB8F
 004CCB7F    mov         eax,dword ptr [ebp-0C]
 004CCB82    call        TObject.Free
 004CCB87    ret
>004CCB88    jmp         @HandleFinally
>004CCB8D    jmp         004CCB7F
 004CCB8F    xor         eax,eax
 004CCB91    pop         edx
 004CCB92    pop         ecx
 004CCB93    pop         ecx
 004CCB94    mov         dword ptr fs:[eax],edx
 004CCB97    push        4CCBB1
 004CCB9C    lea         eax,[ebp-20]
 004CCB9F    mov         edx,5
 004CCBA4    call        @LStrArrayClr
 004CCBA9    ret
>004CCBAA    jmp         @HandleFinally
>004CCBAF    jmp         004CCB9C
 004CCBB1    pop         ebx
 004CCBB2    mov         esp,ebp
 004CCBB4    pop         ebp
 004CCBB5    ret
end;*}

//004CCBF0
{*procedure sub_004CCBF0(?:?; ?:?);
begin
 004CCBF0    push        ebp
 004CCBF1    mov         ebp,esp
 004CCBF3    add         esp,0FFFFFFE8
 004CCBF6    push        ebx
 004CCBF7    xor         ecx,ecx
 004CCBF9    mov         dword ptr [ebp-18],ecx
 004CCBFC    mov         dword ptr [ebp-10],ecx
 004CCBFF    mov         dword ptr [ebp-14],ecx
 004CCC02    mov         dword ptr [ebp-8],edx
 004CCC05    mov         dword ptr [ebp-4],eax
 004CCC08    xor         eax,eax
 004CCC0A    push        ebp
 004CCC0B    push        4CCCC4
 004CCC10    push        dword ptr fs:[eax]
 004CCC13    mov         dword ptr fs:[eax],esp
 004CCC16    mov         eax,dword ptr [ebp-8]
 004CCC19    call        @LStrClr
 004CCC1E    lea         edx,[ebp-14]
 004CCC21    xor         eax,eax
 004CCC23    call        00403214
 004CCC28    mov         eax,dword ptr [ebp-14]
 004CCC2B    lea         edx,[ebp-10]
 004CCC2E    call        0040CC5C
 004CCC33    lea         eax,[ebp-10]
 004CCC36    mov         edx,4CCCD8;'DBSCODE.INI'
 004CCC3B    call        @LStrCat
 004CCC40    mov         ecx,dword ptr [ebp-10]
 004CCC43    mov         dl,1
 004CCC45    mov         eax,[004497F8];TIniFile
 004CCC4A    call        TIniFile.Create;TIniFile.Create
 004CCC4F    mov         dword ptr [ebp-0C],eax
 004CCC52    xor         eax,eax
 004CCC54    push        ebp
 004CCC55    push        4CCCA2
 004CCC5A    push        dword ptr fs:[eax]
 004CCC5D    mov         dword ptr fs:[eax],esp
 004CCC60    push        4CCCEC;'-'
 004CCC65    mov         eax,dword ptr [ebp-8]
 004CCC68    push        eax
 004CCC69    mov         eax,dword ptr [ebp-4]
 004CCC6C    xor         edx,edx
 004CCC6E    push        edx
 004CCC6F    push        eax
 004CCC70    lea         edx,[ebp-18]
 004CCC73    mov         eax,6
 004CCC78    call        IntToHex
 004CCC7D    mov         ecx,dword ptr [ebp-18]
 004CCC80    mov         edx,4CCCF8;'DBSCODE'
 004CCC85    mov         eax,dword ptr [ebp-0C]
 004CCC88    mov         ebx,dword ptr [eax]
 004CCC8A    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CCC8C    xor         eax,eax
 004CCC8E    pop         edx
 004CCC8F    pop         ecx
 004CCC90    pop         ecx
 004CCC91    mov         dword ptr fs:[eax],edx
 004CCC94    push        4CCCA9
 004CCC99    mov         eax,dword ptr [ebp-0C]
 004CCC9C    call        TObject.Free
 004CCCA1    ret
>004CCCA2    jmp         @HandleFinally
>004CCCA7    jmp         004CCC99
 004CCCA9    xor         eax,eax
 004CCCAB    pop         edx
 004CCCAC    pop         ecx
 004CCCAD    pop         ecx
 004CCCAE    mov         dword ptr fs:[eax],edx
 004CCCB1    push        4CCCCB
 004CCCB6    lea         eax,[ebp-18]
 004CCCB9    mov         edx,3
 004CCCBE    call        @LStrArrayClr
 004CCCC3    ret
>004CCCC4    jmp         @HandleFinally
>004CCCC9    jmp         004CCCB6
 004CCCCB    pop         ebx
 004CCCCC    mov         esp,ebp
 004CCCCE    pop         ebp
 004CCCCF    ret
end;*}

//004CCD00
{*procedure TfmProgress.tiProgressTimer(?:?);
begin
 004CCD00    push        ebp
 004CCD01    mov         ebp,esp
 004CCD03    mov         ecx,38
 004CCD08    push        0
 004CCD0A    push        0
 004CCD0C    dec         ecx
>004CCD0D    jne         004CCD08
 004CCD0F    push        ebx
 004CCD10    mov         dword ptr [ebp-1C],edx
 004CCD13    mov         dword ptr [ebp-4],eax
 004CCD16    xor         eax,eax
 004CCD18    push        ebp
 004CCD19    push        4CE089
 004CCD1E    push        dword ptr fs:[eax]
 004CCD21    mov         dword ptr fs:[eax],esp
 004CCD24    mov         eax,[0056E5A4];^gvar_0056DF04
 004CCD29    mov         byte ptr [eax],0
 004CCD2C    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CCD33    je          004CDFD3
 004CCD39    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CCD40    je          004CCE4B
 004CCD46    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CCD4B    cmp         byte ptr [eax+1A6],0;TfmProgress.FShowing:Boolean
>004CCD52    je          004CCE4B
 004CCD58    push        4CE0A0;'Progress '
 004CCD5D    mov         eax,[0056E284];^gvar_0056DF34
 004CCD62    mov         eax,dword ptr [eax]
 004CCD64    push        dword ptr [eax+420]
 004CCD6A    push        4CE0B4;' '
 004CCD6F    call        0040E41C
 004CCD74    fsub        qword ptr ds:[571EB8]
 004CCD7A    add         esp,0FFFFFFF8
 004CCD7D    fstp        qword ptr [esp]
 004CCD80    wait
 004CCD81    lea         eax,[ebp-24]
 004CCD84    call        0040F120
 004CCD89    push        dword ptr [ebp-24]
 004CCD8C    lea         eax,[ebp-20]
 004CCD8F    mov         edx,4
 004CCD94    call        @LStrCatN
 004CCD99    mov         edx,dword ptr [ebp-20]
 004CCD9C    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CCDA1    call        TPanel.SetCaption
 004CCDA6    mov         eax,[0056E284];^gvar_0056DF34
 004CCDAB    mov         eax,dword ptr [eax]
 004CCDAD    push        dword ptr [eax+420]
 004CCDB3    push        4CE0B4;' '
 004CCDB8    call        0040E41C
 004CCDBD    fsub        qword ptr ds:[571EB8]
 004CCDC3    add         esp,0FFFFFFF8
 004CCDC6    fstp        qword ptr [esp]
 004CCDC9    wait
 004CCDCA    lea         eax,[ebp-2C]
 004CCDCD    call        0040F120
 004CCDD2    push        dword ptr [ebp-2C]
 004CCDD5    lea         eax,[ebp-28]
 004CCDD8    mov         edx,3
 004CCDDD    call        @LStrCatN
 004CCDE2    mov         edx,dword ptr [ebp-28]
 004CCDE5    mov         eax,[0056E3C0];^Application:TApplication
 004CCDEA    mov         eax,dword ptr [eax]
 004CCDEC    call        004AB12C
 004CCDF1    push        2
 004CCDF3    mov         eax,dword ptr [ebp-4]
 004CCDF6    mov         eax,dword ptr [eax+344];TfmProgress.?f344:dword
 004CCDFC    push        eax
 004CCDFD    push        1
 004CCDFF    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CCE04    call        004A40F4
 004CCE09    mov         edx,eax
 004CCE0B    mov         eax,dword ptr [ebp-4]
 004CCE0E    mov         eax,dword ptr [eax+324];TfmProgress.ilHdd:TImageList
 004CCE14    mov         ecx,2
 004CCE19    call        00495958
 004CCE1E    mov         eax,dword ptr [ebp-4]
 004CCE21    inc         dword ptr [eax+344];TfmProgress.?f344:dword
 004CCE27    mov         eax,dword ptr [ebp-4]
 004CCE2A    mov         eax,dword ptr [eax+324];TfmProgress.ilHdd:TImageList
 004CCE30    call        00495384
 004CCE35    mov         edx,dword ptr [ebp-4]
 004CCE38    cmp         eax,dword ptr [edx+344];TfmProgress.?f344:dword
>004CCE3E    jg          004CCE4B
 004CCE40    mov         eax,dword ptr [ebp-4]
 004CCE43    xor         edx,edx
 004CCE45    mov         dword ptr [eax+344],edx;TfmProgress.?f344:dword
 004CCE4B    mov         eax,[0056E284];^gvar_0056DF34
 004CCE50    mov         eax,dword ptr [eax]
 004CCE52    call        00567D38
 004CCE57    mov         eax,[0056E25C];^gvar_0059BF53
 004CCE5C    cmp         byte ptr [eax],0
>004CCE5F    jne         004CDFD3
 004CCE65    mov         eax,[0056E5A4];^gvar_0056DF04
 004CCE6A    cmp         byte ptr [eax],0
>004CCE6D    jne         004CDFD3
 004CCE73    mov         eax,[0056E270];^gvar_00571EC0
 004CCE78    xor         ecx,ecx
 004CCE7A    mov         edx,200
 004CCE7F    call        @FillChar
 004CCE84    call        004CEB6C
 004CCE89    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CCE90    je          004CDFD3
 004CCE96    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CCE9D    je          004CDF7D
 004CCEA3    lea         edx,[ebp-34]
 004CCEA6    xor         eax,eax
 004CCEA8    call        00403214
 004CCEAD    mov         eax,dword ptr [ebp-34]
 004CCEB0    lea         edx,[ebp-30]
 004CCEB3    call        0040CC5C
 004CCEB8    lea         eax,[ebp-30]
 004CCEBB    mov         edx,4CE0C0;'wdm.ini'
 004CCEC0    call        @LStrCat
 004CCEC5    mov         ecx,dword ptr [ebp-30]
 004CCEC8    mov         dl,1
 004CCECA    mov         eax,[004497F8];TIniFile
 004CCECF    call        TIniFile.Create;TIniFile.Create
 004CCED4    mov         dword ptr [ebp-8],eax
 004CCED7    xor         eax,eax
 004CCED9    push        ebp
 004CCEDA    push        4CD86F
 004CCEDF    push        dword ptr fs:[eax]
 004CCEE2    mov         dword ptr fs:[eax],esp
 004CCEE5    mov         eax,[0056E270];^gvar_00571EC0
 004CCEEA    cmp         dword ptr [eax+60],0
>004CCEEE    je          004CCF4F
 004CCEF0    lea         edx,[ebp-3C]
 004CCEF3    xor         eax,eax
 004CCEF5    call        00403214
 004CCEFA    mov         eax,dword ptr [ebp-3C]
 004CCEFD    lea         edx,[ebp-38]
 004CCF00    call        0040CC5C
 004CCF05    lea         eax,[ebp-38]
 004CCF08    mov         edx,4CE0D0;'DBSCODE.INI'
 004CCF0D    call        @LStrCat
 004CCF12    mov         ecx,dword ptr [ebp-38]
 004CCF15    mov         dl,1
 004CCF17    mov         eax,[004497F8];TIniFile
 004CCF1C    call        TIniFile.Create;TIniFile.Create
 004CCF21    mov         dword ptr [ebp-0C],eax
 004CCF24    xor         eax,eax
 004CCF26    push        ebp
 004CCF27    push        4CCF48
 004CCF2C    push        dword ptr fs:[eax]
 004CCF2F    mov         dword ptr fs:[eax],esp
 004CCF32    xor         eax,eax
 004CCF34    pop         edx
 004CCF35    pop         ecx
 004CCF36    pop         ecx
 004CCF37    mov         dword ptr fs:[eax],edx
 004CCF3A    push        4CCF4F
 004CCF3F    mov         eax,dword ptr [ebp-0C]
 004CCF42    call        TObject.Free
 004CCF47    ret
>004CCF48    jmp         @HandleFinally
>004CCF4D    jmp         004CCF3F
 004CCF4F    mov         eax,[0056E270];^gvar_00571EC0
 004CCF54    cmp         word ptr [eax+190],0
>004CCF5C    je          004CD256
 004CCF62    mov         eax,[0056E270];^gvar_00571EC0
 004CCF67    cmp         word ptr [eax+190],7F
>004CCF6F    je          004CD256
 004CCF75    mov         eax,[0056E270];^gvar_00571EC0
 004CCF7A    cmp         word ptr [eax+190],0FF
>004CCF83    je          004CD256
 004CCF89    mov         eax,[0056E270];^gvar_00571EC0
 004CCF8E    cmp         word ptr [eax+190],0FF
>004CCF97    jbe         004CCFEA
 004CCF99    push        0
 004CCF9B    lea         eax,[ebp-40]
 004CCF9E    push        eax
 004CCF9F    lea         ecx,[ebp-48]
 004CCFA2    mov         eax,[0056E270];^gvar_00571EC0
 004CCFA7    movzx       eax,word ptr [eax+190]
 004CCFAE    mov         edx,4
 004CCFB3    call        IntToHex
 004CCFB8    mov         ecx,dword ptr [ebp-48]
 004CCFBB    lea         eax,[ebp-44]
 004CCFBE    mov         edx,4CE0E4;'ID'
 004CCFC3    call        @LStrCat3
 004CCFC8    mov         ecx,dword ptr [ebp-44]
 004CCFCB    mov         edx,4CE0F0;'BLOCKS'
 004CCFD0    mov         eax,dword ptr [ebp-8]
 004CCFD3    mov         ebx,dword ptr [eax]
 004CCFD5    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CCFD7    mov         edx,dword ptr [ebp-40]
 004CCFDA    mov         eax,dword ptr [ebp-4]
 004CCFDD    mov         eax,dword ptr [eax+328];TfmProgress.edStep1:TLabeledEdit
 004CCFE3    call        TPanel.SetCaption
>004CCFE8    jmp         004CD039
 004CCFEA    push        0
 004CCFEC    lea         eax,[ebp-4C]
 004CCFEF    push        eax
 004CCFF0    lea         ecx,[ebp-54]
 004CCFF3    mov         eax,[0056E270];^gvar_00571EC0
 004CCFF8    movzx       eax,word ptr [eax+190]
 004CCFFF    mov         edx,2
 004CD004    call        IntToHex
 004CD009    mov         ecx,dword ptr [ebp-54]
 004CD00C    lea         eax,[ebp-50]
 004CD00F    mov         edx,4CE0E4;'ID'
 004CD014    call        @LStrCat3
 004CD019    mov         ecx,dword ptr [ebp-50]
 004CD01C    mov         edx,4CE0F0;'BLOCKS'
 004CD021    mov         eax,dword ptr [ebp-8]
 004CD024    mov         ebx,dword ptr [eax]
 004CD026    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CD028    mov         edx,dword ptr [ebp-4C]
 004CD02B    mov         eax,dword ptr [ebp-4]
 004CD02E    mov         eax,dword ptr [eax+328];TfmProgress.edStep1:TLabeledEdit
 004CD034    call        TPanel.SetCaption
 004CD039    mov         eax,dword ptr [ebp-4]
 004CD03C    cmp         word ptr [eax+34E],0;TfmProgress.?f34E:word
>004CD044    jne         004CD05C
 004CD046    mov         eax,[0056E270];^gvar_00571EC0
 004CD04B    mov         ax,word ptr [eax+190]
 004CD052    mov         edx,dword ptr [ebp-4]
 004CD055    mov         word ptr [edx+34E],ax;TfmProgress.?f34E:word
 004CD05C    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CD063    jne         004CD06F
 004CD065    call        @TryFinallyExit
>004CD06A    jmp         004CDFD3
 004CD06F    cmp         dword ptr ds:[56CC34],0;gvar_0056CC34:TfmProgress
>004CD076    je          004CD243
 004CD07C    mov         eax,[0056E270];^gvar_00571EC0
 004CD081    mov         ax,word ptr [eax+190]
 004CD088    mov         edx,dword ptr [ebp-4]
 004CD08B    cmp         ax,word ptr [edx+34E];TfmProgress.?f34E:word
>004CD092    je          004CD243
 004CD098    mov         eax,[0056E270];^gvar_00571EC0
 004CD09D    cmp         byte ptr [eax+36],6
>004CD0A1    jne         004CD243
 004CD0A7    lea         eax,[ebp-58]
 004CD0AA    push        eax
 004CD0AB    mov         eax,dword ptr [ebp-4]
 004CD0AE    movzx       eax,word ptr [eax+34E];TfmProgress.?f34E:word
 004CD0B5    mov         dword ptr [ebp-70],eax
 004CD0B8    mov         byte ptr [ebp-6C],0
 004CD0BC    push        0
 004CD0BE    lea         eax,[ebp-74]
 004CD0C1    push        eax
 004CD0C2    lea         ecx,[ebp-7C]
 004CD0C5    mov         eax,dword ptr [ebp-4]
 004CD0C8    movzx       eax,word ptr [eax+34E];TfmProgress.?f34E:word
 004CD0CF    mov         edx,2
 004CD0D4    call        IntToHex
 004CD0D9    mov         ecx,dword ptr [ebp-7C]
 004CD0DC    lea         eax,[ebp-78]
 004CD0DF    mov         edx,4CE0E4;'ID'
 004CD0E4    call        @LStrCat3
 004CD0E9    mov         ecx,dword ptr [ebp-78]
 004CD0EC    mov         edx,4CE0F0;'BLOCKS'
 004CD0F1    mov         eax,dword ptr [ebp-8]
 004CD0F4    mov         ebx,dword ptr [eax]
 004CD0F6    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CD0F8    mov         eax,dword ptr [ebp-74]
 004CD0FB    mov         dword ptr [ebp-68],eax
 004CD0FE    mov         byte ptr [ebp-64],0B
 004CD102    lea         ecx,[ebp-88]
 004CD108    mov         eax,dword ptr [ebp-4]
 004CD10B    movzx       eax,word ptr [eax+350];TfmProgress.?f350:word
 004CD112    mov         edx,4
 004CD117    call        IntToHex
 004CD11C    mov         ecx,dword ptr [ebp-88]
 004CD122    lea         eax,[ebp-84]
 004CD128    mov         edx,4CE100;'UNKNOWN ERROR '
 004CD12D    call        @LStrCat3
 004CD132    mov         eax,dword ptr [ebp-84]
 004CD138    push        eax
 004CD139    lea         eax,[ebp-80]
 004CD13C    push        eax
 004CD13D    lea         ecx,[ebp-8C]
 004CD143    mov         eax,dword ptr [ebp-4]
 004CD146    movzx       eax,word ptr [eax+350];TfmProgress.?f350:word
 004CD14D    mov         edx,4
 004CD152    call        IntToHex
 004CD157    mov         ecx,dword ptr [ebp-8C]
 004CD15D    mov         edx,4CE118;'ERRCODE'
 004CD162    mov         eax,dword ptr [ebp-8]
 004CD165    mov         ebx,dword ptr [eax]
 004CD167    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CD169    mov         eax,dword ptr [ebp-80]
 004CD16C    mov         dword ptr [ebp-60],eax
 004CD16F    mov         byte ptr [ebp-5C],0B
 004CD173    lea         edx,[ebp-70]
 004CD176    mov         ecx,2
 004CD17B    mov         eax,4CE128;'%x - %s - %s'
 004CD180    call        0040D630
 004CD185    mov         eax,dword ptr [ebp-58]
 004CD188    call        00544EB4
 004CD18D    lea         eax,[ebp-90]
 004CD193    push        eax
 004CD194    mov         eax,[0056E270];^gvar_00571EC0
 004CD199    movzx       eax,word ptr [eax+190]
 004CD1A0    mov         dword ptr [ebp-0A0],eax
 004CD1A6    mov         byte ptr [ebp-9C],0
 004CD1AD    push        0
 004CD1AF    lea         eax,[ebp-0A4]
 004CD1B5    push        eax
 004CD1B6    lea         ecx,[ebp-0AC]
 004CD1BC    mov         eax,[0056E270];^gvar_00571EC0
 004CD1C1    movzx       eax,word ptr [eax+190]
 004CD1C8    mov         edx,2
 004CD1CD    call        IntToHex
 004CD1D2    mov         ecx,dword ptr [ebp-0AC]
 004CD1D8    lea         eax,[ebp-0A8]
 004CD1DE    mov         edx,4CE0E4;'ID'
 004CD1E3    call        @LStrCat3
 004CD1E8    mov         ecx,dword ptr [ebp-0A8]
 004CD1EE    mov         edx,4CE0F0;'BLOCKS'
 004CD1F3    mov         eax,dword ptr [ebp-8]
 004CD1F6    mov         ebx,dword ptr [eax]
 004CD1F8    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CD1FA    mov         eax,dword ptr [ebp-0A4]
 004CD200    mov         dword ptr [ebp-98],eax
 004CD206    mov         byte ptr [ebp-94],0B
 004CD20D    lea         edx,[ebp-0A0]
 004CD213    mov         ecx,1
 004CD218    mov         eax,4CE140;'%x - %s - Start'
 004CD21D    call        0040D630
 004CD222    mov         eax,dword ptr [ebp-90]
 004CD228    call        00544EB4
 004CD22D    mov         eax,[0056E270];^gvar_00571EC0
 004CD232    mov         ax,word ptr [eax+190]
 004CD239    mov         edx,dword ptr [ebp-4]
 004CD23C    mov         word ptr [edx+34E],ax;TfmProgress.?f34E:word
 004CD243    mov         eax,[0056E270];^gvar_00571EC0
 004CD248    mov         ax,word ptr [eax+18]
 004CD24C    mov         edx,dword ptr [ebp-4]
 004CD24F    mov         word ptr [edx+350],ax;TfmProgress.?f350:word
 004CD256    mov         eax,[0056E270];^gvar_00571EC0
 004CD25B    movzx       eax,word ptr [eax+68]
 004CD25F    mov         ecx,0A
 004CD264    xor         edx,edx
 004CD266    div         eax,ecx
 004CD268    cmp         eax,64
>004CD26B    jbe         004CD29C
 004CD26D    lea         ecx,[ebp-0B0]
 004CD273    mov         eax,[0056E270];^gvar_00571EC0
 004CD278    movzx       eax,word ptr [eax+68]
 004CD27C    mov         edx,4
 004CD281    call        IntToHex
 004CD286    mov         edx,dword ptr [ebp-0B0]
 004CD28C    mov         eax,dword ptr [ebp-4]
 004CD28F    mov         eax,dword ptr [eax+2F8];TfmProgress.edProgress:TLabeledEdit
 004CD295    call        TPanel.SetCaption
>004CD29A    jmp         004CD312
 004CD29C    mov         eax,[0056E270];^gvar_00571EC0
 004CD2A1    movzx       eax,word ptr [eax+68]
 004CD2A5    mov         ecx,0A
 004CD2AA    xor         edx,edx
 004CD2AC    div         eax,ecx
 004CD2AE    lea         edx,[ebp-0B8]
 004CD2B4    call        IntToStr
 004CD2B9    push        dword ptr [ebp-0B8]
 004CD2BF    push        4CE158;'.'
 004CD2C4    mov         eax,[0056E270];^gvar_00571EC0
 004CD2C9    movzx       eax,word ptr [eax+68]
 004CD2CD    mov         ecx,0A
 004CD2D2    xor         edx,edx
 004CD2D4    div         eax,ecx
 004CD2D6    mov         eax,edx
 004CD2D8    lea         edx,[ebp-0BC]
 004CD2DE    call        IntToStr
 004CD2E3    push        dword ptr [ebp-0BC]
 004CD2E9    push        4CE164;'%   '
 004CD2EE    lea         eax,[ebp-0B4]
 004CD2F4    mov         edx,4
 004CD2F9    call        @LStrCatN
 004CD2FE    mov         edx,dword ptr [ebp-0B4]
 004CD304    mov         eax,dword ptr [ebp-4]
 004CD307    mov         eax,dword ptr [eax+2F8];TfmProgress.edProgress:TLabeledEdit
 004CD30D    call        TPanel.SetCaption
 004CD312    lea         edx,[ebp-10]
 004CD315    mov         eax,[0056E270];^gvar_00571EC0
 004CD31A    add         eax,38
 004CD31D    mov         ecx,6
 004CD322    call        Move
 004CD327    lea         eax,[ebp-0C0]
 004CD32D    push        eax
 004CD32E    mov         eax,dword ptr [ebp-10]
 004CD331    mov         dword ptr [ebp-0A0],eax
 004CD337    mov         byte ptr [ebp-9C],0
 004CD33E    mov         eax,dword ptr [ebp-10]
 004CD341    mov         dword ptr [ebp-98],eax
 004CD347    mov         byte ptr [ebp-94],0
 004CD34E    lea         edx,[ebp-0A0]
 004CD354    mov         ecx,1
 004CD359    mov         eax,4CE174;'%x  (%d)'
 004CD35E    call        0040D630
 004CD363    mov         edx,dword ptr [ebp-0C0]
 004CD369    mov         eax,dword ptr [ebp-4]
 004CD36C    mov         eax,dword ptr [eax+2FC];TfmProgress.edLba:TLabeledEdit
 004CD372    call        TPanel.SetCaption
 004CD377    mov         eax,[0056E270];^gvar_00571EC0
 004CD37C    mov         eax,dword ptr [eax+40]
 004CD37F    and         eax,80000000
 004CD384    cmp         eax,80000000
>004CD389    jne         004CD3ED
 004CD38B    lea         eax,[ebp-0C4]
 004CD391    push        eax
 004CD392    mov         eax,[0056E270];^gvar_00571EC0
 004CD397    mov         eax,dword ptr [eax+40]
 004CD39A    not         eax
 004CD39C    inc         eax
 004CD39D    mov         dword ptr [ebp-0A0],eax
 004CD3A3    mov         byte ptr [ebp-9C],0
 004CD3AA    mov         eax,[0056E270];^gvar_00571EC0
 004CD3AF    mov         eax,dword ptr [eax+40]
 004CD3B2    not         eax
 004CD3B4    inc         eax
 004CD3B5    mov         dword ptr [ebp-98],eax
 004CD3BB    mov         byte ptr [ebp-94],0
 004CD3C2    lea         edx,[ebp-0A0]
 004CD3C8    mov         ecx,1
 004CD3CD    mov         eax,4CE188;'-%x  (-%d)'
 004CD3D2    call        0040D630
 004CD3D7    mov         edx,dword ptr [ebp-0C4]
 004CD3DD    mov         eax,dword ptr [ebp-4]
 004CD3E0    mov         eax,dword ptr [eax+300];TfmProgress.edTrack:TLabeledEdit
 004CD3E6    call        TPanel.SetCaption
>004CD3EB    jmp         004CD447
 004CD3ED    lea         eax,[ebp-0C8]
 004CD3F3    push        eax
 004CD3F4    mov         eax,[0056E270];^gvar_00571EC0
 004CD3F9    mov         eax,dword ptr [eax+40]
 004CD3FC    mov         dword ptr [ebp-0A0],eax
 004CD402    mov         byte ptr [ebp-9C],0
 004CD409    mov         eax,[0056E270];^gvar_00571EC0
 004CD40E    mov         eax,dword ptr [eax+40]
 004CD411    mov         dword ptr [ebp-98],eax
 004CD417    mov         byte ptr [ebp-94],0
 004CD41E    lea         edx,[ebp-0A0]
 004CD424    mov         ecx,1
 004CD429    mov         eax,4CE174;'%x  (%d)'
 004CD42E    call        0040D630
 004CD433    mov         edx,dword ptr [ebp-0C8]
 004CD439    mov         eax,dword ptr [ebp-4]
 004CD43C    mov         eax,dword ptr [eax+300];TfmProgress.edTrack:TLabeledEdit
 004CD442    call        TPanel.SetCaption
 004CD447    lea         eax,[ebp-0CC]
 004CD44D    push        eax
 004CD44E    mov         eax,[0056E270];^gvar_00571EC0
 004CD453    movzx       eax,byte ptr [eax+44]
 004CD457    mov         dword ptr [ebp-0D4],eax
 004CD45D    mov         byte ptr [ebp-0D0],0
 004CD464    lea         edx,[ebp-0D4]
 004CD46A    xor         ecx,ecx
 004CD46C    mov         eax,4CE19C;'%x'
 004CD471    call        0040D630
 004CD476    mov         edx,dword ptr [ebp-0CC]
 004CD47C    mov         eax,dword ptr [ebp-4]
 004CD47F    mov         eax,dword ptr [eax+304];TfmProgress.edHead:TLabeledEdit
 004CD485    call        TPanel.SetCaption
 004CD48A    lea         eax,[ebp-0D8]
 004CD490    push        eax
 004CD491    mov         eax,[0056E270];^gvar_00571EC0
 004CD496    movzx       eax,byte ptr [eax+45]
 004CD49A    mov         dword ptr [ebp-0D4],eax
 004CD4A0    mov         byte ptr [ebp-0D0],0
 004CD4A7    lea         edx,[ebp-0D4]
 004CD4AD    xor         ecx,ecx
 004CD4AF    mov         eax,4CE19C;'%x'
 004CD4B4    call        0040D630
 004CD4B9    mov         edx,dword ptr [ebp-0D8]
 004CD4BF    mov         eax,dword ptr [ebp-4]
 004CD4C2    mov         eax,dword ptr [eax+308];TfmProgress.edZone:TLabeledEdit
 004CD4C8    call        TPanel.SetCaption
 004CD4CD    lea         eax,[ebp-0DC]
 004CD4D3    push        eax
 004CD4D4    mov         eax,[0056E270];^gvar_00571EC0
 004CD4D9    movzx       eax,word ptr [eax+4E]
 004CD4DD    mov         dword ptr [ebp-0A0],eax
 004CD4E3    mov         byte ptr [ebp-9C],0
 004CD4EA    mov         eax,[0056E270];^gvar_00571EC0
 004CD4EF    movzx       eax,word ptr [eax+50]
 004CD4F3    mov         dword ptr [ebp-98],eax
 004CD4F9    mov         byte ptr [ebp-94],0
 004CD500    lea         edx,[ebp-0A0]
 004CD506    mov         ecx,1
 004CD50B    mov         eax,4CE1A8;'%x : %x'
 004CD510    call        0040D630
 004CD515    mov         edx,dword ptr [ebp-0DC]
 004CD51B    mov         eax,dword ptr [ebp-4]
 004CD51E    mov         eax,dword ptr [eax+340];TfmProgress.edServo:TLabeledEdit
 004CD524    call        TPanel.SetCaption
 004CD529    mov         dword ptr [ebp-18],0
 004CD530    mov         dword ptr [ebp-14],0
 004CD537    lea         edx,[ebp-18]
 004CD53A    mov         eax,[0056E270];^gvar_00571EC0
 004CD53F    add         eax,1A
 004CD542    mov         ecx,0C
 004CD547    call        Move
 004CD54C    lea         ecx,[ebp-0E4]
 004CD552    mov         eax,[0056E270];^gvar_00571EC0
 004CD557    movzx       eax,word ptr [eax+18]
 004CD55B    mov         edx,4
 004CD560    call        IntToHex
 004CD565    push        dword ptr [ebp-0E4]
 004CD56B    push        4CE1B8;', '
 004CD570    lea         ecx,[ebp-0E8]
 004CD576    mov         eax,[0056E270];^gvar_00571EC0
 004CD57B    movzx       eax,word ptr [eax+196]
 004CD582    mov         edx,4
 004CD587    call        IntToHex
 004CD58C    push        dword ptr [ebp-0E8]
 004CD592    push        4CE1B8;', '
 004CD597    lea         ecx,[ebp-0EC]
 004CD59D    mov         eax,[0056E270];^gvar_00571EC0
 004CD5A2    movzx       eax,word ptr [eax+30]
 004CD5A6    mov         edx,4
 004CD5AB    call        IntToHex
 004CD5B0    push        dword ptr [ebp-0EC]
 004CD5B6    push        4CE1B8;', '
 004CD5BB    mov         eax,[0056E270];^gvar_00571EC0
 004CD5C0    mov         eax,dword ptr [eax+22]
 004CD5C3    xor         edx,edx
 004CD5C5    push        edx
 004CD5C6    push        eax
 004CD5C7    lea         edx,[ebp-0F0]
 004CD5CD    mov         eax,8
 004CD5D2    call        IntToHex
 004CD5D7    push        dword ptr [ebp-0F0]
 004CD5DD    push        4CE1B8;', '
 004CD5E2    mov         eax,[0056E270];^gvar_00571EC0
 004CD5E7    mov         eax,dword ptr [eax+32]
 004CD5EA    xor         edx,edx
 004CD5EC    push        edx
 004CD5ED    push        eax
 004CD5EE    lea         edx,[ebp-0F4]
 004CD5F4    mov         eax,8
 004CD5F9    call        IntToHex
 004CD5FE    push        dword ptr [ebp-0F4]
 004CD604    lea         eax,[ebp-0E0]
 004CD60A    mov         edx,9
 004CD60F    call        @LStrCatN
 004CD614    mov         edx,dword ptr [ebp-0E0]
 004CD61A    mov         eax,dword ptr [ebp-4]
 004CD61D    mov         eax,dword ptr [eax+30C];TfmProgress.edStatus:TLabeledEdit
 004CD623    call        TPanel.SetCaption
 004CD628    lea         ecx,[ebp-100]
 004CD62E    mov         eax,[0056E270];^gvar_00571EC0
 004CD633    movzx       eax,word ptr [eax+18]
 004CD637    mov         edx,4
 004CD63C    call        IntToHex
 004CD641    mov         ecx,dword ptr [ebp-100]
 004CD647    lea         eax,[ebp-0FC]
 004CD64D    mov         edx,4CE100;'UNKNOWN ERROR '
 004CD652    call        @LStrCat3
 004CD657    mov         eax,dword ptr [ebp-0FC]
 004CD65D    push        eax
 004CD65E    lea         eax,[ebp-0F8]
 004CD664    push        eax
 004CD665    lea         ecx,[ebp-104]
 004CD66B    mov         eax,[0056E270];^gvar_00571EC0
 004CD670    movzx       eax,word ptr [eax+18]
 004CD674    mov         edx,4
 004CD679    call        IntToHex
 004CD67E    mov         ecx,dword ptr [ebp-104]
 004CD684    mov         edx,4CE118;'ERRCODE'
 004CD689    mov         eax,dword ptr [ebp-8]
 004CD68C    mov         ebx,dword ptr [eax]
 004CD68E    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CD690    mov         edx,dword ptr [ebp-0F8]
 004CD696    mov         eax,dword ptr [ebp-4]
 004CD699    mov         eax,dword ptr [eax+320];TfmProgress.edStatusTxt:TLabeledEdit
 004CD69F    call        TPanel.SetCaption
 004CD6A4    mov         eax,[0056E270];^gvar_00571EC0
 004CD6A9    cmp         word ptr [eax+30],0
>004CD6AE    je          004CD765
 004CD6B4    lea         edx,[ebp-10C]
 004CD6BA    mov         eax,dword ptr [ebp-4]
 004CD6BD    mov         eax,dword ptr [eax+320];TfmProgress.edStatusTxt:TLabeledEdit
 004CD6C3    call        TPanel.GetCaption
 004CD6C8    push        dword ptr [ebp-10C]
 004CD6CE    push        4CE1C4;' - '
 004CD6D3    lea         ecx,[ebp-118]
 004CD6D9    mov         eax,[0056E270];^gvar_00571EC0
 004CD6DE    movzx       eax,word ptr [eax+30]
 004CD6E2    mov         edx,4
 004CD6E7    call        IntToHex
 004CD6EC    mov         ecx,dword ptr [ebp-118]
 004CD6F2    lea         eax,[ebp-114]
 004CD6F8    mov         edx,4CE100;'UNKNOWN ERROR '
 004CD6FD    call        @LStrCat3
 004CD702    mov         eax,dword ptr [ebp-114]
 004CD708    push        eax
 004CD709    lea         eax,[ebp-110]
 004CD70F    push        eax
 004CD710    lea         ecx,[ebp-11C]
 004CD716    mov         eax,[0056E270];^gvar_00571EC0
 004CD71B    movzx       eax,word ptr [eax+18]
 004CD71F    mov         edx,4
 004CD724    call        IntToHex
 004CD729    mov         ecx,dword ptr [ebp-11C]
 004CD72F    mov         edx,4CE118;'ERRCODE'
 004CD734    mov         eax,dword ptr [ebp-8]
 004CD737    mov         ebx,dword ptr [eax]
 004CD739    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CD73B    push        dword ptr [ebp-110]
 004CD741    lea         eax,[ebp-108]
 004CD747    mov         edx,3
 004CD74C    call        @LStrCatN
 004CD751    mov         edx,dword ptr [ebp-108]
 004CD757    mov         eax,dword ptr [ebp-4]
 004CD75A    mov         eax,dword ptr [eax+320];TfmProgress.edStatusTxt:TLabeledEdit
 004CD760    call        TPanel.SetCaption
 004CD765    mov         eax,[0056E270];^gvar_00571EC0
 004CD76A    cmp         word ptr [eax+196],0
>004CD772    je          004CD82C
 004CD778    lea         edx,[ebp-124]
 004CD77E    mov         eax,dword ptr [ebp-4]
 004CD781    mov         eax,dword ptr [eax+320];TfmProgress.edStatusTxt:TLabeledEdit
 004CD787    call        TPanel.GetCaption
 004CD78C    push        dword ptr [ebp-124]
 004CD792    push        4CE1C4;' - '
 004CD797    lea         ecx,[ebp-130]
 004CD79D    mov         eax,[0056E270];^gvar_00571EC0
 004CD7A2    movzx       eax,word ptr [eax+30]
 004CD7A6    mov         edx,4
 004CD7AB    call        IntToHex
 004CD7B0    mov         ecx,dword ptr [ebp-130]
 004CD7B6    lea         eax,[ebp-12C]
 004CD7BC    mov         edx,4CE100;'UNKNOWN ERROR '
 004CD7C1    call        @LStrCat3
 004CD7C6    mov         eax,dword ptr [ebp-12C]
 004CD7CC    push        eax
 004CD7CD    lea         eax,[ebp-128]
 004CD7D3    push        eax
 004CD7D4    lea         ecx,[ebp-134]
 004CD7DA    mov         eax,[0056E270];^gvar_00571EC0
 004CD7DF    movzx       eax,word ptr [eax+196]
 004CD7E6    mov         edx,4
 004CD7EB    call        IntToHex
 004CD7F0    mov         ecx,dword ptr [ebp-134]
 004CD7F6    mov         edx,4CE118;'ERRCODE'
 004CD7FB    mov         eax,dword ptr [ebp-8]
 004CD7FE    mov         ebx,dword ptr [eax]
 004CD800    call        dword ptr [ebx];TIniFile.sub_0044A254
 004CD802    push        dword ptr [ebp-128]
 004CD808    lea         eax,[ebp-120]
 004CD80E    mov         edx,3
 004CD813    call        @LStrCatN
 004CD818    mov         edx,dword ptr [ebp-120]
 004CD81E    mov         eax,dword ptr [ebp-4]
 004CD821    mov         eax,dword ptr [eax+320];TfmProgress.edStatusTxt:TLabeledEdit
 004CD827    call        TPanel.SetCaption
 004CD82C    lea         edx,[ebp-138]
 004CD832    mov         eax,dword ptr [ebp-4]
 004CD835    mov         eax,dword ptr [eax+320];TfmProgress.edStatusTxt:TLabeledEdit
 004CD83B    call        TPanel.GetCaption
 004CD840    mov         edx,dword ptr [ebp-138]
 004CD846    mov         eax,dword ptr [ebp-4]
 004CD849    mov         eax,dword ptr [eax+320];TfmProgress.edStatusTxt:TLabeledEdit
 004CD84F    add         eax,80;TLabeledEdit.Hint:String
 004CD854    call        @LStrAsg
 004CD859    xor         eax,eax
 004CD85B    pop         edx
 004CD85C    pop         ecx
 004CD85D    pop         ecx
 004CD85E    mov         dword ptr fs:[eax],edx
 004CD861    push        4CD876
 004CD866    mov         eax,dword ptr [ebp-8]
 004CD869    call        TObject.Free
 004CD86E    ret
>004CD86F    jmp         @HandleFinally
>004CD874    jmp         004CD866
 004CD876    lea         eax,[ebp-13C]
 004CD87C    push        eax
 004CD87D    mov         eax,[0056E270];^gvar_00571EC0
 004CD882    movzx       eax,word ptr [eax+190]
 004CD889    mov         dword ptr [ebp-0A0],eax
 004CD88F    mov         byte ptr [ebp-9C],0
 004CD896    mov         eax,[0056E270];^gvar_00571EC0
 004CD89B    movzx       eax,word ptr [eax+192]
 004CD8A2    mov         dword ptr [ebp-98],eax
 004CD8A8    mov         byte ptr [ebp-94],0
 004CD8AF    lea         edx,[ebp-0A0]
 004CD8B5    mov         ecx,1
 004CD8BA    mov         eax,4CE1D0;'ID:%x  TST:%x'
 004CD8BF    call        0040D630
 004CD8C4    mov         edx,dword ptr [ebp-13C]
 004CD8CA    mov         eax,dword ptr [ebp-4]
 004CD8CD    mov         eax,dword ptr [eax+314];TfmProgress.edStep:TLabeledEdit
 004CD8D3    call        TPanel.SetCaption
 004CD8D8    lea         edx,[ebp-10]
 004CD8DB    mov         eax,[0056E270];^gvar_00571EC0
 004CD8E0    add         eax,6C
 004CD8E3    mov         ecx,6
 004CD8E8    call        Move
 004CD8ED    lea         edx,[ebp-140]
 004CD8F3    mov         eax,[0056E270];^gvar_00571EC0
 004CD8F8    movzx       eax,byte ptr [eax+4A]
 004CD8FC    call        IntToStr
 004CD901    mov         edx,dword ptr [ebp-140]
 004CD907    mov         eax,dword ptr [ebp-4]
 004CD90A    mov         eax,dword ptr [eax+32C];TfmProgress.edDtemp:TLabeledEdit
 004CD910    call        TPanel.SetCaption
 004CD915    lea         edx,[ebp-144]
 004CD91B    mov         eax,[0056E270];^gvar_00571EC0
 004CD920    movzx       eax,byte ptr [eax+4B]
 004CD924    call        IntToStr
 004CD929    mov         edx,dword ptr [ebp-144]
 004CD92F    mov         eax,dword ptr [ebp-4]
 004CD932    mov         eax,dword ptr [eax+330];TfmProgress.edJtemp:TLabeledEdit
 004CD938    call        TPanel.SetCaption
 004CD93D    lea         edx,[ebp-148]
 004CD943    mov         eax,[0056E270];^gvar_00571EC0
 004CD948    movzx       eax,word ptr [eax+4C]
 004CD94C    call        IntToStr
 004CD951    mov         edx,dword ptr [ebp-148]
 004CD957    mov         eax,dword ptr [ebp-4]
 004CD95A    mov         eax,dword ptr [eax+334];TfmProgress.edCtemp:TLabeledEdit
 004CD960    call        TPanel.SetCaption
 004CD965    lea         edx,[ebp-150]
 004CD96B    mov         eax,[0056E270];^gvar_00571EC0
 004CD970    movzx       eax,byte ptr [eax+6A]
 004CD974    call        IntToStr
 004CD979    push        dword ptr [ebp-150]
 004CD97F    push        4CE1E8;' / '
 004CD984    lea         edx,[ebp-154]
 004CD98A    mov         eax,[0056E270];^gvar_00571EC0
 004CD98F    movzx       eax,byte ptr [eax+6B]
 004CD993    call        IntToStr
 004CD998    push        dword ptr [ebp-154]
 004CD99E    lea         eax,[ebp-14C]
 004CD9A4    mov         edx,3
 004CD9A9    call        @LStrCatN
 004CD9AE    mov         edx,dword ptr [ebp-14C]
 004CD9B4    mov         eax,dword ptr [ebp-4]
 004CD9B7    mov         eax,dword ptr [eax+338];TfmProgress.edFtemp:TLabeledEdit
 004CD9BD    call        TPanel.SetCaption
 004CD9C2    lea         ecx,[ebp-15C]
 004CD9C8    mov         eax,[0056E270];^gvar_00571EC0
 004CD9CD    mov         ax,word ptr [eax+0A]
 004CD9D1    and         ax,0FF
 004CD9D5    movzx       eax,ax
 004CD9D8    mov         edx,2
 004CD9DD    call        IntToHex
 004CD9E2    push        dword ptr [ebp-15C]
 004CD9E8    push        4CE0B4;' '
 004CD9ED    lea         ecx,[ebp-160]
 004CD9F3    mov         eax,[0056E270];^gvar_00571EC0
 004CD9F8    mov         ax,word ptr [eax+0C]
 004CD9FC    and         ax,0FF
 004CDA00    movzx       eax,ax
 004CDA03    mov         edx,2
 004CDA08    call        IntToHex
 004CDA0D    push        dword ptr [ebp-160]
 004CDA13    push        4CE0B4;' '
 004CDA18    lea         ecx,[ebp-164]
 004CDA1E    mov         eax,[0056E270];^gvar_00571EC0
 004CDA23    mov         ax,word ptr [eax+0E]
 004CDA27    and         ax,0FF
 004CDA2B    movzx       eax,ax
 004CDA2E    mov         edx,2
 004CDA33    call        IntToHex
 004CDA38    push        dword ptr [ebp-164]
 004CDA3E    push        4CE0B4;' '
 004CDA43    lea         ecx,[ebp-168]
 004CDA49    mov         eax,[0056E270];^gvar_00571EC0
 004CDA4E    mov         ax,word ptr [eax+10]
 004CDA52    and         ax,0FF
 004CDA56    movzx       eax,ax
 004CDA59    mov         edx,2
 004CDA5E    call        IntToHex
 004CDA63    push        dword ptr [ebp-168]
 004CDA69    push        4CE0B4;' '
 004CDA6E    lea         ecx,[ebp-16C]
 004CDA74    mov         eax,[0056E270];^gvar_00571EC0
 004CDA79    movzx       eax,word ptr [eax+10]
 004CDA7D    shr         eax,8
 004CDA80    mov         edx,2
 004CDA85    call        IntToHex
 004CDA8A    push        dword ptr [ebp-16C]
 004CDA90    push        4CE0B4;' '
 004CDA95    lea         ecx,[ebp-170]
 004CDA9B    mov         eax,[0056E270];^gvar_00571EC0
 004CDAA0    movzx       eax,byte ptr [eax+15]
 004CDAA4    mov         edx,2
 004CDAA9    call        IntToHex
 004CDAAE    push        dword ptr [ebp-170]
 004CDAB4    push        4CE0B4;' '
 004CDAB9    lea         ecx,[ebp-174]
 004CDABF    mov         eax,[0056E270];^gvar_00571EC0
 004CDAC4    movzx       eax,byte ptr [eax+7]
 004CDAC8    mov         edx,2
 004CDACD    call        IntToHex
 004CDAD2    push        dword ptr [ebp-174]
 004CDAD8    push        4CE1E8;' / '
 004CDADD    lea         ecx,[ebp-178]
 004CDAE3    mov         eax,[0056E270];^gvar_00571EC0
 004CDAE8    movzx       eax,byte ptr [eax+14]
 004CDAEC    mov         edx,2
 004CDAF1    call        IntToHex
 004CDAF6    push        dword ptr [ebp-178]
 004CDAFC    push        4CE1E8;' / '
 004CDB01    lea         ecx,[ebp-17C]
 004CDB07    mov         eax,[0056E270];^gvar_00571EC0
 004CDB0C    movzx       eax,byte ptr [eax+6]
 004CDB10    mov         edx,2
 004CDB15    call        IntToHex
 004CDB1A    push        dword ptr [ebp-17C]
 004CDB20    lea         eax,[ebp-158]
 004CDB26    mov         edx,11
 004CDB2B    call        @LStrCatN
 004CDB30    mov         edx,dword ptr [ebp-158]
 004CDB36    mov         eax,dword ptr [ebp-4]
 004CDB39    mov         eax,dword ptr [eax+318];TfmProgress.edAta:TLabeledEdit
 004CDB3F    call        TPanel.SetCaption
 004CDB44    lea         ecx,[ebp-184]
 004CDB4A    mov         eax,[0056E270];^gvar_00571EC0
 004CDB4F    movzx       eax,byte ptr [eax+36]
 004CDB53    mov         edx,2
 004CDB58    call        IntToHex
 004CDB5D    push        dword ptr [ebp-184]
 004CDB63    push        4CE0B4;' '
 004CDB68    lea         ecx,[ebp-188]
 004CDB6E    mov         eax,[0056E270];^gvar_00571EC0
 004CDB73    movzx       eax,byte ptr [eax+37]
 004CDB77    mov         edx,2
 004CDB7C    call        IntToHex
 004CDB81    push        dword ptr [ebp-188]
 004CDB87    lea         eax,[ebp-180]
 004CDB8D    mov         edx,3
 004CDB92    call        @LStrCatN
 004CDB97    mov         edx,dword ptr [ebp-180]
 004CDB9D    mov         eax,dword ptr [ebp-4]
 004CDBA0    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDBA6    call        TPanel.SetCaption
 004CDBAB    mov         eax,[0056E270];^gvar_00571EC0
 004CDBB0    movzx       eax,byte ptr [eax+37]
 004CDBB4    shr         eax,5
 004CDBB7    inc         eax
 004CDBB8    cmp         eax,7
>004CDBBB    ja          004CDD88
 004CDBC1    jmp         dword ptr [eax*4+4CDBC8]
 004CDBC1    dd          004CDD88
 004CDBC1    dd          004CDBE8
 004CDBC1    dd          004CDC25
 004CDBC1    dd          004CDC62
 004CDBC1    dd          004CDC9F
 004CDBC1    dd          004CDCDC
 004CDBC1    dd          004CDD16
 004CDBC1    dd          004CDD50
 004CDBE8    lea         edx,[ebp-18C]
 004CDBEE    mov         eax,dword ptr [ebp-4]
 004CDBF1    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDBF7    call        TPanel.GetCaption
 004CDBFC    lea         eax,[ebp-18C]
 004CDC02    mov         edx,4CE1F4;' (ACTIVE)'
 004CDC07    call        @LStrCat
 004CDC0C    mov         edx,dword ptr [ebp-18C]
 004CDC12    mov         eax,dword ptr [ebp-4]
 004CDC15    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDC1B    call        TPanel.SetCaption
>004CDC20    jmp         004CDD88
 004CDC25    lea         edx,[ebp-190]
 004CDC2B    mov         eax,dword ptr [ebp-4]
 004CDC2E    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDC34    call        TPanel.GetCaption
 004CDC39    lea         eax,[ebp-190]
 004CDC3F    mov         edx,4CE208;' (IDLE1)'
 004CDC44    call        @LStrCat
 004CDC49    mov         edx,dword ptr [ebp-190]
 004CDC4F    mov         eax,dword ptr [ebp-4]
 004CDC52    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDC58    call        TPanel.SetCaption
>004CDC5D    jmp         004CDD88
 004CDC62    lea         edx,[ebp-194]
 004CDC68    mov         eax,dword ptr [ebp-4]
 004CDC6B    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDC71    call        TPanel.GetCaption
 004CDC76    lea         eax,[ebp-194]
 004CDC7C    mov         edx,4CE21C;' (IDLE2)'
 004CDC81    call        @LStrCat
 004CDC86    mov         edx,dword ptr [ebp-194]
 004CDC8C    mov         eax,dword ptr [ebp-4]
 004CDC8F    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDC95    call        TPanel.SetCaption
>004CDC9A    jmp         004CDD88
 004CDC9F    lea         edx,[ebp-198]
 004CDCA5    mov         eax,dword ptr [ebp-4]
 004CDCA8    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDCAE    call        TPanel.GetCaption
 004CDCB3    lea         eax,[ebp-198]
 004CDCB9    mov         edx,4CE230;' (IDLE3)'
 004CDCBE    call        @LStrCat
 004CDCC3    mov         edx,dword ptr [ebp-198]
 004CDCC9    mov         eax,dword ptr [ebp-4]
 004CDCCC    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDCD2    call        TPanel.SetCaption
>004CDCD7    jmp         004CDD88
 004CDCDC    lea         edx,[ebp-19C]
 004CDCE2    mov         eax,dword ptr [ebp-4]
 004CDCE5    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDCEB    call        TPanel.GetCaption
 004CDCF0    lea         eax,[ebp-19C]
 004CDCF6    mov         edx,4CE244;' (NOT TRACK FOLLOW) or (SPUNDOWN if TEMP_OLD_PM_SWITCH == 1)'
 004CDCFB    call        @LStrCat
 004CDD00    mov         edx,dword ptr [ebp-19C]
 004CDD06    mov         eax,dword ptr [ebp-4]
 004CDD09    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDD0F    call        TPanel.SetCaption
>004CDD14    jmp         004CDD88
 004CDD16    lea         edx,[ebp-1A0]
 004CDD1C    mov         eax,dword ptr [ebp-4]
 004CDD1F    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDD25    call        TPanel.GetCaption
 004CDD2A    lea         eax,[ebp-1A0]
 004CDD30    mov         edx,4CE28C;' (SPUNDOWN) or(STANDBY if TEMP_OLD_PM_SWITCH == 1 )'
 004CDD35    call        @LStrCat
 004CDD3A    mov         edx,dword ptr [ebp-1A0]
 004CDD40    mov         eax,dword ptr [ebp-4]
 004CDD43    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDD49    call        TPanel.SetCaption
>004CDD4E    jmp         004CDD88
 004CDD50    lea         edx,[ebp-1A4]
 004CDD56    mov         eax,dword ptr [ebp-4]
 004CDD59    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDD5F    call        TPanel.GetCaption
 004CDD64    lea         eax,[ebp-1A4]
 004CDD6A    mov         edx,4CE2C8;' (STANDBY) or(Unknown State if TEMP_OLD_PM_SWITCH == 1 )'
 004CDD6F    call        @LStrCat
 004CDD74    mov         edx,dword ptr [ebp-1A4]
 004CDD7A    mov         eax,dword ptr [ebp-4]
 004CDD7D    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDD83    call        TPanel.SetCaption
 004CDD88    mov         eax,[0056E270];^gvar_00571EC0
 004CDD8D    movzx       eax,byte ptr [eax+36]
 004CDD91    cmp         eax,6
>004CDD94    ja          004CDF5D
 004CDD9A    jmp         dword ptr [eax*4+4CDDA1]
 004CDD9A    dd          004CDDBD
 004CDD9A    dd          004CDDFA
 004CDD9A    dd          004CDE37
 004CDD9A    dd          004CDE74
 004CDD9A    dd          004CDEB1
 004CDD9A    dd          004CDEEB
 004CDD9A    dd          004CDF25
 004CDDBD    lea         edx,[ebp-1A8]
 004CDDC3    mov         eax,dword ptr [ebp-4]
 004CDDC6    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDDCC    call        TPanel.GetCaption
 004CDDD1    lea         eax,[ebp-1A8]
 004CDDD7    mov         edx,4CE30C;' Idle'
 004CDDDC    call        @LStrCat
 004CDDE1    mov         edx,dword ptr [ebp-1A8]
 004CDDE7    mov         eax,dword ptr [ebp-4]
 004CDDEA    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDDF0    call        TPanel.SetCaption
>004CDDF5    jmp         004CDF5D
 004CDDFA    lea         edx,[ebp-1AC]
 004CDE00    mov         eax,dword ptr [ebp-4]
 004CDE03    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDE09    call        TPanel.GetCaption
 004CDE0E    lea         eax,[ebp-1AC]
 004CDE14    mov         edx,4CE31C;' Standby'
 004CDE19    call        @LStrCat
 004CDE1E    mov         edx,dword ptr [ebp-1AC]
 004CDE24    mov         eax,dword ptr [ebp-4]
 004CDE27    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDE2D    call        TPanel.SetCaption
>004CDE32    jmp         004CDF5D
 004CDE37    lea         edx,[ebp-1B0]
 004CDE3D    mov         eax,dword ptr [ebp-4]
 004CDE40    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDE46    call        TPanel.GetCaption
 004CDE4B    lea         eax,[ebp-1B0]
 004CDE51    mov         edx,4CE330;' Sleep'
 004CDE56    call        @LStrCat
 004CDE5B    mov         edx,dword ptr [ebp-1B0]
 004CDE61    mov         eax,dword ptr [ebp-4]
 004CDE64    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDE6A    call        TPanel.SetCaption
>004CDE6F    jmp         004CDF5D
 004CDE74    lea         edx,[ebp-1B4]
 004CDE7A    mov         eax,dword ptr [ebp-4]
 004CDE7D    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDE83    call        TPanel.GetCaption
 004CDE88    lea         eax,[ebp-1B4]
 004CDE8E    mov         edx,4CE340;' Background DST'
 004CDE93    call        @LStrCat
 004CDE98    mov         edx,dword ptr [ebp-1B4]
 004CDE9E    mov         eax,dword ptr [ebp-4]
 004CDEA1    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDEA7    call        TPanel.SetCaption
>004CDEAC    jmp         004CDF5D
 004CDEB1    lea         edx,[ebp-1B8]
 004CDEB7    mov         eax,dword ptr [ebp-4]
 004CDEBA    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDEC0    call        TPanel.GetCaption
 004CDEC5    lea         eax,[ebp-1B8]
 004CDECB    mov         edx,4CE358;' Background Data Lifeguard'
 004CDED0    call        @LStrCat
 004CDED5    mov         edx,dword ptr [ebp-1B8]
 004CDEDB    mov         eax,dword ptr [ebp-4]
 004CDEDE    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDEE4    call        TPanel.SetCaption
>004CDEE9    jmp         004CDF5D
 004CDEEB    lea         edx,[ebp-1BC]
 004CDEF1    mov         eax,dword ptr [ebp-4]
 004CDEF4    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDEFA    call        TPanel.GetCaption
 004CDEFF    lea         eax,[ebp-1BC]
 004CDF05    mov         edx,4CE37C;' Background VSC Command'
 004CDF0A    call        @LStrCat
 004CDF0F    mov         edx,dword ptr [ebp-1BC]
 004CDF15    mov         eax,dword ptr [ebp-4]
 004CDF18    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDF1E    call        TPanel.SetCaption
>004CDF23    jmp         004CDF5D
 004CDF25    lea         edx,[ebp-1C0]
 004CDF2B    mov         eax,dword ptr [ebp-4]
 004CDF2E    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDF34    call        TPanel.GetCaption
 004CDF39    lea         eax,[ebp-1C0]
 004CDF3F    mov         edx,4CE39C;' PST test in progress'
 004CDF44    call        @LStrCat
 004CDF49    mov         edx,dword ptr [ebp-1C0]
 004CDF4F    mov         eax,dword ptr [ebp-4]
 004CDF52    mov         eax,dword ptr [eax+310];TfmProgress.edCurState:TLabeledEdit
 004CDF58    call        TPanel.SetCaption
 004CDF5D    mov         eax,[0056E270];^gvar_00571EC0
 004CDF62    cmp         byte ptr [eax+36],5
>004CDF66    je          004CDF7D
 004CDF68    mov         eax,[0056E270];^gvar_00571EC0
 004CDF6D    cmp         byte ptr [eax+36],6
>004CDF71    je          004CDF7D
 004CDF73    mov         eax,dword ptr [ebp-4]
 004CDF76    mov         byte ptr [eax+34C],0;TfmProgress.?f34C:byte
 004CDF7D    mov         eax,[0056E270];^gvar_00571EC0
 004CDF82    cmp         byte ptr [eax+36],5
>004CDF86    je          004CDFD3
 004CDF88    mov         eax,[0056E270];^gvar_00571EC0
 004CDF8D    cmp         byte ptr [eax+36],6
>004CDF91    je          004CDFD3
 004CDF93    mov         eax,[0056E284];^gvar_0056DF34
 004CDF98    mov         eax,dword ptr [eax]
 004CDF9A    mov         eax,dword ptr [eax+3F8]
 004CDFA0    cmp         byte ptr [eax+38],0
>004CDFA4    je          004CDFD3
 004CDFA6    cmp         byte ptr ds:[56CC38],0;gvar_0056CC38
>004CDFAD    je          004CDFD3
 004CDFAF    mov         eax,dword ptr [ebp-4]
 004CDFB2    mov         byte ptr [eax+34C],0;TfmProgress.?f34C:byte
 004CDFB9    mov         eax,dword ptr [ebp-4]
 004CDFBC    mov         eax,dword ptr [eax+31C];TfmProgress.tiProgress:TTimer
 004CDFC2    xor         edx,edx
 004CDFC4    call        TTimer.SetEnabled
 004CDFC9    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CDFCE    call        004A7264
 004CDFD3    xor         eax,eax
 004CDFD5    pop         edx
 004CDFD6    pop         ecx
 004CDFD7    pop         ecx
 004CDFD8    mov         dword ptr fs:[eax],edx
 004CDFDB    push        4CE093
 004CDFE0    lea         eax,[ebp-1C0]
 004CDFE6    mov         edx,0E
 004CDFEB    call        @LStrArrayClr
 004CDFF0    lea         eax,[ebp-188]
 004CDFF6    mov         edx,14
 004CDFFB    call        @LStrArrayClr
 004CE000    lea         eax,[ebp-138]
 004CE006    call        @LStrClr
 004CE00B    lea         eax,[ebp-134]
 004CE011    mov         edx,4
 004CE016    call        @LStrArrayClr
 004CE01B    lea         eax,[ebp-124]
 004CE021    mov         edx,2
 004CE026    call        @LStrArrayClr
 004CE02B    lea         eax,[ebp-11C]
 004CE031    mov         edx,4
 004CE036    call        @LStrArrayClr
 004CE03B    lea         eax,[ebp-10C]
 004CE041    mov         edx,2
 004CE046    call        @LStrArrayClr
 004CE04B    lea         eax,[ebp-104]
 004CE051    mov         edx,0C
 004CE056    call        @LStrArrayClr
 004CE05B    lea         eax,[ebp-0CC]
 004CE061    mov         edx,0B
 004CE066    call        @LStrArrayClr
 004CE06B    lea         eax,[ebp-90]
 004CE071    mov         edx,8
 004CE076    call        @LStrArrayClr
 004CE07B    lea         eax,[ebp-58]
 004CE07E    mov         edx,0F
 004CE083    call        @LStrArrayClr
 004CE088    ret
>004CE089    jmp         @HandleFinally
>004CE08E    jmp         004CDFE0
 004CE093    pop         ebx
 004CE094    mov         esp,ebp
 004CE096    pop         ebp
 004CE097    ret
end;*}

//004CE3B4
procedure TfmProgress.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 004CE3B4    push        ebp
 004CE3B5    mov         ebp,esp
 004CE3B7    add         esp,0FFFFFFF4
 004CE3BA    mov         dword ptr [ebp-8],ecx
 004CE3BD    mov         dword ptr [ebp-0C],edx
 004CE3C0    mov         dword ptr [ebp-4],eax
 004CE3C3    mov         eax,[0056E3C0];^Application:TApplication
 004CE3C8    mov         eax,dword ptr [eax]
 004CE3CA    mov         edx,dword ptr [ebp-4]
 004CE3CD    mov         edx,dword ptr [edx+348];TfmProgress.?f348:String
 004CE3D3    call        004AB12C
 004CE3D8    mov         eax,dword ptr [ebp-4]
 004CE3DB    mov         byte ptr [eax+34C],0;TfmProgress.?f34C:byte
 004CE3E2    xor         edx,edx
 004CE3E4    mov         eax,dword ptr [ebp-4]
 004CE3E7    mov         eax,dword ptr [eax+31C];TfmProgress.tiProgress:TTimer
 004CE3ED    call        TTimer.SetEnabled
 004CE3F2    xor         eax,eax
 004CE3F4    mov         [0056CC34],eax;gvar_0056CC34:TfmProgress
 004CE3F9    mov         eax,dword ptr [ebp-8]
 004CE3FC    mov         byte ptr [eax],2
 004CE3FF    mov         esp,ebp
 004CE401    pop         ebp
 004CE402    ret
*}
end;

//004CE404
procedure TfmProgress.FormShow(Sender:TObject);
begin
{*
 004CE404    push        ebp
 004CE405    mov         ebp,esp
 004CE407    add         esp,0FFFFFFF0
 004CE40A    xor         ecx,ecx
 004CE40C    mov         dword ptr [ebp-0C],ecx
 004CE40F    mov         dword ptr [ebp-10],ecx
 004CE412    mov         dword ptr [ebp-8],edx
 004CE415    mov         dword ptr [ebp-4],eax
 004CE418    xor         eax,eax
 004CE41A    push        ebp
 004CE41B    push        4CE4D6
 004CE420    push        dword ptr fs:[eax]
 004CE423    mov         dword ptr fs:[eax],esp
 004CE426    lea         edx,[ebp-10]
 004CE429    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CE42E    call        TPanel.GetCaption
 004CE433    push        dword ptr [ebp-10]
 004CE436    push        4CE4EC;' '
 004CE43B    mov         eax,[0056E284];^gvar_0056DF34
 004CE440    mov         eax,dword ptr [eax]
 004CE442    push        dword ptr [eax+420]
 004CE448    lea         eax,[ebp-0C]
 004CE44B    mov         edx,3
 004CE450    call        @LStrCatN
 004CE455    mov         edx,dword ptr [ebp-0C]
 004CE458    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CE45D    call        TPanel.SetCaption
 004CE462    call        0040E41C
 004CE467    fstp        qword ptr ds:[571EB8]
 004CE46D    wait
 004CE46E    mov         dl,1
 004CE470    mov         eax,dword ptr [ebp-4]
 004CE473    mov         eax,dword ptr [eax+31C];TfmProgress.tiProgress:TTimer
 004CE479    call        TTimer.SetEnabled
 004CE47E    mov         eax,dword ptr [ebp-4]
 004CE481    mov         byte ptr [eax+34C],1;TfmProgress.?f34C:byte
 004CE488    mov         eax,dword ptr [ebp-4]
 004CE48B    xor         edx,edx
 004CE48D    mov         dword ptr [eax+344],edx;TfmProgress.?f344:dword
 004CE493    push        0F5
 004CE498    push        0
 004CE49A    push        1
 004CE49C    mov         eax,[0056CC34];0x0 gvar_0056CC34:TfmProgress
 004CE4A1    call        004A40F4
 004CE4A6    mov         edx,eax
 004CE4A8    mov         ecx,2
 004CE4AD    mov         eax,dword ptr [ebp-4]
 004CE4B0    mov         eax,dword ptr [eax+324];TfmProgress.ilHdd:TImageList
 004CE4B6    call        00495958
 004CE4BB    xor         eax,eax
 004CE4BD    pop         edx
 004CE4BE    pop         ecx
 004CE4BF    pop         ecx
 004CE4C0    mov         dword ptr fs:[eax],edx
 004CE4C3    push        4CE4DD
 004CE4C8    lea         eax,[ebp-10]
 004CE4CB    mov         edx,2
 004CE4D0    call        @LStrArrayClr
 004CE4D5    ret
>004CE4D6    jmp         @HandleFinally
>004CE4DB    jmp         004CE4C8
 004CE4DD    mov         esp,ebp
 004CE4DF    pop         ebp
 004CE4E0    ret
*}
end;

end.