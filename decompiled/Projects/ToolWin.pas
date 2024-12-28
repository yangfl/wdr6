//***************************************
//IDR home page: http://kpnc.org/idr32/en
//Decompiled by IDR v.01.04.2017
//***************************************
unit ToolWin;

interface

uses
  SysUtils, Classes;

type
  TEdgeBorder = (ebLeft, ebTop, ebRight, ebBottom);
  TEdgeBorders = set of TEdgeBorder;
  TEdgeStyle = (esNone, esRaised, esLowered);
  TToolWindow = class(TWinControl)
  public
    FEdgeBorders:TEdgeBorders;//f208
    FEdgeInner:TEdgeStyle;//f209
    FEdgeOuter:TEdgeStyle;//f20A
    constructor v2C; virtual;//v2C//0043C51C
    //procedure vC8(?:?); virtual;//vC8//0043C628
    //procedure WMNCCalcSize(?:?); message WM_NCCALCSIZE;//0043C73C
    //procedure WMNCPaint(?:?); message WM_NCPAINT;//0043C800
    //procedure CMCtl3DChanged(?:?); message CM_CTL3DCHANGED;//0043C888
    //procedure CMBorderChanged(?:?); message CM_BORDERCHANGED;//0043C864
  end;
  TToolDockObject = class(TDragDockObject)
  public
    constructor Create; virtual;//v28//0043C8C0
    //procedure v2C(?:?); virtual;//v2C//0043C950
    procedure v30; virtual;//v30//0043C96C
    procedure v34; virtual;//v34//0043CA54
  end;
  TToolDockForm = class(TCustomDockForm)
  public
    FPrevWidth:Integer;//f2F8
    FPrevHeight:Integer;//f2FC
    FSizingAdjustH:Integer;//f300
    FSizingAdjustW:Integer;//f304
    FSizingOrientation:TSizingOrientation;//f308
    FUpdatingSize:Boolean;//f309
    constructor v2C; virtual;//v2C//0043CA78
    //function v30(?:?; ?:?):?; virtual;//v30//0043CAF4
    //procedure v98(?:?); virtual;//v98//0043CACC
    //procedure WMSize(?:?); message WM_SIZE;//0043CF08
    //procedure WMNCCreate(?:?); message WM_NCCREATE;//0043CD54
    //procedure WMNCHitTest(?:?); message WM_NCHITTEST;//0043CD80
    //procedure WMNCLButtonDown(?:?); message WM_NCLBUTTONDOWN;//0043CEB4
    //procedure WMSysCommand(?:?); message WM_SYSCOMMAND;//0043CF68
    //procedure sub_0043CC90(?:?; ?:?); dynamic;//0043CC90
  end;
    constructor sub_0043C51C;//0043C51C
    procedure SetEdgeBorders(Value:TEdgeBorders);//0043C58C
    procedure SetEdgeInner(Value:TEdgeStyle);//0043C5C0
    procedure SetEdgeOuter(Value:TEdgeStyle);//0043C5F4
    //procedure sub_0043C628(?:?);//0043C628
    //procedure WMNCCalcSize(?:?);//0043C73C
    //procedure WMNCPaint(?:?);//0043C800
    //procedure CMBorderChanged(?:?);//0043C864
    //procedure CMCtl3DChanged(?:?);//0043C888
    constructor Create;//0043C8C0
    //procedure sub_0043C950(?:?);//0043C950
    procedure sub_0043C96C;//0043C96C
    procedure sub_0043CA54;//0043CA54
    constructor sub_0043CA78;//0043CA78
    //procedure sub_0043CACC(?:?);//0043CACC
    //function sub_0043CAF4(?:?; ?:?):?;//0043CAF4
    //procedure sub_0043CC90(?:?; ?:?);//0043CC90
    //procedure sub_0043CCC8(?:?);//0043CCC8
    //procedure WMNCCreate(?:?);//0043CD54
    //procedure WMNCHitTest(?:?);//0043CD80
    //procedure WMNCLButtonDown(?:?);//0043CEB4
    //procedure WMSize(?:?);//0043CF08
    //procedure WMSysCommand(?:?);//0043CF68

implementation

//0043C51C
constructor sub_0043C51C;
begin
{*
 0043C51C    push        ebp
 0043C51D    mov         ebp,esp
 0043C51F    add         esp,0FFFFFFF4
 0043C522    test        dl,dl
>0043C524    je          0043C52E
 0043C526    add         esp,0FFFFFFF0
 0043C529    call        @ClassCreate
 0043C52E    mov         dword ptr [ebp-0C],ecx
 0043C531    mov         byte ptr [ebp-5],dl
 0043C534    mov         dword ptr [ebp-4],eax
 0043C537    mov         ecx,dword ptr [ebp-0C]
 0043C53A    xor         edx,edx
 0043C53C    mov         eax,dword ptr [ebp-4]
 0043C53F    call        00486BAC
 0043C544    mov         eax,dword ptr [ebp-4]
 0043C547    mov         dl,byte ptr ds:[43C588];0xF gvar_0043C588
 0043C54D    mov         byte ptr [eax+208],dl;TToolWindow.FEdgeBorders:TEdgeBorders
 0043C553    mov         eax,dword ptr [ebp-4]
 0043C556    mov         byte ptr [eax+209],1;TToolWindow.FEdgeInner:TEdgeStyle
 0043C55D    mov         eax,dword ptr [ebp-4]
 0043C560    mov         byte ptr [eax+20A],2;TToolWindow.FEdgeOuter:TEdgeStyle
 0043C567    mov         eax,dword ptr [ebp-4]
 0043C56A    cmp         byte ptr [ebp-5],0
>0043C56E    je          0043C57F
 0043C570    call        @AfterConstruction
 0043C575    pop         dword ptr fs:[0]
 0043C57C    add         esp,0C
 0043C57F    mov         eax,dword ptr [ebp-4]
 0043C582    mov         esp,ebp
 0043C584    pop         ebp
 0043C585    ret
*}
end;

//0043C58C
procedure TToolBar.SetEdgeBorders(Value:TEdgeBorders);
begin
{*
 0043C58C    push        ebp
 0043C58D    mov         ebp,esp
 0043C58F    add         esp,0FFFFFFF8
 0043C592    mov         byte ptr [ebp-5],dl
 0043C595    mov         dword ptr [ebp-4],eax
 0043C598    mov         al,byte ptr [ebp-5]
 0043C59B    mov         edx,dword ptr [ebp-4]
 0043C59E    cmp         al,byte ptr [edx+208];TToolBar.FEdgeBorders:TEdgeBorders
>0043C5A4    je          0043C5BA
 0043C5A6    mov         al,byte ptr [ebp-5]
 0043C5A9    mov         edx,dword ptr [ebp-4]
 0043C5AC    mov         byte ptr [edx+208],al;TToolBar.FEdgeBorders:TEdgeBorders
 0043C5B2    mov         eax,dword ptr [ebp-4]
 0043C5B5    call        TWinControl.RecreateWnd
 0043C5BA    pop         ecx
 0043C5BB    pop         ecx
 0043C5BC    pop         ebp
 0043C5BD    ret
*}
end;

