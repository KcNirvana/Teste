.class public Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;
.super Lcom/miui/common/a/a/j;
.source ""


# static fields
.field private static final NETWORK_SPEED_REFRESH_INTERVAL:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "NetworkSpeedForAppsListAdapter"


# instance fields
.field private mAllAppInfoMap:Ljava/util/HashMap;

.field private mAppCloseWhiteList:Ljava/util/ArrayList;

.field private mLock:Ljava/lang/Object;

.field private mNetworkSpeedList:Ljava/util/ArrayList;

.field private mShowingAppInfoMap:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/miui/common/a/a/j;-><init>(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.core"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.vip"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.sdk"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.guardprovider"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.mi.android.globallauncher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.providers.downloads.ui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.xiaomi.finddevice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.google.android.inputmethod.pinyin"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getAppInfoByUidLock(I)Lcom/miui/networkassistant/model/AppInfo;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x5

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    if-nez v0, :cond_0

    if-ne p1, v2, :cond_1

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    const-string/jumbo v1, "icon_personal_hotpot"

    invoke-direct {v0, v1, v2}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;I)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-nez p1, :cond_0

    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    const-string/jumbo v1, "icon_root"

    invoke-direct {v0, v1, v3}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;

    invoke-virtual {p0, p3}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, v3, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/miui/networkassistant/utils/IconCacheHelper;->getInstance()Lcom/miui/networkassistant/utils/IconCacheHelper;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v4, v4, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/networkassistant/utils/IconCacheHelper;->setIconToImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, v3, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lcom/miui/networkassistant/utils/LabelLoadHelper;->loadLabel(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedRx:J

    invoke-static {v2, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->trafficRx:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v2, v2, v7

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    iget-wide v4, v1, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedTx:J

    invoke-static {v2, v4, v5}, Lcom/miui/networkassistant/utils/FormatBytesUtil;->formatSpeed(Landroid/content/Context;J)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->trafficTx:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v1, v1, v7

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_0
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getItemId(I)J
    .locals 4

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iget v0, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    :cond_0
    monitor-exit v1

    const-wide/16 v0, 0x0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isAppCanClose(Lcom/miui/networkassistant/model/AppInfo;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget v0, p1, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v0}, Lcom/miui/common/b/f;->aHX(I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/statistic/PreSetGroup;->isGroupUid(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAppCloseWhiteList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p1, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/utils/PackageUtil;->getRealPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0300dd

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;

    invoke-direct {v2, v3}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;-><init>(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;)V

    const v0, 0x7f0a01a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a01aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->label:Landroid/widget/TextView;

    const v0, 0x7f0a0276

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->trafficRx:Landroid/widget/TextView;

    const v0, 0x7f0a0277

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$ViewHolder;->trafficTx:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1

    :cond_0
    return-object v3
.end method

.method public packageStoped(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public refresh(Ljava/util/ArrayList;Ljava/lang/String;J)Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;
    .locals 19

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    new-instance v15, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;

    invoke-direct {v15}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    monitor-exit v14

    return-object v15

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v8, v0

    iget v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    iget v3, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-nez v2, :cond_2

    iget v2, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->getAppInfoByUidLock(I)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;JJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    iget v4, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2

    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-nez v2, :cond_4

    const/4 v2, -0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->getAppInfoByUidLock(I)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;JJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    const/4 v4, -0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->reset()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mNetworkSpeedList:Ljava/util/ArrayList;

    new-instance v5, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;-><init>(Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$MyComparator;)V

    invoke-static {v2, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v3

    throw v2

    :cond_6
    monitor-exit v3

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_7
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string/jumbo v3, "iface"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "uid"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v4, "tag"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v4, "rxBytes"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string/jumbo v4, "txBytes"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v2, p3, v10

    if-lez v2, :cond_f

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    div-long v8, v8, p3

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    div-long v6, v6, p3

    move-wide v10, v6

    move-wide v12, v8

    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    add-long v2, v12, v10

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_c

    if-nez v17, :cond_c

    const v2, 0x7fffffff

    if-ne v5, v2, :cond_e

    const/4 v2, -0x5

    move v8, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-nez v2, :cond_8

    const/4 v3, -0x5

    if-ne v8, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    const/4 v3, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    if-nez v2, :cond_8

    const/4 v3, -0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->getAppInfoByUidLock(I)Lcom/miui/networkassistant/model/AppInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    new-instance v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;-><init>(Lcom/miui/networkassistant/model/AppInfo;JJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    const/4 v4, -0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_5
    if-eqz v2, :cond_b

    invoke-virtual {v2, v12, v13, v10, v11}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->add(JJ)V

    iget-wide v2, v15, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->total:J

    add-long v4, v12, v10

    add-long/2addr v2, v4

    iput-wide v2, v15, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->total:J

    iget-wide v2, v15, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->rxTotal:J

    add-long/2addr v2, v12

    iput-wide v2, v15, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->rxTotal:J

    iget-wide v2, v15, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->txTotal:J

    add-long/2addr v2, v10

    iput-wide v2, v15, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->txTotal:J

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v3, "NetworkSpeedForAppsListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",rxBytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",txBytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x3e8

    if-ge v8, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mShowingAppInfoMap:Ljava/util/HashMap;

    const/4 v3, -0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;

    goto :goto_5

    :cond_a
    const-string/jumbo v3, "NetworkSpeedForAppsListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not running? rxBytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",txBytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_b
    const-string/jumbo v2, "NetworkSpeedForAppsListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "appSpeedInfo is null!! uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",rxBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",txBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_c
    if-eqz v17, :cond_7

    const-string/jumbo v2, "NetworkSpeedForAppsListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",rxBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",txBytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->notifyDataSetChanged()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v14

    return-object v15

    :cond_e
    move v8, v5

    goto/16 :goto_4

    :cond_f
    move-wide v10, v6

    move-wide v12, v8

    goto/16 :goto_3
.end method

.method public setAppList(Ljava/util/ArrayList;)V
    .locals 5

    iget-object v1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget-object v3, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    iget v4, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/miui/networkassistant/model/AppInfo;

    const-string/jumbo v2, "icon_others"

    const/4 v3, -0x6

    invoke-direct {v0, v2, v3}, Lcom/miui/networkassistant/model/AppInfo;-><init>(Ljava/lang/CharSequence;I)V

    iget-object v2, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;->mAllAppInfoMap:Ljava/util/HashMap;

    iget v3, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method
