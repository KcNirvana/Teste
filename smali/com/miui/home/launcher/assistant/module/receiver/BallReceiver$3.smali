.class Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$3;
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

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$3;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$3;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;)Ljava/util/WeakHashMap;

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$3;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver;)Ljava/util/WeakHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/miui/home/launcher/assistant/module/receiver/BallReceiver$IUpdateLisener;->onWorldCupTabShowed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BallReceiver"

    const-string/jumbo v3, "Exception"

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/assistant/config/PALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
