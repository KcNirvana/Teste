.class public Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;
.super Lcom/miui/common/a/a/j;
.source ""


# instance fields
.field private mAppInfoList:Ljava/util/List;

.field private mComparatorByTraffic:Ljava/util/Comparator;

.field mMobileMaxTraffic:J

.field private mTrafficMarkMaxWidth:I

.field private mTrafficMarkMinWidth:I

.field private mTrafficType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/j;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mMobileMaxTraffic:J

    new-instance v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$1;-><init>(Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;)V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mComparatorByTraffic:Ljava/util/Comparator;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficMarkMinWidth:I

    const v1, 0x7f0901a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficMarkMaxWidth:I

    return-void
.end method

.method private buildMaxTraffic()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mMobileMaxTraffic:J

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mMobileMaxTraffic:J

    iget-wide v4, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-wide v2, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    iput-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mMobileMaxTraffic:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getTrafficImgWidth(JJI)I
    .locals 5

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    iget p5, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficMarkMaxWidth:I

    :cond_0
    :goto_0
    return p5

    :cond_1
    long-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficMarkMaxWidth:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p3

    div-double/2addr v0, v2

    double-to-int v0, v0

    if-lt v0, p5, :cond_0

    move p5, v0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 10

    const-wide/16 v8, 0x0

    const v7, 0x7f070236

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p3, :cond_0

    invoke-virtual {p0, p3}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficType:I

    if-nez v2, :cond_2

    iget-wide v2, v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_1

    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v4, 0x7f02033d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v7, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mMobileMaxTraffic:J

    iget v6, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficMarkMinWidth:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->getTrafficImgWidth(JJI)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficType:I

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    iget-wide v2, v1, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$MiAppInfo;->totalTraffic:J

    cmp-long v1, v2, v8

    if-lez v1, :cond_3

    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v4, 0x7f02033e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v7, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mMobileMaxTraffic:J

    iget v6, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficMarkMinWidth:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->getTrafficImgWidth(JJI)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300de

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;-><init>(Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;)V

    const v0, 0x7f0a01a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a01aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0a0279

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->traffic:Landroid/widget/TextView;

    const v0, 0x7f0a027a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a027b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    return-object v3
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->buildMaxTraffic()V

    invoke-super {p0}, Lcom/miui/common/a/a/j;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    iget v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficType:I

    invoke-virtual {p0, v0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->trafficSorted(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public trafficSorted(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mAppInfoList:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mComparatorByTraffic:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->mTrafficType:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/MIServiceAppDetailListAdapter;->notifyDataSetChanged()V

    return-void
.end method
