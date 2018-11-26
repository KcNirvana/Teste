.class Lcom/miui/gamebooster/ui/b;
.super Lcom/miui/common/d/f;
.source ""


# instance fields
.field private final y:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/gamebooster/ui/a;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/d/f;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/gamebooster/ui/b;->y:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/b;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/common/d/f;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/miui/gamebooster/c/b;->tw(Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/miui/gamebooster/ui/a;->L(Lcom/miui/gamebooster/ui/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/miui/gamebooster/a/a;->eX(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    invoke-static {v0}, Lcom/miui/gamebooster/ui/a;->L(Lcom/miui/gamebooster/ui/a;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;

    invoke-virtual {v0}, Lcom/miui/gamebooster/ui/GameBoosterMainActivity;->dk()Lcom/miui/gamebooster/service/IGameBooster;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/common/b/f;->aHV(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lcom/miui/gamebooster/a/a;->eS(Landroid/content/Context;Lcom/miui/gamebooster/service/IGameBooster;Ljava/lang/String;Landroid/os/UserHandle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6c
        :pswitch_0
    .end packed-switch
.end method
