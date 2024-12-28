//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uSmart;

interface

uses
  SysUtils, Classes, ComCtrls, Menus;

type
  TfmSmart = class(TForm)
  published
    SmartList:TListView;//f2F8
    pmSmart:TPopupMenu;//f2FC
    Refresh1:TMenuItem;//f300
    miCopy:TMenuItem;//f304
    miToLog:TMenuItem;//f308
    procedure Refresh1Click(Sender:TObject);//00541450
    procedure miCopyClick(Sender:TObject);//00541468
    procedure miToLogClick(Sender:TObject);//005417A8
    //procedure SmartListCustomDrawItem(?:?; ?:?);//00541404
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//00540540
    procedure FormShow(Sender:TObject);//0054100C
    //procedure SmartListCustomDrawSubItem(?:?; ?:?; ?:?);//005410B8
  public
    f30C:dword;//f30C
  end;
    procedure sub_005404DC(?:TfmSmart; ?:TfmHDD);//005404DC
    //procedure sub_005405CC(?:?; ?:?);//005405CC
    //procedure sub_00540628(?:?; ?:?; ?:?; ?:?);//00540628
    //function sub_005406E8:?;//005406E8
    procedure sub_00540818(?:TfmSmart);//00540818

implementation

{$R *.DFM}

//005404DC
procedure sub_005404DC(?:TfmSmart; ?:TfmHDD);
begin
{*
 005404DC    push        ebp
 005404DD    mov         ebp,esp
 005404DF    add         esp,0FFFFFFF8
 005404E2    mov         dword ptr [ebp-8],edx
 005404E5    mov         dword ptr [ebp-4],eax
 005404E8    cmp         dword ptr ds:[56DE4C],0;gvar_0056DE4C:TfmSmart
>005404EF    jne         00540512
 005404F1    mov         ecx,dword ptr [ebp-8]
 005404F4    mov         dl,1
 005404F6    mov         eax,[00540278];TfmSmart
 005404FB    call        TfmProgress.Create;TfmSmart.Create
 00540500    mov         [0056DE4C],eax;gvar_0056DE4C:TfmSmart
 00540505    mov         eax,[0056DE4C];0x0 gvar_0056DE4C:TfmSmart
 0054050A    xor         edx,edx
 0054050C    mov         dword ptr [eax+30C],edx;TfmSmart.?f30C:dword
 00540512    mov         eax,[0056DE4C];0x0 gvar_0056DE4C:TfmSmart
 00540517    cmp         byte ptr [eax+1A6],0;TfmSmart.FShowing:Boolean
>0054051E    je          0054052F
 00540520    mov         eax,[0056DE4C];0x0 gvar_0056DE4C:TfmSmart
 00540525    mov         edx,dword ptr [eax]
 00540527    call        dword ptr [edx+0C4];TfmSmart.sub_004A746C
>0054052D    jmp         00540539
 0054052F    mov         eax,[0056DE4C];0x0 gvar_0056DE4C:TfmSmart
 00540534    call        004A7450
 00540539    pop         ecx
 0054053A    pop         ecx
 0054053B    pop         ebp
 0054053C    ret
*}
end;

//00540540
procedure TfmSmart.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 00540540    push        ebp
 00540541    mov         ebp,esp
 00540543    add         esp,0FFFFFFF4
 00540546    mov         dword ptr [ebp-8],ecx
 00540549    mov         dword ptr [ebp-0C],edx
 0054054C    mov         dword ptr [ebp-4],eax
 0054054F    mov         eax,[0056E5A4];^gvar_0056DF04
 00540554    mov         byte ptr [eax],1
 00540557    mov         eax,[0056DE4C];0x0 gvar_0056DE4C:TfmSmart
 0054055C    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00540562    mov         eax,dword ptr [eax+210];TListView.FCanvas:TCanvas
 00540568    mov         eax,dword ptr [eax+0C];TCanvas.Font:TFont
 0054056B    xor         edx,edx
 0054056D    call        TFont.SetColor
 00540572    xor         eax,eax
 00540574    mov         [0056DE4C],eax;gvar_0056DE4C:TfmSmart
 00540579    mov         eax,dword ptr [ebp-8]
 0054057C    mov         byte ptr [eax],2
 0054057F    mov         esp,ebp
 00540581    pop         ebp
 00540582    ret
*}
end;

//005405CC
{*procedure sub_005405CC(?:?; ?:?);
begin
 005405CC    push        ebp
 005405CD    mov         ebp,esp
 005405CF    add         esp,0FFFFFFF4
 005405D2    mov         dword ptr [ebp-8],edx
 005405D5    mov         byte ptr [ebp-1],al
 005405D8    mov         eax,dword ptr [ebp-8]
 005405DB    call        @LStrClr
 005405E0    mov         byte ptr [ebp-9],0
 005405E4    mov         cl,byte ptr [ebp-9]
 005405E7    mov         eax,1
 005405EC    shl         eax,cl
 005405EE    xor         edx,edx
 005405F0    mov         dl,byte ptr [ebp-1]
 005405F3    and         eax,edx
 005405F5    mov         cl,byte ptr [ebp-9]
 005405F8    mov         edx,1
 005405FD    shl         edx,cl
 005405FF    cmp         eax,edx
>00540601    jne         0054061A
 00540603    mov         eax,dword ptr [ebp-8]
 00540606    xor         edx,edx
 00540608    mov         dl,byte ptr [ebp-9]
 0054060B    mov         edx,dword ptr [edx*4+56DE50];^'L  '
 00540612    call        @LStrCat
 00540617    mov         eax,dword ptr [ebp-8]
 0054061A    inc         byte ptr [ebp-9]
 0054061D    cmp         byte ptr [ebp-9],6
>00540621    jne         005405E4
 00540623    mov         esp,ebp
 00540625    pop         ebp
 00540626    ret
end;*}

//00540628
{*procedure sub_00540628(?:?; ?:?; ?:?; ?:?);
begin
 00540628    push        ebp
 00540629    mov         ebp,esp
 0054062B    add         esp,0FFFFFFE4
 0054062E    mov         dword ptr [ebp-0C],ecx
 00540631    mov         dword ptr [ebp-8],edx
 00540634    mov         dword ptr [ebp-4],eax
 00540637    mov         eax,dword ptr [ebp-4]
 0054063A    xor         edx,edx
 0054063C    push        edx
 0054063D    push        eax
 0054063E    mov         eax,dword ptr [ebp-0C]
 00540641    xor         edx,edx
 00540643    push        edx
 00540644    push        eax
 00540645    call        0043749C
 0054064A    mov         dword ptr [ebp-14],eax
 0054064D    cmp         dword ptr [ebp-14],0C8
>00540654    jbe         0054065F
 00540656    mov         dword ptr [ebp-10],0EB
>0054065D    jmp         00540675
 0054065F    cmp         dword ptr [ebp-14],64
>00540663    jbe         0054066E
 00540665    mov         dword ptr [ebp-10],0C8
>0054066C    jmp         00540675
 0054066E    mov         dword ptr [ebp-10],64
 00540675    mov         eax,dword ptr [ebp-10]
 00540678    sub         eax,dword ptr [ebp-8]
 0054067B    xor         edx,edx
 0054067D    push        edx
 0054067E    push        eax
 0054067F    mov         eax,dword ptr [ebp-4]
 00540682    sub         eax,dword ptr [ebp-8]
 00540685    cdq
 00540686    xor         eax,edx
 00540688    sub         eax,edx
 0054068A    imul        eax,eax,64
 0054068D    cdq
 0054068E    call        @_lldiv
 00540693    mov         dword ptr [ebp-1C],eax
 00540696    mov         eax,dword ptr [ebp+8]
 00540699    mov         edx,5406E4;'*'
 0054069E    call        @LStrAsg
 005406A3    mov         dword ptr [ebp-18],1
 005406AA    cmp         dword ptr [ebp-18],64
>005406AE    jg          005406D5
 005406B0    mov         eax,dword ptr [ebp-18]
 005406B3    add         eax,0A
 005406B6    cmp         eax,dword ptr [ebp-1C]
>005406B9    jge         005406CB
 005406BB    mov         eax,dword ptr [ebp+8]
 005406BE    mov         edx,5406E4;'*'
 005406C3    call        @LStrCat
 005406C8    mov         eax,dword ptr [ebp+8]
 005406CB    add         dword ptr [ebp-18],0A
 005406CF    cmp         dword ptr [ebp-18],64
>005406D3    jle         005406B0
 005406D5    mov         esp,ebp
 005406D7    pop         ebp
 005406D8    ret         0C
end;*}

