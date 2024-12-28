//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit _Unit26;

interface

uses
  SysUtils, Classes;

    procedure sub_0043B648;//0043B648
    //function sub_0043B808:?;//0043B808
    //function sub_0043C000:?;//0043C000

implementation

//0043B648
procedure sub_0043B648;
begin
{*
 0043B648    push        ebp
 0043B649    mov         ebp,esp
 0043B64B    mov         eax,[00571C74];0x0 gvar_00571C74:TCriticalSection
 0043B650    call        0043B5E8
 0043B655    xor         eax,eax
 0043B657    push        ebp
 0043B658    push        43B7FF
 0043B65D    push        dword ptr fs:[eax]
 0043B660    mov         dword ptr fs:[eax],esp
 0043B663    cmp         dword ptr ds:[571C70],0;gvar_00571C70
>0043B66A    jle         0043B672
 0043B66C    dec         dword ptr ds:[571C70];gvar_00571C70
 0043B672    cmp         dword ptr ds:[571C6C],0;gvar_00571C6C:HMODULE
>0043B679    je          0043B7E7
 0043B67F    cmp         dword ptr ds:[571C70],0;gvar_00571C70
>0043B686    jne         0043B7E7
 0043B68C    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B691    push        eax
 0043B692    call        kernel32.FreeLibrary
 0043B697    xor         eax,eax
 0043B699    mov         [00571C6C],eax;gvar_00571C6C:HMODULE
 0043B69E    xor         eax,eax
 0043B6A0    mov         [00571BAC],eax;gvar_00571BAC:Pointer
 0043B6A5    xor         eax,eax
 0043B6A7    mov         [00571BB0],eax;gvar_00571BB0:Pointer
 0043B6AC    xor         eax,eax
 0043B6AE    mov         [00571BB4],eax;gvar_00571BB4:Pointer
 0043B6B3    xor         eax,eax
 0043B6B5    mov         [00571BB8],eax;gvar_00571BB8:Pointer
 0043B6BA    xor         eax,eax
 0043B6BC    mov         [00571BBC],eax;gvar_00571BBC:Pointer
 0043B6C1    xor         eax,eax
 0043B6C3    mov         [00571BC0],eax;gvar_00571BC0:Pointer
 0043B6C8    xor         eax,eax
 0043B6CA    mov         [00571BC4],eax;gvar_00571BC4:Pointer
 0043B6CF    xor         eax,eax
 0043B6D1    mov         [00571BC8],eax;gvar_00571BC8:Pointer
 0043B6D6    xor         eax,eax
 0043B6D8    mov         [00571BCC],eax;gvar_00571BCC:Pointer
 0043B6DD    xor         eax,eax
 0043B6DF    mov         [00571BD0],eax;gvar_00571BD0:Pointer
 0043B6E4    xor         eax,eax
 0043B6E6    mov         [00571BD4],eax;gvar_00571BD4:Pointer
 0043B6EB    xor         eax,eax
 0043B6ED    mov         [00571BD8],eax;gvar_00571BD8:Pointer
 0043B6F2    xor         eax,eax
 0043B6F4    mov         [00571BDC],eax;gvar_00571BDC:Pointer
 0043B6F9    xor         eax,eax
 0043B6FB    mov         [00571BE0],eax;gvar_00571BE0:Pointer
 0043B700    xor         eax,eax
 0043B702    mov         [00571BE4],eax;gvar_00571BE4:Pointer
 0043B707    xor         eax,eax
 0043B709    mov         [00571BE8],eax;gvar_00571BE8:Pointer
 0043B70E    xor         eax,eax
 0043B710    mov         [00571BEC],eax;gvar_00571BEC:Pointer
 0043B715    xor         eax,eax
 0043B717    mov         [00571BF0],eax;gvar_00571BF0:Pointer
 0043B71C    xor         eax,eax
 0043B71E    mov         [00571BF4],eax;gvar_00571BF4:Pointer
 0043B723    xor         eax,eax
 0043B725    mov         [00571BF8],eax;gvar_00571BF8:Pointer
 0043B72A    xor         eax,eax
 0043B72C    mov         [00571BFC],eax;gvar_00571BFC:Pointer
 0043B731    xor         eax,eax
 0043B733    mov         [00571C00],eax;gvar_00571C00:Pointer
 0043B738    xor         eax,eax
 0043B73A    mov         [00571C04],eax;gvar_00571C04:Pointer
 0043B73F    xor         eax,eax
 0043B741    mov         [00571C08],eax;gvar_00571C08:Pointer
 0043B746    xor         eax,eax
 0043B748    mov         [00571C0C],eax;gvar_00571C0C:Pointer
 0043B74D    xor         eax,eax
 0043B74F    mov         [00571C10],eax;gvar_00571C10:Pointer
 0043B754    xor         eax,eax
 0043B756    mov         [00571C14],eax;gvar_00571C14:Pointer
 0043B75B    xor         eax,eax
 0043B75D    mov         [00571C18],eax;gvar_00571C18:Pointer
 0043B762    xor         eax,eax
 0043B764    mov         [00571C1C],eax;gvar_00571C1C:Pointer
 0043B769    xor         eax,eax
 0043B76B    mov         [00571C20],eax;gvar_00571C20:Pointer
 0043B770    xor         eax,eax
 0043B772    mov         [00571C24],eax;gvar_00571C24:Pointer
 0043B777    xor         eax,eax
 0043B779    mov         [00571C28],eax;gvar_00571C28:Pointer
 0043B77E    xor         eax,eax
 0043B780    mov         [00571C2C],eax;gvar_00571C2C:Pointer
 0043B785    xor         eax,eax
 0043B787    mov         [00571C30],eax;gvar_00571C30:Pointer
 0043B78C    xor         eax,eax
 0043B78E    mov         [00571C34],eax;gvar_00571C34:Pointer
 0043B793    xor         eax,eax
 0043B795    mov         [00571C38],eax;gvar_00571C38:Pointer
 0043B79A    xor         eax,eax
 0043B79C    mov         [00571C3C],eax;gvar_00571C3C:Pointer
 0043B7A1    xor         eax,eax
 0043B7A3    mov         [00571C40],eax;gvar_00571C40:Pointer
 0043B7A8    xor         eax,eax
 0043B7AA    mov         [00571C44],eax;gvar_00571C44:Pointer
 0043B7AF    xor         eax,eax
 0043B7B1    mov         [00571C48],eax;gvar_00571C48:Pointer
 0043B7B6    xor         eax,eax
 0043B7B8    mov         [00571C4C],eax;gvar_00571C4C:Pointer
 0043B7BD    xor         eax,eax
 0043B7BF    mov         [00571C50],eax;gvar_00571C50:Pointer
 0043B7C4    xor         eax,eax
 0043B7C6    mov         [00571C54],eax;gvar_00571C54:Pointer
 0043B7CB    xor         eax,eax
 0043B7CD    mov         [00571C58],eax;gvar_00571C58:Pointer
 0043B7D2    xor         eax,eax
 0043B7D4    mov         [00571C5C],eax;gvar_00571C5C:Pointer
 0043B7D9    xor         eax,eax
 0043B7DB    mov         [00571C60],eax;gvar_00571C60:Pointer
 0043B7E0    xor         eax,eax
 0043B7E2    mov         [00571C64],eax;gvar_00571C64:Pointer
 0043B7E7    xor         eax,eax
 0043B7E9    pop         edx
 0043B7EA    pop         ecx
 0043B7EB    pop         ecx
 0043B7EC    mov         dword ptr fs:[eax],edx
 0043B7EF    push        43B806
 0043B7F4    mov         eax,[00571C74];0x0 gvar_00571C74:TCriticalSection
 0043B7F9    call        0043B5FC
 0043B7FE    ret
>0043B7FF    jmp         @HandleFinally
>0043B804    jmp         0043B7F4
 0043B806    pop         ebp
 0043B807    ret
*}
end;

