.class final Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

.field final synthetic val$absModel:Lcom/miui/securityscan/model/AbsModel;

.field final synthetic val$function:Lcom/miui/common/card/functions/BaseFunction;

.field final synthetic val$m:Lcom/miui/common/card/models/FunctionCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;Lcom/miui/common/card/models/FunctionCardModel;Lcom/miui/common/card/functions/BaseFunction;Lcom/miui/securityscan/model/AbsModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->this$1:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$m:Lcom/miui/common/card/models/FunctionCardModel;

    iput-object p3, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$function:Lcom/miui/common/card/functions/BaseFunction;

    iput-object p4, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private statEvent(Lcom/miui/common/card/models/FunctionCardModel;Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->isHomePageFunc()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getStatKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kw(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/miui/common/card/models/FunctionCardModel;->getABtest()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/miui/securityscan/d/h;->LD(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v0, "#Intent;action=com.miui.gamebooster.action.ACCESS_MAINACTIVITY;end"

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$function:Lcom/miui/common/card/functions/BaseFunction;

    invoke-virtual {v1}, Lcom/miui/common/card/functions/BaseFunction;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2}, Lcom/miui/securityscan/d/a;->Kx(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kb(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$m:Lcom/miui/common/card/models/FunctionCardModel;

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->this$1:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    iget-object v1, v1, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->statEvent(Lcom/miui/common/card/models/FunctionCardModel;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$function:Lcom/miui/common/card/functions/BaseFunction;

    invoke-virtual {v0, p1}, Lcom/miui/common/card/functions/BaseFunction;->onClick(Landroid/view/View;)V

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$m:Lcom/miui/common/card/models/FunctionCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/FunctionCardModel;->-get2(Lcom/miui/common/card/models/FunctionCardModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->this$1:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->-get0(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x6d

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->val$m:Lcom/miui/common/card/models/FunctionCardModel;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder$1;->this$1:Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;

    invoke-static {v1}, Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;->-get0(Lcom/miui/common/card/models/FunctionCardModel$FunctionViewHolder;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