//005406E8
{*function sub_005406E8:?;
begin
 005406E8    push        ebp
 005406E9    mov         ebp,esp
 005406EB    push        ecx
 005406EC    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 005406F1    cmp         byte ptr [eax],0
>005406F4    je          0054075B
 005406F6    push        4F
 005406F8    push        0C2
 005406FD    push        0A0
 00540702    push        0B0
 00540707    xor         ecx,ecx
 00540709    xor         edx,edx
 0054070B    mov         al,0D8
 0054070D    call        004CC058
 00540712    push        4F
 00540714    push        0C2
 00540719    push        0A0
 0054071E    push        0B0
 00540723    xor         ecx,ecx
 00540725    xor         edx,edx
 00540727    mov         al,0DA
 00540729    call        004CC058
 0054072E    xor         al,1
 00540730    mov         edx,dword ptr ds:[56E3F8];^gvar_0059BF4C
 00540736    mov         byte ptr [edx],al
 00540738    lea         eax,[ebp-2]
 0054073B    push        eax
 0054073C    lea         eax,[ebp-3]
 0054073F    push        eax
 00540740    lea         eax,[ebp-4]
 00540743    push        eax
 00540744    lea         eax,[ebp-4]
 00540747    push        eax
 00540748    lea         ecx,[ebp-4]
 0054074B    lea         edx,[ebp-4]
 0054074E    lea         eax,[ebp-4]
 00540751    call        004CC194
>00540756    jmp         005407E7
 0054075B    push        4F
 0054075D    push        0C2
 00540762    push        0A0
 00540767    push        0B0
 0054076C    xor         ecx,ecx
 0054076E    xor         edx,edx
 00540770    mov         al,0D8
 00540772    call        0055FFC4
 00540777    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 0054077C    cmp         byte ptr [eax],0
>0054077F    je          00540788
 00540781    call        005600F0
>00540786    jmp         0054078D
 00540788    call        00560080
 0054078D    push        4F
 0054078F    push        0C2
 00540794    push        0A0
 00540799    push        0B0
 0054079E    xor         ecx,ecx
 005407A0    xor         edx,edx
 005407A2    mov         al,0DA
 005407A4    call        0055FFC4
 005407A9    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 005407AE    cmp         byte ptr [eax],0
>005407B1    je          005407BA
 005407B3    call        005600F0
>005407B8    jmp         005407BF
 005407BA    call        00560080
 005407BF    mov         eax,[0056E1D4];^gvar_0056DF14
 005407C4    mov         ax,word ptr [eax]
 005407C7    add         ax,4
 005407CB    call        0055FE3C
 005407D0    mov         byte ptr [ebp-2],al
 005407D3    mov         eax,[0056E1D4];^gvar_0056DF14
 005407D8    mov         ax,word ptr [eax]
 005407DB    add         ax,5
 005407DF    call        0055FE3C
 005407E4    mov         byte ptr [ebp-3],al
 005407E7    cmp         byte ptr [ebp-2],4F
>005407EB    jne         00540807
 005407ED    cmp         byte ptr [ebp-3],0C2
>005407F1    jne         00540807
 005407F3    mov         eax,[0056E3F8];^gvar_0059BF4C
 005407F8    cmp         byte ptr [eax],0
>005407FB    jne         00540807
 005407FD    mov         eax,[0056E5A4];^gvar_0056DF04
 00540802    cmp         byte ptr [eax],0
>00540805    je          0054080B
 00540807    xor         eax,eax
>00540809    jmp         0054080D
 0054080B    mov         al,1
 0054080D    mov         byte ptr [ebp-1],al
 00540810    mov         al,byte ptr [ebp-1]
 00540813    pop         ecx
 00540814    pop         ebp
 00540815    ret
end;*}

