.class public Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;


# static fields
.field private static final TAG:Ljava/lang/String; = "WebTrafficCorrection"

.field private static sInstanceMap:Ljava/util/HashMap;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCorrectionLock:Ljava/lang/Object;

.field private mCustomizedSms:Ljava/util/Map;

.field private mImsi:Ljava/lang/String;

.field private mIsFinished:Z

.field private mListeners:Ljava/util/ArrayList;

.field private mTotalLimit:J

.field private mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

.field private mWebCorrectionManager:Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;


# direct methods
.method static synthetic -wrap0(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;Lcom/miui/networkassistant/model/TrafficUsedStatus;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->handleJustRemainStatus(Lcom/miui/networkassistant/model/TrafficUsedStatus;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->handleStatusFail(ZI)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->saveAnalytics(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->setFinished(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mIsFinished:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mCorrectionLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mWebCorrectionManager:Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mImsi:Ljava/lang/String;

    return-void
.end method

.method private broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)V

    sget-object v2, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleJustRemainStatus(Lcom/miui/networkassistant/model/TrafficUsedStatus;I)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->isTrafficCmdType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isNormalStable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTotalLimit:J

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v2

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_1

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setUsedTrafficB(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setTotalLimitError(Z)V

    invoke-virtual {p1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setUsedTrafficB(J)V

    goto :goto_0
.end method

.method private handleStatusFail(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isSupportSmsCorrection(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->startSmsCorrection(ZI)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->saveAnalytics(Z)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_0
.end method

.method private isTrafficCmdType(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private saveAnalytics(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getBrand()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getProvince()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/miui/networkassistant/utils/AnalyticsHelper;->trackTrafficWebCorrection(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private setFinished(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mCorrectionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private startSmsCorrection(ZI)Z
    .locals 7

    const-string/jumbo v0, "WebTrafficCorrection"

    const-string/jumbo v1, "startSmsCorrection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mCustomizedSms:Ljava/util/Map;

    const-wide/16 v4, 0x0

    move v2, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->startCorrection(ZLjava/util/Map;JI)Z

    move-result v0

    return v0
.end method

.method private startWebCorrection(ZJI)V
    .locals 6

    const-string/jumbo v0, "WebTrafficCorrection"

    const-string/jumbo v1, "startWebCorrection"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->getWebCorrection(Ljava/lang/String;)Lcom/miui/networkassistant/traffic/correction/IWebCorrection;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->handleStatusFail(ZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mImsi:Ljava/lang/String;

    new-instance v5, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;

    invoke-direct {v5, p0, p1, p4}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection$WebCorrectListener;-><init>(Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;ZI)V

    move-wide v2, p2

    move v4, p1

    invoke-interface/range {v0 .. v5}, Lcom/miui/networkassistant/traffic/correction/IWebCorrection;->queryDataUsage(Ljava/lang/String;JZLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getBrands(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getBrands(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCities(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getCities(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getConfig()Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getInstructions(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOperators()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getOperators()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getProvinceCodeByCityCode(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getProvinceCodeByCityCode(I)I

    move-result v0

    return v0
.end method

.method public getProvinces()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getProvinces()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTcType()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getTcType()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isConfigUpdated()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isConfigUpdated()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isFinished()Z
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mCorrectionLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mIsFinished:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isFinished()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public saveConfig(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->saveConfig(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;)Z

    move-result v0

    new-instance v1, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return v0
.end method

.method public setTotalLimit(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTotalLimit:J

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->setTotalLimit(J)V

    return-void
.end method

.method public startCorrection(ZJI)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const-string/jumbo v2, "WebTrafficCorrection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startCorrection,isBackground:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mCorrectionLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mWebCorrectionManager:Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mImsi:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/miui/networkassistant/traffic/correction/WebCorrectionManager;->isServiceSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/common/network/f;->aMa(Landroid/content/Context;)Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->startWebCorrection(ZJI)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->setFinished(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v3

    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mImsi:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isSupportSmsCorrection(Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/networkassistant/utils/TelephonyUtil;->isAirModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->isCorrectionEffective()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v4

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->isSimCardReady(I)Z

    move-result v0

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    invoke-direct {p0, p1, p4}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->startSmsCorrection(ZI)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->setFinished(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public startCorrection(ZLjava/util/Map;)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->startCorrection(ZLjava/util/Map;JI)Z

    move-result v0

    return v0
.end method

.method public startCorrection(ZLjava/util/Map;JI)Z
    .locals 1

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mCustomizedSms:Ljava/util/Map;

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->startCorrection(ZJI)Z

    move-result v0

    return v0
.end method

.method public unRegisterLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->unRegisterLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/WebTrafficCorrection;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
