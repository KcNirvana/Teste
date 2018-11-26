.class public Lcom/miui/securityscan/ui/main/CircleView;
.super Landroid/view/View;
.source ""


# instance fields
.field private FO:I

.field private FP:Z

.field private FQ:Z

.field private FR:I

.field private FS:I

.field private FT:Landroid/graphics/LinearGradient;

.field private FU:I

.field private FV:F

.field private FW:F

.field private FX:Landroid/graphics/LinearGradient;

.field private FY:F

.field private FZ:F

.field private GA:F

.field private GB:F

.field private GC:F

.field private GD:I

.field private Ga:F

.field private Gb:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

.field private Gc:F

.field private Gd:F

.field private Ge:Z

.field private Gf:Z

.field private Gg:Z

.field private Gh:Landroid/graphics/LinearGradient;

.field private Gi:Landroid/graphics/LinearGradient;

.field private Gj:Landroid/graphics/LinearGradient;

.field private Gk:F

.field private Gl:F

.field private Gm:F

.field private Gn:Landroid/graphics/RectF;

.field private Go:Landroid/graphics/RectF;

.field private Gp:Landroid/graphics/RectF;

.field private Gq:Landroid/graphics/Paint;

.field private Gr:Lcom/miui/securityscan/ui/main/b;

.field private Gs:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

.field private Gt:F

.field private Gu:I

.field private Gv:Landroid/graphics/LinearGradient;

.field private Gw:F

.field private Gx:Landroid/graphics/LinearGradient;

.field private Gy:I

