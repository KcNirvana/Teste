.class Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$2;
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

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$2;->this$1:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView;)Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/ExpandMiotDeviceCardView$1$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->onDeviceChanged(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
