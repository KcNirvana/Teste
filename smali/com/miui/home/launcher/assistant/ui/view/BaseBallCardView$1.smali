.class Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;
.super Landroid/os/Handler;
.source "BaseBallCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$000(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getRecentGameList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getRecentGameList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getRecentGameList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$200(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getScoreResponse()Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$300(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Lcom/miui/home/launcher/assistant/module/model/BaseBallScoreResponse;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    iget-object v1, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$100(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)Lcom/miui/home/launcher/assistant/module/carditem/BallItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/assistant/module/carditem/BallItem;->getNewsList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$400(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView$1;->this$0:Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;

    invoke-static {v0}, Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;->access$500(Lcom/miui/home/launcher/assistant/ui/view/BaseBallCardView;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
