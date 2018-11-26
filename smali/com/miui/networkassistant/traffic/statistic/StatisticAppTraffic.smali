.class public Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final INIT_CAPACITY:I = 0x100

.field private static final TAG:Ljava/lang/String; = "StatisticAppTraffic"


# instance fields
.field private mBeginTime:[J

.field private mContext:Landroid/content/Context;

.field private mEndTime:[J

.field private mFirstDayofMonth:J

.field private mImsi:Ljava/lang/String;

.field private mLastMonth:J

.field private mNow:J

.field private mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

.field private mToday:J

.field private mYesterday:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->initStatsSession()V

    iput-object p2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mImsi:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->initData()V

    return-void
.end method

.method private addEntryToAppUsageItem(Landroid/util/SparseArray;Ljava/util/Map;I)V
    .locals 6

    invoke-virtual {p1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    const-string/jumbo v1, "txBytes"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    const-string/jumbo v1, "rxBytes"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    const/4 v1, 0x1

    aget-object v2, v0, v1

    const-string/jumbo v1, "txForegroundBytes"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    const-string/jumbo v1, "rxForegroundBytes"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string/jumbo v0, "txBytes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v0, "txForegroundBytes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    const-string/jumbo v0, "rxBytes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string/jumbo v0, "rxForegroundBytes"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    return-void
.end method

.method private buildAppUsageArray(Landroid/util/SparseArray;)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildAppUsageItems()[Lcom/miui/networkassistant/model/AppDataUsage;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private buildAppUsageItems()[Lcom/miui/networkassistant/model/AppDataUsage;
    .locals 4

    const/4 v3, 0x3

    new-array v1, v3, [Lcom/miui/networkassistant/model/AppDataUsage;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    new-instance v2, Lcom/miui/networkassistant/model/AppDataUsage;

    invoke-direct {v2}, Lcom/miui/networkassistant/model/AppDataUsage;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;[JI)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/networkassistant/model/AppDataUsage;

    if-nez v0, :cond_1

    new-array v0, v4, [Lcom/miui/networkassistant/model/AppDataUsage;

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    new-instance v3, Lcom/miui/networkassistant/model/AppDataUsage;

    invoke-direct {v3}, Lcom/miui/networkassistant/model/AppDataUsage;-><init>()V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    if-nez p3, :cond_2

    return-void

    :cond_2
    aget-object v0, v0, p4

    if-eqz v0, :cond_3

    aget-wide v2, p3, v2

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    const/4 v1, 0x1

    aget-wide v2, p3, v1

    invoke-virtual {v0, v2, v3}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    :cond_3
    return-void
.end method

.method private buildNetworkStats(Landroid/util/SparseArray;Landroid/util/SparseArray;IIZ)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_4

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-eqz p5, :cond_2

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p4, :cond_1

    :goto_1
    move v0, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3

    return-void

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    if-ne v5, p4, :cond_1

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v0, p3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->addEntryToAppUsageItem(Landroid/util/SparseArray;Ljava/util/Map;I)V

    if-nez p5, :cond_5

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0
.end method

.method private buildPeriodTimeMobileWorkStats(JJ)Landroid/util/SparseArray;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mImsi:Ljava/lang/String;

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildWorkStats(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private buildPeriodTimeWifiWorkStats(JJ)Landroid/util/SparseArray;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/net/MiuiNetworkSessionStats;->getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildWorkStats(Landroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method private buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;
    .locals 9

    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8, p2}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v0, 0x0

    add-long v6, p3, p7

    move-wide v4, p3

    :goto_0
    cmp-long v1, v4, p5

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mImsi:Ljava/lang/String;

    move v3, p1

    invoke-virtual/range {v1 .. v7}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileHistoryForUid(Ljava/lang/String;IJJ)[J

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v8, v2, v1, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;[JI)V

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    move v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/net/MiuiNetworkSessionStats;->getWifiHistoryForUid(IJJ)[J

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v8, v2, v1, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildNetworkHistory(Landroid/util/SparseArray;Ljava/lang/Integer;[JI)V

    add-long v4, v4, p7

    add-long v6, v6, p7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v8
.end method

.method private buildWorkStats(Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 11

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, -0x5

    new-instance v5, Landroid/util/SparseArray;

    const/16 v0, 0x100

    invoke-direct {v5, v0}, Landroid/util/SparseArray;-><init>(I)V

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_5

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {}, Lcom/miui/common/b/f;->aHU()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v1}, Lcom/miui/common/b/f;->aHX(I)I

    move-result v1

    :cond_1
    const v7, 0x7fffffff

    if-ne v1, v7, :cond_3

    move v1, v2

    :cond_2
    :goto_1
    new-instance v7, Lcom/miui/networkassistant/model/AppDataUsage;

    invoke-direct {v7}, Lcom/miui/networkassistant/model/AppDataUsage;-><init>()V

    invoke-virtual {v5, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v1, "txBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/miui/networkassistant/model/AppDataUsage;->addTxBytes(J)V

    const-string/jumbo v1, "rxBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lcom/miui/networkassistant/model/AppDataUsage;->addRxBytes(J)V

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    const/16 v7, 0x4e20

    if-gt v1, v7, :cond_4

    const/16 v7, 0x3e8

    if-ge v1, v7, :cond_2

    :cond_4
    const/4 v7, -0x4

    if-eq v1, v7, :cond_2

    if-eq v1, v2, :cond_2

    const-string/jumbo v7, "StatisticAppTraffic"

    const-string/jumbo v8, "invalid uid :%d, tx:%d, rx:%d "

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v4

    const-string/jumbo v1, "txBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v10, 0x1

    aput-object v1, v9, v10

    const-string/jumbo v1, "rxBytes"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v10, 0x2

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    goto :goto_1

    :cond_5
    return-object v5
.end method

.method private initData()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getNowTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mFirstDayofMonth:J

    invoke-static {v4}, Lcom/miui/networkassistant/utils/DateUtil;->getLastMonthBeginTimeMillis(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mLastMonth:J

    new-array v0, v8, [J

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mLastMonth:J

    aput-wide v2, v0, v6

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mFirstDayofMonth:J

    aput-wide v2, v0, v7

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mBeginTime:[J

    new-array v0, v8, [J

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    aput-wide v2, v0, v5

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    aput-wide v2, v0, v4

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mFirstDayofMonth:J

    aput-wide v2, v0, v6

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    aput-wide v2, v0, v7

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mEndTime:[J

    return-void
.end method

.method private initStatsSession()V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->openSession()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/net/MiuiNetworkSessionStats;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->openSession()V

    goto :goto_0
.end method


# virtual methods
.method public buildMobileDataUsage(IZ)Landroid/util/SparseArray;
    .locals 8

    new-instance v7, Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, v7}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildAppUsageArray(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    const/4 v0, 0x4

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mBeginTime:[J

    aget-wide v2, v2, v6

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mEndTime:[J

    aget-wide v4, v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/miui/net/MiuiNetworkSessionStats;->getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, p0

    move-object v1, v7

    move v3, v6

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildNetworkStats(Landroid/util/SparseArray;Landroid/util/SparseArray;IIZ)V

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "StatisticAppTraffic"

    const-string/jumbo v1, "mobile summaryStats null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-object v7
.end method

.method public buildWifiDataUsage(IZ)Landroid/util/SparseArray;
    .locals 8

    new-instance v1, Landroid/util/SparseArray;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildAppUsageArray(Landroid/util/SparseArray;)V

    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mBeginTime:[J

    aget-wide v4, v2, v3

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mEndTime:[J

    aget-wide v6, v2, v3

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/miui/net/MiuiNetworkSessionStats;->getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildNetworkStats(Landroid/util/SparseArray;Landroid/util/SparseArray;IIZ)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "StatisticAppTraffic"

    const-string/jumbo v2, "wifi summaryStats null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public closeSession()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lcom/miui/net/MiuiNetworkSessionStats;->closeSession()V

    iput-object v1, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    :cond_0
    return-void
.end method

.method public getAppLastMonthPerDayTraffic(I)Landroid/util/SparseArray;
    .locals 10

    iget-wide v4, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mLastMonth:J

    iget-wide v6, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mFirstDayofMonth:J

    const/16 v3, 0x1f

    const-wide/32 v8, 0x5265c00

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getAppThisMonthPerDayTraffic(I)Landroid/util/SparseArray;
    .locals 10

    iget-wide v4, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mFirstDayofMonth:J

    iget-wide v6, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    const/16 v3, 0x1f

    const-wide/32 v8, 0x5265c00

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getAppTodayPerHourTraffic(I)Landroid/util/SparseArray;
    .locals 10

    iget-wide v4, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    iget-wide v6, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    const/16 v3, 0x18

    const-wide/32 v8, 0x36ee80

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getAppYesterdayPerHourTraffic(I)Landroid/util/SparseArray;
    .locals 10

    iget-wide v4, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    iget-wide v6, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    const/16 v3, 0x18

    const-wide/32 v8, 0x36ee80

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildTrafficListForUid(IIJJJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWifiTotalBytes(JJ)J
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mStatsSession:Lcom/miui/net/MiuiNetworkSessionStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/net/MiuiNetworkSessionStats;->getNetworkWifiTotalBytes(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTodayDataUsageAppMapByDec(Landroid/content/Context;)Ljava/util/Map;
    .locals 8

    new-instance v2, Ljava/util/TreeMap;

    new-instance v0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic$1;-><init>(Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;)V

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-static {p1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getTodayMobileTraffic()Landroid/util/SparseArray;

    move-result-object v3

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget v1, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/AppDataUsage;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v6

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getTodayMobileTraffic()Landroid/util/SparseArray;
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mNow:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildPeriodTimeMobileWorkStats(JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getYesterdayMobileTraffic()Landroid/util/SparseArray;
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildPeriodTimeMobileWorkStats(JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method

.method public getYesterdayWifiTraffic()Landroid/util/SparseArray;
    .locals 4

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mYesterday:J

    iget-wide v2, p0, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->mToday:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->buildPeriodTimeWifiWorkStats(JJ)Landroid/util/SparseArray;

    move-result-object v0

    return-object v0
.end method
