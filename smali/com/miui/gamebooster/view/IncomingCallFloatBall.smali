.class public Lcom/miui/gamebooster/view/IncomingCallFloatBall;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mHeight:I

.field private mIsDragging:Z

.field private mWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private nV:Z

.field private nW:Landroid/widget/TextView;

.field private nX:Landroid/widget/TextView;

.field private nY:I

.field private nZ:I

.field private oa:Landroid/widget/Button;

.field private ob:Lcom/miui/gamebooster/view/a;

.field private oc:F

.field private od:I

.field private oe:I

.field private of:F

.field private og:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static qJ(Landroid/content/Context;)Lcom/miui/gamebooster/view/IncomingCallFloatBall;
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;

    return-object v0
.end method

.method private qK(IIZ)V
    .locals 5

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Lcom/miui/gamebooster/view/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/gamebooster/view/b;-><init>(Lcom/miui/gamebooster/view/IncomingCallFloatBall;Lcom/miui/gamebooster/view/b;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Landroid/graphics/Point;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {v3, v4, v0}, Landroid/graphics/Point;-><init>(II)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/gamebooster/view/h;

    invoke-direct {v1, p0}, Lcom/miui/gamebooster/view/h;-><init>(Lcom/miui/gamebooster/view/IncomingCallFloatBall;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;

    invoke-direct {v1}, Lmiui/maml/animation/interpolater/QuartEaseInOutInterpolater;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qQ(II)V

    goto :goto_0
.end method

.method private qL()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->od:I

    iget v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mHeight:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oe:I

    iget v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWidth:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v4, v0, v5}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qK(IIZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oe:I

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWidth:I

    sub-int/2addr v1, v2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v1, v0, v5}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qK(IIZ)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nV:Z

    return-void
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWindowManager:Landroid/view/WindowManager;

    const v0, 0x7f0a01f9

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nX:Landroid/widget/TextView;

    const v0, 0x7f0a01fa

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nW:Landroid/widget/TextView;

    const v0, 0x7f0a01fb

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oa:Landroid/widget/Button;

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oa:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oc:F

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->ob:Lcom/miui/gamebooster/view/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->ob:Lcom/miui/gamebooster/view/a;

    invoke-interface {v0}, Lcom/miui/gamebooster/view/a;->oR()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qM()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qQ(II)V

    invoke-direct {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qL()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->init()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mIsDragging:Z

    return v0

    :pswitch_0
    iput v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->of:F

    iput v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->og:F

    iput-boolean v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mIsDragging:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mIsDragging:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->of:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->og:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oc:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mIsDragging:Z

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->of:F

    iput v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->og:F

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nY:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nZ:I

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mIsDragging:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oe:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qM()V

    :cond_0
    sub-int v0, p4, p2

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWidth:I

    sub-int v0, p5, p3

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nY:I

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nZ:I

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->of:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->og:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nY:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v0, v0

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nZ:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qQ(II)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->qL()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mIsDragging:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public qM()V
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oe:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->od:I

    return-void
.end method

.method public qN(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nW:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public qO(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nX:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public qP(Lcom/miui/gamebooster/view/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->ob:Lcom/miui/gamebooster/view/a;

    return-void
.end method

.method public qQ(II)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-gez p1, :cond_3

    move p1, v1

    :cond_0
    :goto_0
    if-gez p2, :cond_4

    move p2, v1

    :cond_1
    :goto_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nV:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oe:I

    iget v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWidth:I

    sub-int/2addr v2, v3

    if-le p1, v2, :cond_0

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->oe:I

    iget v3, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWidth:I

    sub-int p1, v2, v3

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->od:I

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mHeight:I

    sub-int/2addr v1, v2

    if-le p2, v1, :cond_1

    iget v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->od:I

    iget v2, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mHeight:I

    sub-int p2, v1, v2

    goto :goto_1
.end method

.method public show()V
    .locals 6

    const/4 v2, -0x2

    const/4 v5, 0x0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x1028

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, v2, Landroid/graphics/Point;->y:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {p0, v1, v3}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->measure(II)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/view/IncomingCallFloatBall;->nV:Z

    return-void

    :cond_1
    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method
