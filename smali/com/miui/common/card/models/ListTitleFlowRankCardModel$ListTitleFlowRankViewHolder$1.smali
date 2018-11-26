.class final Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get0(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get0(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iget-object v1, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get1(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/securityscan/scanner/n;->Ey(Lcom/miui/securityscan/model/AbsModel;)V

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get0(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iget-object v1, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get1(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iget-object v2, v2, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v2}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get1(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/securityscan/model/AbsModel;->isDelayOptimized()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/miui/securityscan/scanner/n;->Ez(IZ)V

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get1(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kb(Ljava/lang/String;)V

    return-void
.end method
