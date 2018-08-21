.class Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;
.super Ljava/lang/Object;
.source "BaseBallCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->updateNewsUI(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

.field final synthetic val$newModel:Lcom/miui/home/launcher/assistant/module/model/BallNews;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Lcom/miui/home/launcher/assistant/module/model/BallNews;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iput-object p2, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->val$newModel:Lcom/miui/home/launcher/assistant/module/model/BallNews;

    iput p3, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->val$newModel:Lcom/miui/home/launcher/assistant/module/model/BallNews;

    iget-object v0, v0, Lcom/miui/home/launcher/assistant/module/model/BallNews;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->val$newModel:Lcom/miui/home/launcher/assistant/module/model/BallNews;

    iget-object v1, v1, Lcom/miui/home/launcher/assistant/module/model/BallNews;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/util/Util;->openInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getTeam(I)Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$900(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "card_item_click_news_football"

    const-string/jumbo v2, "15"

    const-string/jumbo v3, "BaseBallCardView"

    invoke-virtual {v7}, Lcom/miui/home/launcher/assistant/module/model/BaseBallTeam;->getName()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$7;->val$position:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/miui/home/launcher/assistant/module/Analysis;->trackOnClickItemEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
