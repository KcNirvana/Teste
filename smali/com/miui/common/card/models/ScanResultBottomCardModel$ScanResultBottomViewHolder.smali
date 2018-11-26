.class public Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# instance fields
.field childViewCacheList:Ljava/util/List;

.field containerLinearLayout:Landroid/widget/LinearLayout;

.field context:Landroid/content/Context;

.field iconImageView:Landroid/widget/ImageView;

.field inflater:Landroid/view/LayoutInflater;

.field statusTextView:Landroid/widget/TextView;

.field titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->inflater:Landroid/view/LayoutInflater;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->childViewCacheList:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0a00a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->iconImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->titleTextView:Landroid/widget/TextView;

    const v0, 0x7f0a014f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->statusTextView:Landroid/widget/TextView;

    const v0, 0x7f0a012b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->containerLinearLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 8

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    check-cast p2, Lcom/miui/common/card/models/ScanResultBottomCardModel;

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->iconImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModel;->getResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->statusTextView:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModel;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lcom/miui/common/card/models/ScanResultBottomCardModel;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->containerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v3, v4

    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/scanner/e;

    iget-object v1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->childViewCacheList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->childViewCacheList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/common/card/models/ScanResultBottomCardModel$ChildViewHolder;

    :goto_1
    iget-object v5, v2, Lcom/miui/common/card/models/ScanResultBottomCardModel$ChildViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/e;->DJ()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/miui/securityscan/scanner/e;->isFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/miui/common/card/models/ScanResultBottomCardModel$ChildViewHolder;->contentTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080057

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v0, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->containerLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->containerLinearLayout:Landroid/widget/LinearLayout;

    const v5, 0x7f030061

    invoke-virtual {v1, v5, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    new-instance v2, Lcom/miui/common/card/models/ScanResultBottomCardModel$ChildViewHolder;

    invoke-direct {v2}, Lcom/miui/common/card/models/ScanResultBottomCardModel$ChildViewHolder;-><init>()V

    const v1, 0x7f0a014d

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/miui/common/card/models/ScanResultBottomCardModel$ChildViewHolder;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->childViewCacheList:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v5

    goto :goto_1

    :cond_1
    iget-object v0, v2, Lcom/miui/common/card/models/ScanResultBottomCardModel$ChildViewHolder;->contentTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/common/card/models/ScanResultBottomCardModel$ScanResultBottomViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080056

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_2
    return-void
.end method