//0043B808
{*function sub_0043B808:?;
begin
 0043B808    push        ebp
 0043B809    mov         ebp,esp
 0043B80B    push        ecx
 0043B80C    mov         eax,[00571C74];0x0 gvar_00571C74:TCriticalSection
 0043B811    call        0043B5E8
 0043B816    xor         eax,eax
 0043B818    push        ebp
 0043B819    push        43BC51
 0043B81E    push        dword ptr fs:[eax]
 0043B821    mov         dword ptr fs:[eax],esp
 0043B824    inc         dword ptr ds:[571C70];gvar_00571C70
 0043B82A    cmp         dword ptr ds:[571C6C],0;gvar_00571C6C:HMODULE
>0043B831    jne         0043BC2E
 0043B837    push        43BC60;'uxtheme.dll'
 0043B83C    call        kernel32.LoadLibraryA
 0043B841    mov         [00571C6C],eax;gvar_00571C6C:HMODULE
 0043B846    cmp         dword ptr ds:[571C6C],0;gvar_00571C6C:HMODULE
>0043B84D    jbe         0043BC2E
 0043B853    push        43BC6C;'OpenThemeData'
 0043B858    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B85D    push        eax
 0043B85E    call        kernel32.GetProcAddress
 0043B863    mov         [00571BAC],eax;gvar_00571BAC:Pointer
 0043B868    push        43BC7C;'CloseThemeData'
 0043B86D    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B872    push        eax
 0043B873    call        kernel32.GetProcAddress
 0043B878    mov         [00571BB0],eax;gvar_00571BB0:Pointer
 0043B87D    push        43BC8C;'DrawThemeBackground'
 0043B882    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B887    push        eax
 0043B888    call        kernel32.GetProcAddress
 0043B88D    mov         [00571BB4],eax;gvar_00571BB4:Pointer
 0043B892    push        43BCA0;'DrawThemeText'
 0043B897    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B89C    push        eax
 0043B89D    call        kernel32.GetProcAddress
 0043B8A2    mov         [00571BB8],eax;gvar_00571BB8:Pointer
 0043B8A7    push        43BCB0;'GetThemeBackgroundContentRect'
 0043B8AC    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B8B1    push        eax
 0043B8B2    call        kernel32.GetProcAddress
 0043B8B7    mov         [00571BBC],eax;gvar_00571BBC:Pointer
 0043B8BC    push        43BCB0;'GetThemeBackgroundContentRect'
 0043B8C1    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B8C6    push        eax
 0043B8C7    call        kernel32.GetProcAddress
 0043B8CC    mov         [00571BC0],eax;gvar_00571BC0:Pointer
 0043B8D1    push        43BCD0;'GetThemePartSize'
 0043B8D6    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B8DB    push        eax
 0043B8DC    call        kernel32.GetProcAddress
 0043B8E1    mov         [00571BC4],eax;gvar_00571BC4:Pointer
 0043B8E6    push        43BCE4;'GetThemeTextExtent'
 0043B8EB    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B8F0    push        eax
 0043B8F1    call        kernel32.GetProcAddress
 0043B8F6    mov         [00571BC8],eax;gvar_00571BC8:Pointer
 0043B8FB    push        43BCF8;'GetThemeTextMetrics'
 0043B900    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B905    push        eax
 0043B906    call        kernel32.GetProcAddress
 0043B90B    mov         [00571BCC],eax;gvar_00571BCC:Pointer
 0043B910    push        43BD0C;'GetThemeBackgroundRegion'
 0043B915    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B91A    push        eax
 0043B91B    call        kernel32.GetProcAddress
 0043B920    mov         [00571BD0],eax;gvar_00571BD0:Pointer
 0043B925    push        43BD28;'HitTestThemeBackground'
 0043B92A    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B92F    push        eax
 0043B930    call        kernel32.GetProcAddress
 0043B935    mov         [00571BD4],eax;gvar_00571BD4:Pointer
 0043B93A    push        43BD40;'DrawThemeEdge'
 0043B93F    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B944    push        eax
 0043B945    call        kernel32.GetProcAddress
 0043B94A    mov         [00571BD8],eax;gvar_00571BD8:Pointer
 0043B94F    push        43BD50;'DrawThemeIcon'
 0043B954    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B959    push        eax
 0043B95A    call        kernel32.GetProcAddress
 0043B95F    mov         [00571BDC],eax;gvar_00571BDC:Pointer
 0043B964    push        43BD60;'IsThemePartDefined'
 0043B969    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B96E    push        eax
 0043B96F    call        kernel32.GetProcAddress
 0043B974    mov         [00571BE0],eax;gvar_00571BE0:Pointer
 0043B979    push        43BD74;'IsThemeBackgroundPartiallyTransparent'
 0043B97E    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B983    push        eax
 0043B984    call        kernel32.GetProcAddress
 0043B989    mov         [00571BE4],eax;gvar_00571BE4:Pointer
 0043B98E    push        43BD9C;'GetThemeColor'
 0043B993    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B998    push        eax
 0043B999    call        kernel32.GetProcAddress
 0043B99E    mov         [00571BE8],eax;gvar_00571BE8:Pointer
 0043B9A3    push        43BDAC;'GetThemeMetric'
 0043B9A8    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B9AD    push        eax
 0043B9AE    call        kernel32.GetProcAddress
 0043B9B3    mov         [00571BEC],eax;gvar_00571BEC:Pointer
 0043B9B8    push        43BDBC;'GetThemeString'
 0043B9BD    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B9C2    push        eax
 0043B9C3    call        kernel32.GetProcAddress
 0043B9C8    mov         [00571BF0],eax;gvar_00571BF0:Pointer
 0043B9CD    push        43BDCC;'GetThemeBool'
 0043B9D2    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B9D7    push        eax
 0043B9D8    call        kernel32.GetProcAddress
 0043B9DD    mov         [00571BF4],eax;gvar_00571BF4:Pointer
 0043B9E2    push        43BDDC;'GetThemeInt'
 0043B9E7    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043B9EC    push        eax
 0043B9ED    call        kernel32.GetProcAddress
 0043B9F2    mov         [00571BF8],eax;gvar_00571BF8:Pointer
 0043B9F7    push        43BDE8;'GetThemeEnumValue'
 0043B9FC    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BA01    push        eax
 0043BA02    call        kernel32.GetProcAddress
 0043BA07    mov         [00571BFC],eax;gvar_00571BFC:Pointer
 0043BA0C    push        43BDFC;'GetThemePosition'
 0043BA11    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BA16    push        eax
 0043BA17    call        kernel32.GetProcAddress
 0043BA1C    mov         [00571C00],eax;gvar_00571C00:Pointer
 0043BA21    push        43BE10;'GetThemeFont'
 0043BA26    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BA2B    push        eax
 0043BA2C    call        kernel32.GetProcAddress
 0043BA31    mov         [00571C04],eax;gvar_00571C04:Pointer
 0043BA36    push        43BE20;'GetThemeRect'
 0043BA3B    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BA40    push        eax
 0043BA41    call        kernel32.GetProcAddress
 0043BA46    mov         [00571C08],eax;gvar_00571C08:Pointer
 0043BA4B    push        43BE30;'GetThemeMargins'
 0043BA50    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BA55    push        eax
 0043BA56    call        kernel32.GetProcAddress
 0043BA5B    mov         [00571C0C],eax;gvar_00571C0C:Pointer
 0043BA60    push        43BE40;'GetThemeIntList'
 0043BA65    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BA6A    push        eax
 0043BA6B    call        kernel32.GetProcAddress
 0043BA70    mov         [00571C10],eax;gvar_00571C10:Pointer
 0043BA75    push        43BE50;'GetThemePropertyOrigin'
 0043BA7A    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BA7F    push        eax
 0043BA80    call        kernel32.GetProcAddress
 0043BA85    mov         [00571C14],eax;gvar_00571C14:Pointer
 0043BA8A    push        43BE68;'SetWindowTheme'
 0043BA8F    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BA94    push        eax
 0043BA95    call        kernel32.GetProcAddress
 0043BA9A    mov         [00571C18],eax;gvar_00571C18:Pointer
 0043BA9F    push        43BE78;'GetThemeFilename'
 0043BAA4    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BAA9    push        eax
 0043BAAA    call        kernel32.GetProcAddress
 0043BAAF    mov         [00571C1C],eax;gvar_00571C1C:Pointer
 0043BAB4    push        43BE8C;'GetThemeSysColor'
 0043BAB9    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BABE    push        eax
 0043BABF    call        kernel32.GetProcAddress
 0043BAC4    mov         [00571C20],eax;gvar_00571C20:Pointer
 0043BAC9    push        43BEA0;'GetThemeSysColorBrush'
 0043BACE    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BAD3    push        eax
 0043BAD4    call        kernel32.GetProcAddress
 0043BAD9    mov         [00571C24],eax;gvar_00571C24:Pointer
 0043BADE    push        43BEB8;'GetThemeSysBool'
 0043BAE3    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BAE8    push        eax
 0043BAE9    call        kernel32.GetProcAddress
 0043BAEE    mov         [00571C28],eax;gvar_00571C28:Pointer
 0043BAF3    push        43BEC8;'GetThemeSysSize'
 0043BAF8    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BAFD    push        eax
 0043BAFE    call        kernel32.GetProcAddress
 0043BB03    mov         [00571C2C],eax;gvar_00571C2C:Pointer
 0043BB08    push        43BED8;'GetThemeSysFont'
 0043BB0D    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BB12    push        eax
 0043BB13    call        kernel32.GetProcAddress
 0043BB18    mov         [00571C30],eax;gvar_00571C30:Pointer
 0043BB1D    push        43BEE8;'GetThemeSysString'
 0043BB22    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BB27    push        eax
 0043BB28    call        kernel32.GetProcAddress
 0043BB2D    mov         [00571C34],eax;gvar_00571C34:Pointer
 0043BB32    push        43BEFC;'GetThemeSysInt'
 0043BB37    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BB3C    push        eax
 0043BB3D    call        kernel32.GetProcAddress
 0043BB42    mov         [00571C38],eax;gvar_00571C38:Pointer
 0043BB47    push        43BF0C;'IsThemeActive'
 0043BB4C    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BB51    push        eax
 0043BB52    call        kernel32.GetProcAddress
 0043BB57    mov         [00571C3C],eax;gvar_00571C3C:Pointer
 0043BB5C    push        43BF1C;'IsAppThemed'
 0043BB61    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BB66    push        eax
 0043BB67    call        kernel32.GetProcAddress
 0043BB6C    mov         [00571C40],eax;gvar_00571C40:Pointer
 0043BB71    push        43BF28;'GetWindowTheme'
 0043BB76    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BB7B    push        eax
 0043BB7C    call        kernel32.GetProcAddress
 0043BB81    mov         [00571C44],eax;gvar_00571C44:Pointer
 0043BB86    push        43BF38;'EnableThemeDialogTexture'
 0043BB8B    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BB90    push        eax
 0043BB91    call        kernel32.GetProcAddress
 0043BB96    mov         [00571C48],eax;gvar_00571C48:Pointer
 0043BB9B    push        43BF54;'IsThemeDialogTextureEnabled'
 0043BBA0    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BBA5    push        eax
 0043BBA6    call        kernel32.GetProcAddress
 0043BBAB    mov         [00571C4C],eax;gvar_00571C4C:Pointer
 0043BBB0    push        43BF70;'GetThemeAppProperties'
 0043BBB5    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BBBA    push        eax
 0043BBBB    call        kernel32.GetProcAddress
 0043BBC0    mov         [00571C50],eax;gvar_00571C50:Pointer
 0043BBC5    push        43BF88;'SetThemeAppProperties'
 0043BBCA    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BBCF    push        eax
 0043BBD0    call        kernel32.GetProcAddress
 0043BBD5    mov         [00571C54],eax;gvar_00571C54:Pointer
 0043BBDA    push        43BFA0;'GetCurrentThemeName'
 0043BBDF    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BBE4    push        eax
 0043BBE5    call        kernel32.GetProcAddress
 0043BBEA    mov         [00571C58],eax;gvar_00571C58:Pointer
 0043BBEF    push        43BFB4;'GetThemeDocumentationProperty'
 0043BBF4    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BBF9    push        eax
 0043BBFA    call        kernel32.GetProcAddress
 0043BBFF    mov         [00571C5C],eax;gvar_00571C5C:Pointer
 0043BC04    push        43BFD4;'DrawThemeParentBackground'
 0043BC09    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BC0E    push        eax
 0043BC0F    call        kernel32.GetProcAddress
 0043BC14    mov         [00571C60],eax;gvar_00571C60:Pointer
 0043BC19    push        43BFF0;'EnableTheming'
 0043BC1E    mov         eax,[00571C6C];0x0 gvar_00571C6C:HMODULE
 0043BC23    push        eax
 0043BC24    call        kernel32.GetProcAddress
 0043BC29    mov         [00571C64],eax;gvar_00571C64:Pointer
 0043BC2E    cmp         dword ptr ds:[571C6C],0;gvar_00571C6C:HMODULE
 0043BC35    seta        byte ptr [ebp-1]
 0043BC39    xor         eax,eax
 0043BC3B    pop         edx
 0043BC3C    pop         ecx
 0043BC3D    pop         ecx
 0043BC3E    mov         dword ptr fs:[eax],edx
 0043BC41    push        43BC58
 0043BC46    mov         eax,[00571C74];0x0 gvar_00571C74:TCriticalSection
 0043BC4B    call        0043B5FC
 0043BC50    ret
>0043BC51    jmp         @HandleFinally
>0043BC56    jmp         0043BC46
 0043BC58    mov         al,byte ptr [ebp-1]
 0043BC5B    pop         ecx
 0043BC5C    pop         ebp
 0043BC5D    ret
end;*}

