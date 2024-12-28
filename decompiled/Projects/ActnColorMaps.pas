//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ActnColorMaps;

interface

uses
  SysUtils, Classes;

type
  TXPColorMap = class(TCustomActionBarColorMap)
  public
    procedure v38; virtual;//v38//004AED70
  end;
    procedure sub_004AED70;//004AED70

implementation

//004AED70
procedure sub_004AED70;
begin
{*
 004AED70    push        ebp
 004AED71    mov         ebp,esp
 004AED73    push        ecx
 004AED74    mov         dword ptr [ebp-4],eax
 004AED77    mov         eax,dword ptr [ebp-4]
 004AED7A    call        004C134C
 004AED7F    mov         edx,0FF00000F
 004AED84    mov         eax,dword ptr [ebp-4]
 004AED87    mov         ecx,dword ptr [eax]
 004AED89    call        dword ptr [ecx+30];TXPColorMap.SetColor
 004AED8C    mov         eax,dword ptr [ebp-4]
 004AED8F    mov         dword ptr [eax+74],0FF000005;TXPColorMap.FMenuColor:TColor
 004AED96    mov         eax,dword ptr [ebp-4]
 004AED99    mov         dword ptr [eax+38],0C66931;TXPColorMap.FBtnFrameColor:TColor
 004AEDA0    mov         eax,dword ptr [ebp-4]
 004AEDA3    mov         dword ptr [eax+34],0FF00000F;TXPColorMap.FBtnSelectedColor:TColor
 004AEDAA    mov         eax,dword ptr [ebp-4]
 004AEDAD    mov         dword ptr [eax+48],0FF000011;TXPColorMap.FDisabledFontColor:TColor
 004AEDB4    mov         eax,dword ptr [ebp-4]
 004AEDB7    mov         dword ptr [eax+4C],0FF000014;TXPColorMap.FDisabledFontShadow:TColor
 004AEDBE    mov         eax,dword ptr [ebp-4]
 004AEDC1    mov         dword ptr [eax+44],808080;TXPColorMap.FDisabledColor:TColor
 004AEDC8    mov         edx,0FF000008
 004AEDCD    mov         eax,dword ptr [ebp-4]
 004AEDD0    mov         ecx,dword ptr [eax]
 004AEDD2    call        dword ptr [ecx+34];TXPColorMap.SetFontColor
 004AEDD5    mov         eax,dword ptr [ebp-4]
 004AEDD8    mov         dword ptr [eax+78],0FFFFFF;TXPColorMap.FFrameTopLeftInner:TColor
 004AEDDF    mov         eax,dword ptr [ebp-4]
 004AEDE2    mov         dword ptr [eax+7C],7A868A;TXPColorMap.FFrameTopLeftOuter:TColor
 004AEDE9    mov         eax,dword ptr [ebp-4]
 004AEDEC    mov         dword ptr [eax+80],0FFFFFF;TXPColorMap.FFrameBottomRightInner:TColor
 004AEDF6    mov         eax,dword ptr [ebp-4]
 004AEDF9    mov         dword ptr [eax+84],7A868A;TXPColorMap.FFrameBottomRightOuter:TColor
 004AEE03    mov         edx,0F
 004AEE08    mov         eax,0FF00000F
 004AEE0D    call        004AD754
 004AEE12    mov         edx,dword ptr [ebp-4]
 004AEE15    mov         dword ptr [edx+6C],eax;TXPColorMap.FHighlightColor:TColor
 004AEE18    mov         eax,dword ptr [ebp-4]
 004AEE1B    mov         dword ptr [eax+54],20000000;TXPColorMap.FHotColor:TColor
 004AEE22    mov         eax,dword ptr [ebp-4]
 004AEE25    mov         dword ptr [eax+5C],20000000;TXPColorMap.FHotFontColor:TColor
 004AEE2C    mov         eax,dword ptr [ebp-4]
 004AEE2F    mov         dword ptr [eax+68],0EFD3C6;TXPColorMap.FSelectedColor:TColor
 004AEE36    mov         eax,dword ptr [ebp-4]
 004AEE39    xor         edx,edx
 004AEE3B    mov         dword ptr [eax+64],edx;TXPColorMap.FSelectedFontColor:TColor
 004AEE3E    mov         eax,dword ptr [ebp-4]
 004AEE41    mov         dword ptr [eax+58],0FF000015;TXPColorMap.FShadowColor:TColor
 004AEE48    mov         edx,0F
 004AEE4D    mov         eax,0FF00000F
 004AEE52    call        004AD754
 004AEE57    mov         edx,dword ptr [ebp-4]
 004AEE5A    mov         dword ptr [edx+60],eax;TXPColorMap.FUnusedColor:TColor
 004AEE5D    pop         ecx
 004AEE5E    pop         ebp
 004AEE5F    ret
*}
end;

end.