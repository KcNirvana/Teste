.class Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;
.super Ljava/lang/Object;
.source "UpgradeCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->getInstance()Lcom/miui/home/launcher/assistant/ui/AssistHolderController;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/ui/AssistHolderController;->assistHolderView:Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/util/Util;->installApk(Landroid/content/Context;Lcom/miui/home/launcher/assistant/ui/view/AssistHolderView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_button_click_upgrade"

    const-string/jumbo v2, "19"

    const-string/jumbo v3, "UpgradeCardView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b043c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_button_click_upgrade"

    const-string/jumbo v2, "19"

    const-string/jumbo v3, "UpgradeCardView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;

    invoke-static {v4}, Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/UpgradeCardView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1b0b0438

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickButtonEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1b0901e4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
