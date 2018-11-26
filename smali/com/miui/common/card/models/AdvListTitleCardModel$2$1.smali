.class final Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/AdvListTitleCardModel$2;

.field final synthetic val$context:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvListTitleCardModel$2;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvListTitleCardModel$2;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;->val$context:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvListTitleCardModel$2;

    iget-object v0, v0, Lcom/miui/common/card/models/AdvListTitleCardModel$2;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvListTitleCardModel;->getSubCardModelList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;->val$context:Lcom/miui/securityscan/MainActivity;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvListTitleCardModel$2;

    iget-object v2, v2, Lcom/miui/common/card/models/AdvListTitleCardModel$2;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

    iget-object v3, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvListTitleCardModel$2;

    iget-object v3, v3, Lcom/miui/common/card/models/AdvListTitleCardModel$2;->this$0:Lcom/miui/common/card/models/AdvListTitleCardModel;

    invoke-static {v3}, Lcom/miui/common/card/models/AdvListTitleCardModel;->-get0(Lcom/miui/common/card/models/AdvListTitleCardModel;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/securityscan/MainActivity;->Ng(Lcom/miui/common/card/models/BaseCardModel;Ljava/util/List;I)V

    :cond_0
    return-void
.end method
