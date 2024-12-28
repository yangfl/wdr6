//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit uRegionMap;

interface

uses
  SysUtils, Classes, ExtCtrls, StdCtrls;

type
  TfmRegionMap = class(TForm)
  published
    edSize0:TLabeledEdit;//f2F8
    edUba0:TLabeledEdit;//f2FC
    StaticText1:TStaticText;//f300
    edSize1:TEdit;//f304
    edUba1:TEdit;//f308
    edSize2:TEdit;//f30C
    edUba2:TEdit;//f310
    edSize3:TEdit;//f314
    edUba3:TEdit;//f318
    StaticText2:TStaticText;//f31C
    StaticText3:TStaticText;//f320
    StaticText4:TStaticText;//f324
    btWrite:TButton;//f328
    btRead:TButton;//f32C
    ed0:TLabeledEdit;//f330
    ed1:TLabeledEdit;//f334
    ed2:TLabeledEdit;//f338
    ed4:TLabeledEdit;//f33C
    ed5:TLabeledEdit;//f340
    btCorrect:TButton;//f344
    edSize4:TEdit;//f348
    edSize5:TEdit;//f34C
    edUba4:TEdit;//f350
    edUba5:TEdit;//f354
    edSize6:TEdit;//f358
    edSize7:TEdit;//f35C
    edUba6:TEdit;//f360
    edUba7:TEdit;//f364
    StaticText5:TStaticText;//f368
    StaticText6:TStaticText;//f36C
    StaticText7:TStaticText;//f370
    StaticText8:TStaticText;//f374
    procedure btWriteClick(Sender:TObject);//004FE984
    procedure FormDestroy(Sender:TObject);//004FD134
    procedure btCorrectClick(Sender:TObject);//004FE9DC
    procedure FormClose(Sender:TObject; var Action:TCloseAction);//004FD10C
    procedure btReadClick(Sender:TObject);//004FE91C
    procedure FormShow(Sender:TObject);//004FD150
  end;
    procedure sub_004FD0A4(?:TfmRegionMap; ?:TfmHDD);//004FD0A4
    //function sub_004FD180:?;//004FD180
    //function sub_004FE08C:?;//004FE08C
    //function sub_004FEB04:?;//004FEB04
    //function sub_004FEC80:?;//004FEC80

implementation

{$R *.DFM}

//004FD0A4
procedure sub_004FD0A4(?:TfmRegionMap; ?:TfmHDD);
begin
{*
 004FD0A4    push        ebp
 004FD0A5    mov         ebp,esp
 004FD0A7    add         esp,0FFFFFFF8
 004FD0AA    mov         dword ptr [ebp-8],edx
 004FD0AD    mov         dword ptr [ebp-4],eax
 004FD0B0    cmp         dword ptr ds:[56D3FC],0;gvar_0056D3FC:TfmRegionMap
>004FD0B7    jne         004FD0DE
 004FD0B9    mov         ecx,dword ptr [ebp-8]
 004FD0BC    mov         dl,1
 004FD0BE    mov         eax,[004FCCE0];TfmRegionMap
 004FD0C3    call        TfmProgress.Create;TfmRegionMap.Create
 004FD0C8    mov         [0056D3FC],eax;gvar_0056D3FC:TfmRegionMap
 004FD0CD    mov         dl,1
 004FD0CF    mov         eax,[0041DE14];TMemoryStream
 004FD0D4    call        TObject.Create;TMemoryStream.Create
 004FD0D9    mov         [00572660],eax;gvar_00572660:TMemoryStream
 004FD0DE    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD0E3    cmp         byte ptr [eax+1A6],0;TfmRegionMap.FShowing:Boolean
>004FD0EA    je          004FD0FB
 004FD0EC    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD0F1    mov         edx,dword ptr [eax]
 004FD0F3    call        dword ptr [edx+0C4];TfmRegionMap.sub_004A746C
>004FD0F9    jmp         004FD105
 004FD0FB    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD100    call        004A7450
 004FD105    pop         ecx
 004FD106    pop         ecx
 004FD107    pop         ebp
 004FD108    ret
*}
end;

//004FD10C
procedure TfmRegionMap.FormClose(Sender:TObject; var Action:TCloseAction);
begin
{*
 004FD10C    push        ebp
 004FD10D    mov         ebp,esp
 004FD10F    add         esp,0FFFFFFF4
 004FD112    mov         dword ptr [ebp-8],ecx
 004FD115    mov         dword ptr [ebp-0C],edx
 004FD118    mov         dword ptr [ebp-4],eax
 004FD11B    mov         eax,[0056E5A4];^gvar_0056DF04
 004FD120    mov         byte ptr [eax],1
 004FD123    xor         eax,eax
 004FD125    mov         [0056D3FC],eax;gvar_0056D3FC:TfmRegionMap
 004FD12A    mov         eax,dword ptr [ebp-8]
 004FD12D    mov         byte ptr [eax],2
 004FD130    mov         esp,ebp
 004FD132    pop         ebp
 004FD133    ret
*}
end;

//004FD134
procedure TfmRegionMap.FormDestroy(Sender:TObject);
begin
{*
 004FD134    push        ebp
 004FD135    mov         ebp,esp
 004FD137    add         esp,0FFFFFFF8
 004FD13A    mov         dword ptr [ebp-8],edx
 004FD13D    mov         dword ptr [ebp-4],eax
 004FD140    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD145    call        TObject.Free
 004FD14A    pop         ecx
 004FD14B    pop         ecx
 004FD14C    pop         ebp
 004FD14D    ret
*}
end;

//004FD150
procedure TfmRegionMap.FormShow(Sender:TObject);
begin
{*
 004FD150    push        ebp
 004FD151    mov         ebp,esp
 004FD153    add         esp,0FFFFFFF8
 004FD156    mov         dword ptr [ebp-8],edx
 004FD159    mov         dword ptr [ebp-4],eax
 004FD15C    mov         eax,[0056E284];^gvar_0056DF34
 004FD161    mov         eax,dword ptr [eax]
 004FD163    mov         eax,dword ptr [eax+408]
 004FD169    cmp         byte ptr [eax+38],0
>004FD16D    je          004FD179
 004FD16F    xor         edx,edx
 004FD171    mov         eax,dword ptr [ebp-4]
 004FD174    call        TfmRegionMap.btReadClick
 004FD179    pop         ecx
 004FD17A    pop         ecx
 004FD17B    pop         ebp
 004FD17C    ret
*}
end;

