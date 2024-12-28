//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit WinHelpViewer;

interface

uses
  SysUtils, Classes;

type
  TWinHelpViewer = class(TInterfacedObject)
  public
    FViewerID:Integer;//fC
    FLastCommandType:TWHCommandType;//f10
    FLastCommand:String;//f14
    FLastContext:Integer;//f18
    FHelpManager:IHelpManager;//f1C
    procedure InternalShutDown;//0047C2AC
    constructor Create;//0047CD6C
  end;
    //procedure sub_0047C1CC(?:?; ?:?; ?:?);//0047C1CC
    //procedure sub_0047C2E4(?:?; ?:?);//0047C2E4
    //function sub_0047C304(?:?; ?:?):?;//0047C304
    //function sub_0047C390(?:?; ?:?):?;//0047C390
    //function sub_0047C440(?:?):?;//0047C440
    //procedure sub_0047C454(?:?);//0047C454
    //procedure sub_0047C4E8(?:?; ?:?);//0047C4E8
    //procedure sub_0047C640(?:?; ?:?);//0047C640
    //procedure sub_0047C65C(?:?);//0047C65C
    //procedure sub_0047C684(?:?);//0047C684
    //function sub_0047C6C0(?:?; ?:?):?;//0047C6C0
    //procedure sub_0047C734(?:?; ?:?);//0047C734
    //function sub_0047C854(?:?; ?:?; ?:?):?;//0047C854
    //procedure sub_0047C8CC(?:?; ?:?; ?:?);//0047C8CC
    //function sub_0047C978(?:?; ?:?; ?:?; ?:?; ?:?):?;//0047C978
    //procedure sub_0047CB60(?:?);//0047CB60
    //function sub_0047CB90(?:?; ?:?; ?:AnsiString; ?:?):?;//0047CB90
    //function sub_0047CC24(?:?; ?:?):?;//0047CC24
    //function sub_0047CC48(?:?; ?:?):?;//0047CC48
    //function sub_0047CC70(?:?):?;//0047CC70
    //procedure sub_0047CCD8(?:?);//0047CCD8

implementation

//0047C1CC
{*procedure sub_0047C1CC(?:?; ?:?; ?:?);
begin
 0047C1CC    push        ebp
 0047C1CD    mov         ebp,esp
 0047C1CF    add         esp,0FFFFFFEC
 0047C1D2    push        ebx
 0047C1D3    xor         ebx,ebx
 0047C1D5    mov         dword ptr [ebp-14],ebx
 0047C1D8    mov         dword ptr [ebp-10],ebx
 0047C1DB    mov         dword ptr [ebp-0C],ecx
 0047C1DE    mov         dword ptr [ebp-8],edx
 0047C1E1    mov         dword ptr [ebp-4],eax
 0047C1E4    xor         eax,eax
 0047C1E6    push        ebp
 0047C1E7    push        47C294
 0047C1EC    push        dword ptr fs:[eax]
 0047C1EF    mov         dword ptr fs:[eax],esp
 0047C1F2    mov         eax,dword ptr [ebp-0C]
 0047C1F5    call        @LStrClr
 0047C1FA    cmp         dword ptr [ebp-8],0
>0047C1FE    jne         0047C219
 0047C200    mov         eax,dword ptr [ebp-4]
 0047C203    cmp         dword ptr [eax+1C],0
>0047C207    je          0047C219
 0047C209    lea         edx,[ebp-10]
 0047C20C    mov         eax,dword ptr [ebp-4]
 0047C20F    mov         eax,dword ptr [eax+1C]
 0047C212    mov         ecx,dword ptr [eax]
 0047C214    call        dword ptr [ecx+10]
>0047C217    jmp         0047C224
 0047C219    lea         eax,[ebp-10]
 0047C21C    mov         edx,dword ptr [ebp-8]
 0047C21F    call        @LStrLAsg
 0047C224    cmp         dword ptr [ebp-10],0
>0047C228    jne         0047C240
 0047C22A    cmp         dword ptr ds:[571D88],0;WinHelpTester:IInterface
>0047C231    je          0047C240
 0047C233    lea         edx,[ebp-10]
 0047C236    mov         eax,[00571D88];0x0 WinHelpTester:IInterface
 0047C23B    mov         ecx,dword ptr [eax]
 0047C23D    call        dword ptr [ecx+20]
 0047C240    cmp         dword ptr ds:[571D88],0;WinHelpTester:IInterface
>0047C247    je          0047C26E
 0047C249    lea         edx,[ebp-14]
 0047C24C    mov         eax,[00571D88];0x0 WinHelpTester:IInterface
 0047C251    mov         ecx,dword ptr [eax]
 0047C253    call        dword ptr [ecx+1C]
 0047C256    push        dword ptr [ebp-14]
 0047C259    push        47C2A8;'\'
 0047C25E    push        dword ptr [ebp-10]
 0047C261    lea         eax,[ebp-10]
 0047C264    mov         edx,3
 0047C269    call        @LStrCatN
 0047C26E    mov         eax,dword ptr [ebp-0C]
 0047C271    mov         edx,dword ptr [ebp-10]
 0047C274    call        @LStrAsg
 0047C279    xor         eax,eax
 0047C27B    pop         edx
 0047C27C    pop         ecx
 0047C27D    pop         ecx
 0047C27E    mov         dword ptr fs:[eax],edx
 0047C281    push        47C29B
 0047C286    lea         eax,[ebp-14]
 0047C289    mov         edx,2
 0047C28E    call        @LStrArrayClr
 0047C293    ret
>0047C294    jmp         @HandleFinally
>0047C299    jmp         0047C286
 0047C29B    pop         ebx
 0047C29C    mov         esp,ebp
 0047C29E    pop         ebp
 0047C29F    ret
end;*}

//0047C2AC
procedure TWinHelpViewer.InternalShutDown;
begin
{*
 0047C2AC    push        ebp
 0047C2AD    mov         ebp,esp
 0047C2AF    push        ecx
 0047C2B0    mov         dword ptr [ebp-4],eax
 0047C2B3    mov         eax,dword ptr [ebp-4]
 0047C2B6    call        0047C65C
 0047C2BB    mov         eax,dword ptr [ebp-4]
 0047C2BE    cmp         dword ptr [eax+1C],0
>0047C2C2    je          0047C2E0
 0047C2C4    mov         eax,dword ptr [ebp-4]
 0047C2C7    mov         edx,dword ptr [eax+0C]
 0047C2CA    mov         eax,dword ptr [ebp-4]
 0047C2CD    mov         eax,dword ptr [eax+1C]
 0047C2D0    mov         ecx,dword ptr [eax]
 0047C2D2    call        dword ptr [ecx+14]
 0047C2D5    mov         eax,dword ptr [ebp-4]
 0047C2D8    add         eax,1C
 0047C2DB    call        @IntfClear
 0047C2E0    pop         ecx
 0047C2E1    pop         ebp
 0047C2E2    ret
*}
end;

