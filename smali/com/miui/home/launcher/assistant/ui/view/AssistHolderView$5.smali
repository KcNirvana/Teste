.class Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;
.super Ljava/lang/Object;
.source "AssistHolderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->showUpgradeFooter(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

.field final synthetic val$changeLog:Ljava/lang/String;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;->val$fileName:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;->val$changeLog:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;->val$fileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;->val$changeLog:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$1200(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_button_click_upgrade"

    const-string/jumbo v2, "19"

    const-string/jumbo v3, "UpgradeBottomView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView$5;->this$0:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0436

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
