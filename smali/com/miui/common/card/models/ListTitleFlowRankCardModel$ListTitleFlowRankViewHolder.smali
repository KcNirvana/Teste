.class public Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

.field final synthetic this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-direct {p0, p2}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v0, 0x7f0a012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0a0130

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a0131

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const v3, 0x7f0a0133

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v4, 0x7f0a0134

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x5

    new-array v5, v5, [Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    iput-object v5, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v6, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v6}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    aput-object v6, v5, v7

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v5, v5, v7

    iput-object v0, v5, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v6, v5, v7

    const v5, 0x7f0a00b0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v6, v5, v7

    const v5, 0x7f0a0136

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v5, v5, v7

    const v6, 0x7f0a0135

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v5, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v5}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    aput-object v5, v0, v8

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v8

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v5, v0, v8

    const v0, 0x7f0a00b0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v5, v0, v8

    const v0, 0x7f0a0136

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v5, v0, v8

    const v0, 0x7f0a0135

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v5, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    aput-object v1, v0, v9

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v9

    iput-object v2, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v1, v0, v9

    const v0, 0x7f0a00b0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v1, v0, v9

    const v0, 0x7f0a0136

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v1, v0, v9

    const v0, 0x7f0a0135

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    aput-object v1, v0, v10

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v10

    iput-object v3, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v1, v0, v10

    const v0, 0x7f0a00b0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v1, v0, v10

    const v0, 0x7f0a0136

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v1, v0, v10

    const v0, 0x7f0a0135

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    new-instance v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    invoke-direct {v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;-><init>()V

    aput-object v1, v0, v11

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v11

    iput-object v4, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v1, v0, v11

    const v0, 0x7f0a00b0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v1, v0, v11

    const v0, 0x7f0a0136

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v1, v0, v11

    const v0, 0x7f0a0135

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    return-void
.end method

.method private updateData(Ljava/util/List;)V
    .locals 14

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090023

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f090022

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    iget-object v4, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    const/4 v0, 0x0

    array-length v6, v4

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v4, v0

    iget-object v7, v7, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v4, v1

    move v1, v0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v6, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->value:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-static {v10, v6, v7, v11}, Lcom/miui/common/b/a;->formatBytes(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;

    invoke-virtual {v0}, Lcom/miui/securityscan/model/manualitem/FlowRankModel$RankDataModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v10, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v10, v10, v1

    iget-object v10, v10, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v10, v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ViewHolder;->bar:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-nez v1, :cond_2

    iput v5, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-wide v2, v6

    move v4, v5

    :goto_2
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_2
    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-eqz v0, :cond_5

    long-to-float v0, v6

    long-to-float v6, v2

    div-float/2addr v0, v6

    int-to-float v6, v4

    mul-float/2addr v0, v6

    float-to-int v0, v0

    if-ge v0, v8, :cond_3

    move v0, v8

    :cond_3
    :goto_3
    iput v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_4
    return-void

    :cond_5
    move v0, v8

    goto :goto_3
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object v0, p2

    check-cast v0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get2(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->-get2(Lcom/miui/common/card/models/ListTitleFlowRankCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->updateData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->tvButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;

    invoke-direct {v1, p0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$1;-><init>(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;)V

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder$2;-><init>(Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;Lcom/miui/common/card/models/ListTitleFlowRankCardModel;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->getScore()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->getScore()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleFlowRankCardModel;->getScore()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const v0, 0x7f0c004b

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleFlowRankCardModel$ListTitleFlowRankViewHolder;->tvButton:Landroid/widget/Button;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