//0047C2E4
{*procedure sub_0047C2E4(?:?; ?:?);
begin
 0047C2E4    push        ebp
 0047C2E5    mov         ebp,esp
 0047C2E7    add         esp,0FFFFFFF8
 0047C2EA    mov         dword ptr [ebp-8],edx
 0047C2ED    mov         dword ptr [ebp-4],eax
 0047C2F0    mov         eax,dword ptr [ebp-8]
 0047C2F3    mov         edx,dword ptr ds:[571D8C];0x0 ViewerName:AnsiString
 0047C2F9    call        @LStrAsg
 0047C2FE    pop         ecx
 0047C2FF    pop         ecx
 0047C300    pop         ebp
 0047C301    ret
end;*}

//0047C304
{*function sub_0047C304(?:?; ?:?):?;
begin
 0047C304    push        ebp
 0047C305    mov         ebp,esp
 0047C307    add         esp,0FFFFFFEC
 0047C30A    push        ebx
 0047C30B    xor         ecx,ecx
 0047C30D    mov         dword ptr [ebp-14],ecx
 0047C310    mov         dword ptr [ebp-8],edx
 0047C313    mov         dword ptr [ebp-4],eax
 0047C316    xor         eax,eax
 0047C318    push        ebp
 0047C319    push        47C380
 0047C31E    push        dword ptr fs:[eax]
 0047C321    mov         dword ptr fs:[eax],esp
 0047C324    cmp         dword ptr ds:[571D88],0;WinHelpTester:IInterface
>0047C32B    je          0047C363
 0047C32D    lea         ecx,[ebp-14]
 0047C330    xor         edx,edx
 0047C332    mov         eax,dword ptr [ebp-4]
 0047C335    call        0047C1CC
 0047C33A    mov         ecx,dword ptr [ebp-14]
 0047C33D    mov         edx,dword ptr [ebp-8]
 0047C340    mov         eax,[00571D88];0x0 WinHelpTester:IInterface
 0047C345    mov         ebx,dword ptr [eax]
 0047C347    call        dword ptr [ebx+0C]
 0047C34A    mov         byte ptr [ebp-0D],al
 0047C34D    cmp         byte ptr [ebp-0D],0
>0047C351    je          0047C35C
 0047C353    mov         dword ptr [ebp-0C],1
>0047C35A    jmp         0047C36A
 0047C35C    xor         eax,eax
 0047C35E    mov         dword ptr [ebp-0C],eax
>0047C361    jmp         0047C36A
 0047C363    mov         dword ptr [ebp-0C],1
 0047C36A    xor         eax,eax
 0047C36C    pop         edx
 0047C36D    pop         ecx
 0047C36E    pop         ecx
 0047C36F    mov         dword ptr fs:[eax],edx
 0047C372    push        47C387
 0047C377    lea         eax,[ebp-14]
 0047C37A    call        @LStrClr
 0047C37F    ret
>0047C380    jmp         @HandleFinally
>0047C385    jmp         0047C377
 0047C387    mov         eax,dword ptr [ebp-0C]
 0047C38A    pop         ebx
 0047C38B    mov         esp,ebp
 0047C38D    pop         ebp
 0047C38E    ret
end;*}

//0047C390
{*function sub_0047C390(?:?; ?:?):?;
begin
 0047C390    push        ebp
 0047C391    mov         ebp,esp
 0047C393    add         esp,0FFFFFFEC
 0047C396    xor         ecx,ecx
 0047C398    mov         dword ptr [ebp-10],ecx
 0047C39B    mov         dword ptr [ebp-14],ecx
 0047C39E    mov         dword ptr [ebp-8],edx
 0047C3A1    mov         dword ptr [ebp-4],eax
 0047C3A4    xor         eax,eax
 0047C3A6    push        ebp
 0047C3A7    push        47C425
 0047C3AC    push        dword ptr fs:[eax]
 0047C3AF    mov         dword ptr fs:[eax],esp
 0047C3B2    cmp         dword ptr ds:[571D88],0;WinHelpTester:IInterface
>0047C3B9    je          0047C3CD
 0047C3BB    mov         edx,dword ptr [ebp-8]
 0047C3BE    mov         eax,[00571D88];0x0 WinHelpTester:IInterface
 0047C3C3    mov         ecx,dword ptr [eax]
 0047C3C5    call        dword ptr [ecx+18]
 0047C3C8    mov         dword ptr [ebp-0C],eax
>0047C3CB    jmp         0047C40A
 0047C3CD    mov         dl,1
 0047C3CF    mov         eax,[0041DB24];TStringList
 0047C3D4    call        TObject.Create;TStringList.Create
 0047C3D9    mov         dword ptr [ebp-0C],eax
 0047C3DC    lea         edx,[ebp-14]
 0047C3DF    mov         eax,dword ptr [ebp-4]
 0047C3E2    call        0047C2E4
 0047C3E7    push        dword ptr [ebp-14]
 0047C3EA    push        47C43C;': '
 0047C3EF    push        dword ptr [ebp-8]
 0047C3F2    lea         eax,[ebp-10]
 0047C3F5    mov         edx,3
 0047C3FA    call        @LStrCatN
 0047C3FF    mov         edx,dword ptr [ebp-10]
 0047C402    mov         eax,dword ptr [ebp-0C]
 0047C405    mov         ecx,dword ptr [eax]
 0047C407    call        dword ptr [ecx+38];TStringList.sub_00422C34
 0047C40A    xor         eax,eax
 0047C40C    pop         edx
 0047C40D    pop         ecx
 0047C40E    pop         ecx
 0047C40F    mov         dword ptr fs:[eax],edx
 0047C412    push        47C42C
 0047C417    lea         eax,[ebp-14]
 0047C41A    mov         edx,2
 0047C41F    call        @LStrArrayClr
 0047C424    ret
>0047C425    jmp         @HandleFinally
>0047C42A    jmp         0047C417
 0047C42C    mov         eax,dword ptr [ebp-0C]
 0047C42F    mov         esp,ebp
 0047C431    pop         ebp
 0047C432    ret
end;*}

//0047C440
{*function sub_0047C440(?:?):?;
begin
 0047C440    push        ebp
 0047C441    mov         ebp,esp
 0047C443    add         esp,0FFFFFFF8
 0047C446    mov         dword ptr [ebp-4],eax
 0047C449    mov         byte ptr [ebp-5],1
 0047C44D    mov         al,byte ptr [ebp-5]
 0047C450    pop         ecx
 0047C451    pop         ecx
 0047C452    pop         ebp
 0047C453    ret
end;*}