//004FD180
{*function sub_004FD180:?;
begin
 004FD180    push        ebp
 004FD181    mov         ebp,esp
 004FD183    mov         ecx,20
 004FD188    push        0
 004FD18A    push        0
 004FD18C    dec         ecx
>004FD18D    jne         004FD188
 004FD18F    push        ecx
 004FD190    push        ebx
 004FD191    xor         eax,eax
 004FD193    push        ebp
 004FD194    push        4FDE3A
 004FD199    push        dword ptr fs:[eax]
 004FD19C    mov         dword ptr fs:[eax],esp
 004FD19F    mov         eax,[0056E5A4];^gvar_0056DF04
 004FD1A4    mov         byte ptr [eax],0
 004FD1A7    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD1AC    call        00423F20
 004FD1B1    mov         edx,dword ptr ds:[572660];0x0 gvar_00572660:TMemoryStream
 004FD1B7    mov         ax,0B
 004FD1BB    call        005095B8
 004FD1C0    mov         byte ptr [ebp-1],al
 004FD1C3    mov         eax,4FDE54;'Read Region Map - '
 004FD1C8    call        00544F6C
 004FD1CD    cmp         byte ptr [ebp-1],0
>004FD1D1    je          004FDCD5
 004FD1D7    xor         ecx,ecx
 004FD1D9    xor         edx,edx
 004FD1DB    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD1E0    mov         ebx,dword ptr [eax]
 004FD1E2    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FD1E5    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD1EA    call        004CE56C
 004FD1EF    mov         dword ptr [ebp-8],eax
 004FD1F2    cmp         dword ptr [ebp-8],4C594F52
>004FD1F9    jne         004FD22C
 004FD1FB    xor         ecx,ecx
 004FD1FD    mov         edx,6
 004FD202    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD207    mov         ebx,dword ptr [eax]
 004FD209    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FD20C    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD211    call        004CE548
 004FD216    mov         word ptr [ebp-0A],ax
 004FD21A    movzx       edx,word ptr [ebp-0A]
 004FD21E    xor         ecx,ecx
 004FD220    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD225    mov         ebx,dword ptr [eax]
 004FD227    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>004FD22A    jmp         004FD23D
 004FD22C    xor         ecx,ecx
 004FD22E    mov         edx,18
 004FD233    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD238    mov         ebx,dword ptr [eax]
 004FD23A    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FD23D    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD242    call        004CE528
 004FD247    mov         byte ptr [ebp-0B],al
 004FD24A    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD24F    call        004CE528
 004FD254    mov         byte ptr [ebp-0C],al
 004FD257    xor         edx,edx
 004FD259    mov         dl,byte ptr [ebp-0B]
 004FD25C    xor         eax,eax
 004FD25E    mov         al,byte ptr [ebp-0C]
 004FD261    imul        edx,eax
 004FD264    dec         edx
 004FD265    mov         cx,1
 004FD269    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD26E    mov         ebx,dword ptr [eax]
 004FD270    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FD273    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD278    call        004CE528
 004FD27D    mov         byte ptr [ebp-0D],al
 004FD280    lea         ecx,[ebp-14]
 004FD283    xor         eax,eax
 004FD285    mov         al,byte ptr [ebp-0D]
 004FD288    mov         edx,2
 004FD28D    call        IntToHex
 004FD292    mov         edx,dword ptr [ebp-14]
 004FD295    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD29A    mov         eax,dword ptr [eax+330];TfmRegionMap.ed0:TLabeledEdit
 004FD2A0    call        TPanel.SetCaption
 004FD2A5    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD2AA    call        004CE528
 004FD2AF    mov         byte ptr [ebp-0D],al
 004FD2B2    lea         ecx,[ebp-18]
 004FD2B5    xor         eax,eax
 004FD2B7    mov         al,byte ptr [ebp-0D]
 004FD2BA    mov         edx,2
 004FD2BF    call        IntToHex
 004FD2C4    mov         edx,dword ptr [ebp-18]
 004FD2C7    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD2CC    mov         eax,dword ptr [eax+334];TfmRegionMap.ed1:TLabeledEdit
 004FD2D2    call        TPanel.SetCaption
 004FD2D7    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD2DC    call        004CE548
 004FD2E1    mov         word ptr [ebp-0A],ax
 004FD2E5    lea         ecx,[ebp-1C]
 004FD2E8    movzx       eax,word ptr [ebp-0A]
 004FD2EC    mov         edx,4
 004FD2F1    call        IntToHex
 004FD2F6    mov         edx,dword ptr [ebp-1C]
 004FD2F9    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD2FE    mov         eax,dword ptr [eax+338];TfmRegionMap.ed2:TLabeledEdit
 004FD304    call        TPanel.SetCaption
 004FD309    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD30E    call        004CE528
 004FD313    mov         byte ptr [ebp-0D],al
 004FD316    lea         ecx,[ebp-20]
 004FD319    xor         eax,eax
 004FD31B    mov         al,byte ptr [ebp-0D]
 004FD31E    mov         edx,2
 004FD323    call        IntToHex
 004FD328    mov         edx,dword ptr [ebp-20]
 004FD32B    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD330    mov         eax,dword ptr [eax+33C];TfmRegionMap.ed4:TLabeledEdit
 004FD336    call        TPanel.SetCaption
 004FD33B    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD340    call        004CE528
 004FD345    mov         byte ptr [ebp-0D],al
 004FD348    lea         ecx,[ebp-24]
 004FD34B    xor         eax,eax
 004FD34D    mov         al,byte ptr [ebp-0D]
 004FD350    mov         edx,2
 004FD355    call        IntToHex
 004FD35A    mov         edx,dword ptr [ebp-24]
 004FD35D    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD362    mov         eax,dword ptr [eax+340];TfmRegionMap.ed5:TLabeledEdit
 004FD368    call        TPanel.SetCaption
 004FD36D    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD372    mov         eax,dword ptr [eax]
 004FD374    mov         eax,dword ptr [eax+2F8]
 004FD37A    mov         eax,dword ptr [eax+248]
 004FD380    mov         edx,4FDE70;#10+Reserved Region Table'
 004FD385    mov         ecx,dword ptr [eax]
 004FD387    call        dword ptr [ecx+38]
 004FD38A    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD38F    mov         eax,dword ptr [eax]
 004FD391    mov         eax,dword ptr [eax+2F8]
 004FD397    mov         eax,dword ptr [eax+248]
 004FD39D    mov         edx,4FDE90;'---------------------'
 004FD3A2    mov         ecx,dword ptr [eax]
 004FD3A4    call        dword ptr [ecx+38]
 004FD3A7    lea         edx,[ebp-2C]
 004FD3AA    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD3AF    mov         eax,dword ptr [eax+330];TfmRegionMap.ed0:TLabeledEdit
 004FD3B5    call        TPanel.GetCaption
 004FD3BA    mov         ecx,dword ptr [ebp-2C]
 004FD3BD    lea         eax,[ebp-28]
 004FD3C0    mov         edx,4FDEB0;'Next Entry Offset :'
 004FD3C5    call        @LStrCat3
 004FD3CA    mov         edx,dword ptr [ebp-28]
 004FD3CD    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD3D2    mov         eax,dword ptr [eax]
 004FD3D4    mov         eax,dword ptr [eax+2F8]
 004FD3DA    mov         eax,dword ptr [eax+248]
 004FD3E0    mov         ecx,dword ptr [eax]
 004FD3E2    call        dword ptr [ecx+38]
 004FD3E5    lea         edx,[ebp-34]
 004FD3E8    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD3ED    mov         eax,dword ptr [eax+334];TfmRegionMap.ed1:TLabeledEdit
 004FD3F3    call        TPanel.GetCaption
 004FD3F8    mov         ecx,dword ptr [ebp-34]
 004FD3FB    lea         eax,[ebp-30]
 004FD3FE    mov         edx,4FDECC;'Num Of Regions    :'
 004FD403    call        @LStrCat3
 004FD408    mov         edx,dword ptr [ebp-30]
 004FD40B    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD410    mov         eax,dword ptr [eax]
 004FD412    mov         eax,dword ptr [eax+2F8]
 004FD418    mov         eax,dword ptr [eax+248]
 004FD41E    mov         ecx,dword ptr [eax]
 004FD420    call        dword ptr [ecx+38]
 004FD423    lea         edx,[ebp-3C]
 004FD426    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD42B    mov         eax,dword ptr [eax+338];TfmRegionMap.ed2:TLabeledEdit
 004FD431    call        TPanel.GetCaption
 004FD436    mov         ecx,dword ptr [ebp-3C]
 004FD439    lea         eax,[ebp-38]
 004FD43C    mov         edx,4FDEE8;'File ID           :'
 004FD441    call        @LStrCat3
 004FD446    mov         edx,dword ptr [ebp-38]
 004FD449    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD44E    mov         eax,dword ptr [eax]
 004FD450    mov         eax,dword ptr [eax+2F8]
 004FD456    mov         eax,dword ptr [eax+248]
 004FD45C    mov         ecx,dword ptr [eax]
 004FD45E    call        dword ptr [ecx+38]
 004FD461    lea         edx,[ebp-44]
 004FD464    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD469    mov         eax,dword ptr [eax+33C];TfmRegionMap.ed4:TLabeledEdit
 004FD46F    call        TPanel.GetCaption
 004FD474    mov         ecx,dword ptr [ebp-44]
 004FD477    lea         eax,[ebp-40]
 004FD47A    mov         edx,4FDF04;'Active Regions    :'
 004FD47F    call        @LStrCat3
 004FD484    mov         edx,dword ptr [ebp-40]
 004FD487    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD48C    mov         eax,dword ptr [eax]
 004FD48E    mov         eax,dword ptr [eax+2F8]
 004FD494    mov         eax,dword ptr [eax+248]
 004FD49A    mov         ecx,dword ptr [eax]
 004FD49C    call        dword ptr [ecx+38]
 004FD49F    push        4FDF20;'Pad               :'
 004FD4A4    lea         edx,[ebp-4C]
 004FD4A7    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD4AC    mov         eax,dword ptr [eax+340];TfmRegionMap.ed5:TLabeledEdit
 004FD4B2    call        TPanel.GetCaption
 004FD4B7    push        dword ptr [ebp-4C]
 004FD4BA    push        4FDF3C;#10
 004FD4BF    lea         eax,[ebp-48]
 004FD4C2    mov         edx,3
 004FD4C7    call        @LStrCatN
 004FD4CC    mov         edx,dword ptr [ebp-48]
 004FD4CF    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD4D4    mov         eax,dword ptr [eax]
 004FD4D6    mov         eax,dword ptr [eax+2F8]
 004FD4DC    mov         eax,dword ptr [eax+248]
 004FD4E2    mov         ecx,dword ptr [eax]
 004FD4E4    call        dword ptr [ecx+38]
 004FD4E7    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD4EC    call        004CE56C
 004FD4F1    mov         dword ptr [ebp-8],eax
 004FD4F4    lea         eax,[ebp-50]
 004FD4F7    push        eax
 004FD4F8    mov         eax,dword ptr [ebp-8]
 004FD4FB    mov         dword ptr [ebp-58],eax
 004FD4FE    mov         byte ptr [ebp-54],0
 004FD502    lea         edx,[ebp-58]
 004FD505    xor         ecx,ecx
 004FD507    mov         eax,4FDF48;'%x'
 004FD50C    call        0040D630
 004FD511    mov         edx,dword ptr [ebp-50]
 004FD514    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD519    mov         eax,dword ptr [eax+2F8];TfmRegionMap.edSize0:TLabeledEdit
 004FD51F    call        TPanel.SetCaption
 004FD524    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD529    call        004CE56C
 004FD52E    mov         dword ptr [ebp-8],eax
 004FD531    lea         eax,[ebp-5C]
 004FD534    push        eax
 004FD535    mov         eax,dword ptr [ebp-8]
 004FD538    mov         dword ptr [ebp-58],eax
 004FD53B    mov         byte ptr [ebp-54],0
 004FD53F    lea         edx,[ebp-58]
 004FD542    xor         ecx,ecx
 004FD544    mov         eax,4FDF48;'%x'
 004FD549    call        0040D630
 004FD54E    mov         edx,dword ptr [ebp-5C]
 004FD551    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD556    mov         eax,dword ptr [eax+2FC];TfmRegionMap.edUba0:TLabeledEdit
 004FD55C    call        TPanel.SetCaption
 004FD561    lea         eax,[ebp-60]
 004FD564    push        eax
 004FD565    lea         edx,[ebp-74]
 004FD568    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD56D    mov         eax,dword ptr [eax+2F8];TfmRegionMap.edSize0:TLabeledEdit
 004FD573    call        TPanel.GetCaption
 004FD578    mov         eax,dword ptr [ebp-74]
 004FD57B    mov         dword ptr [ebp-70],eax
 004FD57E    mov         byte ptr [ebp-6C],0B
 004FD582    lea         edx,[ebp-78]
 004FD585    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD58A    mov         eax,dword ptr [eax+2FC];TfmRegionMap.edUba0:TLabeledEdit
 004FD590    call        TPanel.GetCaption
 004FD595    mov         eax,dword ptr [ebp-78]
 004FD598    mov         dword ptr [ebp-68],eax
 004FD59B    mov         byte ptr [ebp-64],0B
 004FD59F    lea         edx,[ebp-70]
 004FD5A2    mov         ecx,1
 004FD5A7    mov         eax,4FDF54;'Region 0: Size:%-8s Start:%-8s'
 004FD5AC    call        0040D630
 004FD5B1    mov         edx,dword ptr [ebp-60]
 004FD5B4    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD5B9    mov         eax,dword ptr [eax]
 004FD5BB    mov         eax,dword ptr [eax+2F8]
 004FD5C1    mov         eax,dword ptr [eax+248]
 004FD5C7    mov         ecx,dword ptr [eax]
 004FD5C9    call        dword ptr [ecx+38]
 004FD5CC    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD5D1    call        004CE56C
 004FD5D6    mov         dword ptr [ebp-8],eax
 004FD5D9    lea         eax,[ebp-7C]
 004FD5DC    push        eax
 004FD5DD    mov         eax,dword ptr [ebp-8]
 004FD5E0    mov         dword ptr [ebp-58],eax
 004FD5E3    mov         byte ptr [ebp-54],0
 004FD5E7    lea         edx,[ebp-58]
 004FD5EA    xor         ecx,ecx
 004FD5EC    mov         eax,4FDF48;'%x'
 004FD5F1    call        0040D630
 004FD5F6    mov         edx,dword ptr [ebp-7C]
 004FD5F9    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD5FE    mov         eax,dword ptr [eax+304];TfmRegionMap.edSize1:TEdit
 004FD604    call        TPanel.SetCaption
 004FD609    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD60E    call        004CE56C
 004FD613    mov         dword ptr [ebp-8],eax
 004FD616    lea         eax,[ebp-80]
 004FD619    push        eax
 004FD61A    mov         eax,dword ptr [ebp-8]
 004FD61D    mov         dword ptr [ebp-58],eax
 004FD620    mov         byte ptr [ebp-54],0
 004FD624    lea         edx,[ebp-58]
 004FD627    xor         ecx,ecx
 004FD629    mov         eax,4FDF48;'%x'
 004FD62E    call        0040D630
 004FD633    mov         edx,dword ptr [ebp-80]
 004FD636    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD63B    mov         eax,dword ptr [eax+308];TfmRegionMap.edUba1:TEdit
 004FD641    call        TPanel.SetCaption
 004FD646    lea         eax,[ebp-84]
 004FD64C    push        eax
 004FD64D    lea         edx,[ebp-88]
 004FD653    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD658    mov         eax,dword ptr [eax+304];TfmRegionMap.edSize1:TEdit
 004FD65E    call        TPanel.GetCaption
 004FD663    mov         eax,dword ptr [ebp-88]
 004FD669    mov         dword ptr [ebp-70],eax
 004FD66C    mov         byte ptr [ebp-6C],0B
 004FD670    lea         edx,[ebp-8C]
 004FD676    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD67B    mov         eax,dword ptr [eax+308];TfmRegionMap.edUba1:TEdit
 004FD681    call        TPanel.GetCaption
 004FD686    mov         eax,dword ptr [ebp-8C]
 004FD68C    mov         dword ptr [ebp-68],eax
 004FD68F    mov         byte ptr [ebp-64],0B
 004FD693    lea         edx,[ebp-70]
 004FD696    mov         ecx,1
 004FD69B    mov         eax,4FDF7C;'Region 1: Size:%-8s Start:%-8s'
 004FD6A0    call        0040D630
 004FD6A5    mov         edx,dword ptr [ebp-84]
 004FD6AB    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD6B0    mov         eax,dword ptr [eax]
 004FD6B2    mov         eax,dword ptr [eax+2F8]
 004FD6B8    mov         eax,dword ptr [eax+248]
 004FD6BE    mov         ecx,dword ptr [eax]
 004FD6C0    call        dword ptr [ecx+38]
 004FD6C3    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD6C8    call        004CE56C
 004FD6CD    mov         dword ptr [ebp-8],eax
 004FD6D0    lea         eax,[ebp-90]
 004FD6D6    push        eax
 004FD6D7    mov         eax,dword ptr [ebp-8]
 004FD6DA    mov         dword ptr [ebp-58],eax
 004FD6DD    mov         byte ptr [ebp-54],0
 004FD6E1    lea         edx,[ebp-58]
 004FD6E4    xor         ecx,ecx
 004FD6E6    mov         eax,4FDF48;'%x'
 004FD6EB    call        0040D630
 004FD6F0    mov         edx,dword ptr [ebp-90]
 004FD6F6    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD6FB    mov         eax,dword ptr [eax+30C];TfmRegionMap.edSize2:TEdit
 004FD701    call        TPanel.SetCaption
 004FD706    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD70B    call        004CE56C
 004FD710    mov         dword ptr [ebp-8],eax
 004FD713    lea         eax,[ebp-94]
 004FD719    push        eax
 004FD71A    mov         eax,dword ptr [ebp-8]
 004FD71D    mov         dword ptr [ebp-58],eax
 004FD720    mov         byte ptr [ebp-54],0
 004FD724    lea         edx,[ebp-58]
 004FD727    xor         ecx,ecx
 004FD729    mov         eax,4FDF48;'%x'
 004FD72E    call        0040D630
 004FD733    mov         edx,dword ptr [ebp-94]
 004FD739    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD73E    mov         eax,dword ptr [eax+310];TfmRegionMap.edUba2:TEdit
 004FD744    call        TPanel.SetCaption
 004FD749    lea         eax,[ebp-98]
 004FD74F    push        eax
 004FD750    lea         edx,[ebp-9C]
 004FD756    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD75B    mov         eax,dword ptr [eax+30C];TfmRegionMap.edSize2:TEdit
 004FD761    call        TPanel.GetCaption
 004FD766    mov         eax,dword ptr [ebp-9C]
 004FD76C    mov         dword ptr [ebp-70],eax
 004FD76F    mov         byte ptr [ebp-6C],0B
 004FD773    lea         edx,[ebp-0A0]
 004FD779    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD77E    mov         eax,dword ptr [eax+310];TfmRegionMap.edUba2:TEdit
 004FD784    call        TPanel.GetCaption
 004FD789    mov         eax,dword ptr [ebp-0A0]
 004FD78F    mov         dword ptr [ebp-68],eax
 004FD792    mov         byte ptr [ebp-64],0B
 004FD796    lea         edx,[ebp-70]
 004FD799    mov         ecx,1
 004FD79E    mov         eax,4FDFA4;'Region 2: Size:%-8s Start:%-8s'
 004FD7A3    call        0040D630
 004FD7A8    mov         edx,dword ptr [ebp-98]
 004FD7AE    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD7B3    mov         eax,dword ptr [eax]
 004FD7B5    mov         eax,dword ptr [eax+2F8]
 004FD7BB    mov         eax,dword ptr [eax+248]
 004FD7C1    mov         ecx,dword ptr [eax]
 004FD7C3    call        dword ptr [ecx+38]
 004FD7C6    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD7CB    call        004CE56C
 004FD7D0    mov         dword ptr [ebp-8],eax
 004FD7D3    lea         eax,[ebp-0A4]
 004FD7D9    push        eax
 004FD7DA    mov         eax,dword ptr [ebp-8]
 004FD7DD    mov         dword ptr [ebp-58],eax
 004FD7E0    mov         byte ptr [ebp-54],0
 004FD7E4    lea         edx,[ebp-58]
 004FD7E7    xor         ecx,ecx
 004FD7E9    mov         eax,4FDF48;'%x'
 004FD7EE    call        0040D630
 004FD7F3    mov         edx,dword ptr [ebp-0A4]
 004FD7F9    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD7FE    mov         eax,dword ptr [eax+314];TfmRegionMap.edSize3:TEdit
 004FD804    call        TPanel.SetCaption
 004FD809    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD80E    call        004CE56C
 004FD813    mov         dword ptr [ebp-8],eax
 004FD816    lea         eax,[ebp-0A8]
 004FD81C    push        eax
 004FD81D    mov         eax,dword ptr [ebp-8]
 004FD820    mov         dword ptr [ebp-58],eax
 004FD823    mov         byte ptr [ebp-54],0
 004FD827    lea         edx,[ebp-58]
 004FD82A    xor         ecx,ecx
 004FD82C    mov         eax,4FDF48;'%x'
 004FD831    call        0040D630
 004FD836    mov         edx,dword ptr [ebp-0A8]
 004FD83C    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD841    mov         eax,dword ptr [eax+318];TfmRegionMap.edUba3:TEdit
 004FD847    call        TPanel.SetCaption
 004FD84C    lea         eax,[ebp-0AC]
 004FD852    push        eax
 004FD853    lea         edx,[ebp-0B0]
 004FD859    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD85E    mov         eax,dword ptr [eax+314];TfmRegionMap.edSize3:TEdit
 004FD864    call        TPanel.GetCaption
 004FD869    mov         eax,dword ptr [ebp-0B0]
 004FD86F    mov         dword ptr [ebp-70],eax
 004FD872    mov         byte ptr [ebp-6C],0B
 004FD876    lea         edx,[ebp-0B4]
 004FD87C    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD881    mov         eax,dword ptr [eax+318];TfmRegionMap.edUba3:TEdit
 004FD887    call        TPanel.GetCaption
 004FD88C    mov         eax,dword ptr [ebp-0B4]
 004FD892    mov         dword ptr [ebp-68],eax
 004FD895    mov         byte ptr [ebp-64],0B
 004FD899    lea         edx,[ebp-70]
 004FD89C    mov         ecx,1
 004FD8A1    mov         eax,4FDFCC;'Region 3: Size:%-8s Start:%-8s'
 004FD8A6    call        0040D630
 004FD8AB    mov         edx,dword ptr [ebp-0AC]
 004FD8B1    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD8B6    mov         eax,dword ptr [eax]
 004FD8B8    mov         eax,dword ptr [eax+2F8]
 004FD8BE    mov         eax,dword ptr [eax+248]
 004FD8C4    mov         ecx,dword ptr [eax]
 004FD8C6    call        dword ptr [ecx+38]
 004FD8C9    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD8CE    call        004CE56C
 004FD8D3    mov         dword ptr [ebp-8],eax
 004FD8D6    lea         eax,[ebp-0B8]
 004FD8DC    push        eax
 004FD8DD    mov         eax,dword ptr [ebp-8]
 004FD8E0    mov         dword ptr [ebp-58],eax
 004FD8E3    mov         byte ptr [ebp-54],0
 004FD8E7    lea         edx,[ebp-58]
 004FD8EA    xor         ecx,ecx
 004FD8EC    mov         eax,4FDF48;'%x'
 004FD8F1    call        0040D630
 004FD8F6    mov         edx,dword ptr [ebp-0B8]
 004FD8FC    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD901    mov         eax,dword ptr [eax+348];TfmRegionMap.edSize4:TEdit
 004FD907    call        TPanel.SetCaption
 004FD90C    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD911    call        004CE56C
 004FD916    mov         dword ptr [ebp-8],eax
 004FD919    lea         eax,[ebp-0BC]
 004FD91F    push        eax
 004FD920    mov         eax,dword ptr [ebp-8]
 004FD923    mov         dword ptr [ebp-58],eax
 004FD926    mov         byte ptr [ebp-54],0
 004FD92A    lea         edx,[ebp-58]
 004FD92D    xor         ecx,ecx
 004FD92F    mov         eax,4FDF48;'%x'
 004FD934    call        0040D630
 004FD939    mov         edx,dword ptr [ebp-0BC]
 004FD93F    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD944    mov         eax,dword ptr [eax+350];TfmRegionMap.edUba4:TEdit
 004FD94A    call        TPanel.SetCaption
 004FD94F    lea         eax,[ebp-0C0]
 004FD955    push        eax
 004FD956    lea         edx,[ebp-0C4]
 004FD95C    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD961    mov         eax,dword ptr [eax+348];TfmRegionMap.edSize4:TEdit
 004FD967    call        TPanel.GetCaption
 004FD96C    mov         eax,dword ptr [ebp-0C4]
 004FD972    mov         dword ptr [ebp-70],eax
 004FD975    mov         byte ptr [ebp-6C],0B
 004FD979    lea         edx,[ebp-0C8]
 004FD97F    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FD984    mov         eax,dword ptr [eax+350];TfmRegionMap.edUba4:TEdit
 004FD98A    call        TPanel.GetCaption
 004FD98F    mov         eax,dword ptr [ebp-0C8]
 004FD995    mov         dword ptr [ebp-68],eax
 004FD998    mov         byte ptr [ebp-64],0B
 004FD99C    lea         edx,[ebp-70]
 004FD99F    mov         ecx,1
 004FD9A4    mov         eax,4FDFF4;'Region 4: Size:%-8s Start:%-8s'
 004FD9A9    call        0040D630
 004FD9AE    mov         edx,dword ptr [ebp-0C0]
 004FD9B4    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FD9B9    mov         eax,dword ptr [eax]
 004FD9BB    mov         eax,dword ptr [eax+2F8]
 004FD9C1    mov         eax,dword ptr [eax+248]
 004FD9C7    mov         ecx,dword ptr [eax]
 004FD9C9    call        dword ptr [ecx+38]
 004FD9CC    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FD9D1    call        004CE56C
 004FD9D6    mov         dword ptr [ebp-8],eax
 004FD9D9    lea         eax,[ebp-0CC]
 004FD9DF    push        eax
 004FD9E0    mov         eax,dword ptr [ebp-8]
 004FD9E3    mov         dword ptr [ebp-58],eax
 004FD9E6    mov         byte ptr [ebp-54],0
 004FD9EA    lea         edx,[ebp-58]
 004FD9ED    xor         ecx,ecx
 004FD9EF    mov         eax,4FDF48;'%x'
 004FD9F4    call        0040D630
 004FD9F9    mov         edx,dword ptr [ebp-0CC]
 004FD9FF    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDA04    mov         eax,dword ptr [eax+34C];TfmRegionMap.edSize5:TEdit
 004FDA0A    call        TPanel.SetCaption
 004FDA0F    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FDA14    call        004CE56C
 004FDA19    mov         dword ptr [ebp-8],eax
 004FDA1C    lea         eax,[ebp-0D0]
 004FDA22    push        eax
 004FDA23    mov         eax,dword ptr [ebp-8]
 004FDA26    mov         dword ptr [ebp-58],eax
 004FDA29    mov         byte ptr [ebp-54],0
 004FDA2D    lea         edx,[ebp-58]
 004FDA30    xor         ecx,ecx
 004FDA32    mov         eax,4FDF48;'%x'
 004FDA37    call        0040D630
 004FDA3C    mov         edx,dword ptr [ebp-0D0]
 004FDA42    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDA47    mov         eax,dword ptr [eax+354];TfmRegionMap.edUba5:TEdit
 004FDA4D    call        TPanel.SetCaption
 004FDA52    lea         eax,[ebp-0D4]
 004FDA58    push        eax
 004FDA59    lea         edx,[ebp-0D8]
 004FDA5F    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDA64    mov         eax,dword ptr [eax+34C];TfmRegionMap.edSize5:TEdit
 004FDA6A    call        TPanel.GetCaption
 004FDA6F    mov         eax,dword ptr [ebp-0D8]
 004FDA75    mov         dword ptr [ebp-70],eax
 004FDA78    mov         byte ptr [ebp-6C],0B
 004FDA7C    lea         edx,[ebp-0DC]
 004FDA82    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDA87    mov         eax,dword ptr [eax+354];TfmRegionMap.edUba5:TEdit
 004FDA8D    call        TPanel.GetCaption
 004FDA92    mov         eax,dword ptr [ebp-0DC]
 004FDA98    mov         dword ptr [ebp-68],eax
 004FDA9B    mov         byte ptr [ebp-64],0B
 004FDA9F    lea         edx,[ebp-70]
 004FDAA2    mov         ecx,1
 004FDAA7    mov         eax,4FE01C;'Region 5: Size:%-8s Start:%-8s'
 004FDAAC    call        0040D630
 004FDAB1    mov         edx,dword ptr [ebp-0D4]
 004FDAB7    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FDABC    mov         eax,dword ptr [eax]
 004FDABE    mov         eax,dword ptr [eax+2F8]
 004FDAC4    mov         eax,dword ptr [eax+248]
 004FDACA    mov         ecx,dword ptr [eax]
 004FDACC    call        dword ptr [ecx+38]
 004FDACF    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FDAD4    call        004CE56C
 004FDAD9    mov         dword ptr [ebp-8],eax
 004FDADC    lea         eax,[ebp-0E0]
 004FDAE2    push        eax
 004FDAE3    mov         eax,dword ptr [ebp-8]
 004FDAE6    mov         dword ptr [ebp-58],eax
 004FDAE9    mov         byte ptr [ebp-54],0
 004FDAED    lea         edx,[ebp-58]
 004FDAF0    xor         ecx,ecx
 004FDAF2    mov         eax,4FDF48;'%x'
 004FDAF7    call        0040D630
 004FDAFC    mov         edx,dword ptr [ebp-0E0]
 004FDB02    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDB07    mov         eax,dword ptr [eax+358];TfmRegionMap.edSize6:TEdit
 004FDB0D    call        TPanel.SetCaption
 004FDB12    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FDB17    call        004CE56C
 004FDB1C    mov         dword ptr [ebp-8],eax
 004FDB1F    lea         eax,[ebp-0E4]
 004FDB25    push        eax
 004FDB26    mov         eax,dword ptr [ebp-8]
 004FDB29    mov         dword ptr [ebp-58],eax
 004FDB2C    mov         byte ptr [ebp-54],0
 004FDB30    lea         edx,[ebp-58]
 004FDB33    xor         ecx,ecx
 004FDB35    mov         eax,4FDF48;'%x'
 004FDB3A    call        0040D630
 004FDB3F    mov         edx,dword ptr [ebp-0E4]
 004FDB45    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDB4A    mov         eax,dword ptr [eax+360];TfmRegionMap.edUba6:TEdit
 004FDB50    call        TPanel.SetCaption
 004FDB55    lea         eax,[ebp-0E8]
 004FDB5B    push        eax
 004FDB5C    lea         edx,[ebp-0EC]
 004FDB62    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDB67    mov         eax,dword ptr [eax+358];TfmRegionMap.edSize6:TEdit
 004FDB6D    call        TPanel.GetCaption
 004FDB72    mov         eax,dword ptr [ebp-0EC]
 004FDB78    mov         dword ptr [ebp-70],eax
 004FDB7B    mov         byte ptr [ebp-6C],0B
 004FDB7F    lea         edx,[ebp-0F0]
 004FDB85    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDB8A    mov         eax,dword ptr [eax+360];TfmRegionMap.edUba6:TEdit
 004FDB90    call        TPanel.GetCaption
 004FDB95    mov         eax,dword ptr [ebp-0F0]
 004FDB9B    mov         dword ptr [ebp-68],eax
 004FDB9E    mov         byte ptr [ebp-64],0B
 004FDBA2    lea         edx,[ebp-70]
 004FDBA5    mov         ecx,1
 004FDBAA    mov         eax,4FE044;'Region 6: Size:%-8s Start:%-8s'
 004FDBAF    call        0040D630
 004FDBB4    mov         edx,dword ptr [ebp-0E8]
 004FDBBA    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FDBBF    mov         eax,dword ptr [eax]
 004FDBC1    mov         eax,dword ptr [eax+2F8]
 004FDBC7    mov         eax,dword ptr [eax+248]
 004FDBCD    mov         ecx,dword ptr [eax]
 004FDBCF    call        dword ptr [ecx+38]
 004FDBD2    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FDBD7    call        004CE56C
 004FDBDC    mov         dword ptr [ebp-8],eax
 004FDBDF    lea         eax,[ebp-0F4]
 004FDBE5    push        eax
 004FDBE6    mov         eax,dword ptr [ebp-8]
 004FDBE9    mov         dword ptr [ebp-58],eax
 004FDBEC    mov         byte ptr [ebp-54],0
 004FDBF0    lea         edx,[ebp-58]
 004FDBF3    xor         ecx,ecx
 004FDBF5    mov         eax,4FDF48;'%x'
 004FDBFA    call        0040D630
 004FDBFF    mov         edx,dword ptr [ebp-0F4]
 004FDC05    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDC0A    mov         eax,dword ptr [eax+35C];TfmRegionMap.edSize7:TEdit
 004FDC10    call        TPanel.SetCaption
 004FDC15    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FDC1A    call        004CE56C
 004FDC1F    mov         dword ptr [ebp-8],eax
 004FDC22    lea         eax,[ebp-0F8]
 004FDC28    push        eax
 004FDC29    mov         eax,dword ptr [ebp-8]
 004FDC2C    mov         dword ptr [ebp-58],eax
 004FDC2F    mov         byte ptr [ebp-54],0
 004FDC33    lea         edx,[ebp-58]
 004FDC36    xor         ecx,ecx
 004FDC38    mov         eax,4FDF48;'%x'
 004FDC3D    call        0040D630
 004FDC42    mov         edx,dword ptr [ebp-0F8]
 004FDC48    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDC4D    mov         eax,dword ptr [eax+364];TfmRegionMap.edUba7:TEdit
 004FDC53    call        TPanel.SetCaption
 004FDC58    lea         eax,[ebp-0FC]
 004FDC5E    push        eax
 004FDC5F    lea         edx,[ebp-100]
 004FDC65    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDC6A    mov         eax,dword ptr [eax+35C];TfmRegionMap.edSize7:TEdit
 004FDC70    call        TPanel.GetCaption
 004FDC75    mov         eax,dword ptr [ebp-100]
 004FDC7B    mov         dword ptr [ebp-70],eax
 004FDC7E    mov         byte ptr [ebp-6C],0B
 004FDC82    lea         edx,[ebp-104]
 004FDC88    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FDC8D    mov         eax,dword ptr [eax+364];TfmRegionMap.edUba7:TEdit
 004FDC93    call        TPanel.GetCaption
 004FDC98    mov         eax,dword ptr [ebp-104]
 004FDC9E    mov         dword ptr [ebp-68],eax
 004FDCA1    mov         byte ptr [ebp-64],0B
 004FDCA5    lea         edx,[ebp-70]
 004FDCA8    mov         ecx,1
 004FDCAD    mov         eax,4FE06C;'Region 7: Size:%-8s Start:%-8s'
 004FDCB2    call        0040D630
 004FDCB7    mov         edx,dword ptr [ebp-0FC]
 004FDCBD    mov         eax,[0056E32C];^gvar_0056DE74:TfmHDD
 004FDCC2    mov         eax,dword ptr [eax]
 004FDCC4    mov         eax,dword ptr [eax+2F8]
 004FDCCA    mov         eax,dword ptr [eax+248]
 004FDCD0    mov         ecx,dword ptr [eax]
 004FDCD2    call        dword ptr [ecx+38]
 004FDCD5    xor         eax,eax
 004FDCD7    pop         edx
 004FDCD8    pop         ecx
 004FDCD9    pop         ecx
 004FDCDA    mov         dword ptr fs:[eax],edx
 004FDCDD    push        4FDE44
 004FDCE2    lea         eax,[ebp-104]
 004FDCE8    mov         edx,2
 004FDCED    call        @LStrArrayClr
 004FDCF2    lea         eax,[ebp-0FC]
 004FDCF8    mov         edx,3
 004FDCFD    call        @LStrArrayClr
 004FDD02    lea         eax,[ebp-0F0]
 004FDD08    mov         edx,2
 004FDD0D    call        @LStrArrayClr
 004FDD12    lea         eax,[ebp-0E8]
 004FDD18    mov         edx,3
 004FDD1D    call        @LStrArrayClr
 004FDD22    lea         eax,[ebp-0DC]
 004FDD28    mov         edx,2
 004FDD2D    call        @LStrArrayClr
 004FDD32    lea         eax,[ebp-0D4]
 004FDD38    mov         edx,3
 004FDD3D    call        @LStrArrayClr
 004FDD42    lea         eax,[ebp-0C8]
 004FDD48    mov         edx,2
 004FDD4D    call        @LStrArrayClr
 004FDD52    lea         eax,[ebp-0C0]
 004FDD58    mov         edx,3
 004FDD5D    call        @LStrArrayClr
 004FDD62    lea         eax,[ebp-0B4]
 004FDD68    mov         edx,2
 004FDD6D    call        @LStrArrayClr
 004FDD72    lea         eax,[ebp-0AC]
 004FDD78    mov         edx,3
 004FDD7D    call        @LStrArrayClr
 004FDD82    lea         eax,[ebp-0A0]
 004FDD88    mov         edx,2
 004FDD8D    call        @LStrArrayClr
 004FDD92    lea         eax,[ebp-98]
 004FDD98    mov         edx,3
 004FDD9D    call        @LStrArrayClr
 004FDDA2    lea         eax,[ebp-8C]
 004FDDA8    mov         edx,2
 004FDDAD    call        @LStrArrayClr
 004FDDB2    lea         eax,[ebp-84]
 004FDDB8    mov         edx,3
 004FDDBD    call        @LStrArrayClr
 004FDDC2    lea         eax,[ebp-78]
 004FDDC5    mov         edx,2
 004FDDCA    call        @LStrArrayClr
 004FDDCF    lea         eax,[ebp-60]
 004FDDD2    mov         edx,2
 004FDDD7    call        @LStrArrayClr
 004FDDDC    lea         eax,[ebp-50]
 004FDDDF    call        @LStrClr
 004FDDE4    lea         eax,[ebp-4C]
 004FDDE7    call        @LStrClr
 004FDDEC    lea         eax,[ebp-48]
 004FDDEF    call        @LStrClr
 004FDDF4    lea         eax,[ebp-44]
 004FDDF7    call        @LStrClr
 004FDDFC    lea         eax,[ebp-40]
 004FDDFF    call        @LStrClr
 004FDE04    lea         eax,[ebp-3C]
 004FDE07    call        @LStrClr
 004FDE0C    lea         eax,[ebp-38]
 004FDE0F    call        @LStrClr
 004FDE14    lea         eax,[ebp-34]
 004FDE17    call        @LStrClr
 004FDE1C    lea         eax,[ebp-30]
 004FDE1F    call        @LStrClr
 004FDE24    lea         eax,[ebp-2C]
 004FDE27    call        @LStrClr
 004FDE2C    lea         eax,[ebp-28]
 004FDE2F    mov         edx,6
 004FDE34    call        @LStrArrayClr
 004FDE39    ret
>004FDE3A    jmp         @HandleFinally
>004FDE3F    jmp         004FDCE2
 004FDE44    mov         al,byte ptr [ebp-1]
 004FDE47    pop         ebx
 004FDE48    mov         esp,ebp
 004FDE4A    pop         ebp
 004FDE4B    ret
end;*}

