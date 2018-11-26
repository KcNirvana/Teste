.class final Lcom/miui/firstaidkit/a/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic tO:Lcom/miui/firstaidkit/a/f;

.field final synthetic val$absModel:Lcom/miui/securityscan/model/AbsModel;

.field final synthetic val$model:Lcom/miui/common/card/models/BaseCardModel;


# direct methods
.method constructor <init>(Lcom/miui/firstaidkit/a/f;Lcom/miui/securityscan/model/AbsModel;Lcom/miui/common/card/models/BaseCardModel;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/firstaidkit/a/k;->tO:Lcom/miui/firstaidkit/a/f;

    iput-object p2, p0, Lcom/miui/firstaidkit/a/k;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    iput-object p3, p0, Lcom/miui/firstaidkit/a/k;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/firstaidkit/a/k;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/firstaidkit/a/k;->tO:Lcom/miui/firstaidkit/a/f;

    iget-object v1, p0, Lcom/miui/firstaidkit/a/k;->val$model:Lcom/miui/common/card/models/BaseCardModel;

    iget-object v2, p0, Lcom/miui/firstaidkit/a/k;->val$absModel:Lcom/miui/securityscan/model/AbsModel;

    iget-object v3, p0, Lcom/miui/firstaidkit/a/k;->tO:Lcom/miui/firstaidkit/a/f;

    invoke-static {v3}, Lcom/miui/firstaidkit/a/f;->vo(Lcom/miui/firstaidkit/a/f;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/firstaidkit/a/f;->showFirstAidItemLongClickDialog(Lcom/miui/common/card/models/BaseCardModel;Lcom/miui/securityscan/model/AbsModel;Landroid/content/Context;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