//0047C454
{*procedure sub_0047C454(?:?);
begin
 0047C454    push        ebp
 0047C455    mov         ebp,esp
 0047C457    push        0
 0047C459    push        0
 0047C45B    push        0
 0047C45D    mov         dword ptr [ebp-4],eax
 0047C460    xor         eax,eax
 0047C462    push        ebp
 0047C463    push        47C4DC
 0047C468    push        dword ptr fs:[eax]
 0047C46B    mov         dword ptr fs:[eax],esp
 0047C46E    mov         eax,dword ptr [ebp-4]
 0047C471    call        0047CC70
 0047C476    test        al,al
>0047C478    je          0047C4C1
 0047C47A    mov         eax,dword ptr [ebp-4]
 0047C47D    mov         byte ptr [eax+10],2
 0047C481    lea         edx,[ebp-0C]
 0047C484    mov         eax,dword ptr [ebp-4]
 0047C487    mov         eax,dword ptr [eax+1C]
 0047C48A    mov         ecx,dword ptr [eax]
 0047C48C    call        dword ptr [ecx+10]
 0047C48F    mov         edx,dword ptr [ebp-0C]
 0047C492    lea         ecx,[ebp-8]
 0047C495    mov         eax,dword ptr [ebp-4]
 0047C498    call        0047C1CC
 0047C49D    cmp         dword ptr [ebp-8],0
>0047C4A1    je          0047C4C1
 0047C4A3    push        0
 0047C4A5    push        3
 0047C4A7    mov         eax,dword ptr [ebp-8]
 0047C4AA    call        @LStrToPChar
 0047C4AF    push        eax
 0047C4B0    mov         eax,dword ptr [ebp-4]
 0047C4B3    mov         eax,dword ptr [eax+1C]
 0047C4B6    mov         edx,dword ptr [eax]
 0047C4B8    call        dword ptr [edx+0C]
 0047C4BB    push        eax
 0047C4BC    call        user32.WinHelpA
 0047C4C1    xor         eax,eax
 0047C4C3    pop         edx
 0047C4C4    pop         ecx
 0047C4C5    pop         ecx
 0047C4C6    mov         dword ptr fs:[eax],edx
 0047C4C9    push        47C4E3
 0047C4CE    lea         eax,[ebp-0C]
 0047C4D1    mov         edx,2
 0047C4D6    call        @LStrArrayClr
 0047C4DB    ret
>0047C4DC    jmp         @HandleFinally
>0047C4E1    jmp         0047C4CE
 0047C4E3    mov         esp,ebp
 0047C4E5    pop         ebp
 0047C4E6    ret
end;*}

//0047C4E8
{*procedure sub_0047C4E8(?:?; ?:?);
begin
 0047C4E8    push        ebp
 0047C4E9    mov         ebp,esp
 0047C4EB    add         esp,0FFFFFFDC
 0047C4EE    xor         ecx,ecx
 0047C4F0    mov         dword ptr [ebp-24],ecx
 0047C4F3    mov         dword ptr [ebp-0C],ecx
 0047C4F6    mov         dword ptr [ebp-10],ecx
 0047C4F9    mov         dword ptr [ebp-8],edx
 0047C4FC    mov         dword ptr [ebp-4],eax
 0047C4FF    xor         eax,eax
 0047C501    push        ebp
 0047C502    push        47C5F2
 0047C507    push        dword ptr fs:[eax]
 0047C50A    mov         dword ptr fs:[eax],esp
 0047C50D    cmp         dword ptr [ebp-8],0
>0047C511    jne         0047C529
 0047C513    mov         ecx,47C020;^HInstance:LongWord
 0047C518    mov         dl,1
 0047C51A    mov         eax,[00438D18];EHelpSystemException
 0047C51F    call        Exception.Create;EHelpSystemException.Create
 0047C524    call        @RaiseExcept
 0047C529    lea         eax,[ebp-0C]
 0047C52C    push        eax
 0047C52D    mov         eax,dword ptr [ebp-8]
 0047C530    mov         dword ptr [ebp-20],eax
 0047C533    mov         byte ptr [ebp-1C],0B
 0047C537    lea         ecx,[ebp-24]
 0047C53A    xor         edx,edx
 0047C53C    mov         eax,dword ptr [ebp-4]
 0047C53F    call        0047C1CC
 0047C544    mov         eax,dword ptr [ebp-24]
 0047C547    mov         dword ptr [ebp-18],eax
 0047C54A    mov         byte ptr [ebp-14],0B
 0047C54E    lea         edx,[ebp-20]
 0047C551    mov         ecx,1
 0047C556    mov         eax,47C608;'IE(AL("%s",4),"AL(\"%0:s\",3)","JK(\"%1:s\",\"%0:s\")")'
 0047C55B    call        0040D630
 0047C560    mov         eax,dword ptr [ebp-4]
 0047C563    call        0047CC70
 0047C568    test        al,al
>0047C56A    je          0047C5CF
 0047C56C    lea         ecx,[ebp-10]
 0047C56F    xor         edx,edx
 0047C571    mov         eax,dword ptr [ebp-4]
 0047C574    call        0047C1CC
 0047C579    push        0
 0047C57B    mov         ecx,dword ptr [ebp-0C]
 0047C57E    mov         dl,1
 0047C580    mov         eax,dword ptr [ebp-4]
 0047C583    call        0047CB90
 0047C588    test        al,al
>0047C58A    je          0047C5CF
 0047C58C    cmp         dword ptr [ebp-10],0
>0047C590    je          0047C5CF
 0047C592    mov         eax,dword ptr [ebp-4]
 0047C595    mov         byte ptr [eax+10],1
 0047C599    mov         eax,dword ptr [ebp-4]
 0047C59C    add         eax,14
 0047C59F    mov         edx,dword ptr [ebp-0C]
 0047C5A2    call        @LStrAsg
 0047C5A7    mov         eax,dword ptr [ebp-0C]
 0047C5AA    call        @LStrToPChar
 0047C5AF    push        eax
 0047C5B0    push        102
 0047C5B5    mov         eax,dword ptr [ebp-10]
 0047C5B8    call        @LStrToPChar
 0047C5BD    push        eax
 0047C5BE    mov         eax,dword ptr [ebp-4]
 0047C5C1    mov         eax,dword ptr [eax+1C]
 0047C5C4    mov         edx,dword ptr [eax]
 0047C5C6    call        dword ptr [edx+0C]
 0047C5C9    push        eax
 0047C5CA    call        user32.WinHelpA
 0047C5CF    xor         eax,eax
 0047C5D1    pop         edx
 0047C5D2    pop         ecx
 0047C5D3    pop         ecx
 0047C5D4    mov         dword ptr fs:[eax],edx
 0047C5D7    push        47C5F9
 0047C5DC    lea         eax,[ebp-24]
 0047C5DF    call        @LStrClr
 0047C5E4    lea         eax,[ebp-10]
 0047C5E7    mov         edx,2
 0047C5EC    call        @LStrArrayClr
 0047C5F1    ret
>0047C5F2    jmp         @HandleFinally
>0047C5F7    jmp         0047C5DC
 0047C5F9    mov         esp,ebp
 0047C5FB    pop         ebp
 0047C5FC    ret
end;*}

