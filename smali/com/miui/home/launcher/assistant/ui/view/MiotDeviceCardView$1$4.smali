.class Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1$4;
.super Ljava/lang/Object;
.source "MiotDeviceCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1$4;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1$4;->this$1:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView;)Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/MiotDeviceCardView$1$4;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/MiotDeviceItem;->onDeviceUpdated(Landroid/content/Intent;)V

    return-void
.end method
