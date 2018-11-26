.class public Lcom/miui/net/MiuiNetworkSessionStats;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiNetworkSessionStats"


# instance fields
.field private mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-direct {v0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;-><init>()V

    iput-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-void
.end method


# virtual methods
.method public closeSession()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->closeSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "closeSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public forceUpdate()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "forceUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMobileHistoryForUid(Ljava/lang/String;IJJ)[J
    .locals 9

    :try_start_0
    iget-object v1, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getMobileHistoryForUid(Ljava/lang/String;IJJ)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "getMobileHistoryForUid"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getMobileSummaryForAllUid(Ljava/lang/String;JJ)Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "getMobileSummaryForAllUid"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkMobileTotalBytes(Ljava/lang/String;JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "getNetworkMobileTotalBytes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNetworkWifiTotalBytes(JJ)J
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getNetworkWifiTotalBytes(JJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "getNetworkWifiTotalBytes"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWifiHistoryForUid(IJJ)[J
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getWifiHistoryForUid(IJJ)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "getWifiHistoryForUid"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->getWifiSummaryForAllUid(JJ)Landroid/util/SparseArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "getWifiSummaryForAllUid"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public isBandwidthModuleEnable()Z
    .locals 2

    const-string/jumbo v0, "net.qtaguid_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public openSession()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mStatsCompat:Lmiui/securitycenter/net/MiuiNetworkSessionStats;

    invoke-virtual {v0}, Lmiui/securitycenter/net/MiuiNetworkSessionStats;->openSession()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "openSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MiuiNetworkSessionStats"

    const-string/jumbo v2, "openSession IllegalStateException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/miui/net/MiuiNetworkSessionStats;->isBandwidthModuleEnable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getNetworkExceptionUpdateTime()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mCommonConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2, v0, v1}, Lcom/miui/networkassistant/config/CommonConfig;->setNetworkExceptionUpdateTime(J)Z

    iget-object v0, p0, Lcom/miui/net/MiuiNetworkSessionStats;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/utils/NotificationUtil;->sendNetworkStatsExceptionNotify(Landroid/content/Context;)V

    goto :goto_0
.end method
