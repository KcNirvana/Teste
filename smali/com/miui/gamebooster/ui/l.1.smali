.class Lcom/miui/gamebooster/ui/l;
.super Lcom/miui/common/d/f;
.source ""


# instance fields
.field private final cv:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/d/f;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/l;->cv:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/l;->cv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dI(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/customview/c;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/miui/common/d/f;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dU(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)V

    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dI(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/customview/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/c;->jN()V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dI(Lcom/miui/gamebooster/ui/GameBoosterMainActivity;)Lcom/miui/gamebooster/customview/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gamebooster/customview/c;->jO()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