//0043C5C0
procedure TToolBar.SetEdgeInner(Value:TEdgeStyle);
begin
{*
 0043C5C0    push        ebp
 0043C5C1    mov         ebp,esp
 0043C5C3    add         esp,0FFFFFFF8
 0043C5C6    mov         byte ptr [ebp-5],dl
 0043C5C9    mov         dword ptr [ebp-4],eax
 0043C5CC    mov         eax,dword ptr [ebp-4]
 0043C5CF    mov         al,byte ptr [eax+209];TToolBar.FEdgeInner:TEdgeStyle
 0043C5D5    cmp         al,byte ptr [ebp-5]
>0043C5D8    je          0043C5EE
 0043C5DA    mov         al,byte ptr [ebp-5]
 0043C5DD    mov         edx,dword ptr [ebp-4]
 0043C5E0    mov         byte ptr [edx+209],al;TToolBar.FEdgeInner:TEdgeStyle
 0043C5E6    mov         eax,dword ptr [ebp-4]
 0043C5E9    call        TWinControl.RecreateWnd
 0043C5EE    pop         ecx
 0043C5EF    pop         ecx
 0043C5F0    pop         ebp
 0043C5F1    ret
*}
end;

//0043C5F4
procedure TToolBar.SetEdgeOuter(Value:TEdgeStyle);
begin
{*
 0043C5F4    push        ebp
 0043C5F5    mov         ebp,esp
 0043C5F7    add         esp,0FFFFFFF8
 0043C5FA    mov         byte ptr [ebp-5],dl
 0043C5FD    mov         dword ptr [ebp-4],eax
 0043C600    mov         eax,dword ptr [ebp-4]
 0043C603    mov         al,byte ptr [eax+20A];TToolBar.FEdgeOuter:TEdgeStyle
 0043C609    cmp         al,byte ptr [ebp-5]
>0043C60C    je          0043C622
 0043C60E    mov         al,byte ptr [ebp-5]
 0043C611    mov         edx,dword ptr [ebp-4]
 0043C614    mov         byte ptr [edx+20A],al;TToolBar.FEdgeOuter:TEdgeStyle
 0043C61A    mov         eax,dword ptr [ebp-4]
 0043C61D    call        TWinControl.RecreateWnd
 0043C622    pop         ecx
 0043C623    pop         ecx
 0043C624    pop         ebp
 0043C625    ret
*}
end;

//0043C628
{*procedure sub_0043C628(?:?);
begin
 0043C628    push        ebp
 0043C629    mov         ebp,esp
 0043C62B    add         esp,0FFFFFFD8
 0043C62E    mov         dword ptr [ebp-8],edx
 0043C631    mov         dword ptr [ebp-4],eax
 0043C634    lea         eax,[ebp-18]
 0043C637    push        eax
 0043C638    mov         eax,dword ptr [ebp-4]
 0043C63B    call        TWinControl.GetHandle
 0043C640    push        eax
 0043C641    call        user32.GetClientRect
 0043C646    lea         eax,[ebp-28]
 0043C649    push        eax
 0043C64A    mov         eax,dword ptr [ebp-4]
 0043C64D    call        TWinControl.GetHandle
 0043C652    push        eax
 0043C653    call        user32.GetWindowRect
 0043C658    push        2
 0043C65A    lea         eax,[ebp-28]
 0043C65D    push        eax
 0043C65E    mov         eax,dword ptr [ebp-4]
 0043C661    call        TWinControl.GetHandle
 0043C666    push        eax
 0043C667    push        0
 0043C669    call        user32.MapWindowPoints
 0043C66E    mov         eax,dword ptr [ebp-24]
 0043C671    neg         eax
 0043C673    push        eax
 0043C674    mov         eax,dword ptr [ebp-28]
 0043C677    neg         eax
 0043C679    push        eax
 0043C67A    lea         eax,[ebp-18]
 0043C67D    push        eax
 0043C67E    call        user32.OffsetRect
 0043C683    mov         eax,dword ptr [ebp-0C]
 0043C686    push        eax
 0043C687    mov         eax,dword ptr [ebp-10]
 0043C68A    push        eax
 0043C68B    mov         eax,dword ptr [ebp-14]
 0043C68E    push        eax
 0043C68F    mov         eax,dword ptr [ebp-18]
 0043C692    push        eax
 0043C693    mov         eax,dword ptr [ebp-8]
 0043C696    push        eax
 0043C697    call        gdi32.ExcludeClipRect
 0043C69C    mov         eax,dword ptr [ebp-24]
 0043C69F    neg         eax
 0043C6A1    push        eax
 0043C6A2    mov         eax,dword ptr [ebp-28]
 0043C6A5    neg         eax
 0043C6A7    push        eax
 0043C6A8    lea         eax,[ebp-28]
 0043C6AB    push        eax
 0043C6AC    call        user32.OffsetRect
 0043C6B1    mov         eax,dword ptr [ebp-4]
 0043C6B4    movzx       eax,byte ptr [eax+208];TToolWindow.FEdgeBorders:TEdgeBorders
 0043C6BB    mov         edx,dword ptr [ebp-4]
 0043C6BE    movzx       edx,byte ptr [edx+1A5];TToolWindow.FCtl3D:Boolean
 0043C6C5    or          eax,dword ptr [edx*4+56C094]
 0043C6CC    or          eax,2000
 0043C6D1    push        eax
 0043C6D2    mov         eax,dword ptr [ebp-4]
 0043C6D5    movzx       eax,byte ptr [eax+209];TToolWindow.FEdgeInner:TEdgeStyle
 0043C6DC    mov         eax,dword ptr [eax*4+56C07C]
 0043C6E3    mov         edx,dword ptr [ebp-4]
 0043C6E6    movzx       edx,byte ptr [edx+20A];TToolWindow.FEdgeOuter:TEdgeStyle
 0043C6ED    or          eax,dword ptr [edx*4+56C088]
 0043C6F4    push        eax
 0043C6F5    lea         eax,[ebp-28]
 0043C6F8    push        eax
 0043C6F9    mov         eax,dword ptr [ebp-8]
 0043C6FC    push        eax
 0043C6FD    call        user32.DrawEdge
 0043C702    mov         eax,dword ptr [ebp-1C]
 0043C705    push        eax
 0043C706    mov         eax,dword ptr [ebp-20]
 0043C709    push        eax
 0043C70A    mov         eax,dword ptr [ebp-24]
 0043C70D    push        eax
 0043C70E    mov         eax,dword ptr [ebp-28]
 0043C711    push        eax
 0043C712    mov         eax,dword ptr [ebp-8]
 0043C715    push        eax
 0043C716    call        gdi32.IntersectClipRect
 0043C71B    mov         eax,dword ptr [ebp-4]
 0043C71E    mov         eax,dword ptr [eax+170];TToolWindow.FBrush:TBrush
 0043C724    call        TBrush.GetHandle
 0043C729    push        eax
 0043C72A    lea         eax,[ebp-28]
 0043C72D    push        eax
 0043C72E    mov         eax,dword ptr [ebp-8]
 0043C731    push        eax
 0043C732    call        user32.FillRect
 0043C737    mov         esp,ebp
 0043C739    pop         ebp
 0043C73A    ret
end;*}

