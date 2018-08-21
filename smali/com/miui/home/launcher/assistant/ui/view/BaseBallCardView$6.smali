.class Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;
.super Ljava/lang/Object;
.source "BaseBallCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->bindRecentDataToWorldCupUI(Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

.field final synthetic val$game:Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;

.field final synthetic val$mTvRecentTime:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;->val$game:Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;

    iput-object p3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;->val$mTvRecentTime:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;->val$game:Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;

    invoke-virtual {v2}, Lcom/miui/home/launcher/assistant/module/model/FootballRecentGame;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getHupuWorldCupSchema(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$6;->val$mTvRecentTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$800(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
