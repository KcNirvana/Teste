.class public Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;
.super Lcom/miui/common/card/models/FuncGridBaseCardModel;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/common/card/models/FuncGrid9ColorfulCardModel;-><init>(Lcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/model/AbsModel;)V
    .locals 1

    const v0, 0x7f030054

    invoke-direct {p0, v0, p1}, Lcom/miui/common/card/models/FuncGridBaseCardModel;-><init>(ILcom/miui/securityscan/model/AbsModel;)V

    return-void
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 4

    const v3, 0x7f02018c

    const/4 v2, 0x1

    new-instance v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;-><init>(Landroid/view/View;)V

    new-instance v1, Lcom/nostra13/universalimageloader/core/o;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/o;-><init>()V

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/o;->bIK(I)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/o;->bIE(I)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/o;->bIF(I)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/o;->bIB(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/o;->bIC(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/o;->bID(Z)Lcom/nostra13/universalimageloader/core/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/o;->build()Lcom/nostra13/universalimageloader/core/n;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/common/card/models/FuncGridBaseCardModel$FuncGridBaseViewHolder;->options:Lcom/nostra13/universalimageloader/core/n;

    return-object v0
.end method