//0043C73C
{*procedure TToolWindow.WMNCCalcSize(?:?);
begin
 0043C73C    push        ebp
 0043C73D    mov         ebp,esp
 0043C73F    add         esp,0FFFFFFEC
 0043C742    mov         dword ptr [ebp-8],edx
 0043C745    mov         dword ptr [ebp-4],eax
 0043C748    mov         eax,dword ptr [ebp-8]
 0043C74B    mov         eax,dword ptr [eax+8]
 0043C74E    mov         dword ptr [ebp-10],eax
 0043C751    mov         eax,dword ptr [ebp-4]
 0043C754    mov         eax,dword ptr [eax+16C];TToolWindow.FBorderWidth:TBorderWidth
 0043C75A    neg         eax
 0043C75C    push        eax
 0043C75D    mov         eax,dword ptr [ebp-4]
 0043C760    mov         eax,dword ptr [eax+16C];TToolWindow.FBorderWidth:TBorderWidth
 0043C766    neg         eax
 0043C768    push        eax
 0043C769    mov         eax,dword ptr [ebp-10]
 0043C76C    push        eax
 0043C76D    call        user32.InflateRect
 0043C772    xor         eax,eax
 0043C774    mov         dword ptr [ebp-0C],eax
 0043C777    mov         eax,dword ptr [ebp-4]
 0043C77A    cmp         byte ptr [eax+209],0;TToolWindow.FEdgeInner:TEdgeStyle
>0043C781    je          0043C786
 0043C783    inc         dword ptr [ebp-0C]
 0043C786    mov         eax,dword ptr [ebp-4]
 0043C789    cmp         byte ptr [eax+20A],0;TToolWindow.FEdgeOuter:TEdgeStyle
>0043C790    je          0043C795
 0043C792    inc         dword ptr [ebp-0C]
 0043C795    mov         eax,dword ptr [ebp-10]
 0043C798    mov         dword ptr [ebp-14],eax
 0043C79B    mov         eax,dword ptr [ebp-4]
 0043C79E    test        byte ptr [eax+208],1;TToolWindow.FEdgeBorders:TEdgeBorders
>0043C7A5    je          0043C7AF
 0043C7A7    mov         eax,dword ptr [ebp-14]
 0043C7AA    mov         edx,dword ptr [ebp-0C]
 0043C7AD    add         dword ptr [eax],edx
 0043C7AF    mov         eax,dword ptr [ebp-4]
 0043C7B2    test        byte ptr [eax+208],2;TToolWindow.FEdgeBorders:TEdgeBorders
>0043C7B9    je          0043C7C4
 0043C7BB    mov         eax,dword ptr [ebp-14]
 0043C7BE    mov         edx,dword ptr [ebp-0C]
 0043C7C1    add         dword ptr [eax+4],edx
 0043C7C4    mov         eax,dword ptr [ebp-4]
 0043C7C7    test        byte ptr [eax+208],4;TToolWindow.FEdgeBorders:TEdgeBorders
>0043C7CE    je          0043C7D9
 0043C7D0    mov         eax,dword ptr [ebp-14]
 0043C7D3    mov         edx,dword ptr [ebp-0C]
 0043C7D6    sub         dword ptr [eax+8],edx
 0043C7D9    mov         eax,dword ptr [ebp-4]
 0043C7DC    test        byte ptr [eax+208],8;TToolWindow.FEdgeBorders:TEdgeBorders
>0043C7E3    je          0043C7EE
 0043C7E5    mov         eax,dword ptr [ebp-14]
 0043C7E8    mov         edx,dword ptr [ebp-0C]
 0043C7EB    sub         dword ptr [eax+0C],edx
 0043C7EE    mov         edx,dword ptr [ebp-8]
 0043C7F1    mov         eax,dword ptr [ebp-4]
 0043C7F4    call        TWinControl.WMNCCalcSize
 0043C7F9    mov         esp,ebp
 0043C7FB    pop         ebp
 0043C7FC    ret
end;*}

//0043C800
{*procedure TToolWindow.WMNCPaint(?:?);
begin
 0043C800    push        ebp
 0043C801    mov         ebp,esp
 0043C803    add         esp,0FFFFFFF4
 0043C806    mov         dword ptr [ebp-0C],edx
 0043C809    mov         dword ptr [ebp-4],eax
 0043C80C    mov         eax,dword ptr [ebp-4]
 0043C80F    call        TWinControl.GetHandle
 0043C814    push        eax
 0043C815    call        user32.GetWindowDC
 0043C81A    mov         dword ptr [ebp-8],eax
 0043C81D    xor         eax,eax
 0043C81F    push        ebp
 0043C820    push        43C859
 0043C825    push        dword ptr fs:[eax]
 0043C828    mov         dword ptr fs:[eax],esp
 0043C82B    mov         edx,dword ptr [ebp-8]
 0043C82E    mov         eax,dword ptr [ebp-4]
 0043C831    mov         ecx,dword ptr [eax]
 0043C833    call        dword ptr [ecx+0C8];TToolWindow.sub_0043C628
 0043C839    xor         eax,eax
 0043C83B    pop         edx
 0043C83C    pop         ecx
 0043C83D    pop         ecx
 0043C83E    mov         dword ptr fs:[eax],edx
 0043C841    push        43C860
 0043C846    mov         eax,dword ptr [ebp-8]
 0043C849    push        eax
 0043C84A    mov         eax,dword ptr [ebp-4]
 0043C84D    call        TWinControl.GetHandle
 0043C852    push        eax
 0043C853    call        user32.ReleaseDC
 0043C858    ret
>0043C859    jmp         @HandleFinally
>0043C85E    jmp         0043C846
 0043C860    mov         esp,ebp
 0043C862    pop         ebp
 0043C863    ret
end;*}

//0043C864
{*procedure TToolWindow.CMBorderChanged(?:?);
begin
 0043C864    push        ebp
 0043C865    mov         ebp,esp
 0043C867    add         esp,0FFFFFFF8
 0043C86A    mov         dword ptr [ebp-8],edx
 0043C86D    mov         dword ptr [ebp-4],eax
 0043C870    mov         eax,dword ptr [ebp-4]
 0043C873    call        TWinControl.RecreateWnd
 0043C878    mov         edx,dword ptr [ebp-8]
 0043C87B    mov         eax,dword ptr [ebp-4]
 0043C87E    call        TWinControl.CMBorderChanged
 0043C883    pop         ecx
 0043C884    pop         ecx
 0043C885    pop         ebp
 0043C886    ret
end;*}