//0047C640
{*procedure sub_0047C640(?:?; ?:?);
begin
 0047C640    push        ebp
 0047C641    mov         ebp,esp
 0047C643    add         esp,0FFFFFFF8
 0047C646    mov         dword ptr [ebp-8],edx
 0047C649    mov         dword ptr [ebp-4],eax
 0047C64C    mov         eax,dword ptr [ebp-8]
 0047C64F    mov         edx,dword ptr [ebp-4]
 0047C652    mov         dword ptr [edx+0C],eax
 0047C655    pop         ecx
 0047C656    pop         ecx
 0047C657    pop         ebp
 0047C658    ret
end;*}

//0047C65C
{*procedure sub_0047C65C(?:?);
begin
 0047C65C    push        ebp
 0047C65D    mov         ebp,esp
 0047C65F    push        ecx
 0047C660    mov         dword ptr [ebp-4],eax
 0047C663    mov         eax,dword ptr [ebp-4]
 0047C666    mov         byte ptr [eax+10],3
 0047C66A    push        0
 0047C66C    push        2
 0047C66E    push        47C680;'
 0047C673    push        0
 0047C675    call        user32.WinHelpA
 0047C67A    pop         ecx
 0047C67B    pop         ebp
 0047C67C    ret
end;*}

//0047C684
{*procedure sub_0047C684(?:?);
begin
 0047C684    push        ebp
 0047C685    mov         ebp,esp
 0047C687    push        ecx
 0047C688    mov         dword ptr [ebp-4],eax
 0047C68B    mov         eax,dword ptr [ebp-4]
 0047C68E    call        0047C65C
 0047C693    mov         eax,dword ptr [ebp-4]
 0047C696    cmp         dword ptr [eax+1C],0
>0047C69A    je          0047C6A7
 0047C69C    mov         eax,dword ptr [ebp-4]
 0047C69F    add         eax,1C
 0047C6A2    call        @IntfClear
 0047C6A7    cmp         dword ptr ds:[571D88],0;WinHelpTester:IInterface
>0047C6AE    je          0047C6BA
 0047C6B0    mov         eax,571D88;WinHelpTester:IInterface
 0047C6B5    call        @IntfClear
 0047C6BA    pop         ecx
 0047C6BB    pop         ebp
 0047C6BC    ret
end;*}

//0047C6C0
{*function sub_0047C6C0(?:?; ?:?):?;
begin
 0047C6C0    push        ebp
 0047C6C1    mov         ebp,esp
 0047C6C3    add         esp,0FFFFFFF0
 0047C6C6    push        ebx
 0047C6C7    xor         ecx,ecx
 0047C6C9    mov         dword ptr [ebp-10],ecx
 0047C6CC    mov         dword ptr [ebp-8],edx
 0047C6CF    mov         dword ptr [ebp-4],eax
 0047C6D2    xor         eax,eax
 0047C6D4    push        ebp
 0047C6D5    push        47C723
 0047C6DA    push        dword ptr fs:[eax]
 0047C6DD    mov         dword ptr fs:[eax],esp
 0047C6E0    mov         byte ptr [ebp-9],1
 0047C6E4    cmp         dword ptr ds:[571D88],0;WinHelpTester:IInterface
>0047C6EB    je          0047C70D
 0047C6ED    lea         ecx,[ebp-10]
 0047C6F0    xor         edx,edx
 0047C6F2    mov         eax,dword ptr [ebp-4]
 0047C6F5    call        0047C1CC
 0047C6FA    mov         ecx,dword ptr [ebp-10]
 0047C6FD    mov         edx,dword ptr [ebp-8]
 0047C700    mov         eax,[00571D88];0x0 WinHelpTester:IInterface
 0047C705    mov         ebx,dword ptr [eax]
 0047C707    call        dword ptr [ebx+10]
 0047C70A    mov         byte ptr [ebp-9],al
 0047C70D    xor         eax,eax
 0047C70F    pop         edx
 0047C710    pop         ecx
 0047C711    pop         ecx
 0047C712    mov         dword ptr fs:[eax],edx
 0047C715    push        47C72A
 0047C71A    lea         eax,[ebp-10]
 0047C71D    call        @LStrClr
 0047C722    ret
>0047C723    jmp         @HandleFinally
>0047C728    jmp         0047C71A
 0047C72A    mov         al,byte ptr [ebp-9]
 0047C72D    pop         ebx
 0047C72E    mov         esp,ebp
 0047C730    pop         ebp
 0047C731    ret
end;*}

//0047C734
{*procedure sub_0047C734(?:?; ?:?);
begin
 0047C734    push        ebp
 0047C735    mov         ebp,esp
 0047C737    add         esp,0FFFFFEE8
 0047C73D    xor         ecx,ecx
 0047C73F    mov         dword ptr [ebp-118],ecx
 0047C745    mov         dword ptr [ebp-0C],ecx
 0047C748    mov         dword ptr [ebp-8],edx
 0047C74B    mov         dword ptr [ebp-4],eax
 0047C74E    xor         eax,eax
 0047C750    push        ebp
 0047C751    push        47C839
 0047C756    push        dword ptr fs:[eax]
 0047C759    mov         dword ptr fs:[eax],esp
 0047C75C    mov         eax,dword ptr [ebp-8]
 0047C75F    mov         dword ptr [ebp-114],eax
 0047C765    mov         byte ptr [ebp-110],0B
 0047C76C    lea         eax,[ebp-114]
 0047C772    push        eax
 0047C773    push        0
 0047C775    mov         ecx,47C844
 0047C77A    lea         eax,[ebp-10C]
 0047C780    mov         edx,0FF
 0047C785    call        0040D5D8
 0047C78A    lea         ecx,[ebp-0C]
 0047C78D    xor         edx,edx
 0047C78F    mov         eax,dword ptr [ebp-4]
 0047C792    call        0047C1CC
 0047C797    mov         eax,dword ptr [ebp-4]
 0047C79A    call        0047CC70
 0047C79F    test        al,al
>0047C7A1    je          0047C818
 0047C7A3    push        0
 0047C7A5    lea         eax,[ebp-118]
 0047C7AB    lea         edx,[ebp-10C]
 0047C7B1    mov         ecx,100
 0047C7B6    call        @LStrFromArray
 0047C7BB    mov         ecx,dword ptr [ebp-118]
 0047C7C1    mov         dl,1
 0047C7C3    mov         eax,dword ptr [ebp-4]
 0047C7C6    call        0047CB90
 0047C7CB    test        al,al
>0047C7CD    je          0047C818
 0047C7CF    cmp         dword ptr [ebp-0C],0
>0047C7D3    je          0047C818
 0047C7D5    mov         eax,dword ptr [ebp-4]
 0047C7D8    mov         byte ptr [eax+10],1
 0047C7DC    mov         eax,dword ptr [ebp-4]
 0047C7DF    add         eax,14
 0047C7E2    lea         edx,[ebp-10C]
 0047C7E8    mov         ecx,100
 0047C7ED    call        @LStrFromArray
 0047C7F2    lea         eax,[ebp-10C]
 0047C7F8    push        eax
 0047C7F9    push        102
 0047C7FE    mov         eax,dword ptr [ebp-0C]
 0047C801    call        @LStrToPChar
 0047C806    push        eax
 0047C807    mov         eax,dword ptr [ebp-4]
 0047C80A    mov         eax,dword ptr [eax+1C]
 0047C80D    mov         edx,dword ptr [eax]
 0047C80F    call        dword ptr [edx+0C]
 0047C812    push        eax
 0047C813    call        user32.WinHelpA
 0047C818    xor         eax,eax
 0047C81A    pop         edx
 0047C81B    pop         ecx
 0047C81C    pop         ecx
 0047C81D    mov         dword ptr fs:[eax],edx
 0047C820    push        47C840
 0047C825    lea         eax,[ebp-118]
 0047C82B    call        @LStrClr
 0047C830    lea         eax,[ebp-0C]
 0047C833    call        @LStrClr
 0047C838    ret
>0047C839    jmp         @HandleFinally
>0047C83E    jmp         0047C825
 0047C840    mov         esp,ebp
 0047C842    pop         ebp
 0047C843    ret
end;*}