//004FE08C
{*function sub_004FE08C:?;
begin
 004FE08C    push        ebp
 004FE08D    mov         ebp,esp
 004FE08F    mov         ecx,17
 004FE094    push        0
 004FE096    push        0
 004FE098    dec         ecx
>004FE099    jne         004FE094
 004FE09B    push        ebx
 004FE09C    xor         eax,eax
 004FE09E    push        ebp
 004FE09F    push        4FE8E0
 004FE0A4    push        dword ptr fs:[eax]
 004FE0A7    mov         dword ptr fs:[eax],esp
 004FE0AA    mov         eax,[0056E5A4];^gvar_0056DF04
 004FE0AF    mov         byte ptr [eax],0
 004FE0B2    mov         byte ptr [ebp-1],0
 004FE0B6    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE0BB    mov         edx,dword ptr [eax]
 004FE0BD    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004FE0BF    cmp         edx,0
>004FE0C2    jne         004FE0CF
 004FE0C4    cmp         eax,0
>004FE0C7    jbe         004FE758
>004FE0CD    jmp         004FE0D5
>004FE0CF    jle         004FE758
 004FE0D5    xor         ecx,ecx
 004FE0D7    xor         edx,edx
 004FE0D9    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE0DE    mov         ebx,dword ptr [eax]
 004FE0E0    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FE0E3    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE0E8    call        004CE56C
 004FE0ED    mov         dword ptr [ebp-8],eax
 004FE0F0    cmp         dword ptr [ebp-8],4C594F52
>004FE0F7    jne         004FE12A
 004FE0F9    xor         ecx,ecx
 004FE0FB    mov         edx,6
 004FE100    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE105    mov         ebx,dword ptr [eax]
 004FE107    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FE10A    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE10F    call        004CE548
 004FE114    mov         word ptr [ebp-0A],ax
 004FE118    movzx       edx,word ptr [ebp-0A]
 004FE11C    xor         ecx,ecx
 004FE11E    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE123    mov         ebx,dword ptr [eax]
 004FE125    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>004FE128    jmp         004FE13B
 004FE12A    xor         ecx,ecx
 004FE12C    mov         edx,18
 004FE131    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE136    mov         ebx,dword ptr [eax]
 004FE138    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FE13B    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE140    call        004CE528
 004FE145    mov         byte ptr [ebp-0B],al
 004FE148    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE14D    call        004CE528
 004FE152    mov         byte ptr [ebp-0C],al
 004FE155    xor         edx,edx
 004FE157    mov         dl,byte ptr [ebp-0B]
 004FE15A    xor         eax,eax
 004FE15C    mov         al,byte ptr [ebp-0C]
 004FE15F    imul        edx,eax
 004FE162    dec         edx
 004FE163    mov         cx,1
 004FE167    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE16C    mov         ebx,dword ptr [eax]
 004FE16E    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FE171    lea         edx,[ebp-18]
 004FE174    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE179    mov         eax,dword ptr [eax+330];TfmRegionMap.ed0:TLabeledEdit
 004FE17F    call        TPanel.GetCaption
 004FE184    mov         ecx,dword ptr [ebp-18]
 004FE187    lea         eax,[ebp-14]
 004FE18A    mov         edx,4FE8FC;'$'
 004FE18F    call        @LStrCat3
 004FE194    mov         eax,dword ptr [ebp-14]
 004FE197    xor         edx,edx
 004FE199    call        0040C4A8
 004FE19E    mov         byte ptr [ebp-0D],al
 004FE1A1    lea         edx,[ebp-0D]
 004FE1A4    mov         ecx,1
 004FE1A9    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE1AE    call        TStream.WriteBuffer
 004FE1B3    lea         edx,[ebp-20]
 004FE1B6    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE1BB    mov         eax,dword ptr [eax+334];TfmRegionMap.ed1:TLabeledEdit
 004FE1C1    call        TPanel.GetCaption
 004FE1C6    mov         ecx,dword ptr [ebp-20]
 004FE1C9    lea         eax,[ebp-1C]
 004FE1CC    mov         edx,4FE8FC;'$'
 004FE1D1    call        @LStrCat3
 004FE1D6    mov         eax,dword ptr [ebp-1C]
 004FE1D9    xor         edx,edx
 004FE1DB    call        0040C4A8
 004FE1E0    mov         byte ptr [ebp-0D],al
 004FE1E3    lea         edx,[ebp-0D]
 004FE1E6    mov         ecx,1
 004FE1EB    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE1F0    call        TStream.WriteBuffer
 004FE1F5    lea         edx,[ebp-28]
 004FE1F8    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE1FD    mov         eax,dword ptr [eax+338];TfmRegionMap.ed2:TLabeledEdit
 004FE203    call        TPanel.GetCaption
 004FE208    mov         ecx,dword ptr [ebp-28]
 004FE20B    lea         eax,[ebp-24]
 004FE20E    mov         edx,4FE8FC;'$'
 004FE213    call        @LStrCat3
 004FE218    mov         eax,dword ptr [ebp-24]
 004FE21B    xor         edx,edx
 004FE21D    call        0040C4A8
 004FE222    mov         word ptr [ebp-0A],ax
 004FE226    lea         edx,[ebp-0A]
 004FE229    mov         ecx,2
 004FE22E    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE233    call        TStream.WriteBuffer
 004FE238    lea         edx,[ebp-30]
 004FE23B    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE240    mov         eax,dword ptr [eax+33C];TfmRegionMap.ed4:TLabeledEdit
 004FE246    call        TPanel.GetCaption
 004FE24B    mov         ecx,dword ptr [ebp-30]
 004FE24E    lea         eax,[ebp-2C]
 004FE251    mov         edx,4FE8FC;'$'
 004FE256    call        @LStrCat3
 004FE25B    mov         eax,dword ptr [ebp-2C]
 004FE25E    xor         edx,edx
 004FE260    call        0040C4A8
 004FE265    mov         byte ptr [ebp-0D],al
 004FE268    lea         edx,[ebp-0D]
 004FE26B    mov         ecx,1
 004FE270    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE275    call        TStream.WriteBuffer
 004FE27A    lea         edx,[ebp-38]
 004FE27D    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE282    mov         eax,dword ptr [eax+340];TfmRegionMap.ed5:TLabeledEdit
 004FE288    call        TPanel.GetCaption
 004FE28D    mov         ecx,dword ptr [ebp-38]
 004FE290    lea         eax,[ebp-34]
 004FE293    mov         edx,4FE8FC;'$'
 004FE298    call        @LStrCat3
 004FE29D    mov         eax,dword ptr [ebp-34]
 004FE2A0    xor         edx,edx
 004FE2A2    call        0040C4A8
 004FE2A7    mov         byte ptr [ebp-0D],al
 004FE2AA    lea         edx,[ebp-0D]
 004FE2AD    mov         ecx,1
 004FE2B2    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE2B7    call        TStream.WriteBuffer
 004FE2BC    lea         edx,[ebp-40]
 004FE2BF    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE2C4    mov         eax,dword ptr [eax+2F8];TfmRegionMap.edSize0:TLabeledEdit
 004FE2CA    call        TPanel.GetCaption
 004FE2CF    mov         ecx,dword ptr [ebp-40]
 004FE2D2    lea         eax,[ebp-3C]
 004FE2D5    mov         edx,4FE8FC;'$'
 004FE2DA    call        @LStrCat3
 004FE2DF    mov         eax,dword ptr [ebp-3C]
 004FE2E2    xor         edx,edx
 004FE2E4    call        0040C4A8
 004FE2E9    mov         dword ptr [ebp-8],eax
 004FE2EC    lea         edx,[ebp-8]
 004FE2EF    mov         ecx,4
 004FE2F4    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE2F9    call        TStream.WriteBuffer
 004FE2FE    lea         edx,[ebp-48]
 004FE301    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE306    mov         eax,dword ptr [eax+2FC];TfmRegionMap.edUba0:TLabeledEdit
 004FE30C    call        TPanel.GetCaption
 004FE311    mov         ecx,dword ptr [ebp-48]
 004FE314    lea         eax,[ebp-44]
 004FE317    mov         edx,4FE8FC;'$'
 004FE31C    call        @LStrCat3
 004FE321    mov         eax,dword ptr [ebp-44]
 004FE324    xor         edx,edx
 004FE326    call        0040C4A8
 004FE32B    mov         dword ptr [ebp-8],eax
 004FE32E    lea         edx,[ebp-8]
 004FE331    mov         ecx,4
 004FE336    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE33B    call        TStream.WriteBuffer
 004FE340    lea         edx,[ebp-50]
 004FE343    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE348    mov         eax,dword ptr [eax+304];TfmRegionMap.edSize1:TEdit
 004FE34E    call        TPanel.GetCaption
 004FE353    mov         ecx,dword ptr [ebp-50]
 004FE356    lea         eax,[ebp-4C]
 004FE359    mov         edx,4FE8FC;'$'
 004FE35E    call        @LStrCat3
 004FE363    mov         eax,dword ptr [ebp-4C]
 004FE366    xor         edx,edx
 004FE368    call        0040C4A8
 004FE36D    mov         dword ptr [ebp-8],eax
 004FE370    lea         edx,[ebp-8]
 004FE373    mov         ecx,4
 004FE378    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE37D    call        TStream.WriteBuffer
 004FE382    lea         edx,[ebp-58]
 004FE385    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE38A    mov         eax,dword ptr [eax+308];TfmRegionMap.edUba1:TEdit
 004FE390    call        TPanel.GetCaption
 004FE395    mov         ecx,dword ptr [ebp-58]
 004FE398    lea         eax,[ebp-54]
 004FE39B    mov         edx,4FE8FC;'$'
 004FE3A0    call        @LStrCat3
 004FE3A5    mov         eax,dword ptr [ebp-54]
 004FE3A8    xor         edx,edx
 004FE3AA    call        0040C4A8
 004FE3AF    mov         dword ptr [ebp-8],eax
 004FE3B2    lea         edx,[ebp-8]
 004FE3B5    mov         ecx,4
 004FE3BA    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE3BF    call        TStream.WriteBuffer
 004FE3C4    lea         edx,[ebp-60]
 004FE3C7    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE3CC    mov         eax,dword ptr [eax+30C];TfmRegionMap.edSize2:TEdit
 004FE3D2    call        TPanel.GetCaption
 004FE3D7    mov         ecx,dword ptr [ebp-60]
 004FE3DA    lea         eax,[ebp-5C]
 004FE3DD    mov         edx,4FE8FC;'$'
 004FE3E2    call        @LStrCat3
 004FE3E7    mov         eax,dword ptr [ebp-5C]
 004FE3EA    xor         edx,edx
 004FE3EC    call        0040C4A8
 004FE3F1    mov         dword ptr [ebp-8],eax
 004FE3F4    lea         edx,[ebp-8]
 004FE3F7    mov         ecx,4
 004FE3FC    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE401    call        TStream.WriteBuffer
 004FE406    lea         edx,[ebp-68]
 004FE409    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE40E    mov         eax,dword ptr [eax+310];TfmRegionMap.edUba2:TEdit
 004FE414    call        TPanel.GetCaption
 004FE419    mov         ecx,dword ptr [ebp-68]
 004FE41C    lea         eax,[ebp-64]
 004FE41F    mov         edx,4FE8FC;'$'
 004FE424    call        @LStrCat3
 004FE429    mov         eax,dword ptr [ebp-64]
 004FE42C    xor         edx,edx
 004FE42E    call        0040C4A8
 004FE433    mov         dword ptr [ebp-8],eax
 004FE436    lea         edx,[ebp-8]
 004FE439    mov         ecx,4
 004FE43E    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE443    call        TStream.WriteBuffer
 004FE448    lea         edx,[ebp-70]
 004FE44B    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE450    mov         eax,dword ptr [eax+314];TfmRegionMap.edSize3:TEdit
 004FE456    call        TPanel.GetCaption
 004FE45B    mov         ecx,dword ptr [ebp-70]
 004FE45E    lea         eax,[ebp-6C]
 004FE461    mov         edx,4FE8FC;'$'
 004FE466    call        @LStrCat3
 004FE46B    mov         eax,dword ptr [ebp-6C]
 004FE46E    xor         edx,edx
 004FE470    call        0040C4A8
 004FE475    mov         dword ptr [ebp-8],eax
 004FE478    lea         edx,[ebp-8]
 004FE47B    mov         ecx,4
 004FE480    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE485    call        TStream.WriteBuffer
 004FE48A    lea         edx,[ebp-78]
 004FE48D    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE492    mov         eax,dword ptr [eax+318];TfmRegionMap.edUba3:TEdit
 004FE498    call        TPanel.GetCaption
 004FE49D    mov         ecx,dword ptr [ebp-78]
 004FE4A0    lea         eax,[ebp-74]
 004FE4A3    mov         edx,4FE8FC;'$'
 004FE4A8    call        @LStrCat3
 004FE4AD    mov         eax,dword ptr [ebp-74]
 004FE4B0    xor         edx,edx
 004FE4B2    call        0040C4A8
 004FE4B7    mov         dword ptr [ebp-8],eax
 004FE4BA    lea         edx,[ebp-8]
 004FE4BD    mov         ecx,4
 004FE4C2    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE4C7    call        TStream.WriteBuffer
 004FE4CC    lea         edx,[ebp-80]
 004FE4CF    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE4D4    mov         eax,dword ptr [eax+348];TfmRegionMap.edSize4:TEdit
 004FE4DA    call        TPanel.GetCaption
 004FE4DF    mov         ecx,dword ptr [ebp-80]
 004FE4E2    lea         eax,[ebp-7C]
 004FE4E5    mov         edx,4FE8FC;'$'
 004FE4EA    call        @LStrCat3
 004FE4EF    mov         eax,dword ptr [ebp-7C]
 004FE4F2    xor         edx,edx
 004FE4F4    call        0040C4A8
 004FE4F9    mov         dword ptr [ebp-8],eax
 004FE4FC    lea         edx,[ebp-8]
 004FE4FF    mov         ecx,4
 004FE504    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE509    call        TStream.WriteBuffer
 004FE50E    lea         edx,[ebp-88]
 004FE514    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE519    mov         eax,dword ptr [eax+350];TfmRegionMap.edUba4:TEdit
 004FE51F    call        TPanel.GetCaption
 004FE524    mov         ecx,dword ptr [ebp-88]
 004FE52A    lea         eax,[ebp-84]
 004FE530    mov         edx,4FE8FC;'$'
 004FE535    call        @LStrCat3
 004FE53A    mov         eax,dword ptr [ebp-84]
 004FE540    xor         edx,edx
 004FE542    call        0040C4A8
 004FE547    mov         dword ptr [ebp-8],eax
 004FE54A    lea         edx,[ebp-8]
 004FE54D    mov         ecx,4
 004FE552    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE557    call        TStream.WriteBuffer
 004FE55C    lea         edx,[ebp-90]
 004FE562    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE567    mov         eax,dword ptr [eax+34C];TfmRegionMap.edSize5:TEdit
 004FE56D    call        TPanel.GetCaption
 004FE572    mov         ecx,dword ptr [ebp-90]
 004FE578    lea         eax,[ebp-8C]
 004FE57E    mov         edx,4FE8FC;'$'
 004FE583    call        @LStrCat3
 004FE588    mov         eax,dword ptr [ebp-8C]
 004FE58E    xor         edx,edx
 004FE590    call        0040C4A8
 004FE595    mov         dword ptr [ebp-8],eax
 004FE598    lea         edx,[ebp-8]
 004FE59B    mov         ecx,4
 004FE5A0    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE5A5    call        TStream.WriteBuffer
 004FE5AA    lea         edx,[ebp-98]
 004FE5B0    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE5B5    mov         eax,dword ptr [eax+354];TfmRegionMap.edUba5:TEdit
 004FE5BB    call        TPanel.GetCaption
 004FE5C0    mov         ecx,dword ptr [ebp-98]
 004FE5C6    lea         eax,[ebp-94]
 004FE5CC    mov         edx,4FE8FC;'$'
 004FE5D1    call        @LStrCat3
 004FE5D6    mov         eax,dword ptr [ebp-94]
 004FE5DC    xor         edx,edx
 004FE5DE    call        0040C4A8
 004FE5E3    mov         dword ptr [ebp-8],eax
 004FE5E6    lea         edx,[ebp-8]
 004FE5E9    mov         ecx,4
 004FE5EE    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE5F3    call        TStream.WriteBuffer
 004FE5F8    lea         edx,[ebp-0A0]
 004FE5FE    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE603    mov         eax,dword ptr [eax+358];TfmRegionMap.edSize6:TEdit
 004FE609    call        TPanel.GetCaption
 004FE60E    mov         ecx,dword ptr [ebp-0A0]
 004FE614    lea         eax,[ebp-9C]
 004FE61A    mov         edx,4FE8FC;'$'
 004FE61F    call        @LStrCat3
 004FE624    mov         eax,dword ptr [ebp-9C]
 004FE62A    xor         edx,edx
 004FE62C    call        0040C4A8
 004FE631    mov         dword ptr [ebp-8],eax
 004FE634    lea         edx,[ebp-8]
 004FE637    mov         ecx,4
 004FE63C    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE641    call        TStream.WriteBuffer
 004FE646    lea         edx,[ebp-0A8]
 004FE64C    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE651    mov         eax,dword ptr [eax+360];TfmRegionMap.edUba6:TEdit
 004FE657    call        TPanel.GetCaption
 004FE65C    mov         ecx,dword ptr [ebp-0A8]
 004FE662    lea         eax,[ebp-0A4]
 004FE668    mov         edx,4FE8FC;'$'
 004FE66D    call        @LStrCat3
 004FE672    mov         eax,dword ptr [ebp-0A4]
 004FE678    xor         edx,edx
 004FE67A    call        0040C4A8
 004FE67F    mov         dword ptr [ebp-8],eax
 004FE682    lea         edx,[ebp-8]
 004FE685    mov         ecx,4
 004FE68A    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE68F    call        TStream.WriteBuffer
 004FE694    lea         edx,[ebp-0B0]
 004FE69A    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE69F    mov         eax,dword ptr [eax+35C];TfmRegionMap.edSize7:TEdit
 004FE6A5    call        TPanel.GetCaption
 004FE6AA    mov         ecx,dword ptr [ebp-0B0]
 004FE6B0    lea         eax,[ebp-0AC]
 004FE6B6    mov         edx,4FE8FC;'$'
 004FE6BB    call        @LStrCat3
 004FE6C0    mov         eax,dword ptr [ebp-0AC]
 004FE6C6    xor         edx,edx
 004FE6C8    call        0040C4A8
 004FE6CD    mov         dword ptr [ebp-8],eax
 004FE6D0    lea         edx,[ebp-8]
 004FE6D3    mov         ecx,4
 004FE6D8    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE6DD    call        TStream.WriteBuffer
 004FE6E2    lea         edx,[ebp-0B8]
 004FE6E8    mov         eax,[0056D3FC];0x0 gvar_0056D3FC:TfmRegionMap
 004FE6ED    mov         eax,dword ptr [eax+364];TfmRegionMap.edUba7:TEdit
 004FE6F3    call        TPanel.GetCaption
 004FE6F8    mov         ecx,dword ptr [ebp-0B8]
 004FE6FE    lea         eax,[ebp-0B4]
 004FE704    mov         edx,4FE8FC;'$'
 004FE709    call        @LStrCat3
 004FE70E    mov         eax,dword ptr [ebp-0B4]
 004FE714    xor         edx,edx
 004FE716    call        0040C4A8
 004FE71B    mov         dword ptr [ebp-8],eax
 004FE71E    lea         edx,[ebp-8]
 004FE721    mov         ecx,4
 004FE726    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE72B    call        TStream.WriteBuffer
 004FE730    mov         dl,1
 004FE732    mov         eax,[00572660];0x0 gvar_00572660:TMemoryStream
 004FE737    call        005014D0
 004FE73C    mov         edx,dword ptr ds:[572660];0x0 gvar_00572660:TMemoryStream
 004FE742    mov         ax,0B
 004FE746    call        0050980C
 004FE74B    mov         byte ptr [ebp-1],al
 004FE74E    mov         eax,4FE908;'Write Region Map - '
 004FE753    call        00544F6C
 004FE758    xor         eax,eax
 004FE75A    pop         edx
 004FE75B    pop         ecx
 004FE75C    pop         ecx
 004FE75D    mov         dword ptr fs:[eax],edx
 004FE760    push        4FE8EA
 004FE765    lea         eax,[ebp-0B8]
 004FE76B    call        @LStrClr
 004FE770    lea         eax,[ebp-0B4]
 004FE776    call        @LStrClr
 004FE77B    lea         eax,[ebp-0B0]
 004FE781    call        @LStrClr
 004FE786    lea         eax,[ebp-0AC]
 004FE78C    call        @LStrClr
 004FE791    lea         eax,[ebp-0A8]
 004FE797    call        @LStrClr
 004FE79C    lea         eax,[ebp-0A4]
 004FE7A2    call        @LStrClr
 004FE7A7    lea         eax,[ebp-0A0]
 004FE7AD    call        @LStrClr
 004FE7B2    lea         eax,[ebp-9C]
 004FE7B8    call        @LStrClr
 004FE7BD    lea         eax,[ebp-98]
 004FE7C3    call        @LStrClr
 004FE7C8    lea         eax,[ebp-94]
 004FE7CE    call        @LStrClr
 004FE7D3    lea         eax,[ebp-90]
 004FE7D9    call        @LStrClr
 004FE7DE    lea         eax,[ebp-8C]
 004FE7E4    call        @LStrClr
 004FE7E9    lea         eax,[ebp-88]
 004FE7EF    call        @LStrClr
 004FE7F4    lea         eax,[ebp-84]
 004FE7FA    call        @LStrClr
 004FE7FF    lea         eax,[ebp-80]
 004FE802    call        @LStrClr
 004FE807    lea         eax,[ebp-7C]
 004FE80A    call        @LStrClr
 004FE80F    lea         eax,[ebp-78]
 004FE812    call        @LStrClr
 004FE817    lea         eax,[ebp-74]
 004FE81A    call        @LStrClr
 004FE81F    lea         eax,[ebp-70]
 004FE822    call        @LStrClr
 004FE827    lea         eax,[ebp-6C]
 004FE82A    call        @LStrClr
 004FE82F    lea         eax,[ebp-68]
 004FE832    call        @LStrClr
 004FE837    lea         eax,[ebp-64]
 004FE83A    call        @LStrClr
 004FE83F    lea         eax,[ebp-60]
 004FE842    call        @LStrClr
 004FE847    lea         eax,[ebp-5C]
 004FE84A    call        @LStrClr
 004FE84F    lea         eax,[ebp-58]
 004FE852    call        @LStrClr
 004FE857    lea         eax,[ebp-54]
 004FE85A    call        @LStrClr
 004FE85F    lea         eax,[ebp-50]
 004FE862    call        @LStrClr
 004FE867    lea         eax,[ebp-4C]
 004FE86A    call        @LStrClr
 004FE86F    lea         eax,[ebp-48]
 004FE872    call        @LStrClr
 004FE877    lea         eax,[ebp-44]
 004FE87A    call        @LStrClr
 004FE87F    lea         eax,[ebp-40]
 004FE882    call        @LStrClr
 004FE887    lea         eax,[ebp-3C]
 004FE88A    call        @LStrClr
 004FE88F    lea         eax,[ebp-38]
 004FE892    call        @LStrClr
 004FE897    lea         eax,[ebp-34]
 004FE89A    call        @LStrClr
 004FE89F    lea         eax,[ebp-30]
 004FE8A2    call        @LStrClr
 004FE8A7    lea         eax,[ebp-2C]
 004FE8AA    call        @LStrClr
 004FE8AF    lea         eax,[ebp-28]
 004FE8B2    call        @LStrClr
 004FE8B7    lea         eax,[ebp-24]
 004FE8BA    call        @LStrClr
 004FE8BF    lea         eax,[ebp-20]
 004FE8C2    call        @LStrClr
 004FE8C7    lea         eax,[ebp-1C]
 004FE8CA    call        @LStrClr
 004FE8CF    lea         eax,[ebp-18]
 004FE8D2    call        @LStrClr
 004FE8D7    lea         eax,[ebp-14]
 004FE8DA    call        @LStrClr
 004FE8DF    ret
>004FE8E0    jmp         @HandleFinally
>004FE8E5    jmp         004FE765
 004FE8EA    mov         al,byte ptr [ebp-1]
 004FE8ED    pop         ebx
 004FE8EE    mov         esp,ebp
 004FE8F0    pop         ebp
 004FE8F1    ret
end;*}