//0043C888
{*procedure TToolWindow.CMCtl3DChanged(?:?);
begin
 0043C888    push        ebp
 0043C889    mov         ebp,esp
 0043C88B    add         esp,0FFFFFFF8
 0043C88E    mov         dword ptr [ebp-8],edx
 0043C891    mov         dword ptr [ebp-4],eax
 0043C894    mov         edx,dword ptr [ebp-8]
 0043C897    mov         eax,dword ptr [ebp-4]
 0043C89A    call        TWinControl.CMCtl3DChanged
 0043C89F    mov         al,[0043C8BC];0x0 gvar_0043C8BC
 0043C8A4    mov         edx,dword ptr [ebp-4]
 0043C8A7    cmp         al,byte ptr [edx+208];TToolWindow.FEdgeBorders:TEdgeBorders
>0043C8AD    je          0043C8B7
 0043C8AF    mov         eax,dword ptr [ebp-4]
 0043C8B2    call        TWinControl.RecreateWnd
 0043C8B7    pop         ecx
 0043C8B8    pop         ecx
 0043C8B9    pop         ebp
 0043C8BA    ret
end;*}

//0043C8C0
constructor TToolDockObject.Create;
begin
{*
 0043C8C0    push        ebp
 0043C8C1    mov         ebp,esp
 0043C8C3    add         esp,0FFFFFFDC
 0043C8C6    test        dl,dl
>0043C8C8    je          0043C8D2
 0043C8CA    add         esp,0FFFFFFF0
 0043C8CD    call        @ClassCreate
 0043C8D2    mov         dword ptr [ebp-0C],ecx
 0043C8D5    mov         byte ptr [ebp-5],dl
 0043C8D8    mov         dword ptr [ebp-4],eax
 0043C8DB    mov         ecx,dword ptr [ebp-0C]
 0043C8DE    xor         edx,edx
 0043C8E0    mov         eax,dword ptr [ebp-4]
 0043C8E3    call        TDragDockObject.Create
 0043C8E8    mov         eax,dword ptr [ebp-0C]
 0043C8EB    mov         edx,dword ptr [eax]
 0043C8ED    call        dword ptr [edx+54]
 0043C8F0    test        al,al
>0043C8F2    jne         0043C930
 0043C8F4    lea         eax,[ebp-14]
 0043C8F7    push        eax
 0043C8F8    call        user32.GetCursorPos
 0043C8FD    mov         eax,dword ptr [ebp-0C]
 0043C900    call        004836E8
 0043C905    push        eax
 0043C906    lea         eax,[ebp-24]
 0043C909    push        eax
 0043C90A    mov         eax,dword ptr [ebp-0C]
 0043C90D    call        0048371C
 0043C912    mov         ecx,eax
 0043C914    mov         edx,dword ptr [ebp-10]
 0043C917    sub         edx,0A
 0043C91A    mov         eax,dword ptr [ebp-14]
 0043C91D    sub         eax,0A
 0043C920    call        0041E740
 0043C925    lea         edx,[ebp-24]
 0043C928    mov         eax,dword ptr [ebp-0C]
 0043C92B    call        00484C34
 0043C930    mov         eax,dword ptr [ebp-4]
 0043C933    cmp         byte ptr [ebp-5],0
>0043C937    je          0043C948
 0043C939    call        @AfterConstruction
 0043C93E    pop         dword ptr fs:[0]
 0043C945    add         esp,0C
 0043C948    mov         eax,dword ptr [ebp-4]
 0043C94B    mov         esp,ebp
 0043C94D    pop         ebp
 0043C94E    ret
*}
end;

//0043C950
{*procedure sub_0043C950(?:?);
begin
 0043C950    push        ebp
 0043C951    mov         ebp,esp
 0043C953    add         esp,0FFFFFFEC
 0043C956    push        esi
 0043C957    push        edi
 0043C958    mov         esi,edx
 0043C95A    lea         edi,[ebp-14]
 0043C95D    movs        dword ptr [edi],dword ptr [esi]
 0043C95E    movs        dword ptr [edi],dword ptr [esi]
 0043C95F    movs        dword ptr [edi],dword ptr [esi]
 0043C960    movs        dword ptr [edi],dword ptr [esi]
 0043C961    mov         dword ptr [ebp-4],eax
 0043C964    pop         edi
 0043C965    pop         esi
 0043C966    mov         esp,ebp
 0043C968    pop         ebp
 0043C969    ret
end;*}

//0043C96C
procedure sub_0043C96C;
begin
{*
 0043C96C    push        ebp
 0043C96D    mov         ebp,esp
 0043C96F    add         esp,0FFFFFFE0
 0043C972    push        ebx
 0043C973    mov         dword ptr [ebp-4],eax
 0043C976    mov         eax,dword ptr [ebp-4]
 0043C979    mov         eax,dword ptr [eax+38];TToolDockObject...............................FControl:TControl
 0043C97C    mov         edx,dword ptr [eax]
 0043C97E    call        dword ptr [edx+54];TControl.sub_004866DC
 0043C981    test        al,al
>0043C983    jne         0043C992
 0043C985    mov         eax,dword ptr [ebp-4]
 0043C988    call        0048054C
>0043C98D    jmp         0043CA4E
 0043C992    mov         eax,dword ptr [ebp-4]
 0043C995    mov         eax,dword ptr [eax+38];TToolDockObject................................FControl:TControl
 0043C998    call        004A0740
 0043C99D    mov         dword ptr [ebp-10],eax
 0043C9A0    cmp         dword ptr [ebp-10],0
>0043C9A4    je          0043CA4E
 0043C9AA    lea         ecx,[ebp-0C]
 0043C9AD    mov         eax,dword ptr [ebp-4]
 0043C9B0    mov         eax,dword ptr [eax+38];TToolDockObject.................................FControl:TControl
 0043C9B3    mov         edx,dword ptr [eax+44];TControl.Top:Integer
 0043C9B6    mov         eax,dword ptr [ebp-4]
 0043C9B9    mov         eax,dword ptr [eax+38];TToolDockObject..................................FControl:TContro...
 0043C9BC    mov         eax,dword ptr [eax+40];TControl.Left:Integer
 0043C9BF    call        Point
 0043C9C4    mov         eax,dword ptr [ebp-4]
 0043C9C7    mov         eax,dword ptr [eax+38];TToolDockObject...................................FControl:TContr...
 0043C9CA    cmp         eax,dword ptr [ebp-10]
>0043C9CD    je          0043C9E5
 0043C9CF    push        1
 0043C9D1    lea         eax,[ebp-0C]
 0043C9D4    push        eax
 0043C9D5    push        0
 0043C9D7    mov         eax,dword ptr [ebp-10]
 0043C9DA    call        TWinControl.GetHandle
 0043C9DF    push        eax
 0043C9E0    call        user32.MapWindowPoints
 0043C9E5    mov         eax,dword ptr [ebp-4]
 0043C9E8    mov         eax,dword ptr [eax+50]
 0043C9EB    mov         edx,dword ptr [ebp-4]
 0043C9EE    sub         eax,dword ptr [edx+48]
 0043C9F1    mov         edx,dword ptr [ebp-10]
 0043C9F4    add         eax,dword ptr [edx+4C]
 0043C9F7    mov         edx,dword ptr [ebp-4]
 0043C9FA    mov         edx,dword ptr [edx+38];TToolDockObject....................................FControl:TCont...
 0043C9FD    sub         eax,dword ptr [edx+4C]
 0043CA00    push        eax
 0043CA01    lea         eax,[ebp-20]
 0043CA04    push        eax
 0043CA05    mov         eax,dword ptr [ebp-4]
 0043CA08    mov         ecx,dword ptr [eax+4C];TToolDockObject.FDockRect.Right:Longint
 0043CA0B    mov         eax,dword ptr [ebp-4]
 0043CA0E    sub         ecx,dword ptr [eax+44]
 0043CA11    mov         eax,dword ptr [ebp-10]
 0043CA14    add         ecx,dword ptr [eax+48]
 0043CA17    mov         eax,dword ptr [ebp-4]
 0043CA1A    mov         eax,dword ptr [eax+38];TToolDockObject.....................................FControl:TCon...
 0043CA1D    sub         ecx,dword ptr [eax+48]
 0043CA20    mov         eax,dword ptr [ebp-4]
 0043CA23    mov         edx,dword ptr [eax+48];TToolDockObject.FDockRect.Top:Longint
 0043CA26    mov         eax,dword ptr [ebp-10]
 0043CA29    add         edx,dword ptr [eax+44]
 0043CA2C    sub         edx,dword ptr [ebp-8]
 0043CA2F    mov         eax,dword ptr [ebp-4]
 0043CA32    mov         eax,dword ptr [eax+44];TToolDockObject.FDockRect:TRect
 0043CA35    mov         ebx,dword ptr [ebp-10]
 0043CA38    add         eax,dword ptr [ebx+40]
 0043CA3B    sub         eax,dword ptr [ebp-0C]
 0043CA3E    call        0041E740
 0043CA43    lea         edx,[ebp-20]
 0043CA46    mov         eax,dword ptr [ebp-10]
 0043CA49    call        00482F18
 0043CA4E    pop         ebx
 0043CA4F    mov         esp,ebp
 0043CA51    pop         ebp
 0043CA52    ret
*}
end;

