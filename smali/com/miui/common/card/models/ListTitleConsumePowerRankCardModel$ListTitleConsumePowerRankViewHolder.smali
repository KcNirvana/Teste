.class public Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;
.super Lcom/miui/common/card/BaseViewHolder;
.source ""


# instance fields
.field private mContext:Landroid/content/Context;

.field private mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

.field final synthetic this$0:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;


# direct methods
.method static synthetic -get0(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->this$0:Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-direct {p0, p2}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->initView(Landroid/view/View;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 10

    const v9, 0x7f0a007e

    const v8, 0x7f0a0038

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

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

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    iput-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    new-instance v4, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    invoke-direct {v4}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;-><init>()V

    aput-object v4, v3, v5

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v3, v3, v5

    iput-object v0, v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v4, v3, v5

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v4, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v4, v3, v5

    const v3, 0x7f0a00b0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v4, v3, v5

    const v3, 0x7f0a0132

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->percent:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v3, v3, v5

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->line:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    new-instance v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    invoke-direct {v3}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;-><init>()V

    aput-object v3, v0, v6

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v6

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v3, v0, v6

    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v3, v0, v6

    const v0, 0x7f0a00b0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v3, v0, v6

    const v0, 0x7f0a0132

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->percent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v6

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->line:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    new-instance v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    invoke-direct {v1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;-><init>()V

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v7

    iput-object v2, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v1, v0, v7

    invoke-virtual {v2, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v1, v0, v7

    const v0, 0x7f0a00b0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v1, v0, v7

    const v0, 0x7f0a0132

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->percent:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v7

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->line:Landroid/view/View;

    return-void
.end method

.method private updateData(Ljava/util/List;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    array-length v3, v1

    move v0, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    iget-object v4, v4, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->parent:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->name:Landroid/widget/TextView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->appName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->percent:Landroid/widget/TextView;

    const-string/jumbo v4, "%.1f%%"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-wide v6, v0, Lcom/miui/powercenter/c/a;->aOD:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget v0, v0, Lcom/miui/powercenter/c/a;->aOE:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget v0, v0, Lcom/miui/powercenter/c/a;->aOE:I

    invoke-static {v3, v0}, Lcom/miui/powercenter/a/g;->bbq(Landroid/widget/ImageView;I)V

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->line:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget v0, v0, Lcom/miui/powercenter/c/a;->uid:I

    invoke-static {v0}, Lcom/miui/powercenter/a/f;->bbm(I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/common/b/l;->aIF(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/powercenter/a/g;->bbr(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget v0, v0, Lcom/miui/powercenter/c/a;->uid:I

    invoke-static {v3, v4, v0}, Lcom/miui/common/b/l;->aIG(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v3, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/c/a;

    iget-object v0, v0, Lcom/miui/powercenter/c/a;->packageName:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/miui/powercenter/a/g;->bbs(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mViewHolderArray:[Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ViewHolder;->line:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_6
    return-void
.end method


# virtual methods
.method public fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/miui/common/card/BaseViewHolder;->fillData(Landroid/view/View;Lcom/miui/common/card/models/BaseCardModel;I)V

    move-object v0, p2

    check-cast v0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;

    invoke-static {v0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->-get1(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->updateData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->tvButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;

    invoke-direct {v1, p0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$1;-><init>(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;)V

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$2;

    invoke-direct {v1, p0, v0, p2}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder$2;-><init>(Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;Lcom/miui/common/card/models/BaseCardModel;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->getScore()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->tvButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->getScore()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel;->getScore()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const v0, 0x7f0c004b

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/common/card/models/ListTitleConsumePowerRankCardModel$ListTitleConsumePowerRankViewHolder;->tvButton:Landroid/widget/Button;

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
