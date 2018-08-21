.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;
.super Landroid/content/BroadcastReceiver;
.source "ExpandMiotDeviceCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_refresh_finished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$1;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.xiaomi.smarthome.refresh_device"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    new-instance v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$2;

    invoke-direct {v1, p0, p2}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$2;-><init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
