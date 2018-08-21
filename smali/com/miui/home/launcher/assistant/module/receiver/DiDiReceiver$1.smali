.class Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "DiDiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$1;->this$0:Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;->access$000(Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;

    const-string/jumbo v1, "destination_type"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "estimate_price"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/home/launcher/assistant/module/receiver/DiDiReceiver$IUpdateLisener;->update(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
