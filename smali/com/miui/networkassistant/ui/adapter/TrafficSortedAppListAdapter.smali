.class public Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;
.super Lcom/miui/common/a/a/j;
.source ""


# static fields
.field public static final NON_SYSTEM_APP:I = 0x0

.field public static final SYSTEM_APP:I = 0x1


# instance fields
.field private mAdapterType:I

.field private mAppInfoListShow:Ljava/util/List;

.field private mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

.field private mIsMiuiHybirdEnable:Z

.field private mMaxTraffic:J

.field private mNetworkType:I

.field private mSlotNum:I

.field private mTrafficMarkMaxWidth:I

.field private mTrafficMarkMinWidth:I

.field private mTrafficType:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/j;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mMaxTraffic:J

    iput p2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAdapterType:I

    iput p3, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mSlotNum:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficMarkMinWidth:I

    const v1, 0x7f0901a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficMarkMaxWidth:I

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdIntentExist(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mIsMiuiHybirdEnable:Z

    return-void
.end method

.method private buildMaxTraffic()V
    .locals 6

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mMaxTraffic:J

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TrafficInfo;

    iget-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mMaxTraffic:J

    iget-object v4, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v4, v4, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    iget v5, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficType:I

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iget-object v0, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficType:I

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mMaxTraffic:J

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getTrafficImgWidth(JJI)I
    .locals 5

    cmp-long v0, p1, p3

    if-ltz v0, :cond_1

    iget p5, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficMarkMaxWidth:I

    :cond_0
    :goto_0
    return p5

    :cond_1
    long-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficMarkMaxWidth:I

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
    .locals 12

    const/4 v11, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p3, :cond_1

    invoke-virtual {p0, p3}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v2, v1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v9}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v2, v2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    const/16 v3, -0xa

    if-eq v3, v2, :cond_0

    iget-boolean v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mIsMiuiHybirdEnable:Z

    if-eqz v2, :cond_2

    invoke-static {v9}, Lcom/miui/networkassistant/utils/HybirdServiceUtil;->isHybirdService(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAdapterType:I

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, v1, Lcom/miui/networkassistant/model/TrafficInfo;->mAppStats:Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;

    iget-object v1, v1, Lcom/miui/networkassistant/model/TrafficInfo$AppStatistic;->mTotalBytes:[J

    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficType:I

    aget-wide v2, v1, v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mNetworkType:I

    if-ne v1, v11, :cond_3

    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v4, 0x7f02033e

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_1
    iget-object v10, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-wide v4, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mMaxTraffic:J

    iget v6, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficMarkMinWidth:I

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->getTrafficImgWidth(JJI)I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setMinimumWidth(I)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4, v2, v3}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    if-eqz v1, :cond_1

    :try_start_0
    iget v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mNetworkType:I

    if-ne v1, v11, :cond_6

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    invoke-interface {v1, v9}, Lcom/miui/networkassistant/service/IFirewallBinder;->getWifiRule(Ljava/lang/String;)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->netOffImageView:Landroid/widget/ImageView;

    sget-object v2, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v1, v2, :cond_5

    :goto_3
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_4
    return-void

    :cond_2
    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v4, 0x7f02033d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    const v2, 0x7f070236

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_5
    move v7, v8

    goto :goto_3

    :cond_6
    :try_start_1
    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    iget v2, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mSlotNum:I

    invoke-interface {v1, v9, v2}, Lcom/miui/networkassistant/service/IFirewallBinder;->getMobileRule(Ljava/lang/String;I)Lcom/miui/networkassistant/model/FirewallRule;

    move-result-object v1

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->netOffImageView:Landroid/widget/ImageView;

    sget-object v0, Lcom/miui/networkassistant/model/FirewallRule;->Restrict:Lcom/miui/networkassistant/model/FirewallRule;

    if-ne v1, v0, :cond_7

    move v0, v7

    :goto_5
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4

    :cond_7
    move v0, v8

    goto :goto_5
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/TrafficInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/model/TrafficInfo;->mAppInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300de

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;-><init>(Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;)V

    const v0, 0x7f0a01a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a01aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->appName:Landroid/widget/TextView;

    const v0, 0x7f0a0279

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->traffic:Landroid/widget/TextView;

    const v0, 0x7f0a027a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a027b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->trafficValues:Landroid/widget/TextView;

    const v0, 0x7f0a027c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->netOffImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0278

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$ViewHolder;->arrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    return-object v3
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->buildMaxTraffic()V

    invoke-super {p0}, Lcom/miui/common/a/a/j;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/List;III)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    iput p3, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mNetworkType:I

    iput p4, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mSlotNum:I

    invoke-virtual {p0, p2}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->setMode(I)V

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFirewall(Lcom/miui/networkassistant/service/IFirewallBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mFirewallBinder:Lcom/miui/networkassistant/service/IFirewallBinder;

    return-void
.end method

.method public setMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mAppInfoListShow:Ljava/util/List;

    new-instance v1, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;

    invoke-direct {v1, p1}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter$TrafficComparator;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iput p1, p0, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->mTrafficType:I

    invoke-virtual {p0}, Lcom/miui/networkassistant/ui/adapter/TrafficSortedAppListAdapter;->notifyDataSetChanged()V

    return-void
.end method
