.class Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;
.super Ljava/lang/Object;
.source "BaseBallCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->addTabViewToContainer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

.field final synthetic val$position:I

.field final synthetic val$textView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;ILandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iput p2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$position:I

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$textView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$position:I

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)I

    move-result v3

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v3}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$1000(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;I)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$textView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isSelected()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$position:I

    invoke-static {v0, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$002(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;I)I

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v2

    iget v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$position:I

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$1102(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getBallTeamList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$1200(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "card_item_click_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "15"

    const-string/jumbo v3, "BaseBallCardView"

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$textView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$8;->val$position:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
