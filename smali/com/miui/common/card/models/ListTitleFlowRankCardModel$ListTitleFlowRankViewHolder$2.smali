.class final Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

.field final synthetic val$m:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

.field final synthetic val$model:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;Lcom/miui/common/card/models/ListTitleFlowRankCardModel;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$m:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    iput-object p3, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$m:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get1(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->val$m:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v2}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get1(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Lcom/miui/securityscan/model/AbsModel;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;->this$1:Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;

    invoke-static {v3}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->-get0(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->showManualItemLongClickDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