//0043CA54
procedure sub_0043CA54;
begin
{*
 0043CA54    push        ebp
 0043CA55    mov         ebp,esp
 0043CA57    push        ecx
 0043CA58    mov         dword ptr [ebp-4],eax
 0043CA5B    mov         eax,dword ptr [ebp-4]
 0043CA5E    mov         eax,dword ptr [eax+38];TToolDockObject......................................FControl:TCo...
 0043CA61    mov         edx,dword ptr [eax]
 0043CA63    call        dword ptr [edx+54];TControl.sub_004866DC
 0043CA66    test        al,al
>0043CA68    jne         0043CA72
 0043CA6A    mov         eax,dword ptr [ebp-4]
 0043CA6D    call        0048056C
 0043CA72    pop         ecx
 0043CA73    pop         ebp
 0043CA74    ret
*}
end;

//0043CA78
constructor sub_0043CA78;
begin
{*
 0043CA78    push        ebp
 0043CA79    mov         ebp,esp
 0043CA7B    add         esp,0FFFFFFF4
 0043CA7E    test        dl,dl
>0043CA80    je          0043CA8A
 0043CA82    add         esp,0FFFFFFF0
 0043CA85    call        @ClassCreate
 0043CA8A    mov         dword ptr [ebp-0C],ecx
 0043CA8D    mov         byte ptr [ebp-5],dl
 0043CA90    mov         dword ptr [ebp-4],eax
 0043CA93    mov         ecx,dword ptr [ebp-0C]
 0043CA96    xor         edx,edx
 0043CA98    mov         eax,dword ptr [ebp-4]
 0043CA9B    call        004A7FA8
 0043CAA0    mov         edx,1
 0043CAA5    mov         eax,dword ptr [ebp-4]
 0043CAA8    call        TStatusBar.SetBorderWidth
 0043CAAD    mov         eax,dword ptr [ebp-4]
 0043CAB0    cmp         byte ptr [ebp-5],0
>0043CAB4    je          0043CAC5
 0043CAB6    call        @AfterConstruction
 0043CABB    pop         dword ptr fs:[0]
 0043CAC2    add         esp,0C
 0043CAC5    mov         eax,dword ptr [ebp-4]
 0043CAC8    mov         esp,ebp
 0043CACA    pop         ebp
 0043CACB    ret
*}
end;

//0043CACC
{*procedure sub_0043CACC(?:?);
begin
 0043CACC    push        ebp
 0043CACD    mov         ebp,esp
 0043CACF    add         esp,0FFFFFFF8
 0043CAD2    mov         dword ptr [ebp-8],edx
 0043CAD5    mov         dword ptr [ebp-4],eax
 0043CAD8    mov         edx,dword ptr [ebp-8]
 0043CADB    mov         eax,dword ptr [ebp-4]
 0043CADE    call        004A4C10
 0043CAE3    mov         eax,dword ptr [ebp-8]
 0043CAE6    or          dword ptr [eax+4],80000000
 0043CAED    pop         ecx
 0043CAEE    pop         ecx
 0043CAEF    pop         ebp
 0043CAF0    ret
end;*}

