//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uLbaExport;

interface

uses
  SysUtils, Classes, CheckLst, StdCtrls;

type
  TfmLbaExport = class(TForm)
  published
    clHeads:TCheckListBox;//f2F8
    btStart:TButton;//f2FC
    procedure FormShow(Sender:TObject);//0053EECC
    procedure clHeadsDblClick(Sender:TObject);//0053F50C
    procedure btStartClick(Sender:TObject);//0053EFDC
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//0053EEFC
  end;
    procedure sub_0053EE78(?:TfmLbaExport; ?:TfmHDD);//0053EE78
    //procedure sub_0053EF24(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);//0053EF24

implementation

{$R *.DFM}

//0053EE78
procedure sub_0053EE78(?:TfmLbaExport; ?:TfmHDD);
begin
{*
 0053EE78    push        ebp
 0053EE79    mov         ebp,esp
 0053EE7B    add         esp,0FFFFFFF8
 0053EE7E    mov         dword ptr [ebp-8],edx
 0053EE81    mov         dword ptr [ebp-4],eax
 0053EE84    cmp         dword ptr ds:[56DE44],0;gvar_0056DE44:TfmLbaExport
>0053EE8B    jne         0053EEA1
 0053EE8D    mov         ecx,dword ptr [ebp-8]
 0053EE90    mov         dl,1
 0053EE92    mov         eax,[0053EC88];TfmLbaExport
 0053EE97    call        TfmProgress.Create;TfmLbaExport.Create
 0053EE9C    mov         [0056DE44],eax;gvar_0056DE44:TfmLbaExport
 0053EEA1    mov         eax,[0056DE44];0x0 gvar_0056DE44:TfmLbaExport
 0053EEA6    cmp         byte ptr [eax+1A6],0;TfmLbaExport.FShowing:Boolean
>0053EEAD    je          0053EEBE
 0053EEAF    mov         eax,[0056DE44];0x0 gvar_0056DE44:TfmLbaExport
 0053EEB4    mov         edx,dword ptr [eax]
 0053EEB6    call        dword ptr [edx+0C4];TfmLbaExport.sub_004A746C
>0053EEBC    jmp         0053EEC8
 0053EEBE    mov         eax,[0056DE44];0x0 gvar_0056DE44:TfmLbaExport
 0053EEC3    call        004A7450
 0053EEC8    pop         ecx
 0053EEC9    pop         ecx
 0053EECA    pop         ebp
 0053EECB    ret
*}
end;

//0053EECC
procedure TfmLbaExport.FormShow(Sender:TObject);
begin
{*
 0053EECC    push        ebp
 0053EECD    mov         ebp,esp
 0053EECF    add         esp,0FFFFFFF8
 0053EED2    mov         dword ptr [ebp-8],edx
 0053EED5    mov         dword ptr [ebp-4],eax
 0053EED8    mov         eax,[0056E284];^gvar_0056DF34
 0053EEDD    mov         eax,dword ptr [eax]
 0053EEDF    mov         eax,dword ptr [eax+408]
 0053EEE5    cmp         byte ptr [eax+38],0
>0053EEE9    je          0053EEF5
 0053EEEB    xor         edx,edx
 0053EEED    mov         eax,dword ptr [ebp-4]
 0053EEF0    call        TfmLbaExport.clHeadsDblClick
 0053EEF5    pop         ecx
 0053EEF6    pop         ecx
 0053EEF7    pop         ebp
 0053EEF8    ret
*}
end;

//0053EEFC
procedure TfmLbaExport.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 0053EEFC    push        ebp
 0053EEFD    mov         ebp,esp
 0053EEFF    add         esp,0FFFFFFF4
 0053EF02    mov         dword ptr [ebp-8],ecx
 0053EF05    mov         dword ptr [ebp-0C],edx
 0053EF08    mov         dword ptr [ebp-4],eax
 0053EF0B    mov         eax,[0056E5A4];^gvar_0056DF04
 0053EF10    mov         byte ptr [eax],1
 0053EF13    xor         eax,eax
 0053EF15    mov         [0056DE44],eax;gvar_0056DE44:TfmLbaExport
 0053EF1A    mov         eax,dword ptr [ebp-8]
 0053EF1D    mov         byte ptr [eax],2
 0053EF20    mov         esp,ebp
 0053EF22    pop         ebp
 0053EF23    ret
