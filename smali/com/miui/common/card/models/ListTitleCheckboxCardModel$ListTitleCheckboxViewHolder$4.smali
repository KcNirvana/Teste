.class final Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

.field final synthetic val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;


# direct methods
.method constructor <init>(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iput-object p2, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/miui/securityscan/utils/i;->Jb()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)[Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-wrap1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;[Landroid/widget/CheckBox;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)[Landroid/widget/CheckBox;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-wrap0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;[Landroid/widget/CheckBox;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v4

    add-int/2addr v1, v4

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v4, v4, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v4}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v4, v4, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v4}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/miui/securityscan/scanner/n;->Ey(Lcom/miui/securityscan/model/AbsModel;)V

    :cond_1
    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/securityscan/d/a;->Kb(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/miui/securityscan/scanner/n;->Ez(IZ)V

    :cond_3
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->val$m:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get4(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->-get1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->-get1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get3(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get3(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v1, v1, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get3(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIY(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/AbsModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getScore()I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v5, v5, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v5}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v5, v5, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v5}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/miui/securityscan/scanner/n;->Ey(Lcom/miui/securityscan/model/AbsModel;)V

    :cond_7
    invoke-virtual {v0}, Lcom/miui/securityscan/model/AbsModel;->getTrackStr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/securityscan/d/a;->Kb(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v1

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get0(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Lcom/miui/securityscan/scanner/n;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/miui/securityscan/scanner/n;->Ez(IZ)V

    :cond_9
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleCheckboxCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->-get1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->-get1(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder$4;->this$1:Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;

    invoke-static {v1}, Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;->-get2(Lcom/miui/common/card/models/ListTitleCheckboxCardModel$ListTitleCheckboxViewHolder;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07084d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/common/b/o;->aIY(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_3
.end method