//0047C854
{*function sub_0047C854(?:?; ?:?; ?:?):?;
begin
 0047C854    push        ebp
 0047C855    mov         ebp,esp
 0047C857    add         esp,0FFFFFFEC
 0047C85A    push        ebx
 0047C85B    xor         ebx,ebx
 0047C85D    mov         dword ptr [ebp-14],ebx
 0047C860    mov         dword ptr [ebp-0C],ecx
 0047C863    mov         dword ptr [ebp-8],edx
 0047C866    mov         dword ptr [ebp-4],eax
 0047C869    xor         eax,eax
 0047C86B    push        ebp
 0047C86C    push        47C8BB
 0047C871    push        dword ptr fs:[eax]
 0047C874    mov         dword ptr fs:[eax],esp
 0047C877    mov         byte ptr [ebp-0D],1
 0047C87B    cmp         dword ptr ds:[571D88],0;WinHelpTester:IInterface
>0047C882    je          0047C8A5
 0047C884    lea         ecx,[ebp-14]
 0047C887    mov         edx,dword ptr [ebp-0C]
 0047C88A    mov         eax,dword ptr [ebp-4]
 0047C88D    call        0047C1CC
 0047C892    mov         ecx,dword ptr [ebp-14]
 0047C895    mov         edx,dword ptr [ebp-8]
 0047C898    mov         eax,[00571D88];0x0 WinHelpTester:IInterface
 0047C89D    mov         ebx,dword ptr [eax]
 0047C89F    call        dword ptr [ebx+14]
 0047C8A2    mov         byte ptr [ebp-0D],al
 0047C8A5    xor         eax,eax
 0047C8A7    pop         edx
 0047C8A8    pop         ecx
 0047C8A9    pop         ecx
 0047C8AA    mov         dword ptr fs:[eax],edx
 0047C8AD    push        47C8C2
 0047C8B2    lea         eax,[ebp-14]
 0047C8B5    call        @LStrClr
 0047C8BA    ret
>0047C8BB    jmp         @HandleFinally
>0047C8C0    jmp         0047C8B2
 0047C8C2    mov         al,byte ptr [ebp-0D]
 0047C8C5    pop         ebx
 0047C8C6    mov         esp,ebp
 0047C8C8    pop         ebp
 0047C8C9    ret
end;*}

//0047C8CC
{*procedure sub_0047C8CC(?:?; ?:?; ?:?);
begin
 0047C8CC    push        ebp
 0047C8CD    mov         ebp,esp
 0047C8CF    add         esp,0FFFFFFF0
 0047C8D2    push        ebx
 0047C8D3    xor         ebx,ebx
 0047C8D5    mov         dword ptr [ebp-10],ebx
 0047C8D8    mov         dword ptr [ebp-0C],ecx
 0047C8DB    mov         dword ptr [ebp-8],edx
 0047C8DE    mov         dword ptr [ebp-4],eax
 0047C8E1    xor         eax,eax
 0047C8E3    push        ebp
 0047C8E4    push        47C969
 0047C8E9    push        dword ptr fs:[eax]
 0047C8EC    mov         dword ptr fs:[eax],esp
 0047C8EF    lea         ecx,[ebp-10]
 0047C8F2    mov         edx,dword ptr [ebp-0C]
 0047C8F5    mov         eax,dword ptr [ebp-4]
 0047C8F8    call        0047C1CC
 0047C8FD    mov         eax,dword ptr [ebp-4]
 0047C900    call        0047CC70
 0047C905    test        al,al
>0047C907    je          0047C953
 0047C909    mov         eax,dword ptr [ebp-8]
 0047C90C    push        eax
 0047C90D    xor         ecx,ecx
 0047C90F    xor         edx,edx
 0047C911    mov         eax,dword ptr [ebp-4]
 0047C914    call        0047CB90
 0047C919    test        al,al
>0047C91B    je          0047C953
 0047C91D    cmp         dword ptr [ebp-10],0
>0047C921    je          0047C953
 0047C923    mov         eax,dword ptr [ebp-4]
 0047C926    mov         byte ptr [eax+10],0
 0047C92A    mov         eax,dword ptr [ebp-8]
 0047C92D    mov         edx,dword ptr [ebp-4]
 0047C930    mov         dword ptr [edx+18],eax
 0047C933    mov         eax,dword ptr [ebp-8]
 0047C936    push        eax
 0047C937    push        1
 0047C939    mov         eax,dword ptr [ebp-10]
 0047C93C    call        @LStrToPChar
 0047C941    push        eax
 0047C942    mov         eax,dword ptr [ebp-4]
 0047C945    mov         eax,dword ptr [eax+1C]
 0047C948    mov         edx,dword ptr [eax]
 0047C94A    call        dword ptr [edx+0C]
 0047C94D    push        eax
 0047C94E    call        user32.WinHelpA
 0047C953    xor         eax,eax
 0047C955    pop         edx
 0047C956    pop         ecx
 0047C957    pop         ecx
 0047C958    mov         dword ptr fs:[eax],edx
 0047C95B    push        47C970
 0047C960    lea         eax,[ebp-10]
 0047C963    call        @LStrClr
 0047C968    ret
>0047C969    jmp         @HandleFinally
>0047C96E    jmp         0047C960
 0047C970    pop         ebx
 0047C971    mov         esp,ebp
 0047C973    pop         ebp
 0047C974    ret
end;*}