//004FE91C
procedure TfmRegionMap.btReadClick(Sender:TObject);
begin
{*
 004FE91C    push        ebp
 004FE91D    mov         ebp,esp
 004FE91F    add         esp,0FFFFFFF8
 004FE922    mov         dword ptr [ebp-8],edx
 004FE925    mov         dword ptr [ebp-4],eax
 004FE928    xor         edx,edx
 004FE92A    mov         eax,dword ptr [ebp-4]
 004FE92D    mov         eax,dword ptr [eax+32C];TfmRegionMap.btRead:TButton
 004FE933    mov         ecx,dword ptr [eax]
 004FE935    call        dword ptr [ecx+64];TImage.SetEnabled
 004FE938    xor         edx,edx
 004FE93A    mov         eax,dword ptr [ebp-4]
 004FE93D    mov         eax,dword ptr [eax+328];TfmRegionMap.btWrite:TButton
 004FE943    mov         ecx,dword ptr [eax]
 004FE945    call        dword ptr [ecx+64];TImage.SetEnabled
 004FE948    call        004FD180
 004FE94D    mov         dl,1
 004FE94F    mov         eax,dword ptr [ebp-4]
 004FE952    mov         eax,dword ptr [eax+32C];TfmRegionMap.btRead:TButton
 004FE958    mov         ecx,dword ptr [eax]
 004FE95A    call        dword ptr [ecx+64];TImage.SetEnabled
 004FE95D    mov         dl,1
 004FE95F    mov         eax,dword ptr [ebp-4]
 004FE962    mov         eax,dword ptr [eax+328];TfmRegionMap.btWrite:TButton
 004FE968    mov         ecx,dword ptr [eax]
 004FE96A    call        dword ptr [ecx+64];TImage.SetEnabled
 004FE96D    mov         dl,1
 004FE96F    mov         eax,dword ptr [ebp-4]
 004FE972    mov         eax,dword ptr [eax+344];TfmRegionMap.btCorrect:TButton
 004FE978    mov         ecx,dword ptr [eax]
 004FE97A    call        dword ptr [ecx+64];TImage.SetEnabled
 004FE97D    pop         ecx
 004FE97E    pop         ecx
 004FE97F    pop         ebp
 004FE980    ret
*}
end;