//00540818
procedure sub_00540818(?:TfmSmart);
begin
{*
 00540818    push        ebp
 00540819    mov         ebp,esp
 0054081B    mov         ecx,93
 00540820    push        0
 00540822    push        0
 00540824    dec         ecx
>00540825    jne         00540820
 00540827    push        ebx
 00540828    mov         dword ptr [ebp-4],eax
 0054082B    xor         eax,eax
 0054082D    push        ebp
 0054082E    push        540F62
 00540833    push        dword ptr fs:[eax]
 00540836    mov         dword ptr fs:[eax],esp
 00540839    mov         eax,[0056E5A4];^gvar_0056DF04
 0054083E    mov         byte ptr [eax],0
 00540841    lea         edx,[ebp-454]
 00540847    xor         eax,eax
 00540849    call        00403214
 0054084E    mov         eax,dword ptr [ebp-454]
 00540854    lea         edx,[ebp-450]
 0054085A    call        0040CC5C
 0054085F    lea         eax,[ebp-450]
 00540865    mov         edx,540F78;'wdm.ini'
 0054086A    call        @LStrCat
 0054086F    mov         ecx,dword ptr [ebp-450]
 00540875    mov         dl,1
 00540877    mov         eax,[004497F8];TIniFile
 0054087C    call        TIniFile.Create;TIniFile.Create
 00540881    mov         dword ptr [ebp-48],eax
 00540884    xor         eax,eax
 00540886    push        ebp
 00540887    push        540EDA
 0054088C    push        dword ptr fs:[eax]
 0054088F    mov         dword ptr fs:[eax],esp
 00540892    mov         eax,[0056E5A4];^gvar_0056DF04
 00540897    cmp         byte ptr [eax],0
>0054089A    je          005408A6
 0054089C    call        @TryFinallyExit
>005408A1    jmp         00540F44
 005408A6    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 005408AB    cmp         byte ptr [eax],0
>005408AE    je          005408CE
 005408B0    push        4F
 005408B2    push        0C2
 005408B7    push        0A0
 005408BC    push        0B0
 005408C1    xor         ecx,ecx
 005408C3    xor         edx,edx
 005408C5    mov         al,0D8
 005408C7    call        004CC058
>005408CC    jmp         00540900
 005408CE    push        4F
 005408D0    push        0C2
 005408D5    push        0A0
 005408DA    push        0B0
 005408DF    xor         ecx,ecx
 005408E1    xor         edx,edx
 005408E3    mov         al,0D8
 005408E5    call        0055FFC4
 005408EA    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 005408EF    cmp         byte ptr [eax],0
>005408F2    je          005408FB
 005408F4    call        005600F0
>005408F9    jmp         00540900
 005408FB    call        00560080
 00540900    mov         eax,[0056E3F8];^gvar_0059BF4C
 00540905    cmp         byte ptr [eax],0
>00540908    jne         00540EC4
 0054090E    mov         eax,[0056E5A4];^gvar_0056DF04
 00540913    cmp         byte ptr [eax],0
>00540916    jne         00540EC4
 0054091C    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 00540921    cmp         byte ptr [eax],0
>00540924    je          0054094A
 00540926    push        0
 00540928    push        4F
 0054092A    push        0C2
 0054092F    push        0A0
 00540934    push        0B0
 00540939    lea         eax,[ebp-24A]
 0054093F    mov         cl,1
 00540941    mov         dl,0D0
 00540943    call        004CC0B8
>00540948    jmp         005409AA
 0054094A    push        4F
 0054094C    push        0C2
 00540951    push        0A0
 00540956    push        0B0
 0054095B    xor         ecx,ecx
 0054095D    mov         dl,1
 0054095F    mov         al,0D0
 00540961    call        0055FFC4
 00540966    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 0054096B    cmp         byte ptr [eax],0
>0054096E    je          00540977
 00540970    call        005600F0
>00540975    jmp         0054097C
 00540977    call        00560080
 0054097C    mov         eax,[0056E3F8];^gvar_0059BF4C
 00540981    cmp         byte ptr [eax],0
>00540984    jne         00540995
 00540986    mov         eax,[0056E2D8];^gvar_0059BF4F
 0054098B    cmp         byte ptr [eax],0
>0054098E    je          00540995
 00540990    call        00560214
 00540995    lea         edx,[ebp-24A]
 0054099B    mov         eax,[0056E344];^gvar_0059BF5C
 005409A0    mov         ecx,200
 005409A5    call        Move
 005409AA    mov         eax,[0056E3F8];^gvar_0059BF4C
 005409AF    cmp         byte ptr [eax],0
>005409B2    jne         00540EC4
 005409B8    mov         eax,[0056E5A4];^gvar_0056DF04
 005409BD    cmp         byte ptr [eax],0
>005409C0    jne         00540EC4
 005409C6    mov         eax,[0056E280];^gvar_0056DF1C:Boolean
 005409CB    cmp         byte ptr [eax],0
>005409CE    je          005409F4
 005409D0    push        0
 005409D2    push        4F
 005409D4    push        0C2
 005409D9    push        0A0
 005409DE    push        0B0
 005409E3    lea         eax,[ebp-44C]
 005409E9    mov         cl,1
 005409EB    mov         dl,0D1
 005409ED    call        004CC0B8
>005409F2    jmp         00540A54
 005409F4    push        4F
 005409F6    push        0C2
 005409FB    push        0A0
 00540A00    push        0B0
 00540A05    xor         ecx,ecx
 00540A07    mov         dl,1
 00540A09    mov         al,0D1
 00540A0B    call        0055FFC4
 00540A10    mov         eax,[0056E038];^gvar_0059F0AC:Boolean
 00540A15    cmp         byte ptr [eax],0
>00540A18    je          00540A21
 00540A1A    call        005600F0
>00540A1F    jmp         00540A26
 00540A21    call        00560080
 00540A26    mov         eax,[0056E3F8];^gvar_0059BF4C
 00540A2B    cmp         byte ptr [eax],0
>00540A2E    jne         00540A3F
 00540A30    mov         eax,[0056E2D8];^gvar_0059BF4F
 00540A35    cmp         byte ptr [eax],0
>00540A38    je          00540A3F
 00540A3A    call        00560214
 00540A3F    lea         edx,[ebp-44C]
 00540A45    mov         eax,[0056E344];^gvar_0059BF5C
 00540A4A    mov         ecx,200
 00540A4F    call        Move
 00540A54    mov         word ptr [ebp-3A],0
 00540A5A    mov         eax,dword ptr [ebp-4]
 00540A5D    mov         eax,dword ptr [eax+2F8]
 00540A63    mov         edx,dword ptr [eax]
 00540A65    call        dword ptr [edx+0D8]
 00540A6B    mov         byte ptr [ebp-41],1
 00540A6F    mov         eax,[0056E3C0];^Application:TApplication
 00540A74    mov         eax,dword ptr [eax]
 00540A76    call        004AB51C
 00540A7B    movzx       eax,word ptr [ebp-3A]
 00540A7F    inc         eax
 00540A80    mov         ax,word ptr [ebp+eax*2-24A]
 00540A88    and         ax,0FF
 00540A8C    mov         word ptr [ebp-6],ax
 00540A90    cmp         word ptr [ebp-6],0
>00540A95    je          00540EC4
 00540A9B    mov         eax,dword ptr [ebp-4]
 00540A9E    mov         eax,dword ptr [eax+2F8]
 00540AA4    mov         eax,dword ptr [eax+22C]
 00540AAA    call        0045AE78
 00540AAF    mov         dword ptr [ebp-40],eax
 00540AB2    lea         edx,[ebp-458]
 00540AB8    movzx       eax,word ptr [ebp-6]
 00540ABC    call        IntToStr
 00540AC1    mov         edx,dword ptr [ebp-458]
 00540AC7    mov         eax,dword ptr [ebp-40]
 00540ACA    call        0045A750
 00540ACF    movzx       eax,word ptr [ebp-3A]
 00540AD3    inc         eax
 00540AD4    mov         ax,word ptr [ebp+eax*2-24A]
 00540ADC    shr         ax,8
 00540AE0    mov         byte ptr [ebp-9],al
 00540AE3    push        540F88;'Unknown Attributes'
 00540AE8    lea         eax,[ebp-45C]
 00540AEE    push        eax
 00540AEF    lea         edx,[ebp-460]
 00540AF5    movzx       eax,word ptr [ebp-6]
 00540AF9    call        IntToStr
 00540AFE    mov         ecx,dword ptr [ebp-460]
 00540B04    mov         edx,540FA4;'ATTRIBUTES'
 00540B09    mov         eax,dword ptr [ebp-48]
 00540B0C    mov         ebx,dword ptr [eax]
 00540B0E    call        dword ptr [ebx];TIniFile.sub_0044A254
 00540B10    mov         edx,dword ptr [ebp-45C]
 00540B16    mov         eax,dword ptr [ebp-40]
 00540B19    mov         eax,dword ptr [eax+8]
 00540B1C    mov         ecx,dword ptr [eax]
 00540B1E    call        dword ptr [ecx+38]
 00540B21    movzx       eax,word ptr [ebp-3A]
 00540B25    add         eax,2
 00540B28    mov         ax,word ptr [ebp+eax*2-24A]
 00540B30    shr         ax,8
 00540B34    mov         word ptr [ebp-8],ax
 00540B38    lea         edx,[ebp-464]
 00540B3E    movzx       eax,word ptr [ebp-8]
 00540B42    call        IntToStr
 00540B47    mov         edx,dword ptr [ebp-464]
 00540B4D    mov         eax,dword ptr [ebp-40]
 00540B50    mov         eax,dword ptr [eax+8]
 00540B53    mov         ecx,dword ptr [eax]
 00540B55    call        dword ptr [ecx+38]
 00540B58    movzx       eax,word ptr [ebp-3A]
 00540B5C    add         eax,3
 00540B5F    mov         ax,word ptr [ebp+eax*2-24A]
 00540B67    and         ax,0FF
 00540B6B    mov         word ptr [ebp-0C],ax
 00540B6F    lea         edx,[ebp-468]
 00540B75    movzx       eax,word ptr [ebp-0C]
 00540B79    call        IntToStr
 00540B7E    mov         edx,dword ptr [ebp-468]
 00540B84    mov         eax,dword ptr [ebp-40]
 00540B87    mov         eax,dword ptr [eax+8]
 00540B8A    mov         ecx,dword ptr [eax]
 00540B8C    call        dword ptr [ecx+38]
 00540B8F    movzx       eax,word ptr [ebp-3A]
 00540B93    inc         eax
 00540B94    mov         ax,word ptr [ebp+eax*2-44C]
 00540B9C    shr         ax,8
 00540BA0    mov         word ptr [ebp-0E],ax
 00540BA4    lea         edx,[ebp-46C]
 00540BAA    movzx       eax,word ptr [ebp-0E]
 00540BAE    call        IntToStr
 00540BB3    mov         edx,dword ptr [ebp-46C]
 00540BB9    mov         eax,dword ptr [ebp-40]
 00540BBC    mov         eax,dword ptr [eax+8]
 00540BBF    mov         ecx,dword ptr [eax]
 00540BC1    call        dword ptr [ecx+38]
 00540BC4    movzx       eax,word ptr [ebp-3A]
 00540BC8    add         eax,3
 00540BCB    mov         ax,word ptr [ebp+eax*2-24A]
 00540BD3    shr         ax,8
 00540BD7    mov         byte ptr [ebp-19],al
 00540BDA    movzx       eax,word ptr [ebp-3A]
 00540BDE    add         eax,4
 00540BE1    movzx       eax,word ptr [ebp+eax*2-24A]
 00540BE9    xor         edx,edx
 00540BEB    mov         dword ptr [ebp-28],eax
 00540BEE    mov         dword ptr [ebp-24],edx
 00540BF1    movzx       eax,word ptr [ebp-3A]
 00540BF5    add         eax,5
 00540BF8    movzx       eax,word ptr [ebp+eax*2-24A]
 00540C00    xor         edx,edx
 00540C02    mov         dword ptr [ebp-30],eax
 00540C05    mov         dword ptr [ebp-2C],edx
 00540C08    movzx       eax,word ptr [ebp-3A]
 00540C0C    add         eax,6
 00540C0F    movzx       eax,word ptr [ebp+eax*2-24A]
 00540C17    xor         edx,edx
 00540C19    mov         dword ptr [ebp-38],eax
 00540C1C    mov         dword ptr [ebp-34],edx
 00540C1F    xor         eax,eax
 00540C21    mov         al,byte ptr [ebp-19]
 00540C24    xor         edx,edx
 00540C26    push        edx
 00540C27    push        eax
 00540C28    mov         eax,dword ptr [ebp-28]
 00540C2B    mov         edx,dword ptr [ebp-24]
 00540C2E    shld        edx,eax,8
 00540C32    shl         eax,8
 00540C35    or          eax,dword ptr [esp]
 00540C38    or          edx,dword ptr [esp+4]
 00540C3C    add         esp,8
 00540C3F    push        edx
 00540C40    push        eax
 00540C41    mov         eax,dword ptr [ebp-30]
 00540C44    mov         edx,dword ptr [ebp-2C]
 00540C47    shld        edx,eax,18
 00540C4B    shl         eax,18
 00540C4E    or          eax,dword ptr [esp]
 00540C51    or          edx,dword ptr [esp+4]
 00540C55    add         esp,8
 00540C58    push        edx
 00540C59    push        eax
 00540C5A    mov         edx,dword ptr [ebp-38]
 00540C5D    shl         edx,8
 00540C60    xor         eax,eax
 00540C62    or          eax,dword ptr [esp]
 00540C65    or          edx,dword ptr [esp+4]
 00540C69    add         esp,8
 00540C6C    mov         dword ptr [ebp-18],eax
 00540C6F    mov         dword ptr [ebp-14],edx
 00540C72    movzx       eax,word ptr [ebp-6]
 00540C76    cmp         eax,0D3
>00540C7B    jg          00540CC5
>00540C7D    je          00540D03
 00540C83    cmp         eax,0BF
>00540C88    jg          00540CAB
>00540C8A    je          00540D03
 00540C8C    sub         eax,3
>00540C8F    je          00540D03
 00540C91    sub         eax,2
>00540C94    je          00540D03
 00540C96    sub         eax,0B7
>00540C9B    je          00540D03
 00540C9D    sub         eax,2
>00540CA0    je          00540D9C
>00540CA6    jmp         00540E3F
 00540CAB    sub         eax,0C2
>00540CB0    je          00540D9C
 00540CB6    sub         eax,2
>00540CB9    je          00540D03
 00540CBB    sub         eax,0C
>00540CBE    je          00540D03
>00540CC0    jmp         00540E3F
 00540CC5    cmp         eax,0DF
>00540CCA    jg          00540CE7
>00540CCC    je          00540D03
 00540CCE    sub         eax,0D5
>00540CD3    je          00540D03
 00540CD5    add         eax,0FFFFFFFD
 00540CD8    sub         eax,2
>00540CDB    jb          00540D03
 00540CDD    sub         eax,3
>00540CE0    je          00540D03
>00540CE2    jmp         00540E3F
 00540CE7    add         eax,0FFFFFF1F
 00540CEC    sub         eax,4
>00540CEF    jb          00540D03
 00540CF1    sub         eax,2
>00540CF4    je          00540D9C
 00540CFA    sub         eax,15
>00540CFD    jne         00540E3F
 00540D03    mov         eax,dword ptr [ebp-18]
 00540D06    mov         edx,dword ptr [ebp-14]
 00540D09    shrd        eax,edx,10
 00540D0D    shr         edx,10
 00540D10    and         eax,0FFFF
 00540D16    xor         edx,edx
 00540D18    push        edx
 00540D19    push        eax
 00540D1A    lea         eax,[ebp-474]
 00540D20    call        IntToStr
 00540D25    push        dword ptr [ebp-474]
 00540D2B    push        540FB8;'/'
 00540D30    mov         eax,dword ptr [ebp-14]
 00540D33    xor         edx,edx
 00540D35    and         eax,0FFFF
 00540D3B    xor         edx,edx
 00540D3D    push        edx
 00540D3E    push        eax
 00540D3F    lea         eax,[ebp-478]
 00540D45    call        IntToStr
 00540D4A    push        dword ptr [ebp-478]
 00540D50    push        540FB8;'/'
 00540D55    mov         eax,dword ptr [ebp-18]
 00540D58    mov         edx,dword ptr [ebp-14]
 00540D5B    and         eax,0FFFF
 00540D61    xor         edx,edx
 00540D63    push        edx
 00540D64    push        eax
 00540D65    lea         eax,[ebp-47C]
 00540D6B    call        IntToStr
 00540D70    push        dword ptr [ebp-47C]
 00540D76    lea         eax,[ebp-470]
 00540D7C    mov         edx,5
 00540D81    call        @LStrCatN
 00540D86    mov         edx,dword ptr [ebp-470]
 00540D8C    mov         eax,dword ptr [ebp-40]
 00540D8F    mov         eax,dword ptr [eax+8]
 00540D92    mov         ecx,dword ptr [eax]
 00540D94    call        dword ptr [ecx+38]
>00540D97    jmp         00540E61
 00540D9C    mov         eax,dword ptr [ebp-18]
 00540D9F    mov         edx,dword ptr [ebp-14]
 00540DA2    shrd        eax,edx,18
 00540DA6    shr         edx,18
 00540DA9    and         eax,0FF
 00540DAF    xor         edx,edx
 00540DB1    push        edx
 00540DB2    push        eax
 00540DB3    lea         eax,[ebp-484]
 00540DB9    call        IntToStr
 00540DBE    push        dword ptr [ebp-484]
 00540DC4    push        540FB8;'/'
 00540DC9    mov         eax,dword ptr [ebp-18]
 00540DCC    mov         edx,dword ptr [ebp-14]
 00540DCF    shrd        eax,edx,10
 00540DD3    shr         edx,10
 00540DD6    and         eax,0FF
 00540DDC    xor         edx,edx
 00540DDE    push        edx
 00540DDF    push        eax
 00540DE0    lea         eax,[ebp-488]
 00540DE6    call        IntToStr
 00540DEB    push        dword ptr [ebp-488]
 00540DF1    push        540FB8;'/'
 00540DF6    mov         eax,dword ptr [ebp-18]
 00540DF9    mov         edx,dword ptr [ebp-14]
 00540DFC    and         eax,0FF
 00540E02    xor         edx,edx
 00540E04    push        edx
 00540E05    push        eax
 00540E06    lea         eax,[ebp-48C]
 00540E0C    call        IntToStr
 00540E11    push        dword ptr [ebp-48C]
 00540E17    push        540FC4;'°C'
 00540E1C    lea         eax,[ebp-480]
 00540E22    mov         edx,6
 00540E27    call        @LStrCatN
 00540E2C    mov         edx,dword ptr [ebp-480]
 00540E32    mov         eax,dword ptr [ebp-40]
 00540E35    mov         eax,dword ptr [eax+8]
 00540E38    mov         ecx,dword ptr [eax]
 00540E3A    call        dword ptr [ecx+38]
>00540E3D    jmp         00540E61
 00540E3F    push        dword ptr [ebp-14]
 00540E42    push        dword ptr [ebp-18]
 00540E45    lea         eax,[ebp-490]
 00540E4B    call        IntToStr
 00540E50    mov         edx,dword ptr [ebp-490]
 00540E56    mov         eax,dword ptr [ebp-40]
 00540E59    mov         eax,dword ptr [eax+8]
 00540E5C    mov         ecx,dword ptr [eax]
 00540E5E    call        dword ptr [ecx+38]
 00540E61    mov         eax,dword ptr [ebp-18]
 00540E64    push        eax
 00540E65    movzx       eax,word ptr [ebp-6]
 00540E69    push        eax
 00540E6A    lea         eax,[ebp-494]
 00540E70    push        eax
 00540E71    movzx       ecx,word ptr [ebp-0C]
 00540E75    movzx       edx,word ptr [ebp-0E]
 00540E79    movzx       eax,word ptr [ebp-8]
 00540E7D    call        00540628
 00540E82    mov         edx,dword ptr [ebp-494]
 00540E88    mov         eax,dword ptr [ebp-40]
 00540E8B    mov         eax,dword ptr [eax+8]
 00540E8E    mov         ecx,dword ptr [eax]
 00540E90    call        dword ptr [ecx+38]
 00540E93    lea         edx,[ebp-498]
 00540E99    mov         al,byte ptr [ebp-9]
 00540E9C    call        005405CC
 00540EA1    mov         edx,dword ptr [ebp-498]
 00540EA7    mov         eax,dword ptr [ebp-40]
 00540EAA    mov         eax,dword ptr [eax+8]
 00540EAD    mov         ecx,dword ptr [eax]
 00540EAF    call        dword ptr [ecx+38]
 00540EB2    add         word ptr [ebp-3A],6
 00540EB7    inc         byte ptr [ebp-41]
 00540EBA    cmp         byte ptr [ebp-41],1F
>00540EBE    jne         00540A6F
 00540EC4    xor         eax,eax
 00540EC6    pop         edx
 00540EC7    pop         ecx
 00540EC8    pop         ecx
 00540EC9    mov         dword ptr fs:[eax],edx
 00540ECC    push        540EE1
 00540ED1    mov         eax,dword ptr [ebp-48]
 00540ED4    call        TObject.Free
 00540ED9    ret
>00540EDA    jmp         @HandleFinally
>00540EDF    jmp         00540ED1
 00540EE1    call        005406E8
 00540EE6    test        al,al
>00540EE8    je          00540F18
 00540EEA    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00540EEF    mov         eax,dword ptr [eax]
 00540EF1    mov         eax,dword ptr [eax+2F8]
 00540EF7    mov         eax,dword ptr [eax+248]
 00540EFD    mov         edx,540FD0;'S.M.A.R.T. status - GOOD'
 00540F02    mov         ecx,dword ptr [eax]
 00540F04    call        dword ptr [ecx+38]
 00540F07    mov         edx,540FD0;'S.M.A.R.T. status - GOOD'
 00540F0C    mov         eax,[0056DE4C];0x0 gvar_0056DE4C:TfmSmart
 00540F11    call        TPanel.SetCaption
>00540F16    jmp         00540F44
 00540F18    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00540F1D    mov         eax,dword ptr [eax]
 00540F1F    mov         eax,dword ptr [eax+2F8]
 00540F25    mov         eax,dword ptr [eax+248]
 00540F2B    mov         edx,540FF4;'S.M.A.R.T. status - BAD'
 00540F30    mov         ecx,dword ptr [eax]
 00540F32    call        dword ptr [ecx+38]
 00540F35    mov         edx,540FF4;'S.M.A.R.T. status - BAD'
 00540F3A    mov         eax,[0056DE4C];0x0 gvar_0056DE4C:TfmSmart
 00540F3F    call        TPanel.SetCaption
 00540F44    xor         eax,eax
 00540F46    pop         edx
 00540F47    pop         ecx
 00540F48    pop         ecx
 00540F49    mov         dword ptr fs:[eax],edx
 00540F4C    push        540F69
 00540F51    lea         eax,[ebp-498]
 00540F57    mov         edx,13
 00540F5C    call        @LStrArrayClr
 00540F61    ret
>00540F62    jmp         @HandleFinally
>00540F67    jmp         00540F51
 00540F69    pop         ebx
 00540F6A    mov         esp,ebp
 00540F6C    pop         ebp
 00540F6D    ret
*}
end;