//0047C978
{*function sub_0047C978(?:?; ?:?; ?:?; ?:?; ?:?):?;
begin
 0047C978    push        ebp
 0047C979    mov         ebp,esp
 0047C97B    add         esp,0FFFFFFE4
 0047C97E    push        ebx
 0047C97F    xor         ebx,ebx
 0047C981    mov         dword ptr [ebp-1C],ebx
 0047C984    mov         dword ptr [ebp-18],ebx
 0047C987    mov         dword ptr [ebp-14],ebx
 0047C98A    mov         dword ptr [ebp-0C],ecx
 0047C98D    mov         dword ptr [ebp-8],edx
 0047C990    mov         dword ptr [ebp-4],eax
 0047C993    xor         eax,eax
 0047C995    push        ebp
 0047C996    push        47CA82
 0047C99B    push        dword ptr fs:[eax]
 0047C99E    mov         dword ptr fs:[eax],esp
 0047C9A1    mov         byte ptr [ebp-0D],0
 0047C9A5    mov         eax,dword ptr [ebp-4]
 0047C9A8    call        0047CC70
 0047C9AD    test        al,al
>0047C9AF    je          0047CA67
 0047C9B5    cmp         word ptr [ebp+0C],102
>0047C9BB    je          0047C9EA
 0047C9BD    cmp         word ptr [ebp+0C],105
>0047C9C3    je          0047C9EA
 0047C9C5    cmp         word ptr [ebp+0C],201
>0047C9CB    je          0047C9EA
 0047C9CD    cmp         word ptr [ebp+0C],0A
>0047C9D2    je          0047C9EA
 0047C9D4    cmp         word ptr [ebp+0C],8
>0047C9D9    je          0047C9EA
 0047C9DB    cmp         word ptr [ebp+0C],1
>0047C9E0    je          0047C9EA
 0047C9E2    cmp         word ptr [ebp+0C],101
>0047C9E8    jne         0047CA0A
 0047C9EA    push        0
 0047C9EC    lea         edx,[ebp-14]
 0047C9EF    movzx       eax,word ptr [ebp+0C]
 0047C9F3    call        IntToStr
 0047C9F8    mov         ecx,dword ptr [ebp-14]
 0047C9FB    mov         dl,1
 0047C9FD    mov         eax,dword ptr [ebp-4]
 0047CA00    call        0047CB90
 0047CA05    mov         byte ptr [ebp-0E],al
>0047CA08    jmp         0047CA0E
 0047CA0A    mov         byte ptr [ebp-0E],1
 0047CA0E    cmp         byte ptr [ebp-0E],0
>0047CA12    je          0047CA67
 0047CA14    mov         eax,dword ptr [ebp-4]
 0047CA17    mov         byte ptr [eax+10],1
 0047CA1B    lea         edx,[ebp-18]
 0047CA1E    movzx       eax,word ptr [ebp+0C]
 0047CA22    call        IntToStr
 0047CA27    mov         edx,dword ptr [ebp-18]
 0047CA2A    mov         eax,dword ptr [ebp-4]
 0047CA2D    add         eax,14
 0047CA30    call        @LStrAsg
 0047CA35    mov         eax,dword ptr [ebp+8]
 0047CA38    push        eax
 0047CA39    movzx       eax,word ptr [ebp+0C]
 0047CA3D    push        eax
 0047CA3E    lea         ecx,[ebp-1C]
 0047CA41    mov         edx,dword ptr [ebp-0C]
 0047CA44    mov         eax,dword ptr [ebp-4]
 0047CA47    call        0047C1CC
 0047CA4C    mov         eax,dword ptr [ebp-1C]
 0047CA4F    call        @LStrToPChar
 0047CA54    push        eax
 0047CA55    mov         eax,dword ptr [ebp-8]
 0047CA58    push        eax
 0047CA59    call        user32.WinHelpA
 0047CA5E    cmp         eax,1
 0047CA61    sbb         eax,eax
 0047CA63    inc         eax
 0047CA64    mov         byte ptr [ebp-0D],al
 0047CA67    xor         eax,eax
 0047CA69    pop         edx
 0047CA6A    pop         ecx
 0047CA6B    pop         ecx
 0047CA6C    mov         dword ptr fs:[eax],edx
 0047CA6F    push        47CA89
 0047CA74    lea         eax,[ebp-1C]
 0047CA77    mov         edx,3
 0047CA7C    call        @LStrArrayClr
 0047CA81    ret
>0047CA82    jmp         @HandleFinally
>0047CA87    jmp         0047CA74
 0047CA89    mov         al,byte ptr [ebp-0D]
 0047CA8C    pop         ebx
 0047CA8D    mov         esp,ebp
 0047CA8F    pop         ebp
 0047CA90    ret         8
end;*}

//0047CB60
{*procedure sub_0047CB60(?:?);
begin
 0047CB60    push        ebp
 0047CB61    mov         ebp,esp
 0047CB63    push        ecx
 0047CB64    mov         dword ptr [ebp-4],eax
 0047CB67    mov         eax,dword ptr [ebp-4]
 0047CB6A    mov         byte ptr [eax+0C],0
 0047CB6E    mov         eax,dword ptr [ebp-4]
 0047CB71    mov         byte ptr [eax+0D],0
 0047CB75    mov         eax,dword ptr [ebp-4]
 0047CB78    xor         edx,edx
 0047CB7A    mov         dword ptr [eax+4],edx
 0047CB7D    mov         eax,dword ptr [ebp-4]
 0047CB80    push        eax
 0047CB81    push        47CA94
 0047CB86    call        user32.EnumWindows
 0047CB8B    pop         ecx
 0047CB8C    pop         ebp
 0047CB8D    ret
end;*}

