.class public Lcom/miui/powercenter/view/GradientBall;
.super Landroid/view/View;
.source ""


# instance fields
.field private aIR:I

.field private aIS:Z

.field private aIT:Landroid/animation/AnimatorSet;

.field private aIU:I

.field private aIV:I

.field private aIW:Lcom/miui/powercenter/view/a;

.field private aIX:I

.field private aIY:Landroid/graphics/drawable/Drawable;

.field private aIZ:Landroid/graphics/drawable/Drawable;

.field private aJa:Landroid/graphics/drawable/Drawable;

.field private aJb:Landroid/graphics/drawable/Drawable;

.field private aJc:Landroid/graphics/drawable/Drawable;

.field private aJd:Landroid/graphics/drawable/Drawable;

.field private aJe:Landroid/graphics/Path;

.field private aJf:Landroid/graphics/Paint;

.field private aJg:I

.field private aJh:I

.field private aJi:Lcom/miui/powercenter/view/a;

.field private aJj:Landroid/graphics/Paint;

.field private aJk:I

.field private aJl:F

.field private aJm:F

.field private aJn:F

.field private aJo:F

.field private aJp:I

.field private aJq:I

.field private aJr:Lcom/miui/powercenter/view/a;

.field private aJs:I

.field private aJt:Z

.field private aJu:I

.field private aJv:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/view/GradientBall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/powercenter/view/GradientBall;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIU:I

    iput v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJg:I

    iput v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJp:I

    iput v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIV:I

    iput v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJh:I

    iput v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJq:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJt:Z

    iput-boolean v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIS:Z

    iput-object p1, p0, Lcom/miui/powercenter/view/GradientBall;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/powercenter/view/GradientBall;->init()V

    return-void
.end method

.method static synthetic aUA(Lcom/miui/powercenter/view/GradientBall;F)F
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/GradientBall;->aJo:F

    return p1
.end method

