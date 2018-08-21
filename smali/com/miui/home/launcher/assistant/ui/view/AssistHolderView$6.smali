.class Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;
.super Ljava/lang/Object;
.source "AssistHolderView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->showUpgradeDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;->val$filename:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;->val$filename:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->installApk(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_button_click_upgrade"

    const-string/jumbo v2, "19"

    const-string/jumbo v3, "UpgradeBottomView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b043d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