//0054100C
procedure TfmSmart.FormShow(Sender:TObject);
begin
{*
 0054100C    push        ebp
 0054100D    mov         ebp,esp
 0054100F    add         esp,0FFFFFFF0
 00541012    xor         ecx,ecx
 00541014    mov         dword ptr [ebp-0C],ecx
 00541017    mov         dword ptr [ebp-10],ecx
 0054101A    mov         dword ptr [ebp-8],edx
 0054101D    mov         dword ptr [ebp-4],eax
 00541020    xor         eax,eax
 00541022    push        ebp
 00541023    push        5410A0
 00541028    push        dword ptr fs:[eax]
 0054102B    mov         dword ptr fs:[eax],esp
 0054102E    mov         eax,[0056E284];^gvar_0056DF34
 00541033    mov         eax,dword ptr [eax]
 00541035    mov         eax,dword ptr [eax+408]
 0054103B    cmp         byte ptr [eax+38],0
>0054103F    je          00541049
 00541041    mov         eax,dword ptr [ebp-4]
 00541044    call        00540818
 00541049    lea         edx,[ebp-10]
 0054104C    mov         eax,[0056DE4C];0x0 gvar_0056DE4C:TfmSmart
 00541051    call        TPanel.GetCaption
 00541056    push        dword ptr [ebp-10]
 00541059    push        5410B4;' '
 0054105E    mov         eax,[0056E284];^gvar_0056DF34
 00541063    mov         eax,dword ptr [eax]
 00541065    push        dword ptr [eax+420]
 0054106B    lea         eax,[ebp-0C]
 0054106E    mov         edx,3
 00541073    call        @LStrCatN
 00541078    mov         edx,dword ptr [ebp-0C]
 0054107B    mov         eax,[0056DE4C];0x0 gvar_0056DE4C:TfmSmart
 00541080    call        TPanel.SetCaption
 00541085    xor         eax,eax
 00541087    pop         edx
 00541088    pop         ecx
 00541089    pop         ecx
 0054108A    mov         dword ptr fs:[eax],edx
 0054108D    push        5410A7
 00541092    lea         eax,[ebp-10]
 00541095    mov         edx,2
 0054109A    call        @LStrArrayClr
 0054109F    ret
>005410A0    jmp         @HandleFinally
>005410A5    jmp         00541092
 005410A7    mov         esp,ebp
 005410A9    pop         ebp
 005410AA    ret
*}
end;