.field private Gz:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/ui/main/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/securityscan/ui/main/CircleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0xe6

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    const/high16 v0, 0x42480000    # 50.0f

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gk:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gl:F

    const/high16 v0, -0x3e600000    # -20.0f

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gm:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gc:F

    invoke-direct {p0, p2}, Lcom/miui/securityscan/ui/main/CircleView;->GD(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private GA(F)F
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3ecccccd    # 0.4f

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private GB(F)F
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f19999a    # 0.6f

    const v3, 0x3df5c28f    # 0.12f

    const v4, 0x3e947ae1    # 0.29f

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private GC(II)F
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    return v2

    :cond_0
    int-to-float v0, p1

    int-to-float v1, p2

    div-float v1, v2, v1

    mul-float/2addr v0, v1

    float-to-double v2, v0

    const-wide v4, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    div-float v0, v1, v0

    return v0
.end method

.method private GD(Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ColorState;->GE:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gb:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GH:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gs:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/CircleView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/miui/securitycenter/d;->CircleView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GA:F

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gz:F

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v1, 0x3f70a3d7    # 0.94f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FV:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v1, 0x3f570a3d    # 0.84f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GC:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GC:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GC:F

    const v1, 0x3f828f5c    # 1.02f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GB:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gw:F

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/CircleView;->GE()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/CircleView;->GH()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/CircleView;->GF()V

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/CircleView;->GG()V

    return-void
.end method

.method private GE()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xe6

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->GA:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gz:F

    new-array v5, v11, [I

    const/16 v2, 0x12

    const/16 v6, 0xe0

    const/16 v7, 0xd5

    invoke-static {v8, v2, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v5, v9

    const/16 v2, 0x9

    const/16 v6, 0x66

    const/16 v7, 0xe5

    invoke-static {v8, v2, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v5, v10

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FT:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->GA:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gz:F

    new-array v5, v11, [I

    const/16 v2, 0xfc

    const/16 v6, 0x8c

    const/16 v7, 0xe

    invoke-static {v8, v2, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v5, v9

    const/16 v2, 0xff

    const/16 v6, 0x40

    const/16 v7, 0x13

    invoke-static {v8, v2, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v5, v10

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FX:Landroid/graphics/LinearGradient;

    return-void
.end method

.method private GF()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0xff

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->GA:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gz:F

    new-array v5, v11, [I

    const/16 v2, 0xfa

    const/16 v6, 0xfe

    invoke-static {v2, v8, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v9

    const/16 v2, 0xeb

    const/16 v6, 0xfd

    invoke-static {v2, v6, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v10

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gj:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->GA:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gz:F

    new-array v5, v11, [I

    const/16 v2, 0x77

    const/16 v6, 0xfa

    invoke-static {v2, v6, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v9

    const/16 v2, 0x83

    const/16 v6, 0xe9

    invoke-static {v2, v6, v8}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v10

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gh:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->GA:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gz:F

    new-array v5, v11, [I

    const/16 v2, 0xcc

    const/16 v6, 0x5d

    invoke-static {v8, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v9

    const/16 v2, 0xcb

    const/16 v6, 0x93

    invoke-static {v8, v2, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    aput v2, v5, v10

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    move v2, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gi:Landroid/graphics/LinearGradient;

    return-void
.end method

.method private GG()V
    .locals 8

    const v7, 0x3f774bc7    # 0.966f

    const v6, 0x3f726e98    # 0.947f

    const v5, 0x3f6e147b    # 0.93f

    const v4, 0x3f5fbe77    # 0.874f

    const v3, 0x3f547ae1    # 0.83f

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v5

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v6

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private GH()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0xe6

    const/16 v10, 0xff

    const/high16 v9, 0x3f800000    # 1.0f

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    sub-float v2, v9, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    sub-float v3, v9, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    add-float/2addr v4, v9

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    add-float/2addr v5, v9

    mul-float/2addr v4, v5

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/16 v6, 0x65

    const/16 v7, 0xf2

    const/16 v8, 0xf9

    invoke-static {v10, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v5, v12

    const/16 v6, 0x1b

    const/16 v7, 0x91

    const/16 v8, 0xef

    invoke-static {v10, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v5, v13

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gv:Landroid/graphics/LinearGradient;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    sub-float v2, v9, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    sub-float v3, v9, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    add-float/2addr v4, v9

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gt:F

    add-float/2addr v5, v9

    mul-float/2addr v4, v5

    const/4 v5, 0x3

    new-array v5, v5, [I

    const/16 v6, 0xb4

    const/16 v7, 0x34

    invoke-static {v11, v10, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v5, v12

    const/16 v6, 0x7b

    const/16 v7, 0x2b

    invoke-static {v11, v10, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v5, v13

    const/16 v6, 0x53

    const/16 v7, 0x2b

    invoke-static {v11, v10, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x2

    aput v6, v5, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gx:Landroid/graphics/LinearGradient;

    return-void
.end method

.method private GI()Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ge:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gf:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gc:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private GJ(Landroid/graphics/Canvas;)V
    .locals 7

    const v1, 0x3f70a3d7    # 0.94f

    const v2, 0x3ef5c28f    # 0.48f

    const/16 v6, 0xe6

    const/16 v3, 0x78

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v1, 0x3d75c290    # 0.060000002f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    div-float/2addr v0, v1

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ge:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FV:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    if-le v1, v3, :cond_0

    iput v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    :cond_0
    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    invoke-direct {p0, v2, v3}, Lcom/miui/securityscan/ui/main/CircleView;->GC(II)F

    move-result v2

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FV:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FV:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gb:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    sget-object v1, Lcom/miui/securityscan/ui/main/CircleView$ColorState;->GE:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    if-ne v0, v1, :cond_d

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    if-le v0, v6, :cond_2

    iput v6, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    :cond_2
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FT:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    if-gez v0, :cond_3

    iput v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FX:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FV:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_8

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_7

    const/4 v1, 0x1

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    :cond_7
    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FU:I

    invoke-direct {p0, v2, v3}, Lcom/miui/securityscan/ui/main/CircleView;->GC(II)F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v3, 0x3eeb851f    # 0.46f

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    mul-float/2addr v0, v4

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_b

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x41900000    # 18.0f

    div-float/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/miui/securityscan/ui/main/CircleView;->GA(F)F

    move-result v2

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    cmpg-float v1, v1, v0

    if-gez v1, :cond_c

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x41900000    # 18.0f

    div-float/2addr v2, v4

    invoke-direct {p0, v2}, Lcom/miui/securityscan/ui/main/CircleView;->GA(F)F

    move-result v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    goto/16 :goto_0

    :cond_c
    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    if-le v0, v6, :cond_e

    iput v6, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    :cond_e
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FX:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    if-gez v0, :cond_f

    iput v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    :cond_f
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FT:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ga:F

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1
.end method

.method private GK(Landroid/graphics/Canvas;F)V
    .locals 8

    const/high16 v2, 0x42f00000    # 120.0f

    const v3, 0x3f6a7efa    # 0.916f

    const v7, 0x3f5fbe77    # 0.874f

    const v4, 0x3ef5c28f    # 0.48f

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gk:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gk:F

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ge:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v1, 0x3c656040    # 0.013999999f

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v3, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GS(Landroid/graphics/RectF;FF)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v1, -0x42cbc6a0    # -0.04400003f

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v7, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GQ(Landroid/graphics/RectF;FF)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gh:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gk:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gi:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gk:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v1, 0x3edf3b65    # 0.43600002f

    mul-float v6, v0, v1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    iget v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/securityscan/ui/main/CircleView;->GR(Landroid/graphics/RectF;FFFIF)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v1, 0x3ec9ba5f    # 0.39400002f

    mul-float v6, v0, v1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gn:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    if-eqz v0, :cond_3

    move v2, v7

    :goto_2
    iget v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    move-object v0, p0

    move v3, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/securityscan/ui/main/CircleView;->GP(Landroid/graphics/RectF;FFFIF)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method private GL(Landroid/graphics/Canvas;F)V
    .locals 8

    const v7, 0x3ec9ba5f    # 0.39400002f

    const v4, 0x3ef5c28f    # 0.48f

    const v3, 0x3f5fbe77    # 0.874f

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ge:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v1, 0x3dbc6a80    # 0.09200001f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v3, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GS(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/securityscan/ui/main/CircleView;->GQ(Landroid/graphics/RectF;FF)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gj:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gl:F

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gl:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float v6, v0, v7

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    iget v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/securityscan/ui/main/CircleView;->GR(Landroid/graphics/RectF;FFFIF)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float v6, v0, v7

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Go:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    if-eqz v0, :cond_3

    move v2, v3

    :goto_2
    iget v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/securityscan/ui/main/CircleView;->GP(Landroid/graphics/RectF;FFFIF)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method private GM(Landroid/graphics/Canvas;F)V
    .locals 8

    const v7, 0x3eb33333    # 0.35f

    const v4, 0x3ef5c28f    # 0.48f

    const v3, 0x3f547ae1    # 0.83f

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ge:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    const v1, 0x3def9db8    # 0.11700004f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42f00000    # 120.0f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    invoke-direct {p0, v1, v3, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GS(Landroid/graphics/RectF;FF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/miui/securityscan/ui/main/CircleView;->GQ(Landroid/graphics/RectF;FF)V

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gj:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gm:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gm:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float v6, v0, v7

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    iget v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/securityscan/ui/main/CircleView;->GR(Landroid/graphics/RectF;FFFIF)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float v6, v0, v7

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gp:Landroid/graphics/RectF;

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    if-eqz v0, :cond_3

    move v2, v3

    :goto_2
    iget v5, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/securityscan/ui/main/CircleView;->GP(Landroid/graphics/RectF;FFFIF)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v2, v4

    goto :goto_2
.end method

.method private GN(Landroid/graphics/Canvas;F)V
    .locals 5

    const/16 v4, 0xf5

    const/4 v3, 0x0

    const/16 v2, 0xa

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    :cond_0
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    :cond_1
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    if-ge v0, v2, :cond_2

    iput-boolean v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gv:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gx:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gb:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    sget-object v1, Lcom/miui/securityscan/ui/main/CircleView$ColorState;->GE:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    if-gt v0, v4, :cond_4

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    :cond_4
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    if-lt v0, v2, :cond_5

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    :cond_5
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    if-le v0, v4, :cond_2

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    if-ge v0, v2, :cond_2

    iput-boolean v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    if-lt v0, v2, :cond_7

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    add-int/lit8 v0, v0, -0xa

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    :cond_7
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    if-gt v0, v4, :cond_8

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    :cond_8
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gu:I

    if-ge v0, v2, :cond_2

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gy:I

    if-le v0, v4, :cond_2

    iput-boolean v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    goto :goto_0

    :cond_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget-object v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1
.end method

.method private GO(Landroid/graphics/Canvas;I)V
    .locals 7

    const/high16 v6, 0x42f00000    # 120.0f

    const/high16 v5, 0x41900000    # 18.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const v2, 0x3ca3d700    # 0.01999998f

    const/16 v3, 0xf7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ge:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GB:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GC:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GB:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GB:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget-object v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GB:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GC:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GC:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GC:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GC:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GC:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GB:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gw:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->GB:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gw:F

    int-to-float v2, p2

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    invoke-direct {p0, v2}, Lcom/miui/securityscan/ui/main/CircleView;->GA(F)F

    move-result v2

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GB:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gw:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GB:F

    int-to-float v2, p2

    mul-float/2addr v2, v4

    div-float/2addr v2, v5

    invoke-direct {p0, v2}, Lcom/miui/securityscan/ui/main/CircleView;->GA(F)F

    move-result v2

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gw:F

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    goto/16 :goto_0
.end method

.method private GP(Landroid/graphics/RectF;FFFIF)V
    .locals 5

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p5

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41900000    # 18.0f

    div-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/miui/securityscan/ui/main/CircleView;->GA(F)F

    move-result v2

    mul-float/2addr v2, p6

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_2

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v4, p4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v2

    iput v3, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    :cond_0
    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v3, p4

    add-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_3

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_3
    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v3, p3

    add-float/2addr v0, v3

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_5
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method

.method private GQ(Landroid/graphics/RectF;FF)V
    .locals 3

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FZ:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, p3

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    :cond_0
    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, p3

    iput v2, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_3
    iput v0, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_5
    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1
.end method

.method private GR(Landroid/graphics/RectF;FFFIF)V
    .locals 5

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    int-to-float v2, p5

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x41900000    # 18.0f

    div-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/miui/securityscan/ui/main/CircleView;->GA(F)F

    move-result v2

    mul-float/2addr v2, p6

    iget v3, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_2

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_0
    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v3, p3

    add-float/2addr v0, v3

    sub-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v3, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v0

    if-lez v3, :cond_3

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v4, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v4, p4

    sub-float/2addr v3, v4

    sub-float/2addr v3, v2

    iput v3, p1, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v0

    if-gez v3, :cond_0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_3
    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v3, p4

    add-float/2addr v0, v3

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_5
    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1
.end method

.method private GS(Landroid/graphics/RectF;FF)V
    .locals 3

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v1, p2

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FY:F

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FW:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_2

    iget v2, p1, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, p3

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    :cond_0
    :goto_0
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget v0, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, p3

    iput v2, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v0

    if-gez v2, :cond_0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_3
    iput v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, p3

    iput v0, p1, Landroid/graphics/RectF;->right:F

    iget v0, p1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_5
    iput v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1
.end method

.method private GT(F)F
    .locals 7

    const/16 v6, 0x78

    const/high16 v5, 0x42f00000    # 120.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gs:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    sget-object v2, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GJ:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    if-ne v0, v2, :cond_1

    const/high16 v0, 0x41400000    # 12.0f

    :goto_0
    iget-boolean v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gf:Z

    if-eqz v2, :cond_3

    cmpl-float v2, p1, v1

    if-lez v2, :cond_2

    iget v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    if-lez v2, :cond_2

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v5

    invoke-direct {p0, v1}, Lcom/miui/securityscan/ui/main/CircleView;->GB(F)F

    move-result v1

    mul-float/2addr v0, v1

    const v1, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iput-boolean v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/high16 v0, 0x41100000    # 9.0f

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    iput-boolean v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    move v0, v1

    goto :goto_1

    :cond_3
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    if-ge v1, v6, :cond_4

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    iget v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    int-to-float v1, v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v5

    invoke-direct {p0, v1}, Lcom/miui/securityscan/ui/main/CircleView;->GB(F)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_1

    :cond_4
    iput v6, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    goto :goto_1
.end method


# virtual methods
.method public Gt(I)V
    .locals 5

    const/16 v4, 0x50

    const/4 v3, 0x1

    const/16 v2, 0xe6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    if-eqz v0, :cond_1

    if-lt p1, v4, :cond_0

    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ColorState;->GE:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gb:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ColorState;->GF:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gb:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    goto :goto_0

    :cond_1
    if-lt p1, v4, :cond_4

    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ColorState;->GE:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gb:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    if-eqz v0, :cond_3

    iput v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    iput-boolean v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/CircleView;->invalidate()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/CircleView;->GI()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ColorState;->GF:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gb:Lcom/miui/securityscan/ui/main/CircleView$ColorState;

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    if-eqz v0, :cond_5

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    iput v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    iput-boolean v3, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/CircleView;->GI()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FR:I

    iput v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FS:I

    goto :goto_1
.end method

.method public Gu()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gf:Z

    return-void
.end method

.method public Gv()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GH:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gs:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gf:Z

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/CircleView;->invalidate()V

    return-void
.end method

.method public Gw(Lcom/miui/securityscan/ui/main/a;)V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GI:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gs:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ge:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gf:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/miui/securityscan/ui/main/a;->GU()V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/CircleView;->invalidate()V

    return-void
.end method

.method public Gx(Lcom/miui/securityscan/ui/main/b;)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "CircleView"

    const-string/jumbo v1, "finishPredictScan"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ge:Z

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gf:Z

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gr:Lcom/miui/securityscan/ui/main/b;

    return-void
.end method

.method public Gy()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GJ:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gs:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FO:I

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Ge:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gf:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/CircleView;->invalidate()V

    return-void
.end method

.method public Gz()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GK:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gs:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    iput v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    iput-boolean v1, p0, Lcom/miui/securityscan/ui/main/CircleView;->FQ:Z

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gg:Z

    iput-boolean v2, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gf:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gq:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-direct {p0, p1}, Lcom/miui/securityscan/ui/main/CircleView;->GJ(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gc:F

    invoke-direct {p0, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GT(F)F

    move-result v0

    iput v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gc:F

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gc:F

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GM(Landroid/graphics/Canvas;F)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gc:F

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GL(Landroid/graphics/Canvas;F)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gc:F

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GK(Landroid/graphics/Canvas;F)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->GD:I

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GO(Landroid/graphics/Canvas;I)V

    iget v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gd:F

    invoke-direct {p0, p1, v0}, Lcom/miui/securityscan/ui/main/CircleView;->GN(Landroid/graphics/Canvas;F)V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gs:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    sget-object v1, Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;->GI:Lcom/miui/securityscan/ui/main/CircleView$ProgressStatus;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/securityscan/ui/main/CircleView;->GI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gr:Lcom/miui/securityscan/ui/main/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->Gr:Lcom/miui/securityscan/ui/main/b;

    invoke-interface {v0}, Lcom/miui/securityscan/ui/main/b;->GV()V

    :cond_0
    iget-boolean v0, p0, Lcom/miui/securityscan/ui/main/CircleView;->FP:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/securityscan/ui/main/CircleView;->invalidate()V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method
