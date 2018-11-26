.class final Lcom/miui/common/card/models/AdvCardModel$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/AdvCardModel$2;

.field final synthetic val$context:Lcom/miui/securityscan/MainActivity;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/AdvCardModel$2;Lcom/miui/securityscan/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvCardModel$2;

    iput-object p2, p0, Lcom/miui/common/card/models/AdvCardModel$2$1;->val$context:Lcom/miui/securityscan/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$2$1;->val$context:Lcom/miui/securityscan/MainActivity;

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvCardModel$2;

    iget-object v1, v1, Lcom/miui/common/card/models/AdvCardModel$2;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    iget-object v2, p0, Lcom/miui/common/card/models/AdvCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvCardModel$2;

    iget-object v2, v2, Lcom/miui/common/card/models/AdvCardModel$2;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v2}, Lcom/miui/common/card/models/AdvCardModel;->-get2(Lcom/miui/common/card/models/AdvCardModel;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/MainActivity;->Nh(Lcom/miui/common/card/models/BaseCardModel;I)V

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvCardModel$2;

    iget-object v0, v0, Lcom/miui/common/card/models/AdvCardModel$2;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/AdvCardModel;->-get1(Lcom/miui/common/card/models/AdvCardModel;)I

    move-result v0

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/AdvCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvCardModel$2;

    iget-object v0, v0, Lcom/miui/common/card/models/AdvCardModel$2;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    invoke-virtual {v0}, Lcom/miui/common/card/models/AdvCardModel;->getPositionId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvCardModel$2$1;->this$1:Lcom/miui/common/card/models/AdvCardModel$2;

    iget-object v1, v1, Lcom/miui/common/card/models/AdvCardModel$2;->this$0:Lcom/miui/common/card/models/AdvCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/AdvCardModel;->-get0(Lcom/miui/common/card/models/AdvCardModel;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/securityscan/cards/d;->CA(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