//005410B8
{*procedure TfmSmart.SmartListCustomDrawSubItem(?:?; ?:?; ?:?);
begin
 005410B8    push        ebp
 005410B9    mov         ebp,esp
 005410BB    push        0
 005410BD    push        0
 005410BF    push        0
 005410C1    push        0
 005410C3    push        0
 005410C5    push        0
 005410C7    push        0
 005410C9    push        ebx
 005410CA    mov         dword ptr [ebp-0C],ecx
 005410CD    mov         dword ptr [ebp-8],edx
 005410D0    mov         dword ptr [ebp-4],eax
 005410D3    xor         eax,eax
 005410D5    push        ebp
 005410D6    push        5413C6
 005410DB    push        dword ptr fs:[eax]
 005410DE    mov         dword ptr fs:[eax],esp
 005410E1    mov         eax,dword ptr [ebp+10]
 005410E4    cmp         eax,6
>005410E7    ja          00541352
 005410ED    jmp         dword ptr [eax*4+5410F4]
 005410ED    dd          00541352
 005410ED    dd          00541110
 005410ED    dd          00541295
 005410ED    dd          00541352
 005410ED    dd          005412B0
 005410ED    dd          00541110
 005410ED    dd          005412CB
 00541110    mov         eax,dword ptr [ebp-0C]
 00541113    mov         eax,dword ptr [eax+24]
 00541116    xor         edx,edx
 00541118    call        0040C4A8
 0054111D    cmp         eax,0C
>00541120    jg          0054113B
>00541122    je          00541159
 00541124    dec         eax
>00541125    je          00541159
 00541127    sub         eax,2
>0054112A    je          00541159
 0054112C    sub         eax,2
>0054112F    je          0054118F
 00541131    sub         eax,5
>00541134    je          00541159
>00541136    jmp         00541220
 0054113B    sub         eax,0BE
>00541140    je          00541174
 00541142    sub         eax,4
>00541145    je          00541174
 00541147    add         eax,0FFFFFFFE
 0054114A    sub         eax,3
>0054114D    jb          0054118F
 0054114F    sub         eax,20
>00541152    je          00541174
>00541154    jmp         00541220
 00541159    mov         eax,dword ptr [ebp-8]
 0054115C    mov         eax,dword ptr [eax+210]
 00541162    mov         eax,dword ptr [eax+0C]
 00541165    mov         edx,8000
 0054116A    call        TFont.SetColor
>0054116F    jmp         00541383
 00541174    mov         eax,dword ptr [ebp-8]
 00541177    mov         eax,dword ptr [eax+210]
 0054117D    mov         eax,dword ptr [eax+0C]
 00541180    mov         edx,0FF0000
 00541185    call        TFont.SetColor
>0054118A    jmp         00541383
 0054118F    lea         ecx,[ebp-10]
 00541192    mov         eax,dword ptr [ebp-0C]
 00541195    mov         eax,dword ptr [eax+8]
 00541198    mov         edx,4
 0054119D    mov         ebx,dword ptr [eax]
 0054119F    call        dword ptr [ebx+0C]
 005411A2    mov         eax,dword ptr [ebp-10]
 005411A5    mov         edx,5413DC;'0/0/0'
 005411AA    call        @LStrCmp
>005411AF    je          00541205
 005411B1    lea         ecx,[ebp-14]
 005411B4    mov         eax,dword ptr [ebp-0C]
 005411B7    mov         eax,dword ptr [eax+8]
 005411BA    mov         edx,4
 005411BF    mov         ebx,dword ptr [eax]
 005411C1    call        dword ptr [ebx+0C]
 005411C4    mov         eax,dword ptr [ebp-14]
 005411C7    mov         edx,5413EC;'0'
 005411CC    call        @LStrCmp
>005411D1    je          00541205
 005411D3    mov         eax,dword ptr [ebp-8]
 005411D6    mov         eax,dword ptr [eax+210]
 005411DC    mov         eax,dword ptr [eax+0C]
 005411DF    mov         edx,0FF
 005411E4    call        TFont.SetColor
 005411E9    mov         eax,dword ptr [ebp-8]
 005411EC    mov         eax,dword ptr [eax+210]
 005411F2    mov         eax,dword ptr [eax+0C]
 005411F5    mov         dl,byte ptr ds:[5413F0];0x1 gvar_005413F0
 005411FB    call        TFont.SetStyle
>00541200    jmp         00541383
 00541205    mov         eax,dword ptr [ebp-8]
 00541208    mov         eax,dword ptr [eax+210]
 0054120E    mov         eax,dword ptr [eax+0C]
 00541211    mov         edx,800080
 00541216    call        TFont.SetColor
>0054121B    jmp         00541383
 00541220    lea         ecx,[ebp-18]
 00541223    mov         eax,dword ptr [ebp-0C]
 00541226    mov         eax,dword ptr [eax+8]
 00541229    mov         edx,6
 0054122E    mov         ebx,dword ptr [eax]
 00541230    call        dword ptr [ebx+0C]
 00541233    mov         edx,dword ptr [ebp-18]
 00541236    mov         eax,5413FC;'L'
 0054123B    call        @LStrPos
 00541240    test        eax,eax
>00541242    jle         0054125F
 00541244    mov         eax,dword ptr [ebp-8]
 00541247    mov         eax,dword ptr [eax+210]
 0054124D    mov         eax,dword ptr [eax+0C]
 00541250    mov         edx,800080
 00541255    call        TFont.SetColor
>0054125A    jmp         00541383
 0054125F    mov         eax,dword ptr [ebp-8]
 00541262    mov         eax,dword ptr [eax+210]
 00541268    mov         eax,dword ptr [eax+0C]
 0054126B    mov         edx,dword ptr [ebp-4]
 0054126E    mov         edx,dword ptr [edx+30C];TfmSmart.?f30C:dword
 00541274    call        TFont.SetColor
 00541279    mov         eax,dword ptr [ebp-8]
 0054127C    mov         eax,dword ptr [eax+210]
 00541282    mov         eax,dword ptr [eax+0C]
 00541285    mov         dl,byte ptr ds:[541400];0x0 gvar_00541400
 0054128B    call        TFont.SetStyle
>00541290    jmp         00541383
 00541295    mov         eax,dword ptr [ebp-8]
 00541298    mov         eax,dword ptr [eax+210]
 0054129E    mov         eax,dword ptr [eax+0C]
 005412A1    mov         edx,808000
 005412A6    call        TFont.SetColor
>005412AB    jmp         00541383
 005412B0    mov         eax,dword ptr [ebp-8]
 005412B3    mov         eax,dword ptr [eax+210]
 005412B9    mov         eax,dword ptr [eax+0C]
 005412BC    mov         edx,8080
 005412C1    call        TFont.SetColor
>005412C6    jmp         00541383
 005412CB    lea         ecx,[ebp-1C]
 005412CE    mov         eax,dword ptr [ebp-0C]
 005412D1    mov         eax,dword ptr [eax+8]
 005412D4    mov         edx,5
 005412D9    mov         ebx,dword ptr [eax]
 005412DB    call        dword ptr [ebx+0C]
 005412DE    mov         eax,dword ptr [ebp-1C]
 005412E1    call        @LStrLen
 005412E6    dec         eax
 005412E7    sub         eax,3
>005412EA    jb          005412F3
 005412EC    sub         eax,3
>005412EF    jb          00541322
>005412F1    jmp         0054133A
 005412F3    mov         eax,dword ptr [ebp-8]
 005412F6    mov         eax,dword ptr [eax+210]
 005412FC    mov         eax,dword ptr [eax+0C]
 005412FF    mov         edx,0FF
 00541304    call        TFont.SetColor
 00541309    mov         eax,dword ptr [ebp-8]
 0054130C    mov         eax,dword ptr [eax+210]
 00541312    mov         eax,dword ptr [eax+0C]
 00541315    mov         dl,byte ptr ds:[5413F0];0x1 gvar_005413F0
 0054131B    call        TFont.SetStyle
>00541320    jmp         00541383
 00541322    mov         eax,dword ptr [ebp-8]
 00541325    mov         eax,dword ptr [eax+210]
 0054132B    mov         eax,dword ptr [eax+0C]
 0054132E    mov         edx,8080
 00541333    call        TFont.SetColor
>00541338    jmp         00541383
 0054133A    mov         eax,dword ptr [ebp-8]
 0054133D    mov         eax,dword ptr [eax+210]
 00541343    mov         eax,dword ptr [eax+0C]
 00541346    mov         edx,8000
 0054134B    call        TFont.SetColor
>00541350    jmp         00541383
 00541352    mov         eax,dword ptr [ebp-8]
 00541355    mov         eax,dword ptr [eax+210]
 0054135B    mov         eax,dword ptr [eax+0C]
 0054135E    mov         edx,dword ptr [ebp-4]
 00541361    mov         edx,dword ptr [edx+30C];TfmSmart.?f30C:dword
 00541367    call        TFont.SetColor
 0054136C    mov         eax,dword ptr [ebp-8]
 0054136F    mov         eax,dword ptr [eax+210]
 00541375    mov         eax,dword ptr [eax+0C]
 00541378    mov         dl,byte ptr ds:[541400];0x0 gvar_00541400
 0054137E    call        TFont.SetStyle
 00541383    mov         eax,dword ptr [ebp-4]
 00541386    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 0054138C    mov         edx,dword ptr [eax]
 0054138E    call        dword ptr [edx+50];TImage.GetEnabled
 00541391    test        al,al
>00541393    jne         005413AB
 00541395    mov         eax,dword ptr [ebp-8]
 00541398    mov         eax,dword ptr [eax+210]
 0054139E    mov         eax,dword ptr [eax+14]
 005413A1    mov         edx,0FF00000F
 005413A6    call        TBrush.SetColor
 005413AB    xor         eax,eax
 005413AD    pop         edx
 005413AE    pop         ecx
 005413AF    pop         ecx
 005413B0    mov         dword ptr fs:[eax],edx
 005413B3    push        5413CD
 005413B8    lea         eax,[ebp-1C]
 005413BB    mov         edx,4
 005413C0    call        @LStrArrayClr
 005413C5    ret
>005413C6    jmp         @HandleFinally
>005413CB    jmp         005413B8
 005413CD    pop         ebx
 005413CE    mov         esp,ebp
 005413D0    pop         ebp
 005413D1    ret         0C
end;*}

