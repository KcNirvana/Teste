.class Lcom/miui/gamebooster/customview/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lmiui/notification/Gefingerpoken;


# instance fields
.field private gM:Z

.field private gN:F

.field private gO:F

.field private final gP:F

.field final synthetic gQ:Lcom/miui/gamebooster/customview/a;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/customview/a;F)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/b;->gQ:Lcom/miui/gamebooster/customview/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/gamebooster/customview/b;->gP:F

    return-void
.end method

.method private jG(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/b;->gM:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/customview/b;->gN:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/miui/gamebooster/customview/b;->gO:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/gamebooster/customview/b;->gP:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gamebooster/customview/b;->gM:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/b;->gM:Z

    return v0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/b;->gN:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/gamebooster/customview/b;->gO:F

    iput-boolean v1, p0, Lcom/miui/gamebooster/customview/b;->gM:Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/b;->jG(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    iput-boolean v1, p0, Lcom/miui/gamebooster/customview/b;->gM:Z

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

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/miui/gamebooster/customview/b;->jG(Landroid/view/MotionEvent;)V

    :cond_1
    iget-boolean v0, p0, Lcom/miui/gamebooster/customview/b;->gM:Z

    return v0
.end method