//004FE984
procedure TfmRegionMap.btWriteClick(Sender:TObject);
begin
{*
 004FE984    push        ebp
 004FE985    mov         ebp,esp
 004FE987    add         esp,0FFFFFFF8
 004FE98A    mov         dword ptr [ebp-8],edx
 004FE98D    mov         dword ptr [ebp-4],eax
 004FE990    xor         edx,edx
 004FE992    mov         eax,dword ptr [ebp-4]
 004FE995    mov         eax,dword ptr [eax+32C];TfmRegionMap.btRead:TButton
 004FE99B    mov         ecx,dword ptr [eax]
 004FE99D    call        dword ptr [ecx+64];TImage.SetEnabled
 004FE9A0    xor         edx,edx
 004FE9A2    mov         eax,dword ptr [ebp-4]
 004FE9A5    mov         eax,dword ptr [eax+328];TfmRegionMap.btWrite:TButton
 004FE9AB    mov         ecx,dword ptr [eax]
 004FE9AD    call        dword ptr [ecx+64];TImage.SetEnabled
 004FE9B0    call        004FE08C
 004FE9B5    mov         dl,1
 004FE9B7    mov         eax,dword ptr [ebp-4]
 004FE9BA    mov         eax,dword ptr [eax+32C];TfmRegionMap.btRead:TButton
 004FE9C0    mov         ecx,dword ptr [eax]
 004FE9C2    call        dword ptr [ecx+64];TImage.SetEnabled
 004FE9C5    mov         dl,1
 004FE9C7    mov         eax,dword ptr [ebp-4]
 004FE9CA    mov         eax,dword ptr [eax+328];TfmRegionMap.btWrite:TButton
 004FE9D0    mov         ecx,dword ptr [eax]
 004FE9D2    call        dword ptr [ecx+64];TImage.SetEnabled
 004FE9D5    pop         ecx
 004FE9D6    pop         ecx
 004FE9D7    pop         ebp
 004FE9D8    ret
*}
end;