.method private aUj(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 5

    const/4 v4, 0x2

    new-array v0, v4, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method private aUk()Z
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4006000000000000L    # 2.75

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic aUp(Lcom/miui/powercenter/view/GradientBall;)Lcom/miui/powercenter/view/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIW:Lcom/miui/powercenter/view/a;

    return-object v0
.end method

.method static synthetic aUq(Lcom/miui/powercenter/view/GradientBall;)Lcom/miui/powercenter/view/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJi:Lcom/miui/powercenter/view/a;

    return-object v0
.end method

.method static synthetic aUr(Lcom/miui/powercenter/view/GradientBall;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJj:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic aUs(Lcom/miui/powercenter/view/GradientBall;)F
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJl:F

    return v0
.end method

.method static synthetic aUt(Lcom/miui/powercenter/view/GradientBall;)F
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJm:F

    return v0
.end method

.method static synthetic aUu(Lcom/miui/powercenter/view/GradientBall;)F
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJn:F

    return v0
.end method

.method static synthetic aUv(Lcom/miui/powercenter/view/GradientBall;)F
    .locals 1

    iget v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJo:F

    return v0
.end method

.method static synthetic aUw(Lcom/miui/powercenter/view/GradientBall;)Lcom/miui/powercenter/view/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJr:Lcom/miui/powercenter/view/a;

    return-object v0
.end method

.method static synthetic aUx(Lcom/miui/powercenter/view/GradientBall;F)F
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/GradientBall;->aJl:F

    return p1
.end method

.method static synthetic aUy(Lcom/miui/powercenter/view/GradientBall;F)F
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/GradientBall;->aJm:F

    return p1
.end method

.method static synthetic aUz(Lcom/miui/powercenter/view/GradientBall;F)F
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/view/GradientBall;->aJn:F

    return p1
.end method

.method private init()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJe:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJf:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJf:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJf:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJf:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIZ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJd:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJc:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/miui/powercenter/view/a;

    invoke-direct {v0, p0, v2}, Lcom/miui/powercenter/view/a;-><init>(Lcom/miui/powercenter/view/GradientBall;Lcom/miui/powercenter/view/a;)V

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIW:Lcom/miui/powercenter/view/a;

    new-instance v0, Lcom/miui/powercenter/view/a;

    invoke-direct {v0, p0, v2}, Lcom/miui/powercenter/view/a;-><init>(Lcom/miui/powercenter/view/GradientBall;Lcom/miui/powercenter/view/a;)V

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJi:Lcom/miui/powercenter/view/a;

    new-instance v0, Lcom/miui/powercenter/view/a;

    invoke-direct {v0, p0, v2}, Lcom/miui/powercenter/view/a;-><init>(Lcom/miui/powercenter/view/GradientBall;Lcom/miui/powercenter/view/a;)V

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJr:Lcom/miui/powercenter/view/a;

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIX:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJj:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJj:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJj:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public aUl(F)V
    .locals 8

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0}, Lcom/miui/powercenter/view/GradientBall;->aUk()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fc999999999999aL    # 0.2

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v2, v0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-float v1, v2

    float-to-double v2, v0

    mul-double/2addr v2, v6

    add-double/2addr v2, v6

    double-to-float v0, v2

    iget-object v2, p0, Lcom/miui/powercenter/view/GradientBall;->aIW:Lcom/miui/powercenter/view/a;

    iget v3, p0, Lcom/miui/powercenter/view/GradientBall;->aIU:I

    iget v4, p0, Lcom/miui/powercenter/view/GradientBall;->aIV:I

    int-to-float v4, v4

    div-float/2addr v4, p1

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/powercenter/view/a;->aUE(II)V

    iget-object v2, p0, Lcom/miui/powercenter/view/GradientBall;->aJi:Lcom/miui/powercenter/view/a;

    iget v3, p0, Lcom/miui/powercenter/view/GradientBall;->aJg:I

    iget v4, p0, Lcom/miui/powercenter/view/GradientBall;->aJh:I

    int-to-float v4, v4

    div-float v1, v4, v1

    float-to-int v1, v1

    invoke-virtual {v2, v3, v1}, Lcom/miui/powercenter/view/a;->aUE(II)V

    iget-object v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJr:Lcom/miui/powercenter/view/a;

    iget v2, p0, Lcom/miui/powercenter/view/GradientBall;->aJp:I

    iget v3, p0, Lcom/miui/powercenter/view/GradientBall;->aJq:I

    int-to-float v3, v3

    div-float v0, v3, v0

    float-to-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/miui/powercenter/view/a;->aUE(II)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIW:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIU:I

    iget v2, p0, Lcom/miui/powercenter/view/GradientBall;->aIV:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/view/a;->aUE(II)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJi:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJg:I

    iget v2, p0, Lcom/miui/powercenter/view/GradientBall;->aJh:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/view/a;->aUE(II)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJr:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJp:I

    iget v2, p0, Lcom/miui/powercenter/view/GradientBall;->aJq:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/view/a;->aUE(II)V

    goto :goto_0
.end method

.method public aUm(FZ)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIW:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIR:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/a;->aUC(I)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJi:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJu:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/a;->aUC(I)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/view/GradientBall;->aUl(F)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJr:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJs:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/a;->aUC(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->invalidate()V

    return-void
.end method

.method public aUn(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/miui/powercenter/view/GradientBall;->aJt:Z

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIT:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIT:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public aUo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/view/GradientBall;->aIS:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJt:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIW:Lcom/miui/powercenter/view/a;

    iget-boolean v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIS:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJb:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/miui/powercenter/view/a;->aUD(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJi:Lcom/miui/powercenter/view/a;

    iget-boolean v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIZ:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/miui/powercenter/view/a;->aUD(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJr:Lcom/miui/powercenter/view/a;

    iget-boolean v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJd:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/miui/powercenter/view/a;->aUD(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIW:Lcom/miui/powercenter/view/a;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/a;->aUB(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJi:Lcom/miui/powercenter/view/a;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/a;->aUB(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJr:Lcom/miui/powercenter/view/a;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/view/a;->aUB(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->invalidate()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJa:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIY:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJc:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/miui/powercenter/view/GradientBall;->aJk:I

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIV:I

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJh:I

    iget-boolean v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJv:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v0, p2, v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJq:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJv:Z

    :cond_0
    invoke-static {}, Lcom/miui/common/b/e;->aHv()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIV:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIV:I

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJh:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJh:I

    :cond_1
    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIU:I

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090201

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJg:I

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int v0, p1, v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJp:I

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090200

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIR:I

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJu:I

    invoke-virtual {p0}, Lcom/miui/powercenter/view/GradientBall;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJs:I

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIW:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIU:I

    iget v2, p0, Lcom/miui/powercenter/view/GradientBall;->aIV:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/view/a;->aUE(II)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIW:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aIR:I

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/a;->aUC(I)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJi:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJg:I

    iget v2, p0, Lcom/miui/powercenter/view/GradientBall;->aJh:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/view/a;->aUE(II)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJi:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJu:I

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/a;->aUC(I)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJr:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJp:I

    iget v2, p0, Lcom/miui/powercenter/view/GradientBall;->aJq:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/powercenter/view/a;->aUE(II)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aJr:Lcom/miui/powercenter/view/a;

    iget v1, p0, Lcom/miui/powercenter/view/GradientBall;->aJs:I

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/view/a;->aUC(I)V

    return-void
.end method

.method public startAnimation()V
    .locals 12

    const/high16 v5, 0x41f00000    # 30.0f

    const/high16 v4, 0x41700000    # 15.0f

    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v10, 0x41200000    # 10.0f

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v5

    sub-float/2addr v0, v4

    new-instance v1, Lcom/miui/powercenter/view/b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/view/b;-><init>(Lcom/miui/powercenter/view/GradientBall;)V

    invoke-direct {p0, v0, v1}, Lcom/miui/powercenter/view/GradientBall;->aUj(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, v5

    sub-float/2addr v1, v4

    new-instance v2, Lcom/miui/powercenter/view/c;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/view/c;-><init>(Lcom/miui/powercenter/view/GradientBall;)V

    invoke-direct {p0, v1, v2}, Lcom/miui/powercenter/view/GradientBall;->aUj(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, v11

    sub-float/2addr v2, v10

    new-instance v3, Lcom/miui/powercenter/view/d;

    invoke-direct {v3, p0}, Lcom/miui/powercenter/view/d;-><init>(Lcom/miui/powercenter/view/GradientBall;)V

    invoke-direct {p0, v2, v3}, Lcom/miui/powercenter/view/GradientBall;->aUj(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v3, v11

    sub-float/2addr v3, v10

    new-instance v4, Lcom/miui/powercenter/view/e;

    invoke-direct {v4, p0}, Lcom/miui/powercenter/view/e;-><init>(Lcom/miui/powercenter/view/GradientBall;)V

    invoke-direct {p0, v3, v4}, Lcom/miui/powercenter/view/GradientBall;->aUj(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v11

    sub-float/2addr v4, v10

    new-instance v5, Lcom/miui/powercenter/view/f;

    invoke-direct {v5, p0}, Lcom/miui/powercenter/view/f;-><init>(Lcom/miui/powercenter/view/GradientBall;)V

    invoke-direct {p0, v4, v5}, Lcom/miui/powercenter/view/GradientBall;->aUj(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v5, v6

    mul-float/2addr v5, v11

    sub-float/2addr v5, v10

    new-instance v6, Lcom/miui/powercenter/view/g;

    invoke-direct {v6, p0}, Lcom/miui/powercenter/view/g;-><init>(Lcom/miui/powercenter/view/GradientBall;)V

    invoke-direct {p0, v5, v6}, Lcom/miui/powercenter/view/GradientBall;->aUj(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v11

    sub-float/2addr v6, v10

    new-instance v7, Lcom/miui/powercenter/view/h;

    invoke-direct {v7, p0}, Lcom/miui/powercenter/view/h;-><init>(Lcom/miui/powercenter/view/GradientBall;)V

    invoke-direct {p0, v6, v7}, Lcom/miui/powercenter/view/GradientBall;->aUj(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    double-to-float v7, v8

    mul-float/2addr v7, v11

    sub-float/2addr v7, v10

    new-instance v8, Lcom/miui/powercenter/view/i;

    invoke-direct {v8, p0}, Lcom/miui/powercenter/view/i;-><init>(Lcom/miui/powercenter/view/GradientBall;)V

    invoke-direct {p0, v7, v8}, Lcom/miui/powercenter/view/GradientBall;->aUj(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/miui/powercenter/view/GradientBall;->aIT:Landroid/animation/AnimatorSet;

    iget-object v8, p0, Lcom/miui/powercenter/view/GradientBall;->aIT:Landroid/animation/AnimatorSet;

    const/16 v9, 0x8

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v2, v9, v0

    const/4 v0, 0x2

    aput-object v4, v9, v0

    const/4 v0, 0x3

    aput-object v6, v9, v0

    const/4 v0, 0x4

    aput-object v1, v9, v0

    const/4 v0, 0x5

    aput-object v3, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/miui/powercenter/view/GradientBall;->aIT:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
