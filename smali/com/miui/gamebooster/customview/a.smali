.class public Lcom/miui/gamebooster/customview/a;
.super Lmiui/notification/NotificationRowLayout;
.source ""


# instance fields
.field private gH:I

.field private gI:I

.field private gJ:Lcom/miui/gamebooster/customview/b;

.field private gK:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

.field private gL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/gamebooster/customview/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/notification/NotificationRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/miui/gamebooster/customview/a;->setLayoutTransitionsEnabled(Z)V

    invoke-virtual {p0}, Lcom/miui/gamebooster/customview/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    new-instance v1, Lcom/miui/gamebooster/customview/b;

    invoke-direct {v1, p0, v0}, Lcom/miui/gamebooster/customview/b;-><init>(Lcom/miui/gamebooster/customview/a;F)V

    iput-object v1, p0, Lcom/miui/gamebooster/customview/a;->gJ:Lcom/miui/gamebooster/customview/b;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/a;->gL:I

    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1

    invoke-super {p0, p1}, Lmiui/notification/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public jF(Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/a;->gK:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lmiui/notification/NotificationRowLayout;->onChildDismissed(Landroid/view/View;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/customview/a;->gJ:Lcom/miui/gamebooster/customview/b;

    invoke-virtual {v0, p1}, Lcom/miui/gamebooster/customview/b;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lmiui/notification/NotificationRowLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/miui/gamebooster/customview/a;->gJ:Lcom/miui/gamebooster/customview/b;

    invoke-virtual {v1, p1}, Lcom/miui/gamebooster/customview/b;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lmiui/notification/NotificationRowLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/gamebooster/customview/a;->gI:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/miui/gamebooster/customview/a;->gI:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Lcom/miui/gamebooster/customview/a;->gH:I

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/miui/gamebooster/customview/a;->gH:I

    iget v2, p0, Lcom/miui/gamebooster/customview/a;->gL:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/miui/gamebooster/customview/a;->gK:Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;

    invoke-virtual {v1, v0}, Lcom/miui/gamebooster/gbservices/AntiMsgAccessibilityService;->rL(Z)V

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/gamebooster/customview/a;->gH:I

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