//004FE9DC
procedure TfmRegionMap.btCorrectClick(Sender:TObject);
begin
{*
 004FE9DC    push        ebp
 004FE9DD    mov         ebp,esp
 004FE9DF    add         esp,0FFFFFFDC
 004FE9E2    xor         ecx,ecx
 004FE9E4    mov         dword ptr [ebp-24],ecx
 004FE9E7    mov         dword ptr [ebp-18],ecx
 004FE9EA    mov         dword ptr [ebp-10],ecx
 004FE9ED    mov         dword ptr [ebp-14],ecx
 004FE9F0    mov         dword ptr [ebp-0C],edx
 004FE9F3    mov         dword ptr [ebp-4],eax
 004FE9F6    xor         eax,eax
 004FE9F8    push        ebp
 004FE9F9    push        4FEADE
 004FE9FE    push        dword ptr fs:[eax]
 004FEA01    mov         dword ptr fs:[eax],esp
 004FEA04    lea         edx,[ebp-14]
 004FEA07    mov         eax,dword ptr [ebp-4]
 004FEA0A    mov         eax,dword ptr [eax+308];TfmRegionMap.edUba1:TEdit
 004FEA10    call        TPanel.GetCaption
 004FEA15    mov         ecx,dword ptr [ebp-14]
 004FEA18    lea         eax,[ebp-10]
 004FEA1B    mov         edx,4FEAF4;'$'
 004FEA20    call        @LStrCat3
 004FEA25    mov         eax,dword ptr [ebp-10]
 004FEA28    xor         edx,edx
 004FEA2A    call        0040C4A8
 004FEA2F    mov         dword ptr [ebp-8],eax
 004FEA32    push        10
 004FEA34    call        user32.GetKeyState
 004FEA39    test        ax,ax
>004FEA3C    jge         004FEA70
 004FEA3E    lea         eax,[ebp-18]
 004FEA41    push        eax
 004FEA42    mov         eax,dword ptr [ebp-8]
 004FEA45    add         eax,eax
 004FEA47    mov         dword ptr [ebp-20],eax
 004FEA4A    mov         byte ptr [ebp-1C],0
 004FEA4E    lea         edx,[ebp-20]
 004FEA51    xor         ecx,ecx
 004FEA53    mov         eax,4FEB00;'%x'
 004FEA58    call        0040D630
 004FEA5D    mov         edx,dword ptr [ebp-18]
 004FEA60    mov         eax,dword ptr [ebp-4]
 004FEA63    mov         eax,dword ptr [eax+308];TfmRegionMap.edUba1:TEdit
 004FEA69    call        TPanel.SetCaption
>004FEA6E    jmp         004FEAA0
 004FEA70    lea         eax,[ebp-24]
 004FEA73    push        eax
 004FEA74    mov         eax,dword ptr [ebp-8]
 004FEA77    shr         eax,1
 004FEA79    mov         dword ptr [ebp-20],eax
 004FEA7C    mov         byte ptr [ebp-1C],0
 004FEA80    lea         edx,[ebp-20]
 004FEA83    xor         ecx,ecx
 004FEA85    mov         eax,4FEB00;'%x'
 004FEA8A    call        0040D630
 004FEA8F    mov         edx,dword ptr [ebp-24]
 004FEA92    mov         eax,dword ptr [ebp-4]
 004FEA95    mov         eax,dword ptr [eax+308];TfmRegionMap.edUba1:TEdit
 004FEA9B    call        TPanel.SetCaption
 004FEAA0    xor         edx,edx
 004FEAA2    mov         eax,dword ptr [ebp-4]
 004FEAA5    mov         eax,dword ptr [eax+344];TfmRegionMap.btCorrect:TButton
 004FEAAB    mov         ecx,dword ptr [eax]
 004FEAAD    call        dword ptr [ecx+64];TImage.SetEnabled
 004FEAB0    xor         eax,eax
 004FEAB2    pop         edx
 004FEAB3    pop         ecx
 004FEAB4    pop         ecx
 004FEAB5    mov         dword ptr fs:[eax],edx
 004FEAB8    push        4FEAE5
 004FEABD    lea         eax,[ebp-24]
 004FEAC0    call        @LStrClr
 004FEAC5    lea         eax,[ebp-18]
 004FEAC8    call        @LStrClr
 004FEACD    lea         eax,[ebp-14]
 004FEAD0    call        @LStrClr
 004FEAD5    lea         eax,[ebp-10]
 004FEAD8    call        @LStrClr
 004FEADD    ret
>004FEADE    jmp         @HandleFinally
>004FEAE3    jmp         004FEABD
 004FEAE5    mov         esp,ebp
 004FEAE7    pop         ebp
 004FEAE8    ret
*}
end;