//00541404
{*procedure TfmSmart.SmartListCustomDrawItem(?:?; ?:?);
begin
 00541404    push        ebp
 00541405    mov         ebp,esp
 00541407    add         esp,0FFFFFFF4
 0054140A    mov         dword ptr [ebp-0C],ecx
 0054140D    mov         dword ptr [ebp-8],edx
 00541410    mov         dword ptr [ebp-4],eax
 00541413    mov         eax,dword ptr [ebp-8]
 00541416    mov         eax,dword ptr [eax+210]
 0054141C    mov         eax,dword ptr [eax+0C]
 0054141F    mov         edx,dword ptr [ebp-4]
 00541422    mov         edx,dword ptr [edx+30C];TfmSmart.?f30C:dword
 00541428    call        TFont.SetColor
 0054142D    mov         eax,dword ptr [ebp-8]
 00541430    mov         eax,dword ptr [eax+210]
 00541436    mov         eax,dword ptr [eax+0C]
 00541439    mov         dl,byte ptr ds:[54144C];0x0 gvar_0054144C
 0054143F    call        TFont.SetStyle
 00541444    mov         esp,ebp
 00541446    pop         ebp
 00541447    ret         8
end;*}

//00541450
procedure TfmSmart.Refresh1Click(Sender:TObject);
begin
{*
 00541450    push        ebp
 00541451    mov         ebp,esp
 00541453    add         esp,0FFFFFFF8
 00541456    mov         dword ptr [ebp-8],edx
 00541459    mov         dword ptr [ebp-4],eax
 0054145C    mov         eax,dword ptr [ebp-4]
 0054145F    call        00540818
 00541464    pop         ecx
 00541465    pop         ecx
 00541466    pop         ebp
 00541467    ret
*}
end;