//0047CB90
{*function sub_0047CB90(?:?; ?:?; ?:AnsiString; ?:?):?;
begin
 0047CB90    push        ebp
 0047CB91    mov         ebp,esp
 0047CB93    add         esp,0FFFFFFE0
 0047CB96    mov         dword ptr [ebp-0C],ecx
 0047CB99    mov         byte ptr [ebp-5],dl
 0047CB9C    mov         dword ptr [ebp-4],eax
 0047CB9F    mov         eax,dword ptr [ebp-0C]
 0047CBA2    call        @LStrAddRef
 0047CBA7    xor         eax,eax
 0047CBA9    push        ebp
 0047CBAA    push        47CC14
 0047CBAF    push        dword ptr fs:[eax]
 0047CBB2    mov         dword ptr fs:[eax],esp
 0047CBB5    mov         byte ptr [ebp-0D],1
 0047CBB9    lea         eax,[ebp-20]
 0047CBBC    call        0047CB60
 0047CBC1    cmp         byte ptr [ebp-14],0
>0047CBC5    je          0047CBFE
 0047CBC7    mov         al,byte ptr [ebp-5]
 0047CBCA    mov         edx,dword ptr [ebp-4]
 0047CBCD    cmp         al,byte ptr [edx+10]
>0047CBD0    jne         0047CBFE
 0047CBD2    mov         al,byte ptr [ebp-5]
 0047CBD5    sub         al,1
>0047CBD7    jb          0047CBF1
>0047CBD9    jne         0047CBFE
 0047CBDB    mov         eax,dword ptr [ebp-4]
 0047CBDE    mov         edx,dword ptr [eax+14]
 0047CBE1    mov         eax,dword ptr [ebp-0C]
 0047CBE4    call        CompareStr
 0047CBE9    test        eax,eax
 0047CBEB    setne       byte ptr [ebp-0D]
>0047CBEF    jmp         0047CBFE
 0047CBF1    mov         eax,dword ptr [ebp+8]
 0047CBF4    mov         edx,dword ptr [ebp-4]
 0047CBF7    cmp         eax,dword ptr [edx+18]
 0047CBFA    setne       byte ptr [ebp-0D]
 0047CBFE    xor         eax,eax
 0047CC00    pop         edx
 0047CC01    pop         ecx
 0047CC02    pop         ecx
 0047CC03    mov         dword ptr fs:[eax],edx
 0047CC06    push        47CC1B
 0047CC0B    lea         eax,[ebp-0C]
 0047CC0E    call        @LStrClr
 0047CC13    ret
>0047CC14    jmp         @HandleFinally
>0047CC19    jmp         0047CC0B
 0047CC1B    mov         al,byte ptr [ebp-0D]
 0047CC1E    mov         esp,ebp
 0047CC20    pop         ebp
 0047CC21    ret         4
end;*}

//0047CC24
{*function sub_0047CC24(?:?; ?:?):?;
begin
 0047CC24    push        ebp
 0047CC25    mov         ebp,esp
 0047CC27    add         esp,0FFFFFFE8
 0047CC2A    push        esi
 0047CC2B    push        edi
 0047CC2C    mov         esi,edx
 0047CC2E    lea         edi,[ebp-18]
 0047CC31    movs        dword ptr [edi],dword ptr [esi]
 0047CC32    movs        dword ptr [edi],dword ptr [esi]
 0047CC33    movs        dword ptr [edi],dword ptr [esi]
 0047CC34    movs        dword ptr [edi],dword ptr [esi]
 0047CC35    mov         dword ptr [ebp-4],eax
 0047CC38    mov         byte ptr [ebp-5],0
 0047CC3C    mov         al,byte ptr [ebp-5]
 0047CC3F    pop         edi
 0047CC40    pop         esi
 0047CC41    mov         esp,ebp
 0047CC43    pop         ebp
 0047CC44    ret
end;*}

//0047CC48
{*function sub_0047CC48(?:?; ?:?):?;
begin
 0047CC48    push        ebp
 0047CC49    mov         ebp,esp
 0047CC4B    add         esp,0FFFFFFE8
 0047CC4E    push        esi
 0047CC4F    push        edi
 0047CC50    mov         esi,edx
 0047CC52    lea         edi,[ebp-18]
 0047CC55    movs        dword ptr [edi],dword ptr [esi]
 0047CC56    movs        dword ptr [edi],dword ptr [esi]
 0047CC57    movs        dword ptr [edi],dword ptr [esi]
 0047CC58    movs        dword ptr [edi],dword ptr [esi]
 0047CC59    mov         dword ptr [ebp-4],eax
 0047CC5C    mov         al,byte ptr [ebp-0B]
 0047CC5F    xor         al,1
 0047CC61    mov         byte ptr [ebp-5],al
 0047CC64    mov         al,byte ptr [ebp-5]
 0047CC67    pop         edi
 0047CC68    pop         esi
 0047CC69    mov         esp,ebp
 0047CC6B    pop         ebp
 0047CC6C    ret
end;*}

//0047CC70
{*function sub_0047CC70(?:?):?;
begin
 0047CC70    push        ebp
 0047CC71    mov         ebp,esp
 0047CC73    add         esp,0FFFFFFE8
 0047CC76    mov         dword ptr [ebp-4],eax
 0047CC79    mov         byte ptr [ebp-5],0
 0047CC7D    lea         eax,[ebp-18]
 0047CC80    call        0047CB60
 0047CC85    cmp         byte ptr [ebp-0C],0
>0047CC89    je          0047CCA5
 0047CC8B    lea         eax,[ebp-18]
 0047CC8E    push        eax
 0047CC8F    push        47CAFC
 0047CC94    push        0
 0047CC96    mov         eax,dword ptr [ebp-14]
 0047CC99    push        eax
 0047CC9A    call        user32.GetWindowThreadProcessId
 0047CC9F    push        eax
 0047CCA0    call        user32.EnumThreadWindows
 0047CCA5    lea         edx,[ebp-18]
 0047CCA8    mov         eax,dword ptr [ebp-4]
 0047CCAB    call        0047CC24
 0047CCB0    test        al,al
>0047CCB2    jne         0047CCCF
 0047CCB4    lea         edx,[ebp-18]
 0047CCB7    mov         eax,dword ptr [ebp-4]
 0047CCBA    call        0047CC48
 0047CCBF    test        al,al
>0047CCC1    je          0047CCCB
 0047CCC3    mov         eax,dword ptr [ebp-4]
 0047CCC6    call        0047CCD8
 0047CCCB    mov         byte ptr [ebp-5],1
 0047CCCF    mov         al,byte ptr [ebp-5]
 0047CCD2    mov         esp,ebp
 0047CCD4    pop         ebp
 0047CCD5    ret
end;*}