*}
end;

//0053EF24
{*procedure sub_0053EF24(?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?; ?:?);
begin
 0053EF24    push        ebp
 0053EF25    mov         ebp,esp
 0053EF27    add         esp,0FFFFFFE8
 0053EF2A    mov         byte ptr [ebp-9],cl
 0053EF2D    mov         dword ptr [ebp-8],edx
 0053EF30    mov         dword ptr [ebp-4],eax
 0053EF33    mov         eax,dword ptr [ebp+10]
 0053EF36    mov         ax,word ptr [eax]
 0053EF39    mov         word ptr [ebp-0C],ax
 0053EF3D    mov         eax,dword ptr [ebp-4]
 0053EF40    mov         edx,dword ptr [eax]
 0053EF42    mov         dword ptr [ebp-18],edx
 0053EF45    mov         edx,dword ptr [eax+4]
 0053EF48    mov         dword ptr [ebp-14],edx
>0053EF4B    jmp         0053EF87
 0053EF4D    push        dword ptr [ebp-14]
 0053EF50    push        dword ptr [ebp-18]
 0053EF53    mov         eax,dword ptr [ebp+0C]
 0053EF56    push        eax
 0053EF57    mov         eax,dword ptr [ebp+8]
 0053EF5A    push        eax
 0053EF5B    lea         ecx,[ebp-0C]
 0053EF5E    mov         edx,dword ptr [ebp+14]
 0053EF61    mov         eax,dword ptr [ebp+18]
 0053EF64    call        004D0C2C
 0053EF69    cmp         byte ptr [ebp-9],0
>0053EF6D    je          0053EF7C
 0053EF6F    mov         eax,dword ptr [ebp-8]
 0053EF72    xor         edx,edx
 0053EF74    sub         dword ptr [ebp-18],eax
 0053EF77    sbb         dword ptr [ebp-14],edx
>0053EF7A    jmp         0053EF87
 0053EF7C    mov         eax,dword ptr [ebp-8]
 0053EF7F    xor         edx,edx
 0053EF81    add         dword ptr [ebp-18],eax
 0053EF84    adc         dword ptr [ebp-14],edx
 0053EF87    mov         eax,dword ptr [ebp+10]
 0053EF8A    mov         ax,word ptr [eax]
 0053EF8D    cmp         ax,word ptr [ebp-0C]
>0053EF91    jne         0053EF9D
 0053EF93    mov         eax,[0056E5A4];^gvar_0056DF04
 0053EF98    cmp         byte ptr [eax],0
>0053EF9B    je          0053EF4D
 0053EF9D    cmp         byte ptr [ebp-9],0
>0053EFA1    je          0053EFB0
 0053EFA3    mov         eax,dword ptr [ebp-8]
 0053EFA6    xor         edx,edx
 0053EFA8    add         dword ptr [ebp-18],eax
 0053EFAB    adc         dword ptr [ebp-14],edx
>0053EFAE    jmp         0053EFBB
 0053EFB0    mov         eax,dword ptr [ebp-8]
 0053EFB3    xor         edx,edx
 0053EFB5    sub         dword ptr [ebp-18],eax
 0053EFB8    sbb         dword ptr [ebp-14],edx
 0053EFBB    mov         eax,dword ptr [ebp+10]
 0053EFBE    mov         dx,word ptr [ebp-0C]
 0053EFC2    mov         word ptr [eax],dx
 0053EFC5    mov         eax,dword ptr [ebp-4]
 0053EFC8    mov         edx,dword ptr [ebp-18]
 0053EFCB    mov         dword ptr [eax],edx
 0053EFCD    mov         edx,dword ptr [ebp-14]
 0053EFD0    mov         dword ptr [eax+4],edx
 0053EFD3    mov         esp,ebp
 0053EFD5    pop         ebp
 0053EFD6    ret         14
end;*}