//004FEB04
{*function sub_004FEB04:?;
begin
 004FEB04    push        ebp
 004FEB05    mov         ebp,esp
 004FEB07    add         esp,0FFFFFFF0
 004FEB0A    push        ebx
 004FEB0B    mov         eax,[0056E5A4];^gvar_0056DF04
 004FEB10    mov         byte ptr [eax],0
 004FEB13    mov         dl,1
 004FEB15    mov         eax,[0041DE14];TMemoryStream
 004FEB1A    call        TObject.Create;TMemoryStream.Create
 004FEB1F    mov         dword ptr [ebp-10],eax
 004FEB22    xor         eax,eax
 004FEB24    push        ebp
 004FEB25    push        4FEC55
 004FEB2A    push        dword ptr fs:[eax]
 004FEB2D    mov         dword ptr fs:[eax],esp
 004FEB30    mov         edx,dword ptr [ebp-10]
 004FEB33    mov         ax,0B
 004FEB37    call        005095B8
 004FEB3C    mov         byte ptr [ebp-1],al
 004FEB3F    mov         eax,dword ptr [ebp-10]
 004FEB42    mov         edx,dword ptr [eax]
 004FEB44    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004FEB46    cmp         edx,0
>004FEB49    jne         004FEB56
 004FEB4B    cmp         eax,0
>004FEB4E    jbe         004FEC3F
>004FEB54    jmp         004FEB5C
>004FEB56    jle         004FEC3F
 004FEB5C    xor         ecx,ecx
 004FEB5E    xor         edx,edx
 004FEB60    mov         eax,dword ptr [ebp-10]
 004FEB63    mov         ebx,dword ptr [eax]
 004FEB65    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FEB68    mov         eax,dword ptr [ebp-10]
 004FEB6B    call        004CE56C
 004FEB70    mov         dword ptr [ebp-8],eax
 004FEB73    cmp         dword ptr [ebp-8],4C594F52
>004FEB7A    jne         004FEBA7
 004FEB7C    xor         ecx,ecx
 004FEB7E    mov         edx,6
 004FEB83    mov         eax,dword ptr [ebp-10]
 004FEB86    mov         ebx,dword ptr [eax]
 004FEB88    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FEB8B    mov         eax,dword ptr [ebp-10]
 004FEB8E    call        004CE548
 004FEB93    mov         word ptr [ebp-0A],ax
 004FEB97    movzx       edx,word ptr [ebp-0A]
 004FEB9B    xor         ecx,ecx
 004FEB9D    mov         eax,dword ptr [ebp-10]
 004FEBA0    mov         ebx,dword ptr [eax]
 004FEBA2    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>004FEBA5    jmp         004FEBB6
 004FEBA7    xor         ecx,ecx
 004FEBA9    mov         edx,18
 004FEBAE    mov         eax,dword ptr [ebp-10]
 004FEBB1    mov         ebx,dword ptr [eax]
 004FEBB3    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FEBB6    mov         eax,dword ptr [ebp-10]
 004FEBB9    call        004CE528
 004FEBBE    mov         byte ptr [ebp-0B],al
 004FEBC1    mov         eax,dword ptr [ebp-10]
 004FEBC4    call        004CE528
 004FEBC9    mov         byte ptr [ebp-0C],al
 004FEBCC    xor         edx,edx
 004FEBCE    mov         dl,byte ptr [ebp-0B]
 004FEBD1    xor         eax,eax
 004FEBD3    mov         al,byte ptr [ebp-0C]
 004FEBD6    imul        edx,eax
 004FEBD9    add         edx,11
 004FEBDC    mov         cx,1
 004FEBE0    mov         eax,dword ptr [ebp-10]
 004FEBE3    mov         ebx,dword ptr [eax]
 004FEBE5    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FEBE8    mov         eax,dword ptr [ebp-10]
 004FEBEB    call        004CE56C
 004FEBF0    mov         dword ptr [ebp-8],eax
 004FEBF3    mov         cx,1
 004FEBF7    mov         edx,0FFFFFFFC
 004FEBFC    mov         eax,dword ptr [ebp-10]
 004FEBFF    mov         ebx,dword ptr [eax]
 004FEC01    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FEC04    mov         eax,dword ptr [ebp-8]
 004FEC07    shr         eax,1
 004FEC09    mov         dword ptr [ebp-8],eax
 004FEC0C    lea         edx,[ebp-8]
 004FEC0F    mov         ecx,4
 004FEC14    mov         eax,dword ptr [ebp-10]
 004FEC17    call        TStream.WriteBuffer
 004FEC1C    mov         dl,1
 004FEC1E    mov         eax,dword ptr [ebp-10]
 004FEC21    call        005014D0
 004FEC26    mov         edx,dword ptr [ebp-10]
 004FEC29    mov         ax,0B
 004FEC2D    call        0050980C
 004FEC32    mov         byte ptr [ebp-1],al
 004FEC35    mov         eax,4FEC6C;'Write Region Map - '
 004FEC3A    call        00544F6C
 004FEC3F    xor         eax,eax
 004FEC41    pop         edx
 004FEC42    pop         ecx
 004FEC43    pop         ecx
 004FEC44    mov         dword ptr fs:[eax],edx
 004FEC47    push        4FEC5C
 004FEC4C    mov         eax,dword ptr [ebp-10]
 004FEC4F    call        TObject.Free
 004FEC54    ret
>004FEC55    jmp         @HandleFinally
>004FEC5A    jmp         004FEC4C
 004FEC5C    mov         al,byte ptr [ebp-1]
 004FEC5F    pop         ebx
 004FEC60    mov         esp,ebp
 004FEC62    pop         ebp
 004FEC63    ret
end;*}

