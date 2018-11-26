.class public Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/IWebCorrection;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;Ljava/lang/String;J)Lcom/miui/networkassistant/webapi/DataUsageResult;
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->query(Ljava/lang/String;J)Lcom/miui/networkassistant/webapi/DataUsageResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;
    .locals 2

    const-class v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private query(Ljava/lang/String;J)Lcom/miui/networkassistant/webapi/DataUsageResult;
    .locals 10

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v7

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getSlotNum()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getPhoneNumber(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getCity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->getIccid()Ljava/lang/String;

    move-result-object v6

    move-wide v4, p2

    invoke-static/range {v0 .. v6}, Lcom/miui/networkassistant/webapi/WebApiAccessHelper;->queryDataUsage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/miui/networkassistant/webapi/DataUsageResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Lcom/miui/networkassistant/config/SimUserInfo;->isWebCorrectionSupported()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->saveWebCorrectionSupported(Z)Z

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->isServiceNotSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/miui/networkassistant/webapi/DataUsageResult;->getOldAge()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, v1

    const-wide/32 v8, 0x5265c00

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/miui/networkassistant/config/SimUserInfo;->saveWebCorrectionSupported(Z)Z

    invoke-virtual {v7, v2, v3}, Lcom/miui/networkassistant/config/SimUserInfo;->saveWebCorrectionStatusRefreshTime(J)Z

    sget-object v2, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "web correction service is not supported current imsi , oldAge: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0
.end method


# virtual methods
.method public queryDataUsage(Ljava/lang/String;JZLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 8

    new-instance v1, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p5

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;-><init>(Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection;Ljava/lang/String;JLcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;Z)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/traffic/correction/webcorrection/MiCorrection$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