//00541468
procedure TfmSmart.miCopyClick(Sender:TObject);
begin
{*
 00541468    push        ebp
 00541469    mov         ebp,esp
 0054146B    add         esp,0FFFFFE64
 00541471    push        ebx
 00541472    xor         ecx,ecx
 00541474    mov         dword ptr [ebp-144],ecx
 0054147A    mov         dword ptr [ebp-188],ecx
 00541480    mov         dword ptr [ebp-18C],ecx
 00541486    mov         dword ptr [ebp-190],ecx
 0054148C    mov         dword ptr [ebp-194],ecx
 00541492    mov         dword ptr [ebp-198],ecx
 00541498    mov         dword ptr [ebp-19C],ecx
 0054149E    mov         dword ptr [ebp-140],ecx
 005414A4    mov         dword ptr [ebp-8],ecx
 005414A7    mov         dword ptr [ebp-10],edx
 005414AA    mov         dword ptr [ebp-4],eax
 005414AD    xor         eax,eax
 005414AF    push        ebp
 005414B0    push        54176A
 005414B5    push        dword ptr fs:[eax]
 005414B8    mov         dword ptr fs:[eax],esp
 005414BB    mov         eax,[0056E5A4];^gvar_0056DF04
 005414C0    mov         byte ptr [eax],0
 005414C3    lea         eax,[ebp-8]
 005414C6    call        @LStrClr
 005414CB    xor         eax,eax
 005414CD    mov         dword ptr [ebp-0C],eax
>005414D0    jmp         00541700
 005414D5    mov         eax,dword ptr [ebp-4]
 005414D8    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 005414DE    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005414E4    mov         edx,dword ptr [ebp-0C]
 005414E7    call        0045AF80
 005414EC    mov         eax,dword ptr [eax+8]
 005414EF    lea         ecx,[ebp-140]
 005414F5    xor         edx,edx
 005414F7    mov         ebx,dword ptr [eax]
 005414F9    call        dword ptr [ebx+0C]
 005414FC    mov         edx,dword ptr [ebp-140]
 00541502    lea         eax,[ebp-13C]
 00541508    mov         ecx,0FF
 0054150D    call        @LStrToString
 00541512    lea         edx,[ebp-13C]
 00541518    lea         eax,[ebp-39]
 0054151B    mov         cl,28
 0054151D    call        @PStrNCpy
 00541522    lea         eax,[ebp-144]
 00541528    push        eax
 00541529    mov         eax,dword ptr [ebp-4]
 0054152C    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00541532    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00541538    mov         edx,dword ptr [ebp-0C]
 0054153B    call        0045AF80
 00541540    mov         eax,dword ptr [eax+24]
 00541543    mov         dword ptr [ebp-184],eax
 00541549    mov         byte ptr [ebp-180],0B
 00541550    lea         eax,[ebp-39]
 00541553    mov         dword ptr [ebp-17C],eax
 00541559    mov         byte ptr [ebp-178],4
 00541560    mov         eax,dword ptr [ebp-4]
 00541563    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00541569    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0054156F    mov         edx,dword ptr [ebp-0C]
 00541572    call        0045AF80
 00541577    mov         eax,dword ptr [eax+8]
 0054157A    lea         ecx,[ebp-188]
 00541580    mov         edx,1
 00541585    mov         ebx,dword ptr [eax]
 00541587    call        dword ptr [ebx+0C]
 0054158A    mov         eax,dword ptr [ebp-188]
 00541590    mov         dword ptr [ebp-174],eax
 00541596    mov         byte ptr [ebp-170],0B
 0054159D    mov         eax,dword ptr [ebp-4]
 005415A0    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 005415A6    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005415AC    mov         edx,dword ptr [ebp-0C]
 005415AF    call        0045AF80
 005415B4    mov         eax,dword ptr [eax+8]
 005415B7    lea         ecx,[ebp-18C]
 005415BD    mov         edx,2
 005415C2    mov         ebx,dword ptr [eax]
 005415C4    call        dword ptr [ebx+0C]
 005415C7    mov         eax,dword ptr [ebp-18C]
 005415CD    mov         dword ptr [ebp-16C],eax
 005415D3    mov         byte ptr [ebp-168],0B
 005415DA    mov         eax,dword ptr [ebp-4]
 005415DD    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 005415E3    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005415E9    mov         edx,dword ptr [ebp-0C]
 005415EC    call        0045AF80
 005415F1    mov         eax,dword ptr [eax+8]
 005415F4    lea         ecx,[ebp-190]
 005415FA    mov         edx,3
 005415FF    mov         ebx,dword ptr [eax]
 00541601    call        dword ptr [ebx+0C]
 00541604    mov         eax,dword ptr [ebp-190]
 0054160A    mov         dword ptr [ebp-164],eax
 00541610    mov         byte ptr [ebp-160],0B
 00541617    mov         eax,dword ptr [ebp-4]
 0054161A    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00541620    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00541626    mov         edx,dword ptr [ebp-0C]
 00541629    call        0045AF80
 0054162E    mov         eax,dword ptr [eax+8]
 00541631    lea         ecx,[ebp-194]
 00541637    mov         edx,4
 0054163C    mov         ebx,dword ptr [eax]
 0054163E    call        dword ptr [ebx+0C]
 00541641    mov         eax,dword ptr [ebp-194]
 00541647    mov         dword ptr [ebp-15C],eax
 0054164D    mov         byte ptr [ebp-158],0B
 00541654    mov         eax,dword ptr [ebp-4]
 00541657    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 0054165D    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00541663    mov         edx,dword ptr [ebp-0C]
 00541666    call        0045AF80
 0054166B    mov         eax,dword ptr [eax+8]
 0054166E    lea         ecx,[ebp-198]
 00541674    mov         edx,5
 00541679    mov         ebx,dword ptr [eax]
 0054167B    call        dword ptr [ebx+0C]
 0054167E    mov         eax,dword ptr [ebp-198]
 00541684    mov         dword ptr [ebp-154],eax
 0054168A    mov         byte ptr [ebp-150],0B
 00541691    mov         eax,dword ptr [ebp-4]
 00541694    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 0054169A    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005416A0    mov         edx,dword ptr [ebp-0C]
 005416A3    call        0045AF80
 005416A8    mov         eax,dword ptr [eax+8]
 005416AB    lea         ecx,[ebp-19C]
 005416B1    mov         edx,6
 005416B6    mov         ebx,dword ptr [eax]
 005416B8    call        dword ptr [ebx+0C]
 005416BB    mov         eax,dword ptr [ebp-19C]
 005416C1    mov         dword ptr [ebp-14C],eax
 005416C7    mov         byte ptr [ebp-148],0B
 005416CE    lea         edx,[ebp-184]
 005416D4    mov         ecx,7
 005416D9    mov         eax,541780;'%4s %-40s %4s %4s %4s %10s %-10s %s'+#10
 005416DE    call        0040D630
 005416E3    mov         edx,dword ptr [ebp-144]
 005416E9    lea         eax,[ebp-8]
 005416EC    call        @LStrCat
 005416F1    inc         dword ptr [ebp-0C]
 005416F4    mov         eax,[0056E3C0];^Application:TApplication
 005416F9    mov         eax,dword ptr [eax]
 005416FB    call        004AB51C
 00541700    mov         eax,dword ptr [ebp-4]
 00541703    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00541709    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0054170F    call        0045AF28
 00541714    cmp         eax,dword ptr [ebp-0C]
>00541717    jle         00541727
 00541719    mov         eax,[0056E5A4];^gvar_0056DF04
 0054171E    cmp         byte ptr [eax],0
>00541721    je          005414D5
 00541727    call        004466B8
 0054172C    mov         edx,dword ptr [ebp-8]
 0054172F    call        00446310
 00541734    xor         eax,eax
 00541736    pop         edx
 00541737    pop         ecx
 00541738    pop         ecx
 00541739    mov         dword ptr fs:[eax],edx
 0054173C    push        541771
 00541741    lea         eax,[ebp-19C]
 00541747    mov         edx,6
 0054174C    call        @LStrArrayClr
 00541751    lea         eax,[ebp-144]
 00541757    mov         edx,2
 0054175C    call        @LStrArrayClr
 00541761    lea         eax,[ebp-8]
 00541764    call        @LStrClr
 00541769    ret
>0054176A    jmp         @HandleFinally
>0054176F    jmp         00541741
 00541771    pop         ebx
 00541772    mov         esp,ebp
 00541774    pop         ebp
 00541775    ret
*}
end;

