.class public Lcom/miui/networkassistant/service/tm/DataUsageReportManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private connectedTime:J

.field private disconnectedTime:J

.field private mConfig:Lcom/miui/networkassistant/config/CommonConfig;

.field private mContext:Landroid/content/Context;

.field private mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

.field private mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

.field private mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

.field private mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/config/CommonConfig;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)Lcom/miui/networkassistant/dual/SimCardHelper;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)[Lcom/miui/networkassistant/service/tm/TrafficSimManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->getAppDetailDataUsage(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->getUploadDataUsage(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->checkWifiAndMobileConnectedTime()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBO:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    iput-wide v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->connectedTime:J

    iput-wide v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->disconnectedTime:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/config/CommonConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/dual/SimCardHelper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/dual/SimCardHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mSimCardHelper:Lcom/miui/networkassistant/dual/SimCardHelper;

    return-void
.end method

.method private checkAndGetMonitorCenter()V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    :cond_0
    return-void
.end method

.method private checkWifiAndMobileConnectedTime()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v3, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v3, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->handleDisconnected(JJ)V

    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->connectedTime:J

    :cond_1
    sget-object v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wifiAndMobileTurnOnTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getWifiDailyConnectedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getMobileDailyConnectedTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getAllAppsJsonString(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 12

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->checkAndGetMonitorCenter()V

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v1}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    iget-object v3, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getYesterdayMobileTraffic()Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getYesterdayWifiTraffic()Landroid/util/SparseArray;

    move-result-object v9

    invoke-virtual {v2}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->closeSession()V

    if-nez v8, :cond_1

    if-nez v9, :cond_1

    return-object v0

    :cond_1
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    move-object v2, v0

    move-object v1, v0

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/model/AppInfo;

    iget v4, v0, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    if-eqz v8, :cond_8

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/AppDataUsage;

    move-object v3, v1

    :goto_1
    if-eqz v9, :cond_7

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/networkassistant/model/AppDataUsage;

    :goto_2
    if-nez v3, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v4, "pkgName"

    iget-object v0, v0, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    :goto_3
    const-string/jumbo v0, "usedTraffic"

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v4

    :goto_4
    const-string/jumbo v0, "usedWifi"

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v10, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_5
    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_4
    move-wide v4, v6

    goto :goto_3

    :cond_5
    move-wide v4, v6

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :cond_6
    return-object v10

    :cond_7
    move-object v1, v2

    goto :goto_2

    :cond_8
    move-object v3, v1

    goto :goto_1
.end method

.method private getAppDetailDataUsage(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;
    .locals 18

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->checkAndGetMonitorCenter()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mMonitorCenter:Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;

    invoke-virtual {v2}, Lcom/miui/networkassistant/service/wrapper/AppMonitorWrapper;->getFilteredAppInfosList()Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v5

    :cond_0
    new-instance v6, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/networkassistant/model/AppInfo;

    iget v3, v2, Lcom/miui/networkassistant/model/AppInfo;->uid:I

    invoke-virtual {v6, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getAppYesterdayPerHourTraffic(I)Landroid/util/SparseArray;

    move-result-object v8

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    if-eqz v8, :cond_4

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    const/16 v3, 0x18

    if-ge v4, v3, :cond_4

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/miui/networkassistant/model/AppDataUsage;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    if-eqz v3, :cond_3

    const/4 v11, 0x0

    aget-object v11, v3, v11

    invoke-virtual {v11}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v12

    const/4 v11, 0x1

    aget-object v3, v3, v11

    invoke-virtual {v3}, Lcom/miui/networkassistant/model/AppDataUsage;->getTotal()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v12, v16

    if-gtz v3, :cond_2

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-lez v3, :cond_3

    :cond_2
    const-string/jumbo v3, "m"

    invoke-virtual {v10, v3, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v3, "w"

    invoke-virtual {v10, v3, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v2, v2, Lcom/miui/networkassistant/model/AppInfo;->packageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object v5
.end method

.method private getSha1String(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SHA-1"

    invoke-static {v0, v1}, Lmiui/security/DigestUtils;->get(Ljava/lang/CharSequence;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lmiui/text/ExtraTextUtils;->toHexReadable([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUploadDataUsage(Lcom/miui/networkassistant/service/tm/TrafficSimManager;)Lorg/json/JSONObject;
    .locals 32

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mSimUser:Lcom/miui/networkassistant/config/SimUserInfo;

    move-object/from16 v20, v0

    new-instance v21, Lorg/json/JSONObject;

    invoke-direct/range {v21 .. v21}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual/range {v20 .. v20}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v22

    sget-boolean v6, Lcom/miui/networkassistant/utils/DeviceUtil;->IS_INTERNATIONAL_BUILD:Z

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v7

    invoke-static {v6, v7}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->getSha1String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "phoneNum"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->getSha1String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "imsi"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "imsi_p"

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, ""

    :goto_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-static/range {v22 .. v22}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getOperatorStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "operator"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getCurrentMonthTotalPackage()J

    move-result-wide v6

    const-string/jumbo v8, "settingPkg"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/CommonConfig;->getUploadMonthReportUpdateTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/miui/networkassistant/utils/DateUtil;->isTheSameMonth(JJ)Z

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/CommonConfig;->getUploadMonthReportUpdateTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    :cond_1
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthBeginTimeMillis(I)J

    move-result-wide v8

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v6

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    :goto_1
    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getYesterdayTimeMillis()J

    move-result-wide v24

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v26

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-virtual/range {v20 .. v20}, Lcom/miui/networkassistant/config/SimUserInfo;->isLeisureDataUsageEffective()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-virtual/range {v20 .. v20}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageTotal()J

    move-result-wide v14

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v12

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getInternalLeisureUsed(JJ)J

    move-result-wide v10

    invoke-virtual/range {v20 .. v20}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageFromTime()J

    move-result-wide v8

    invoke-virtual/range {v20 .. v20}, Lcom/miui/networkassistant/config/SimUserInfo;->getLeisureDataUsageToTime()J

    move-result-wide v6

    :cond_2
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v28

    sub-long v28, v28, v12

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    move-wide/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->getDataUsageByFromTo(JJ)J

    move-result-wide v30

    sub-long v30, v30, v10

    const-string/jumbo v20, "yesterdayTrafficUsed"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v20, "monthTrafficUsed"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v20, "leisurePkg"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v14, "yesterdayLeisureUsed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v12, "monthLeisureUsed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v10, "leisureFrom"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v8, "leisureTo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/miui/networkassistant/service/tm/TrafficSimManager;->mIgnoreAppListConfig:Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;

    invoke-virtual {v6}, Lcom/miui/networkassistant/config/DataUsageIgnoreAppListConfig;->getIgnoreList()Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    if-eqz v6, :cond_5

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v21

    :cond_3
    const/4 v6, 0x0

    const/16 v8, 0x8

    :try_start_1
    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getPreMonthTimeMillis()J

    move-result-wide v8

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/miui/networkassistant/utils/DateUtil;->getThisMonthEndTimeMillis(I)J

    move-result-wide v6

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v6, "ignore"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v6, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-direct {v6, v7, v0}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-wide/from16 v0, v24

    move-wide/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getNetworkWifiTotalBytes(JJ)J

    move-result-wide v8

    const-string/jumbo v7, "yesterdayWifiUsed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-wide/from16 v0, v18

    move-wide/from16 v2, v16

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->getNetworkWifiTotalBytes(JJ)J

    move-result-wide v8

    const-string/jumbo v7, "monthWifiUsed"

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lcom/miui/networkassistant/traffic/statistic/StatisticAppTraffic;->closeSession()V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->getAllAppsJsonString(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const-string/jumbo v7, "appRank"

    if-eqz v6, :cond_6

    :goto_4
    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_6
    const-string/jumbo v6, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private handleDisconnected(JJ)V
    .locals 9

    iput-wide p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->disconnectedTime:J

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->connectedTime:J

    cmp-long v0, v0, p3

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->disconnectedTime:J

    sub-long/2addr v0, p3

    :goto_0
    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v5, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v4, v5, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getMobileDailyConnectedTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    add-long v6, v2, v0

    invoke-virtual {v4, v6, v7}, Lcom/miui/networkassistant/config/CommonConfig;->setMobileDailyConnectedTime(J)Z

    :cond_0
    :goto_1
    sget-object v4, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleDisconnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->disconnectedTime:J

    iget-wide v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->connectedTime:J

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v5, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v4, v5, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v2}, Lcom/miui/networkassistant/config/CommonConfig;->getWifiDailyConnectedTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    add-long v6, v2, v0

    invoke-virtual {v4, v6, v7}, Lcom/miui/networkassistant/config/CommonConfig;->setWifiDailyConnectedTime(J)Z

    goto :goto_1
.end method

.method private isUploaded()Z
    .locals 5

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mConfig:Lcom/miui/networkassistant/config/CommonConfig;

    invoke-virtual {v0}, Lcom/miui/networkassistant/config/CommonConfig;->getUploadMonthReportUpdateTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public trackNetworkStateAnalytics(Lcom/miui/common/network/NetworkUtils$NetworkState;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne p1, v2, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v3, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBP:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    sget-object v3, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBS:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne v2, v3, :cond_3

    :cond_2
    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->handleDisconnected(JJ)V

    :cond_3
    iput-wide v0, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->connectedTime:J

    :cond_4
    :goto_0
    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mLastState:Lcom/miui/common/network/NetworkUtils$NetworkState;

    return-void

    :cond_5
    sget-object v2, Lcom/miui/common/network/NetworkUtils$NetworkState;->aBM:Lcom/miui/common/network/NetworkUtils$NetworkState;

    if-ne p1, v2, :cond_4

    invoke-static {}, Lcom/miui/networkassistant/utils/DateUtil;->getTodayTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->handleDisconnected(JJ)V

    goto :goto_0
.end method

.method public uploadTrafficDataDaily([Lcom/miui/networkassistant/service/tm/TrafficSimManager;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->isUploaded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager;->mTrafficManagers:[Lcom/miui/networkassistant/service/tm/TrafficSimManager;

    new-instance v0, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/DataUsageReportManager$1;-><init>(Lcom/miui/networkassistant/service/tm/DataUsageReportManager;)V

    invoke-static {v0}, Lcom/miui/common/a/b/a;->aGz(Ljava/lang/Runnable;)V

    return-void
.end method