//0043CAF4
{*function sub_0043CAF4(?:?; ?:?):?;
begin
 0043CAF4    push        ebp
 0043CAF5    mov         ebp,esp
 0043CAF7    add         esp,0FFFFFFDC
 0043CAFA    push        ebx
 0043CAFB    mov         dword ptr [ebp-0C],ecx
 0043CAFE    mov         dword ptr [ebp-8],edx
 0043CB01    mov         dword ptr [ebp-4],eax
 0043CB04    mov         byte ptr [ebp-0D],1
 0043CB08    mov         eax,dword ptr [ebp-4]
 0043CB0B    cmp         byte ptr [eax+309],0;TToolDockForm.FUpdatingSize:Boolean
>0043CB12    jne         0043CC88
 0043CB18    mov         eax,dword ptr [ebp-4]
 0043CB1B    cmp         byte ptr [eax+308],0;TToolDockForm.FSizingOrientation:TSizingOrientation
>0043CB22    je          0043CC88
 0043CB28    mov         eax,dword ptr [ebp-4]
 0043CB2B    call        0048A408
 0043CB30    test        eax,eax
>0043CB32    je          0043CC88
 0043CB38    mov         eax,dword ptr [ebp-8]
 0043CB3B    mov         eax,dword ptr [eax]
 0043CB3D    mov         edx,dword ptr [ebp-4]
 0043CB40    cmp         eax,dword ptr [edx+48];TToolDockForm.Width:Integer
>0043CB43    jne         0043CB56
 0043CB45    mov         eax,dword ptr [ebp-0C]
 0043CB48    mov         eax,dword ptr [eax]
 0043CB4A    mov         edx,dword ptr [ebp-4]
 0043CB4D    cmp         eax,dword ptr [edx+4C];TToolDockForm.Height:Integer
>0043CB50    je          0043CC88
 0043CB56    mov         eax,dword ptr [ebp-8]
 0043CB59    mov         eax,dword ptr [eax]
 0043CB5B    mov         dword ptr [ebp-14],eax
 0043CB5E    mov         eax,dword ptr [ebp-0C]
 0043CB61    mov         eax,dword ptr [eax]
 0043CB63    mov         dword ptr [ebp-18],eax
 0043CB66    mov         eax,dword ptr [ebp-4]
 0043CB69    mov         al,byte ptr [eax+308];TToolDockForm.FSizingOrientation:TSizingOrientation
 0043CB6F    sub         al,1
>0043CB71    jb          0043CC88
>0043CB77    je          0043CB7F
 0043CB79    dec         al
>0043CB7B    je          0043CB8D
>0043CB7D    jmp         0043CB9B
 0043CB7F    mov         eax,dword ptr [ebp-4]
 0043CB82    mov         eax,dword ptr [eax+300];TToolDockForm.FSizingAdjustH:Integer
 0043CB88    add         dword ptr [ebp-18],eax
>0043CB8B    jmp         0043CBA4
 0043CB8D    mov         eax,dword ptr [ebp-4]
 0043CB90    mov         eax,dword ptr [eax+304];TToolDockForm.FSizingAdjustW:Integer
 0043CB96    add         dword ptr [ebp-14],eax
>0043CB99    jmp         0043CBA4
 0043CB9B    mov         byte ptr [ebp-0D],0
>0043CB9F    jmp         0043CC88
 0043CBA4    mov         eax,dword ptr [ebp-4]
 0043CBA7    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 0043CBAA    mov         edx,dword ptr [ebp-4]
 0043CBAD    mov         dword ptr [edx+2F8],eax;TToolDockForm.FPrevWidth:Integer
 0043CBB3    mov         eax,dword ptr [ebp-4]
 0043CBB6    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 0043CBB9    mov         edx,dword ptr [ebp-4]
 0043CBBC    mov         dword ptr [edx+2FC],eax;TToolDockForm.FPrevHeight:Integer
 0043CBC2    xor         edx,edx
 0043CBC4    mov         eax,dword ptr [ebp-4]
 0043CBC7    call        0048A43C
 0043CBCC    mov         dword ptr [ebp-24],eax
 0043CBCF    mov         eax,dword ptr [ebp-4]
 0043CBD2    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 0043CBD5    mov         edx,dword ptr [ebp-24]
 0043CBD8    sub         eax,dword ptr [edx+48]
 0043CBDB    mov         dword ptr [ebp-1C],eax
 0043CBDE    mov         eax,dword ptr [ebp-4]
 0043CBE1    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 0043CBE4    mov         edx,dword ptr [ebp-24]
 0043CBE7    sub         eax,dword ptr [edx+4C]
 0043CBEA    mov         dword ptr [ebp-20],eax
 0043CBED    mov         eax,dword ptr [ebp-4]
 0043CBF0    mov         byte ptr [eax+309],1;TToolDockForm.FUpdatingSize:Boolean
 0043CBF7    xor         eax,eax
 0043CBF9    push        ebp
 0043CBFA    push        43CC42
 0043CBFF    push        dword ptr fs:[eax]
 0043CC02    mov         dword ptr fs:[eax],esp
 0043CC05    mov         eax,dword ptr [ebp-14]
 0043CC08    sub         eax,dword ptr [ebp-1C]
 0043CC0B    push        eax
 0043CC0C    mov         eax,dword ptr [ebp-18]
 0043CC0F    sub         eax,dword ptr [ebp-20]
 0043CC12    push        eax
 0043CC13    mov         eax,dword ptr [ebp-24]
 0043CC16    mov         ecx,dword ptr [eax+44]
 0043CC19    mov         eax,dword ptr [ebp-24]
 0043CC1C    mov         edx,dword ptr [eax+40]
 0043CC1F    mov         eax,dword ptr [ebp-24]
 0043CC22    mov         ebx,dword ptr [eax]
 0043CC24    call        dword ptr [ebx+84]
 0043CC2A    xor         eax,eax
 0043CC2C    pop         edx
 0043CC2D    pop         ecx
 0043CC2E    pop         ecx
 0043CC2F    mov         dword ptr fs:[eax],edx
 0043CC32    push        43CC49
 0043CC37    mov         eax,dword ptr [ebp-4]
 0043CC3A    mov         byte ptr [eax+309],0;TToolDockForm.FUpdatingSize:Boolean
 0043CC41    ret
>0043CC42    jmp         @HandleFinally
>0043CC47    jmp         0043CC37
 0043CC49    mov         eax,dword ptr [ebp-24]
 0043CC4C    mov         eax,dword ptr [eax+48]
 0043CC4F    add         eax,dword ptr [ebp-1C]
 0043CC52    mov         edx,dword ptr [ebp-8]
 0043CC55    mov         dword ptr [edx],eax
 0043CC57    mov         eax,dword ptr [ebp-24]
 0043CC5A    mov         eax,dword ptr [eax+4C]
 0043CC5D    add         eax,dword ptr [ebp-20]
 0043CC60    mov         edx,dword ptr [ebp-0C]
 0043CC63    mov         dword ptr [edx],eax
 0043CC65    mov         eax,dword ptr [ebp-4]
 0043CC68    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 0043CC6B    mov         edx,dword ptr [ebp-8]
 0043CC6E    cmp         eax,dword ptr [edx]
>0043CC70    jne         0043CC83
 0043CC72    mov         eax,dword ptr [ebp-4]
 0043CC75    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 0043CC78    mov         edx,dword ptr [ebp-0C]
 0043CC7B    cmp         eax,dword ptr [edx]
>0043CC7D    jne         0043CC83
 0043CC7F    xor         eax,eax
>0043CC81    jmp         0043CC85
 0043CC83    mov         al,1
 0043CC85    mov         byte ptr [ebp-0D],al
 0043CC88    mov         al,byte ptr [ebp-0D]
 0043CC8B    pop         ebx
 0043CC8C    mov         esp,ebp
 0043CC8E    pop         ebp
 0043CC8F    ret
end;*}

//0043CC90
{*procedure TToolDockForm.sub_0043CC90(?:?; ?:?);
begin
 0043CC90    push        ebp
 0043CC91    mov         ebp,esp
 0043CC93    add         esp,0FFFFFFF4
 0043CC96    mov         dword ptr [ebp-0C],ecx
 0043CC99    mov         dword ptr [ebp-8],edx
 0043CC9C    mov         dword ptr [ebp-4],eax
 0043CC9F    mov         ecx,dword ptr [ebp-0C]
 0043CCA2    mov         edx,dword ptr [ebp-8]
 0043CCA5    mov         eax,dword ptr [ebp-4]
 0043CCA8    call        TCustomDockForm.sub_0048A1E8
 0043CCAD    xor         edx,edx
 0043CCAF    mov         eax,dword ptr [ebp-8]
 0043CCB2    call        TImage.SetAlign
 0043CCB7    mov         dl,1
 0043CCB9    mov         eax,dword ptr [ebp-4]
 0043CCBC    mov         ecx,dword ptr [eax]
 0043CCBE    call        dword ptr [ecx+5C];TImage.SetAutoSize
 0043CCC1    mov         esp,ebp
 0043CCC3    pop         ebp
 0043CCC4    ret
end;*}

