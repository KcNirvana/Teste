.class Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "BallReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;)Ljava/util/WeakHashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;->onNetworkChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    return-void
.end method
