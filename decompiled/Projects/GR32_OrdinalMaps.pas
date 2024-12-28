//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit GR32_OrdinalMaps;

interface

uses
  SysUtils, Classes;

type
  TIntegerMap = class(TCustomMap)
  public
    ..:TArrayOfInteger;//f40
    destructor Destroy; virtual;//00515800
    //procedure v1C(?:?; ?:?; ?:?; ?:?); virtual;//v1C//005157B8
    //function v24:?; virtual;//v24//00515844
  end;
    //procedure sub_005157B8(?:?; ?:?; ?:?; ?:?);//005157B8
    destructor Destroy;//00515800
    //function sub_00515844:?;//00515844
    //function sub_00515864(?:TIntegerMap; ?:?; ?:Single):?;//00515864

implementation

//005157B8
{*procedure sub_005157B8(?:?; ?:?; ?:?; ?:?);
begin
 005157B8    push        ebp
 005157B9    mov         ebp,esp
 005157BB    add         esp,0FFFFFFF4
 005157BE    mov         dword ptr [ebp-0C],ecx
 005157C1    mov         dword ptr [ebp-8],edx
 005157C4    mov         dword ptr [ebp-4],eax
 005157C7    mov         eax,dword ptr [ebp+0C]
 005157CA    imul        dword ptr [ebp+8]
 005157CD    push        eax
 005157CE    mov         eax,dword ptr [ebp-4]
 005157D1    add         eax,40;TIntegerMap....:TArrayOfInteger
 005157D4    mov         ecx,1
 005157D9    mov         edx,dword ptr ds:[51D444];TArrayOfInteger
 005157DF    call        @DynArraySetLength
 005157E4    add         esp,4
 005157E7    mov         eax,dword ptr [ebp-8]
 005157EA    mov         edx,dword ptr [ebp+0C]
 005157ED    mov         dword ptr [eax],edx
 005157EF    mov         eax,dword ptr [ebp-0C]
 005157F2    mov         edx,dword ptr [ebp+8]
 005157F5    mov         dword ptr [eax],edx
 005157F7    mov         esp,ebp
 005157F9    pop         ebp
 005157FA    ret         8
end;*}

//00515800
destructor TIntegerMap.Destroy;
begin
{*
 00515800    push        ebp
 00515801    mov         ebp,esp
 00515803    add         esp,0FFFFFFF8
 00515806    call        @BeforeDestruction
 0051580B    mov         byte ptr [ebp-5],dl
 0051580E    mov         dword ptr [ebp-4],eax
 00515811    mov         eax,dword ptr [ebp-4]
 00515814    add         eax,40
 00515817    mov         edx,dword ptr ds:[51D444];TArrayOfInteger
 0051581D    call        @DynArrayClear
 00515822    mov         dl,byte ptr [ebp-5]
 00515825    and         dl,0FC
 00515828    mov         eax,dword ptr [ebp-4]
 0051582B    call        TThreadPersistent.Destroy
 00515830    cmp         byte ptr [ebp-5],0
>00515834    jle         0051583E
 00515836    mov         eax,dword ptr [ebp-4]
 00515839    call        @ClassDestroy
 0051583E    pop         ecx
 0051583F    pop         ecx
 00515840    pop         ebp
 00515841    ret
*}
end;

//00515844
{*function sub_00515844:?;
begin
 00515844    push        ebp
 00515845    mov         ebp,esp
 00515847    add         esp,0FFFFFFF8
 0051584A    mov         dword ptr [ebp-4],eax
 0051584D    mov         eax,dword ptr [ebp-4]
 00515850    cmp         dword ptr [eax+40],0;TIntegerMap.....:TArrayOfInteger
 00515854    setne       al
 00515857    xor         al,1
 00515859    mov         byte ptr [ebp-5],al
 0051585C    mov         al,byte ptr [ebp-5]
 0051585F    pop         ecx
 00515860    pop         ecx
 00515861    pop         ebp
 00515862    ret
end;*}

//00515864
{*function sub_00515864(?:TIntegerMap; ?:?; ?:Single):?;
begin
 00515864    push        ebp
 00515865    mov         ebp,esp
 00515867    add         esp,0FFFFFFF0
 0051586A    mov         dword ptr [ebp-0C],ecx
 0051586D    mov         dword ptr [ebp-8],edx
 00515870    mov         dword ptr [ebp-4],eax
 00515873    mov         eax,dword ptr [ebp-0C]
 00515876    mov         edx,dword ptr [ebp-4]
 00515879    imul        dword ptr [edx+34]
 0051587C    add         eax,dword ptr [ebp-8]
 0051587F    mov         edx,dword ptr [ebp-4]
 00515882    mov         edx,dword ptr [edx+40]
 00515885    lea         eax,[edx+eax*4]
 00515888    mov         dword ptr [ebp-10],eax
 0051588B    mov         eax,dword ptr [ebp-10]
 0051588E    mov         esp,ebp
 00515890    pop         ebp
 00515891    ret
end;*}

end.