//0043C000
{*function sub_0043C000:?;
begin
 0043C000    push        ebp
 0043C001    mov         ebp,esp
 0043C003    push        ecx
 0043C004    cmp         dword ptr ds:[571C6C],0;gvar_00571C6C:HMODULE
>0043C00B    jbe         0043C02C
 0043C00D    call        dword ptr ds:[571C40]
 0043C013    test        eax,eax
>0043C015    je          0043C021
 0043C017    call        dword ptr ds:[571C3C]
 0043C01D    test        eax,eax
>0043C01F    jne         0043C025
 0043C021    xor         eax,eax
>0043C023    jmp         0043C027
 0043C025    mov         al,1
 0043C027    mov         byte ptr [ebp-1],al
>0043C02A    jmp         0043C030
 0043C02C    mov         byte ptr [ebp-1],0
 0043C030    mov         al,byte ptr [ebp-1]
 0043C033    pop         ecx
 0043C034    pop         ebp
 0043C035    ret
end;*}

Initialization
//0043C08C
{*
 0043C08C    push        ebp
 0043C08D    mov         ebp,esp
 0043C08F    sub         dword ptr ds:[571C68],1
>0043C096    jae         0043C0A9
 0043C098    mov         dl,1
 0043C09A    mov         eax,[0043B4A8];TCriticalSection
 0043C09F    call        TCriticalSection.Create;TCriticalSection.Create
 0043C0A4    mov         [00571C74],eax;gvar_00571C74:TCriticalSection
 0043C0A9    pop         ebp
 0043C0AA    ret
*}
Finalization
//0043C038
{*
 0043C038    push        ebp
 0043C039    mov         ebp,esp
 0043C03B    xor         eax,eax
 0043C03D    push        ebp
 0043C03E    push        43C080
 0043C043    push        dword ptr fs:[eax]
 0043C046    mov         dword ptr fs:[eax],esp
 0043C049    inc         dword ptr ds:[571C68]
>0043C04F    jne         0043C072
 0043C051    cmp         dword ptr ds:[571C70],0;gvar_00571C70
>0043C058    jle         0043C068
 0043C05A    call        0043B648
 0043C05F    cmp         dword ptr ds:[571C70],0;gvar_00571C70
>0043C066    jg          0043C05A
 0043C068    mov         eax,[00571C74];0x0 gvar_00571C74:TCriticalSection
 0043C06D    call        TObject.Free
 0043C072    xor         eax,eax
 0043C074    pop         edx
 0043C075    pop         ecx
 0043C076    pop         ecx
 0043C077    mov         dword ptr fs:[eax],edx
 0043C07A    push        43C087
 0043C07F    ret
>0043C080    jmp         @HandleFinally
>0043C085    jmp         0043C07F
 0043C087    pop         ebp
 0043C088    ret
*}
end.