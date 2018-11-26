.class public Lcom/miui/gamebooster/viewPointwidget/c;
.super Landroid/text/method/BaseMovementMethod;
.source ""


# static fields
.field private static fq:Lcom/miui/gamebooster/viewPointwidget/c;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/BaseMovementMethod;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gamebooster/viewPointwidget/c;
    .locals 2

    const-class v1, Lcom/miui/gamebooster/viewPointwidget/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/c;->fq:Lcom/miui/gamebooster/viewPointwidget/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/viewPointwidget/c;

    invoke-direct {v0}, Lcom/miui/gamebooster/viewPointwidget/c;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/viewPointwidget/c;->fq:Lcom/miui/gamebooster/viewPointwidget/c;

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/viewPointwidget/c;->fq:Lcom/miui/gamebooster/viewPointwidget/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_0

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    const-class v2, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v0, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    array-length v2, v0

    if-eqz v2, :cond_2

    if-ne v1, v4, :cond_1

    aget-object v0, v0, v5

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    return v4

    :cond_2
    return v4
.end method
