.class Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;
.super Landroid/content/BroadcastReceiver;
.source "LocalPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SysEventMonitor"
.end annotation


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->this$0:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->mRef:Ljava/lang/ref/WeakReference;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->mRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->this$0:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;

    invoke-static {p1}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->access$100(Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->this$0:Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;

    invoke-virtual {p1}, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 p2, 0x80000

    invoke-virtual {p1, p2}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->mRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/biz/player/local/router/core/LocalPlayerActivity$SysEventMonitor;->mRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
