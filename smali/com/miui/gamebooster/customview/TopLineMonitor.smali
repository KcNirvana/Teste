.class public Lcom/miui/gamebooster/customview/TopLineMonitor;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private hO:I

.field private hP:I

.field private hQ:I

.field private hR:Lcom/miui/gamebooster/d/b;

.field private hS:Z

.field private hT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hT:I

    return-void
.end method


# virtual methods
.method public kk(Lcom/miui/gamebooster/d/b;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hR:Lcom/miui/gamebooster/d/b;

    iput-boolean p2, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hS:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hP:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hQ:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hP:I

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hQ:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hO:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hO:I

    iget v1, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hT:I

    iget v2, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hT:I

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hR:Lcom/miui/gamebooster/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hR:Lcom/miui/gamebooster/d/b;

    invoke-virtual {v0}, Lcom/miui/gamebooster/d/b;->removeFloatView()V

    iget-object v0, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hR:Lcom/miui/gamebooster/d/b;

    iget-boolean v1, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hS:Z

    invoke-virtual {v0, v1, v3}, Lcom/miui/gamebooster/d/b;->uL(ZZ)V

    :cond_0
    iput v3, p0, Lcom/miui/gamebooster/customview/TopLineMonitor;->hO:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
