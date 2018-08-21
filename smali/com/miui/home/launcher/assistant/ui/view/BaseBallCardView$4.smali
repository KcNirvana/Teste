.class Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;
.super Ljava/lang/Object;
.source "BaseBallCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->bindRecentDataToUI(Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

.field final synthetic val$game:Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;

.field final synthetic val$mTvRecentShow:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->val$game:Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->val$mTvRecentShow:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->isWordlCupTeam(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->val$game:Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getHupuWorldCupSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->val$mTvRecentShow:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$700(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->val$game:Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;

    invoke-virtual {v3}, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->getGameId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->val$game:Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;

    iget-object v4, v4, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->league:Lcom/miui/home/launcher/assistant/module/model/BallLeague;

    iget-object v4, v4, Lcom/miui/home/launcher/assistant/module/model/BallLeague;->id:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->val$game:Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;

    iget-object v5, v5, Lcom/miui/home/launcher/assistant/module/model/BaseRecentGame;->league:Lcom/miui/home/launcher/assistant/module/model/BallLeague;

    iget-object v5, v5, Lcom/miui/home/launcher/assistant/module/model/BallLeague;->short_name:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getHupuGameSchema(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$4;->val$mTvRecentShow:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
