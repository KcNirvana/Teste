.class public Lcom/miui/personalassistant/ui/widget/CustomScrollView;
.super Landroid/widget/ScrollView;
.source "CustomScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;
    }
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private lastScrollY:I

.field private onScrollListener:Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;-><init>(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;-><init>(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;

    invoke-direct {v0, p0}, Lcom/miui/personalassistant/ui/widget/CustomScrollView$1;-><init>(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)V

    iput-object v0, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)I
    .locals 1

    iget v0, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->lastScrollY:I

    return v0
.end method

.method static synthetic access$002(Lcom/miui/personalassistant/ui/widget/CustomScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->lastScrollY:I

    return p1
.end method

.method static synthetic access$100(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/personalassistant/ui/widget/CustomScrollView;)Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->onScrollListener:Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;

    return-object v0
.end method


# virtual methods
.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->onScrollListener:Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->onScrollListener:Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;

    invoke-virtual {p0}, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->getScrollY()I

    move-result v1

    iput v1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->lastScrollY:I

    invoke-interface {v0, v1}, Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;->onScroll(I)F

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnScrollListener(Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/personalassistant/ui/widget/CustomScrollView;->onScrollListener:Lcom/miui/personalassistant/ui/widget/CustomScrollView$OnScrollListener;

    return-void
.end method