//0043CCC8
{*procedure sub_0043CCC8(?:?);
begin
 0043CCC8    push        ebp
 0043CCC9    mov         ebp,esp
 0043CCCB    push        ecx
 0043CCCC    mov         eax,dword ptr [ebp+8]
 0043CCCF    mov         eax,dword ptr [eax-4]
 0043CCD2    cmp         byte ptr [eax+229],0
>0043CCD9    je          0043CD4F
 0043CCDB    mov         eax,dword ptr [ebp+8]
 0043CCDE    mov         eax,dword ptr [eax-4]
 0043CCE1    test        byte ptr [eax+228],1
>0043CCE8    je          0043CD4F
 0043CCEA    mov         eax,dword ptr [ebp+8]
 0043CCED    mov         eax,dword ptr [eax-4]
 0043CCF0    cmp         byte ptr [eax+22F],1
>0043CCF7    je          0043CD4F
 0043CCF9    push        0
 0043CCFB    mov         eax,dword ptr [ebp+8]
 0043CCFE    mov         eax,dword ptr [eax-4]
 0043CD01    call        TWinControl.GetHandle
 0043CD06    push        eax
 0043CD07    call        user32.GetSystemMenu
 0043CD0C    mov         dword ptr [ebp-4],eax
 0043CD0F    push        0
 0043CD11    push        0F130
 0043CD16    mov         eax,dword ptr [ebp-4]
 0043CD19    push        eax
 0043CD1A    call        user32.DeleteMenu
 0043CD1F    push        0
 0043CD21    push        0F030
 0043CD26    mov         eax,dword ptr [ebp-4]
 0043CD29    push        eax
 0043CD2A    call        user32.DeleteMenu
 0043CD2F    push        0
 0043CD31    push        0F020
 0043CD36    mov         eax,dword ptr [ebp-4]
 0043CD39    push        eax
 0043CD3A    call        user32.DeleteMenu
 0043CD3F    push        0
 0043CD41    push        0F120
 0043CD46    mov         eax,dword ptr [ebp-4]
 0043CD49    push        eax
 0043CD4A    call        user32.DeleteMenu
 0043CD4F    pop         ecx
 0043CD50    pop         ebp
 0043CD51    ret
end;*}

//0043CD54
{*procedure TToolDockForm.WMNCCreate(?:?);
begin
 0043CD54    push        ebp
 0043CD55    mov         ebp,esp
 0043CD57    add         esp,0FFFFFFF8
 0043CD5A    mov         dword ptr [ebp-8],edx
 0043CD5D    mov         dword ptr [ebp-4],eax
 0043CD60    mov         edx,dword ptr [ebp-8]
 0043CD63    mov         eax,dword ptr [ebp-4]
 0043CD66    call        TCustomForm.WMNCCreate
 0043CD6B    mov         eax,dword ptr [ebp-4]
 0043CD6E    test        byte ptr [eax+1C],10;TToolDockForm.FComponentState:TComponentState
>0043CD72    jne         0043CD7B
 0043CD74    push        ebp
 0043CD75    call        0043CCC8
 0043CD7A    pop         ecx
 0043CD7B    pop         ecx
 0043CD7C    pop         ecx
 0043CD7D    pop         ebp
 0043CD7E    ret
end;*}

//0043CD80
{*procedure TToolDockForm.WMNCHitTest(?:?);
begin
 0043CD80    push        ebp
 0043CD81    mov         ebp,esp
 0043CD83    add         esp,0FFFFFFE0
 0043CD86    mov         dword ptr [ebp-8],edx
 0043CD89    mov         dword ptr [ebp-4],eax
 0043CD8C    mov         edx,dword ptr [ebp-8]
 0043CD8F    mov         eax,dword ptr [ebp-4]
 0043CD92    call        TCustomDockForm.WMNCHitTest
 0043CD97    lea         edx,[ebp-20]
 0043CD9A    mov         eax,dword ptr [ebp-4]
 0043CD9D    call        00482ECC
 0043CDA2    push        20
 0043CDA4    call        user32.GetSystemMetrics
 0043CDA9    mov         dword ptr [ebp-0C],eax
 0043CDAC    push        21
 0043CDAE    call        user32.GetSystemMetrics
 0043CDB3    mov         dword ptr [ebp-10],eax
 0043CDB6    mov         eax,dword ptr [ebp-10]
 0043CDB9    neg         eax
 0043CDBB    push        eax
 0043CDBC    mov         eax,dword ptr [ebp-0C]
 0043CDBF    neg         eax
 0043CDC1    push        eax
 0043CDC2    lea         eax,[ebp-20]
 0043CDC5    push        eax
 0043CDC6    call        user32.InflateRect
 0043CDCB    mov         eax,dword ptr [ebp-8]
 0043CDCE    mov         eax,dword ptr [eax+0C]
 0043CDD1    cmp         eax,11
>0043CDD4    ja          0043CEAE
 0043CDDA    mov         al,byte ptr [eax+43CDE7]
 0043CDE0    jmp         dword ptr [eax*4+43CDF9]
 0043CDE0    db          0
 0043CDE0    db          3
 0043CDE0    db          0
 0043CDE0    db          0
 0043CDE0    db          5
 0043CDE0    db          0
 0043CDE0    db          0
 0043CDE0    db          0
 0043CDE0    db          0
 0043CDE0    db          0
 0043CDE0    db          0
 0043CDE0    db          0
 0043CDE0    db          0
 0043CDE0    db          1
 0043CDE0    db          2
 0043CDE0    db          0
 0043CDE0    db          4
 0043CDE0    db          5
 0043CDE0    dd          0043CEAE
 0043CDE0    dd          0043CE11
 0043CDE0    dd          0043CE38
 0043CDE0    dd          0043CE5C
 0043CDE0    dd          0043CE68
 0043CDE0    dd          0043CE8C
 0043CE11    mov         eax,dword ptr [ebp-8]
 0043CE14    movsx       eax,word ptr [eax+0A]
 0043CE18    cmp         eax,dword ptr [ebp-1C]
>0043CE1B    jge         0043CE2C
 0043CE1D    mov         eax,dword ptr [ebp-8]
 0043CE20    mov         dword ptr [eax+0C],0C
>0043CE27    jmp         0043CEAE
 0043CE2C    mov         eax,dword ptr [ebp-8]
 0043CE2F    mov         dword ptr [eax+0C],0A
>0043CE36    jmp         0043CEAE
 0043CE38    mov         eax,dword ptr [ebp-8]
 0043CE3B    movsx       eax,word ptr [eax+0A]
 0043CE3F    cmp         eax,dword ptr [ebp-1C]
>0043CE42    jge         0043CE50
 0043CE44    mov         eax,dword ptr [ebp-8]
 0043CE47    mov         dword ptr [eax+0C],0C
>0043CE4E    jmp         0043CEAE
 0043CE50    mov         eax,dword ptr [ebp-8]
 0043CE53    mov         dword ptr [eax+0C],0B
>0043CE5A    jmp         0043CEAE
 0043CE5C    mov         eax,dword ptr [ebp-8]
 0043CE5F    mov         dword ptr [eax+0C],2
>0043CE66    jmp         0043CEAE
 0043CE68    mov         eax,dword ptr [ebp-8]
 0043CE6B    movsx       eax,word ptr [eax+0A]
 0043CE6F    cmp         eax,dword ptr [ebp-14]
>0043CE72    jle         0043CE80
 0043CE74    mov         eax,dword ptr [ebp-8]
 0043CE77    mov         dword ptr [eax+0C],0F
>0043CE7E    jmp         0043CEAE
 0043CE80    mov         eax,dword ptr [ebp-8]
 0043CE83    mov         dword ptr [eax+0C],0A
>0043CE8A    jmp         0043CEAE
 0043CE8C    mov         eax,dword ptr [ebp-8]
 0043CE8F    movsx       eax,word ptr [eax+0A]
 0043CE93    cmp         eax,dword ptr [ebp-14]
>0043CE96    jle         0043CEA4
 0043CE98    mov         eax,dword ptr [ebp-8]
 0043CE9B    mov         dword ptr [eax+0C],0F
>0043CEA2    jmp         0043CEAE
 0043CEA4    mov         eax,dword ptr [ebp-8]
 0043CEA7    mov         dword ptr [eax+0C],0B
 0043CEAE    mov         esp,ebp
 0043CEB0    pop         ebp
 0043CEB1    ret
end;*}