//0053EFDC
procedure TfmLbaExport.btStartClick(Sender:TObject);
begin
{*
 0053EFDC    push        ebp
 0053EFDD    mov         ebp,esp
 0053EFDF    add         esp,0FFFFFDAC
 0053EFE5    xor         ecx,ecx
 0053EFE7    mov         dword ptr [ebp-254],ecx
 0053EFED    mov         dword ptr [ebp-220],ecx
 0053EFF3    mov         dword ptr [ebp-21C],ecx
 0053EFF9    mov         dword ptr [ebp-218],ecx
 0053EFFF    mov         dword ptr [ebp-214],ecx
 0053F005    mov         dword ptr [ebp-3C],ecx
 0053F008    mov         dword ptr [ebp-44],edx
 0053F00B    mov         dword ptr [ebp-4],eax
 0053F00E    xor         eax,eax
 0053F010    push        ebp
 0053F011    push        53F431
 0053F016    push        dword ptr fs:[eax]
 0053F019    mov         dword ptr fs:[eax],esp
 0053F01C    mov         eax,[0056E5A4];^gvar_0056DF04
 0053F021    mov         byte ptr [eax],0
 0053F024    mov         eax,dword ptr [ebp-4]
 0053F027    mov         eax,dword ptr [eax+2FC];TfmLbaExport.btStart:TButton
 0053F02D    xor         edx,edx
 0053F02F    mov         ecx,dword ptr [eax]
 0053F031    call        dword ptr [ecx+64];TImage.SetEnabled
 0053F034    mov         eax,53F444;'Start Build Heads LBA Map'
 0053F039    call        00544EB4
 0053F03E    mov         eax,[0056E2D0];^gvar_0056DF38
 0053F043    mov         eax,dword ptr [eax]
 0053F045    call        0040C9A4
 0053F04A    test        al,al
>0053F04C    jne         0053F07D
 0053F04E    mov         ecx,dword ptr ds:[56E2D0];^gvar_0056DF38
 0053F054    mov         ecx,dword ptr [ecx]
 0053F056    lea         eax,[ebp-214]
 0053F05C    mov         edx,53F468;'Cannot create '
 0053F061    call        @LStrCat3
 0053F066    mov         ecx,dword ptr [ebp-214]
 0053F06C    mov         dl,1
 0053F06E    mov         eax,[0040B004];Exception
 0053F073    call        Exception.Create;Exception.Create
 0053F078    call        @RaiseExcept
 0053F07D    lea         eax,[ebp-3C]
 0053F080    call        @LStrClr
 0053F085    mov         eax,dword ptr [ebp-4]
 0053F088    mov         eax,dword ptr [eax+2F8];TfmLbaExport.clHeads:TCheckListBox
 0053F08E    mov         edx,dword ptr [eax]
 0053F090    call        dword ptr [edx+0C8];TCheckListBox.sub_004797D4
 0053F096    dec         eax
 0053F097    test        eax,eax
>0053F099    jl          0053F0DF
 0053F09B    inc         eax
 0053F09C    mov         dword ptr [ebp-40],eax
 0053F09F    mov         dword ptr [ebp-38],0
 0053F0A6    mov         eax,dword ptr [ebp-4]
 0053F0A9    mov         eax,dword ptr [eax+2F8];TfmLbaExport.clHeads:TCheckListBox
 0053F0AF    mov         edx,dword ptr [ebp-38]
 0053F0B2    call        004D3074
 0053F0B7    test        al,al
>0053F0B9    je          0053F0D7
 0053F0BB    lea         edx,[ebp-218]
 0053F0C1    mov         eax,dword ptr [ebp-38]
 0053F0C4    call        IntToStr
 0053F0C9    mov         edx,dword ptr [ebp-218]
 0053F0CF    lea         eax,[ebp-3C]
 0053F0D2    call        @LStrCat
 0053F0D7    inc         dword ptr [ebp-38]
 0053F0DA    dec         dword ptr [ebp-40]
>0053F0DD    jne         0053F0A6
 0053F0DF    mov         eax,[0056E2D0];^gvar_0056DF38
 0053F0E4    push        dword ptr [eax]
 0053F0E6    push        53F480;'LBAs'
 0053F0EB    push        dword ptr [ebp-3C]
 0053F0EE    push        53F490;'.vds'
 0053F0F3    lea         eax,[ebp-21C]
 0053F0F9    mov         edx,4
 0053F0FE    call        @LStrCatN
 0053F103    mov         edx,dword ptr [ebp-21C]
 0053F109    lea         eax,[ebp-210]
 0053F10F    call        @Assign
 0053F114    lea         eax,[ebp-210]
 0053F11A    call        @RewritText
 0053F11F    call        @_IOTest
 0053F124    mov         edx,53F4A0;'Victoria script 1.0'
 0053F129    lea         eax,[ebp-210]
 0053F12F    call        0040575C
 0053F134    call        00403CA8
 0053F139    call        @_IOTest
 0053F13E    xor         edx,edx
 0053F140    lea         eax,[ebp-210]
 0053F146    call        0040575C
 0053F14B    call        00403CA8
 0053F150    call        @_IOTest
 0053F155    mov         dword ptr [ebp-10],0
 0053F15C    mov         dword ptr [ebp-0C],0
 0053F163    call        004CED2C
 0053F168    push        dword ptr [ebp-0C]
 0053F16B    push        dword ptr [ebp-10]
 0053F16E    lea         eax,[ebp-28]
 0053F171    push        eax
 0053F172    lea         eax,[ebp-2A]
 0053F175    push        eax
 0053F176    lea         ecx,[ebp-24]
 0053F179    lea         edx,[ebp-22]
 0053F17C    lea         eax,[ebp-1C]
 0053F17F    call        004D0C2C
 0053F184    mov         eax,dword ptr [ebp-10]
 0053F187    mov         dword ptr [ebp-18],eax
 0053F18A    mov         eax,dword ptr [ebp-0C]
 0053F18D    mov         dword ptr [ebp-14],eax
 0053F190    mov         ax,word ptr [ebp-24]
 0053F194    mov         word ptr [ebp-26],ax
 0053F198    mov         eax,dword ptr [ebp-1C]
 0053F19B    mov         dword ptr [ebp-20],eax
 0053F19E    mov         ax,word ptr [ebp-2A]
 0053F1A2    mov         word ptr [ebp-2C],ax
>0053F1A6    jmp         0053F37F
 0053F1AB    mov         byte ptr [ebp-2D],0
 0053F1AF    mov         dword ptr [ebp-34],1000
 0053F1B6    lea         eax,[ebp-1C]
 0053F1B9    push        eax
 0053F1BA    lea         eax,[ebp-22]
 0053F1BD    push        eax
 0053F1BE    lea         eax,[ebp-24]
 0053F1C1    push        eax
 0053F1C2    lea         eax,[ebp-28]
 0053F1C5    push        eax
 0053F1C6    lea         eax,[ebp-2A]
 0053F1C9    push        eax
 0053F1CA    lea         eax,[ebp-10]
 0053F1CD    mov         cl,byte ptr [ebp-2D]
 0053F1D0    mov         edx,dword ptr [ebp-34]
 0053F1D3    call        0053EF24
 0053F1D8    mov         eax,dword ptr [ebp-34]
 0053F1DB    shr         eax,1
 0053F1DD    mov         dword ptr [ebp-34],eax
 0053F1E0    mov         al,byte ptr [ebp-2D]
 0053F1E3    xor         al,1
 0053F1E5    mov         byte ptr [ebp-2D],al
 0053F1E8    cmp         dword ptr [ebp-34],0
>0053F1EC    je          0053F1F8
 0053F1EE    mov         eax,[0056E5A4];^gvar_0056DF04
 0053F1F3    cmp         byte ptr [eax],0
>0053F1F6    je          0053F1B6
 0053F1F8    movzx       edx,word ptr [ebp-26]
 0053F1FC    mov         eax,dword ptr [ebp-4]
 0053F1FF    mov         eax,dword ptr [eax+2F8];TfmLbaExport.clHeads:TCheckListBox
 0053F205    call        004D3074
 0053F20A    test        al,al
>0053F20C    je          0053F35D
 0053F212    lea         eax,[ebp-220]
 0053F218    push        eax
 0053F219    lea         eax,[ebp-18]
 0053F21C    mov         dword ptr [ebp-248],eax
 0053F222    mov         byte ptr [ebp-244],10
 0053F229    mov         eax,dword ptr [ebp-10]
 0053F22C    mov         edx,dword ptr [ebp-0C]
 0053F22F    sub         eax,1
 0053F232    sbb         edx,0
 0053F235    mov         dword ptr [ebp-250],eax
 0053F23B    mov         dword ptr [ebp-24C],edx
 0053F241    lea         eax,[ebp-250]
 0053F247    mov         dword ptr [ebp-240],eax
 0053F24D    mov         byte ptr [ebp-23C],10
 0053F254    mov         eax,dword ptr [ebp-20]
 0053F257    mov         dword ptr [ebp-238],eax
 0053F25D    mov         byte ptr [ebp-234],0
 0053F264    movzx       eax,word ptr [ebp-26]
 0053F268    mov         dword ptr [ebp-230],eax
 0053F26E    mov         byte ptr [ebp-22C],0
 0053F275    movzx       eax,word ptr [ebp-2C]
 0053F279    mov         dword ptr [ebp-228],eax
 0053F27F    mov         byte ptr [ebp-224],0
 0053F286    lea         edx,[ebp-248]
 0053F28C    mov         ecx,4
 0053F291    mov         eax,53F4BC;'%10d %10d  ; C:%6x, H:%1x, Z:%x'
 0053F296    call        0040D630
 0053F29B    mov         edx,dword ptr [ebp-220]
 0053F2A1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 0053F2A6    mov         eax,dword ptr [eax]
 0053F2A8    mov         eax,dword ptr [eax+2F8]
 0053F2AE    mov         eax,dword ptr [eax+248]
 0053F2B4    mov         ecx,dword ptr [eax]
 0053F2B6    call        dword ptr [ecx+38]
 0053F2B9    lea         eax,[ebp-254]
 0053F2BF    push        eax
 0053F2C0    lea         eax,[ebp-18]
 0053F2C3    mov         dword ptr [ebp-248],eax
 0053F2C9    mov         byte ptr [ebp-244],10
 0053F2D0    mov         eax,dword ptr [ebp-10]
 0053F2D3    mov         edx,dword ptr [ebp-0C]
 0053F2D6    sub         eax,1
 0053F2D9    sbb         edx,0
 0053F2DC    mov         dword ptr [ebp-250],eax
 0053F2E2    mov         dword ptr [ebp-24C],edx
 0053F2E8    lea         eax,[ebp-250]
 0053F2EE    mov         dword ptr [ebp-240],eax
 0053F2F4    mov         byte ptr [ebp-23C],10
 0053F2FB    mov         eax,dword ptr [ebp-20]
 0053F2FE    mov         dword ptr [ebp-238],eax
 0053F304    mov         byte ptr [ebp-234],0
 0053F30B    movzx       eax,word ptr [ebp-26]
 0053F30F    mov         dword ptr [ebp-230],eax
 0053F315    mov         byte ptr [ebp-22C],0
 0053F31C    movzx       eax,word ptr [ebp-2C]
 0053F320    mov         dword ptr [ebp-228],eax
 0053F326    mov         byte ptr [ebp-224],0
 0053F32D    lea         edx,[ebp-248]
 0053F333    mov         ecx,4
 0053F338    mov         eax,53F4BC;'%10d %10d  ; C:%6x, H:%1x, Z:%x'
 0053F33D    call        0040D630
 0053F342    mov         edx,dword ptr [ebp-254]
 0053F348    lea         eax,[ebp-210]
 0053F34E    call        0040575C
 0053F353    call        00403CA8
 0053F358    call        @_IOTest
 0053F35D    mov         eax,dword ptr [ebp-10]
 0053F360    mov         dword ptr [ebp-18],eax
 0053F363    mov         eax,dword ptr [ebp-0C]
 0053F366    mov         dword ptr [ebp-14],eax
 0053F369    mov         ax,word ptr [ebp-24]
 0053F36D    mov         word ptr [ebp-26],ax
 0053F371    mov         eax,dword ptr [ebp-1C]
 0053F374    mov         dword ptr [ebp-20],eax
 0053F377    mov         ax,word ptr [ebp-2A]
 0053F37B    mov         word ptr [ebp-2C],ax
 0053F37F    mov         eax,[0056E4E4];^gvar_0056DE78
 0053F384    mov         edx,dword ptr [eax+4]
 0053F387    mov         eax,dword ptr [eax]
 0053F389    cmp         edx,dword ptr [ebp-0C]
>0053F38C    jne         0053F395
 0053F38E    cmp         eax,dword ptr [ebp-10]
>0053F391    jbe         0053F3A5
>0053F393    jmp         0053F397
>0053F395    jle         0053F3A5
 0053F397    mov         eax,[0056E5A4];^gvar_0056DF04
 0053F39C    cmp         byte ptr [eax],0
>0053F39F    je          0053F1AB
 0053F3A5    mov         eax,53F4E4;'End Build Heads LBA Map'
 0053F3AA    call        00544EB4
 0053F3AF    xor         edx,edx
 0053F3B1    lea         eax,[ebp-210]
 0053F3B7    call        0040575C
 0053F3BC    call        00403CA8
 0053F3C1    call        @_IOTest
 0053F3C6    mov         edx,53F504;'The end'
 0053F3CB    lea         eax,[ebp-210]
 0053F3D1    call        0040575C
 0053F3D6    call        00403CA8
 0053F3DB    call        @_IOTest
 0053F3E0    lea         eax,[ebp-210]
 0053F3E6    call        @Close
 0053F3EB    call        @_IOTest
 0053F3F0    mov         eax,dword ptr [ebp-4]
 0053F3F3    mov         eax,dword ptr [eax+2FC];TfmLbaExport.btStart:TButton
 0053F3F9    mov         dl,1
 0053F3FB    mov         ecx,dword ptr [eax]
 0053F3FD    call        dword ptr [ecx+64];TImage.SetEnabled
 0053F400    xor         eax,eax
 0053F402    pop         edx
 0053F403    pop         ecx
 0053F404    pop         ecx
 0053F405    mov         dword ptr fs:[eax],edx
 0053F408    push        53F438
 0053F40D    lea         eax,[ebp-254]
 0053F413    call        @LStrClr
 0053F418    lea         eax,[ebp-220]
 0053F41E    mov         edx,4
 0053F423    call        @LStrArrayClr
 0053F428    lea         eax,[ebp-3C]
 0053F42B    call        @LStrClr
 0053F430    ret
>0053F431    jmp         @HandleFinally
>0053F436    jmp         0053F40D
 0053F438    mov         esp,ebp
 0053F43A    pop         ebp
 0053F43B    ret
*}
end;

