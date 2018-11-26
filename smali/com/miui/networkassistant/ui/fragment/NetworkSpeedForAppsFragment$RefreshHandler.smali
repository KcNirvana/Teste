.class Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;
.super Landroid/os/Handler;
.source ""


# instance fields
.field private final mFragment:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment$RefreshHandler;->mFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->-wrap0(Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;)V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/networkassistant/ui/fragment/NetworkSpeedForAppsFragment;->hideLoadingView()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