//0043CEB4
{*procedure TToolDockForm.WMNCLButtonDown(?:?);
begin
 0043CEB4    push        ebp
 0043CEB5    mov         ebp,esp
 0043CEB7    add         esp,0FFFFFFF8
 0043CEBA    mov         dword ptr [ebp-8],edx
 0043CEBD    mov         dword ptr [ebp-4],eax
 0043CEC0    mov         eax,dword ptr [ebp-4]
 0043CEC3    mov         byte ptr [eax+308],0;TToolDockForm.FSizingOrientation:TSizingOrientation
 0043CECA    mov         eax,dword ptr [ebp-8]
 0043CECD    mov         eax,dword ptr [eax+4]
 0043CED0    add         eax,0FFFFFFF6
 0043CED3    sub         eax,2
>0043CED6    jb          0043CEE1
>0043CED8    je          0043CEED
 0043CEDA    sub         eax,3
>0043CEDD    je          0043CEED
>0043CEDF    jmp         0043CEF7
 0043CEE1    mov         eax,dword ptr [ebp-4]
 0043CEE4    mov         byte ptr [eax+308],1;TToolDockForm.FSizingOrientation:TSizingOrientation
>0043CEEB    jmp         0043CEF7
 0043CEED    mov         eax,dword ptr [ebp-4]
 0043CEF0    mov         byte ptr [eax+308],2;TToolDockForm.FSizingOrientation:TSizingOrientation
 0043CEF7    mov         edx,dword ptr [ebp-8]
 0043CEFA    mov         eax,dword ptr [ebp-4]
 0043CEFD    call        TCustomDockForm.WMNCLButtonDown
 0043CF02    pop         ecx
 0043CF03    pop         ecx
 0043CF04    pop         ebp
 0043CF05    ret
end;*}

//0043CF08
{*procedure TToolDockForm.WMSize(?:?);
begin
 0043CF08    push        ebp
 0043CF09    mov         ebp,esp
 0043CF0B    add         esp,0FFFFFFF8
 0043CF0E    mov         dword ptr [ebp-8],edx
 0043CF11    mov         dword ptr [ebp-4],eax
 0043CF14    mov         edx,dword ptr [ebp-8]
 0043CF17    mov         eax,dword ptr [ebp-4]
 0043CF1A    call        TScrollingWinControl.WMSize
 0043CF1F    mov         eax,dword ptr [ebp-4]
 0043CF22    mov         al,byte ptr [eax+308];TToolDockForm.FSizingOrientation:TSizingOrientation
 0043CF28    dec         al
>0043CF2A    je          0043CF32
 0043CF2C    dec         al
>0043CF2E    je          0043CF4C
>0043CF30    jmp         0043CF64
 0043CF32    mov         eax,dword ptr [ebp-4]
 0043CF35    mov         eax,dword ptr [eax+4C];TToolDockForm.Height:Integer
 0043CF38    mov         edx,dword ptr [ebp-4]
 0043CF3B    sub         eax,dword ptr [edx+2FC]
 0043CF41    mov         edx,dword ptr [ebp-4]
 0043CF44    add         dword ptr [edx+300],eax;TToolDockForm.FSizingAdjustH:Integer
>0043CF4A    jmp         0043CF64
 0043CF4C    mov         eax,dword ptr [ebp-4]
 0043CF4F    mov         eax,dword ptr [eax+48];TToolDockForm.Width:Integer
 0043CF52    mov         edx,dword ptr [ebp-4]
 0043CF55    sub         eax,dword ptr [edx+2F8]
 0043CF5B    mov         edx,dword ptr [ebp-4]
 0043CF5E    add         dword ptr [edx+304],eax;TToolDockForm.FSizingAdjustW:Integer
 0043CF64    pop         ecx
 0043CF65    pop         ecx
 0043CF66    pop         ebp
 0043CF67    ret
end;*}

//0043CF68
{*procedure TToolDockForm.WMSysCommand(?:?);
begin
 0043CF68    push        ebp
 0043CF69    mov         ebp,esp
 0043CF6B    add         esp,0FFFFFFF8
 0043CF6E    mov         dword ptr [ebp-8],edx
 0043CF71    mov         dword ptr [ebp-4],eax
 0043CF74    mov         eax,dword ptr [ebp-8]
 0043CF77    mov         eax,dword ptr [eax+4]
 0043CF7A    and         eax,0FFF0
 0043CF7F    cmp         eax,0F000
>0043CF84    jne         0043CF9C
 0043CF86    mov         eax,dword ptr [ebp-4]
 0043CF89    xor         edx,edx
 0043CF8B    mov         dword ptr [eax+304],edx;TToolDockForm.FSizingAdjustW:Integer
 0043CF91    mov         eax,dword ptr [ebp-4]
 0043CF94    xor         edx,edx
 0043CF96    mov         dword ptr [eax+300],edx;TToolDockForm.FSizingAdjustH:Integer
 0043CF9C    mov         edx,dword ptr [ebp-8]
 0043CF9F    mov         eax,dword ptr [ebp-4]
 0043CFA2    call        TCustomForm.WMSysCommand
 0043CFA7    mov         eax,dword ptr [ebp-4]
 0043CFAA    mov         byte ptr [eax+308],0;TToolDockForm.FSizingOrientation:TSizingOrientation
 0043CFB1    pop         ecx
 0043CFB2    pop         ecx
 0043CFB3    pop         ebp
 0043CFB4    ret
end;*}

end.