//004FEC80
{*function sub_004FEC80:?;
begin
 004FEC80    push        ebp
 004FEC81    mov         ebp,esp
 004FEC83    add         esp,0FFFFFFF0
 004FEC86    push        ebx
 004FEC87    mov         eax,[0056E5A4];^gvar_0056DF04
 004FEC8C    mov         byte ptr [eax],0
 004FEC8F    xor         eax,eax
 004FEC91    mov         dword ptr [ebp-4],eax
 004FEC94    mov         dl,1
 004FEC96    mov         eax,[0041DE14];TMemoryStream
 004FEC9B    call        TObject.Create;TMemoryStream.Create
 004FECA0    mov         dword ptr [ebp-10],eax
 004FECA3    xor         eax,eax
 004FECA5    push        ebp
 004FECA6    push        4FED87
 004FECAB    push        dword ptr fs:[eax]
 004FECAE    mov         dword ptr fs:[eax],esp
 004FECB1    mov         edx,dword ptr [ebp-10]
 004FECB4    mov         ax,0B
 004FECB8    call        005095B8
 004FECBD    mov         eax,dword ptr [ebp-10]
 004FECC0    mov         edx,dword ptr [eax]
 004FECC2    call        dword ptr [edx];TMemoryStream.sub_004235A0
 004FECC4    cmp         edx,0
>004FECC7    jne         004FECD4
 004FECC9    cmp         eax,0
>004FECCC    jbe         004FED71
>004FECD2    jmp         004FECDA
>004FECD4    jle         004FED71
 004FECDA    xor         ecx,ecx
 004FECDC    xor         edx,edx
 004FECDE    mov         eax,dword ptr [ebp-10]
 004FECE1    mov         ebx,dword ptr [eax]
 004FECE3    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FECE6    mov         eax,dword ptr [ebp-10]
 004FECE9    call        004CE56C
 004FECEE    mov         dword ptr [ebp-8],eax
 004FECF1    cmp         dword ptr [ebp-8],4C594F52
>004FECF8    jne         004FED25
 004FECFA    xor         ecx,ecx
 004FECFC    mov         edx,6
 004FED01    mov         eax,dword ptr [ebp-10]
 004FED04    mov         ebx,dword ptr [eax]
 004FED06    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FED09    mov         eax,dword ptr [ebp-10]
 004FED0C    call        004CE548
 004FED11    mov         word ptr [ebp-0A],ax
 004FED15    movzx       edx,word ptr [ebp-0A]
 004FED19    xor         ecx,ecx
 004FED1B    mov         eax,dword ptr [ebp-10]
 004FED1E    mov         ebx,dword ptr [eax]
 004FED20    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
>004FED23    jmp         004FED34
 004FED25    xor         ecx,ecx
 004FED27    mov         edx,18
 004FED2C    mov         eax,dword ptr [ebp-10]
 004FED2F    mov         ebx,dword ptr [eax]
 004FED31    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FED34    mov         eax,dword ptr [ebp-10]
 004FED37    call        004CE528
 004FED3C    mov         byte ptr [ebp-0B],al
 004FED3F    mov         eax,dword ptr [ebp-10]
 004FED42    call        004CE528
 004FED47    mov         byte ptr [ebp-0C],al
 004FED4A    xor         edx,edx
 004FED4C    mov         dl,byte ptr [ebp-0B]
 004FED4F    xor         eax,eax
 004FED51    mov         al,byte ptr [ebp-0C]
 004FED54    imul        edx,eax
 004FED57    add         edx,11
 004FED5A    mov         cx,1
 004FED5E    mov         eax,dword ptr [ebp-10]
 004FED61    mov         ebx,dword ptr [eax]
 004FED63    call        dword ptr [ebx+14];TMemoryStream.sub_00423DFC
 004FED66    mov         eax,dword ptr [ebp-10]
 004FED69    call        004CE56C
 004FED6E    mov         dword ptr [ebp-4],eax
 004FED71    xor         eax,eax
 004FED73    pop         edx
 004FED74    pop         ecx
 004FED75    pop         ecx
 004FED76    mov         dword ptr fs:[eax],edx
 004FED79    push        4FED8E
 004FED7E    mov         eax,dword ptr [ebp-10]
 004FED81    call        TObject.Free
 004FED86    ret
>004FED87    jmp         @HandleFinally
>004FED8C    jmp         004FED7E
 004FED8E    mov         eax,dword ptr [ebp-4]
 004FED91    pop         ebx
 004FED92    mov         esp,ebp
 004FED94    pop         ebp
 004FED95    ret
end;*}

end.