//0053F50C
procedure TfmLbaExport.clHeadsDblClick(Sender:TObject);
begin
{*
 0053F50C    push        ebp
 0053F50D    mov         ebp,esp
 0053F50F    add         esp,0FFFFFFE0
 0053F512    push        ebx
 0053F513    xor         ecx,ecx
 0053F515    mov         dword ptr [ebp-1C],ecx
 0053F518    mov         dword ptr [ebp-20],ecx
 0053F51B    mov         dword ptr [ebp-18],edx
 0053F51E    mov         dword ptr [ebp-4],eax
 0053F521    xor         eax,eax
 0053F523    push        ebp
 0053F524    push        53F63B
 0053F529    push        dword ptr fs:[eax]
 0053F52C    mov         dword ptr fs:[eax],esp
 0053F52F    mov         eax,[0056E5A4];^gvar_0056DF04
 0053F534    mov         byte ptr [eax],0
 0053F537    mov         dl,1
 0053F539    mov         eax,[0041DE14];TMemoryStream
 0053F53E    call        TObject.Create;TMemoryStream.Create
 0053F543    mov         dword ptr [ebp-8],eax
 0053F546    xor         eax,eax
 0053F548    push        ebp
 0053F549    push        53F619
 0053F54E    push        dword ptr fs:[eax]
 0053F551    mov         dword ptr fs:[eax],esp
 0053F554    mov         ecx,dword ptr [ebp-8]
 0053F557    xor         edx,edx
 0053F559    mov         ax,1
 0053F55D    call        00509E08
 0053F562    test        al,al
>0053F564    je          0053F5F9
 0053F56A    xor         ecx,ecx
 0053F56C    mov         edx,1E
 0053F571    mov         eax,dword ptr [ebp-8]
 0053F574    mov         ebx,dword ptr [eax]
 0053F576    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 0053F579    mov         eax,dword ptr [ebp-8]
 0053F57C    call        004CE528
 0053F581    mov         byte ptr [ebp-0D],al
 0053F584    mov         eax,dword ptr [ebp-4]
 0053F587    mov         eax,dword ptr [eax+2F8];TfmLbaExport.clHeads:TCheckListBox
 0053F58D    mov         edx,dword ptr [eax]
 0053F58F    call        dword ptr [edx+0D8];TCustomListBox.Clear
 0053F595    xor         eax,eax
 0053F597    mov         al,byte ptr [ebp-0D]
 0053F59A    dec         eax
 0053F59B    test        eax,eax
>0053F59D    jl          0053F603
 0053F59F    inc         eax
 0053F5A0    mov         dword ptr [ebp-14],eax
 0053F5A3    mov         dword ptr [ebp-0C],0
 0053F5AA    lea         edx,[ebp-20]
 0053F5AD    mov         eax,dword ptr [ebp-0C]
 0053F5B0    call        IntToStr
 0053F5B5    mov         ecx,dword ptr [ebp-20]
 0053F5B8    lea         eax,[ebp-1C]
 0053F5BB    mov         edx,53F650;'Head '
 0053F5C0    call        @LStrCat3
 0053F5C5    mov         edx,dword ptr [ebp-1C]
 0053F5C8    mov         eax,dword ptr [ebp-4]
 0053F5CB    mov         eax,dword ptr [eax+2F8];TfmLbaExport.clHeads:TCheckListBox
 0053F5D1    mov         eax,dword ptr [eax+218];TCheckListBox.FItems:TStrings
 0053F5D7    mov         ecx,dword ptr [eax]
 0053F5D9    call        dword ptr [ecx+38];TStrings.sub_00421A8C
 0053F5DC    mov         eax,dword ptr [ebp-4]
 0053F5DF    mov         eax,dword ptr [eax+2F8];TfmLbaExport.clHeads:TCheckListBox
 0053F5E5    mov         cl,1
 0053F5E7    mov         edx,dword ptr [ebp-0C]
 0053F5EA    call        004D2F60
 0053F5EF    inc         dword ptr [ebp-0C]
 0053F5F2    dec         dword ptr [ebp-14]
>0053F5F5    jne         0053F5AA
>0053F5F7    jmp         0053F603
 0053F5F9    mov         eax,53F660;'Read Drive Parametrs - '
 0053F5FE    call        00544F6C
 0053F603    xor         eax,eax
 0053F605    pop         edx
 0053F606    pop         ecx
 0053F607    pop         ecx
 0053F608    mov         dword ptr fs:[eax],edx
 0053F60B    push        53F620
 0053F610    mov         eax,dword ptr [ebp-8]
 0053F613    call        TObject.Free
 0053F618    ret
>0053F619    jmp         @HandleFinally
>0053F61E    jmp         0053F610
 0053F620    xor         eax,eax
 0053F622    pop         edx
 0053F623    pop         ecx
 0053F624    pop         ecx
 0053F625    mov         dword ptr fs:[eax],edx
 0053F628    push        53F642
 0053F62D    lea         eax,[ebp-20]
 0053F630    mov         edx,2
 0053F635    call        @LStrArrayClr
 0053F63A    ret
>0053F63B    jmp         @HandleFinally
>0053F640    jmp         0053F62D
 0053F642    pop         ebx
 0053F643    mov         esp,ebp
 0053F645    pop         ebp
 0053F646    ret
*}
end;

end.