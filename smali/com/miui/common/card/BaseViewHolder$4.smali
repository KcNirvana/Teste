.class final Lcom/miui/common/card/BaseViewHolder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/miui/common/card/BaseViewHolder;

.field final synthetic val$absModel:Lcom/miui/securityscan/model/AbsModel;

.field final synthetic val$baseModel:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/BaseViewHolder;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/BaseViewHolder$4;->this$0:Lcom/miui/common/card/BaseViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/BaseViewHolder$4;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    iput-object p3, p0, Lcom/miui/common/card/BaseViewHolder$4;->val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder$4;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/utils/g;->IJ(Ljava/lang/String;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder$4;->this$0:Lcom/miui/common/card/BaseViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder$4;->val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

    instance-of v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/BaseViewHolder$4;->val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

    check-cast v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    iget-object v1, p0, Lcom/miui/common/card/BaseViewHolder$4;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0, v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->ignoreAbsModel(Lcom/miui/securityscan/model/AbsModel;)V

    :cond_0
    invoke-static {}, Lcom/miui/securityscan/scanner/B;->getInstance()Lcom/miui/securityscan/scanner/B;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/BaseViewHolder$4;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    sget-object v2, Lcom/miui/securityscan/model/AbsModel$State;->SAFE:Lcom/miui/securityscan/model/AbsModel$State;

    invoke-virtual {v0, v1, v2}, Lcom/miui/securityscan/scanner/B;->FI(Lcom/miui/securityscan/model/AbsModel;Lcom/miui/securityscan/model/AbsModel$State;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6d

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/common/card/BaseViewHolder$4;->val$baseModel:Lcom/miui/common/card/models/BaseCardModel;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/BaseViewHolder$4;->this$0:Lcom/miui/common/card/BaseViewHolder;

    iget-object v1, v1, Lcom/miui/common/card/BaseViewHolder;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method
