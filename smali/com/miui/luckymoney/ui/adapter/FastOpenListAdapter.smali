.class public Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;
.super Lcom/miui/common/expandableview/d;
.source ""


# instance fields
.field private enabled:Z

.field private mContext:Landroid/content/Context;

.field private mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

.field private mHeaders:Ljava/util/List;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/expandableview/d;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/luckymoney/config/FastOpenConfig;->getInstance(Landroid/content/Context;)Lcom/miui/luckymoney/config/FastOpenConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    return-void
.end method


# virtual methods
.method public getCountForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(II)Ljava/lang/Object;
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e5

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;

    invoke-direct {v1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;-><init>()V

    const v0, 0x7f0a0038

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a00b0

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v0, 0x7f0a01fc

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/widget/SlidingButton;

    iput-object v0, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v0, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v2, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getPackageInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    const-string/jumbo v2, "pkg_icon://"

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v4, Lcom/miui/common/b/q;->azP:Lcom/nostra13/universalimageloader/core/n;

    invoke-static {v2, v3, v4}, Lcom/miui/common/b/q;->aJj(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/n;)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v4}, Lcom/miui/common/b/k;->aIp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    iget-object v3, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mFastOpenConfig:Lcom/miui/luckymoney/config/FastOpenConfig;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/miui/luckymoney/config/FastOpenConfig;->contains(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    iget-object v0, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->slidingButton:Lmiui/widget/SlidingButton;

    iget-boolean v2, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    invoke-virtual {v0, v2}, Lmiui/widget/SlidingButton;->setEnabled(Z)V

    iget-object v1, v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800d7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0800d8

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method public getSectionCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300e4

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;

    invoke-direct {v1, v2}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;-><init>(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)V

    const v0, 0x7f0a00f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->-set0(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-static {v1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->-get0(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->-get0(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setLongClickable(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;

    move-object v1, v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->enabled:Z

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateHeader(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->-get0(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;->-get0(Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter$HeaderViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, p0, Lcom/miui/luckymoney/ui/adapter/FastOpenListAdapter;->mHeaders:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/luckymoney/model/FastOpenAppInfo;

    invoke-virtual {v0}, Lcom/miui/luckymoney/model/FastOpenAppInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