//005417A8
procedure TfmSmart.miToLogClick(Sender:TObject);
begin
{*
 005417A8    push        ebp
 005417A9    mov         ebp,esp
 005417AB    add         esp,0FFFFFE5C
 005417B1    push        ebx
 005417B2    xor         ecx,ecx
 005417B4    mov         dword ptr [ebp-1A4],ecx
 005417BA    mov         dword ptr [ebp-148],ecx
 005417C0    mov         dword ptr [ebp-18C],ecx
 005417C6    mov         dword ptr [ebp-190],ecx
 005417CC    mov         dword ptr [ebp-194],ecx
 005417D2    mov         dword ptr [ebp-198],ecx
 005417D8    mov         dword ptr [ebp-19C],ecx
 005417DE    mov         dword ptr [ebp-1A0],ecx
 005417E4    mov         dword ptr [ebp-144],ecx
 005417EA    mov         dword ptr [ebp-8],ecx
 005417ED    mov         dword ptr [ebp-14],edx
 005417F0    mov         dword ptr [ebp-4],eax
 005417F3    xor         eax,eax
 005417F5    push        ebp
 005417F6    push        541B0F
 005417FB    push        dword ptr fs:[eax]
 005417FE    mov         dword ptr fs:[eax],esp
 00541801    mov         eax,[0056E5A4];^gvar_0056DF04
 00541806    mov         byte ptr [eax],0
 00541809    lea         eax,[ebp-8]
 0054180C    call        @LStrClr
 00541811    xor         eax,eax
 00541813    mov         dword ptr [ebp-0C],eax
>00541816    jmp         00541A46
 0054181B    mov         eax,dword ptr [ebp-4]
 0054181E    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00541824    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0054182A    mov         edx,dword ptr [ebp-0C]
 0054182D    call        0045AF80
 00541832    mov         eax,dword ptr [eax+8]
 00541835    lea         ecx,[ebp-144]
 0054183B    xor         edx,edx
 0054183D    mov         ebx,dword ptr [eax]
 0054183F    call        dword ptr [ebx+0C]
 00541842    mov         edx,dword ptr [ebp-144]
 00541848    lea         eax,[ebp-140]
 0054184E    mov         ecx,0FF
 00541853    call        @LStrToString
 00541858    lea         edx,[ebp-140]
 0054185E    lea         eax,[ebp-3D]
 00541861    mov         cl,28
 00541863    call        @PStrNCpy
 00541868    lea         eax,[ebp-148]
 0054186E    push        eax
 0054186F    mov         eax,dword ptr [ebp-4]
 00541872    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00541878    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0054187E    mov         edx,dword ptr [ebp-0C]
 00541881    call        0045AF80
 00541886    mov         eax,dword ptr [eax+24]
 00541889    mov         dword ptr [ebp-188],eax
 0054188F    mov         byte ptr [ebp-184],0B
 00541896    lea         eax,[ebp-3D]
 00541899    mov         dword ptr [ebp-180],eax
 0054189F    mov         byte ptr [ebp-17C],4
 005418A6    mov         eax,dword ptr [ebp-4]
 005418A9    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 005418AF    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005418B5    mov         edx,dword ptr [ebp-0C]
 005418B8    call        0045AF80
 005418BD    mov         eax,dword ptr [eax+8]
 005418C0    lea         ecx,[ebp-18C]
 005418C6    mov         edx,1
 005418CB    mov         ebx,dword ptr [eax]
 005418CD    call        dword ptr [ebx+0C]
 005418D0    mov         eax,dword ptr [ebp-18C]
 005418D6    mov         dword ptr [ebp-178],eax
 005418DC    mov         byte ptr [ebp-174],0B
 005418E3    mov         eax,dword ptr [ebp-4]
 005418E6    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 005418EC    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005418F2    mov         edx,dword ptr [ebp-0C]
 005418F5    call        0045AF80
 005418FA    mov         eax,dword ptr [eax+8]
 005418FD    lea         ecx,[ebp-190]
 00541903    mov         edx,2
 00541908    mov         ebx,dword ptr [eax]
 0054190A    call        dword ptr [ebx+0C]
 0054190D    mov         eax,dword ptr [ebp-190]
 00541913    mov         dword ptr [ebp-170],eax
 00541919    mov         byte ptr [ebp-16C],0B
 00541920    mov         eax,dword ptr [ebp-4]
 00541923    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00541929    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0054192F    mov         edx,dword ptr [ebp-0C]
 00541932    call        0045AF80
 00541937    mov         eax,dword ptr [eax+8]
 0054193A    lea         ecx,[ebp-194]
 00541940    mov         edx,3
 00541945    mov         ebx,dword ptr [eax]
 00541947    call        dword ptr [ebx+0C]
 0054194A    mov         eax,dword ptr [ebp-194]
 00541950    mov         dword ptr [ebp-168],eax
 00541956    mov         byte ptr [ebp-164],0B
 0054195D    mov         eax,dword ptr [ebp-4]
 00541960    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00541966    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 0054196C    mov         edx,dword ptr [ebp-0C]
 0054196F    call        0045AF80
 00541974    mov         eax,dword ptr [eax+8]
 00541977    lea         ecx,[ebp-198]
 0054197D    mov         edx,4
 00541982    mov         ebx,dword ptr [eax]
 00541984    call        dword ptr [ebx+0C]
 00541987    mov         eax,dword ptr [ebp-198]
 0054198D    mov         dword ptr [ebp-160],eax
 00541993    mov         byte ptr [ebp-15C],0B
 0054199A    mov         eax,dword ptr [ebp-4]
 0054199D    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 005419A3    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005419A9    mov         edx,dword ptr [ebp-0C]
 005419AC    call        0045AF80
 005419B1    mov         eax,dword ptr [eax+8]
 005419B4    lea         ecx,[ebp-19C]
 005419BA    mov         edx,5
 005419BF    mov         ebx,dword ptr [eax]
 005419C1    call        dword ptr [ebx+0C]
 005419C4    mov         eax,dword ptr [ebp-19C]
 005419CA    mov         dword ptr [ebp-158],eax
 005419D0    mov         byte ptr [ebp-154],0B
 005419D7    mov         eax,dword ptr [ebp-4]
 005419DA    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 005419E0    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 005419E6    mov         edx,dword ptr [ebp-0C]
 005419E9    call        0045AF80
 005419EE    mov         eax,dword ptr [eax+8]
 005419F1    lea         ecx,[ebp-1A0]
 005419F7    mov         edx,6
 005419FC    mov         ebx,dword ptr [eax]
 005419FE    call        dword ptr [ebx+0C]
 00541A01    mov         eax,dword ptr [ebp-1A0]
 00541A07    mov         dword ptr [ebp-150],eax
 00541A0D    mov         byte ptr [ebp-14C],0B
 00541A14    lea         edx,[ebp-188]
 00541A1A    mov         ecx,7
 00541A1F    mov         eax,541B24;'%4s %-40s %4s %4s %4s %10s %-10s %s'+#10
 00541A24    call        0040D630
 00541A29    mov         edx,dword ptr [ebp-148]
 00541A2F    lea         eax,[ebp-8]
 00541A32    call        @LStrCat
 00541A37    inc         dword ptr [ebp-0C]
 00541A3A    mov         eax,[0056E3C0];^Application:TApplication
 00541A3F    mov         eax,dword ptr [eax]
 00541A41    call        004AB51C
 00541A46    mov         eax,dword ptr [ebp-4]
 00541A49    mov         eax,dword ptr [eax+2F8];TfmSmart.SmartList:TListView
 00541A4F    mov         eax,dword ptr [eax+22C];TListView.FListItems:TListItems
 00541A55    call        0045AF28
 00541A5A    cmp         eax,dword ptr [ebp-0C]
>00541A5D    jle         00541A6D
 00541A5F    mov         eax,[0056E5A4];^gvar_0056DF04
 00541A64    cmp         byte ptr [eax],0
>00541A67    je          0054181B
 00541A6D    mov         eax,dword ptr [ebp-8]
 00541A70    call        @LStrLen
 00541A75    test        eax,eax
>00541A77    jle         00541AA8
 00541A79    mov         dword ptr [ebp-10],eax
 00541A7C    mov         dword ptr [ebp-0C],1
 00541A83    mov         eax,dword ptr [ebp-8]
 00541A86    mov         edx,dword ptr [ebp-0C]
 00541A89    cmp         byte ptr [eax+edx-1],0B0
>00541A8E    jne         00541AA0
 00541A90    lea         eax,[ebp-8]
 00541A93    call        00405598
 00541A98    mov         edx,dword ptr [ebp-0C]
 00541A9B    mov         byte ptr [eax+edx-1],60
 00541AA0    inc         dword ptr [ebp-0C]
 00541AA3    dec         dword ptr [ebp-10]
>00541AA6    jne         00541A83
 00541AA8    lea         eax,[ebp-1A4]
 00541AAE    mov         ecx,dword ptr [ebp-8]
 00541AB1    mov         edx,541B54;#10
 00541AB6    call        @LStrCat3
 00541ABB    mov         edx,dword ptr [ebp-1A4]
 00541AC1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 00541AC6    mov         eax,dword ptr [eax]
 00541AC8    mov         eax,dword ptr [eax+2F8]
 00541ACE    mov         eax,dword ptr [eax+248]
 00541AD4    mov         ecx,dword ptr [eax]
 00541AD6    call        dword ptr [ecx+38]
 00541AD9    xor         eax,eax
 00541ADB    pop         edx
 00541ADC    pop         ecx
 00541ADD    pop         ecx
 00541ADE    mov         dword ptr fs:[eax],edx
 00541AE1    push        541B16
 00541AE6    lea         eax,[ebp-1A4]
 00541AEC    mov         edx,7
 00541AF1    call        @LStrArrayClr
 00541AF6    lea         eax,[ebp-148]
 00541AFC    mov         edx,2
 00541B01    call        @LStrArrayClr
 00541B06    lea         eax,[ebp-8]
 00541B09    call        @LStrClr
 00541B0E    ret
>00541B0F    jmp         @HandleFinally
>00541B14    jmp         00541AE6
 00541B16    pop         ebx
 00541B17    mov         esp,ebp
 00541B19    pop         ebp
 00541B1A    ret
*}
end;

Initialization
Finalization
//00541B58
{*
 00541B58    push        ebp
 00541B59    mov         ebp,esp
 00541B5B    xor         eax,eax
 00541B5D    push        ebp
 00541B5E    push        541B94
 00541B63    push        dword ptr fs:[eax]
 00541B66    mov         dword ptr fs:[eax],esp
 00541B69    inc         dword ptr ds:[59BF40]
>00541B6F    jne         00541B86
 00541B71    mov         eax,56DE50;^'L  '
 00541B76    mov         ecx,8
 00541B7B    mov         edx,dword ptr ds:[4010C0];String
 00541B81    call        @FinalizeArray
 00541B86    xor         eax,eax
 00541B88    pop         edx
 00541B89    pop         ecx
 00541B8A    pop         ecx
 00541B8B    mov         dword ptr fs:[eax],edx
 00541B8E    push        541B9B
 00541B93    ret
>00541B94    jmp         @HandleFinally
>00541B99    jmp         00541B93
 00541B9B    pop         ebp
 00541B9C    ret
*}
end.