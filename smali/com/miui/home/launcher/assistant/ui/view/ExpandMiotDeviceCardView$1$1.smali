.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$1;
.super Ljava/lang/Object;
.source "ExpandMiotDeviceCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->getAllDeviceInfos()Ljava/util/List;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->setDeviceInfo(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$1;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/ui/adapter/DeviceGridAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
