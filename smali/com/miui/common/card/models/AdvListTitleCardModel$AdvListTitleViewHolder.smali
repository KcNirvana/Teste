.class public Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# instance fields
.field private closeView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field option:Lcom/nostra13/universalimageloader/core/n;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    sget-object v0, Lcom/miui/common/b/q;->azR:Lcom/nostra13/universalimageloader/core/n;

    iput-object v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a011f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->closeView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/AdvListTitleCardModel;

    new-instance v0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder$1;-><init>(Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;Lcom/miui/common/card/models/AdvListTitleCardModel;)V

    iget-object v1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->closeView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->closeView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method protected setIconDisplayOption(Lcom/nostra13/universalimageloader/core/n;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/AdvListTitleCardModel$AdvListTitleViewHolder;->option:Lcom/nostra13/universalimageloader/core/n;

    return-void
.end method