//0047CCD8
{*procedure sub_0047CCD8(?:?);
begin
 0047CCD8    push        ebp
 0047CCD9    mov         ebp,esp
 0047CCDB    add         esp,0FFFFFFF4
 0047CCDE    xor         edx,edx
 0047CCE0    mov         dword ptr [ebp-0C],edx
 0047CCE3    mov         dword ptr [ebp-4],eax
 0047CCE6    xor         eax,eax
 0047CCE8    push        ebp
 0047CCE9    push        47CD61
 0047CCEE    push        dword ptr fs:[eax]
 0047CCF1    mov         dword ptr fs:[eax],esp
 0047CCF4    mov         eax,dword ptr [ebp-4]
 0047CCF7    call        0047C65C
 0047CCFC    call        kernel32.GetTickCount
 0047CD01    mov         dword ptr [ebp-8],eax
 0047CD04    push        0
 0047CD06    call        kernel32.Sleep
 0047CD0B    call        kernel32.GetTickCount
 0047CD10    sub         eax,dword ptr [ebp-8]
 0047CD13    cmp         eax,3E8
>0047CD18    jbe         0047CD04
 0047CD1A    lea         ecx,[ebp-0C]
 0047CD1D    xor         edx,edx
 0047CD1F    mov         eax,dword ptr [ebp-4]
 0047CD22    call        0047C1CC
 0047CD27    cmp         dword ptr [ebp-0C],0
>0047CD2B    je          0047CD4B
 0047CD2D    push        0
 0047CD2F    push        9
 0047CD31    mov         eax,dword ptr [ebp-0C]
 0047CD34    call        @LStrToPChar
 0047CD39    push        eax
 0047CD3A    mov         eax,dword ptr [ebp-4]
 0047CD3D    mov         eax,dword ptr [eax+1C]
 0047CD40    mov         edx,dword ptr [eax]
 0047CD42    call        dword ptr [edx+0C]
 0047CD45    push        eax
 0047CD46    call        user32.WinHelpA
 0047CD4B    xor         eax,eax
 0047CD4D    pop         edx
 0047CD4E    pop         ecx
 0047CD4F    pop         ecx
 0047CD50    mov         dword ptr fs:[eax],edx
 0047CD53    push        47CD68
 0047CD58    lea         eax,[ebp-0C]
 0047CD5B    call        @LStrClr
 0047CD60    ret
>0047CD61    jmp         @HandleFinally
>0047CD66    jmp         0047CD58
 0047CD68    mov         esp,ebp
 0047CD6A    pop         ebp
 0047CD6B    ret
end;*}

//0047CD6C
constructor TWinHelpViewer.Create;
begin
{*
 0047CD6C    push        ebp
 0047CD6D    mov         ebp,esp
 0047CD6F    add         esp,0FFFFFFF8
 0047CD72    test        dl,dl
>0047CD74    je          0047CD7E
 0047CD76    add         esp,0FFFFFFF0
 0047CD79    call        @ClassCreate
 0047CD7E    mov         byte ptr [ebp-5],dl
 0047CD81    mov         dword ptr [ebp-4],eax
 0047CD84    xor         edx,edx
 0047CD86    mov         eax,dword ptr [ebp-4]
 0047CD89    call        TObject.Create
 0047CD8E    mov         eax,571D98;HelpViewerIntf:ICustomHelpViewer
 0047CD93    mov         edx,dword ptr [ebp-4]
 0047CD96    test        edx,edx
>0047CD98    je          0047CD9D
 0047CD9A    sub         edx,0FFFFFFE0
 0047CD9D    call        @IntfCopy
 0047CDA2    mov         eax,dword ptr [ebp-4]
 0047CDA5    cmp         byte ptr [ebp-5],0
>0047CDA9    je          0047CDBA
 0047CDAB    call        @AfterConstruction
 0047CDB0    pop         dword ptr fs:[0]
 0047CDB7    add         esp,0C
 0047CDBA    mov         eax,dword ptr [ebp-4]
 0047CDBD    pop         ecx
 0047CDBE    pop         ecx
 0047CDBF    pop         ebp
 0047CDC0    ret
*}
end;

Initialization
//0047CE74
{*
 0047CE74    push        ebp
 0047CE75    mov         ebp,esp
 0047CE77    xor         eax,eax
 0047CE79    push        ebp
 0047CE7A    push        47CEC6
 0047CE7F    push        dword ptr fs:[eax]
 0047CE82    mov         dword ptr fs:[eax],esp
 0047CE85    sub         dword ptr ds:[571D90],1
>0047CE8C    jae         0047CEB8
 0047CE8E    mov         dl,1
 0047CE90    mov         eax,[0047C154];TWinHelpViewer
 0047CE95    call        TWinHelpViewer.Create
 0047CE9A    mov         [00571D94],eax;HelpViewer:TWinHelpViewer
 0047CE9F    mov         eax,[00571D94];HelpViewer:TWinHelpViewer
 0047CEA4    add         eax,1C
 0047CEA7    call        @IntfClear
 0047CEAC    mov         edx,eax
 0047CEAE    mov         eax,[00571D98];HelpViewerIntf:ICustomHelpViewer
 0047CEB3    call        RegisterViewer
 0047CEB8    xor         eax,eax
 0047CEBA    pop         edx
 0047CEBB    pop         ecx
 0047CEBC    pop         ecx
 0047CEBD    mov         dword ptr fs:[eax],edx
 0047CEC0    push        47CECD
 0047CEC5    ret
>0047CEC6    jmp         @HandleFinally
>0047CECB    jmp         0047CEC5
 0047CECD    pop         ebp
 0047CECE    ret
*}
Finalization
//0047CDFC
{*
 0047CDFC    push        ebp
 0047CDFD    mov         ebp,esp
 0047CDFF    xor         eax,eax
 0047CE01    push        ebp
 0047CE02    push        47CE6A
 0047CE07    push        dword ptr fs:[eax]
 0047CE0A    mov         dword ptr fs:[eax],esp
 0047CE0D    inc         dword ptr ds:[571D90]
>0047CE13    jne         0047CE5C
 0047CE15    mov         eax,[00571D94];HelpViewer:TWinHelpViewer
 0047CE1A    cmp         dword ptr [eax+1C],0
>0047CE1E    je          0047CE2A
 0047CE20    mov         eax,[00571D94];HelpViewer:TWinHelpViewer
 0047CE25    call        TWinHelpViewer.InternalShutDown
 0047CE2A    mov         eax,571D98;HelpViewerIntf:ICustomHelpViewer
 0047CE2F    call        @IntfClear
 0047CE34    mov         eax,571D88;WinHelpTester:IInterface
 0047CE39    call        @IntfClear
 0047CE3E    mov         eax,571D98;HelpViewerIntf:ICustomHelpViewer
 0047CE43    call        @IntfClear
 0047CE48    mov         eax,571D8C;ViewerName:AnsiString
 0047CE4D    call        @LStrClr
 0047CE52    mov         eax,571D88;WinHelpTester:IInterface
 0047CE57    call        @IntfClear
 0047CE5C    xor         eax,eax
 0047CE5E    pop         edx
 0047CE5F    pop         ecx
 0047CE60    pop         ecx
 0047CE61    mov         dword ptr fs:[eax],edx
 0047CE64    push        47CE71
 0047CE69    ret
>0047CE6A    jmp         @HandleFinally
>0047CE6F    jmp         0047CE69
 0047CE71    pop         ebp
 0047CE72    ret
*}
end.