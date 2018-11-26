.class public Lcom/miui/powercenter/batteryhistory/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aGV:Lcom/miui/powercenter/batteryhistory/b;


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/powercenter/batteryhistory/b;->aGV:Lcom/miui/powercenter/batteryhistory/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/b;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private aTA(Z)Lcom/miui/powercenter/batteryhistory/c;
    .locals 10

    const/4 v1, -0x1

    new-instance v6, Lcom/miui/powercenter/batteryhistory/c;

    invoke-direct {v6}, Lcom/miui/powercenter/batteryhistory/c;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/miui/powercenter/batteryhistory/c;->aGW:Ljava/util/List;

    const-string/jumbo v0, "BatteryHistoryLoadMgr"

    const-string/jumbo v2, "getHistoryInfo begin"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/miui/powercenter/batteryhistory/b;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    new-instance v8, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;

    invoke-direct {v8}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;-><init>()V

    invoke-virtual {v8}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->refreshHistory()V

    new-instance v9, Lmiui/securitycenter/powercenter/HistoryItemWrapper;

    invoke-direct {v9}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;-><init>()V

    invoke-virtual {v8}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->startIterate()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v1

    move v3, v1

    :cond_0
    :goto_0
    invoke-virtual {v8, v9}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->getNextHistoryItem(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->isDeltaData()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p1, :cond_4

    const-string/jumbo v0, "batteryLevel"

    invoke-virtual {v9, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v0, "batteryPlugType"

    invoke-virtual {v9, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v0, "batteryStatus"

    invoke-virtual {v9, v0}, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->getObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v3, v5, :cond_1

    if-ne v2, v4, :cond_1

    if-eq v1, v0, :cond_0

    :cond_1
    move v1, v4

    move v2, v5

    :goto_1
    new-instance v3, Lcom/miui/powercenter/batteryhistory/d;

    invoke-direct {v3, v9}, Lcom/miui/powercenter/batteryhistory/d;-><init>(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)V

    iget-object v4, v6, Lcom/miui/powercenter/batteryhistory/c;->aGW:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->finishIterate()V

    :cond_3
    invoke-virtual {v8}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->getBatteryUsageRealtime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/miui/powercenter/batteryhistory/c;->aGX:J

    invoke-virtual {v8}, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->getScreenOnTime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/miui/powercenter/batteryhistory/c;->aGY:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    monitor-exit v7

    const-string/jumbo v0, "BatteryHistoryLoadMgr"

    const-string/jumbo v1, "getHistoryInfo end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "BatteryHistoryLoadMgr"

    const-string/jumbo v2, "getHistoryInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "BatteryHistoryLoadMgr"

    const-string/jumbo v2, "getHistoryInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string/jumbo v1, "BatteryHistoryLoadMgr"

    const-string/jumbo v2, "getHistoryInfo"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_4
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1

    :cond_5
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_2
.end method

.method public static declared-synchronized getInstance()Lcom/miui/powercenter/batteryhistory/b;
    .locals 2

    const-class v1, Lcom/miui/powercenter/batteryhistory/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/powercenter/batteryhistory/b;->aGV:Lcom/miui/powercenter/batteryhistory/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/powercenter/batteryhistory/b;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/b;-><init>()V

    sput-object v0, Lcom/miui/powercenter/batteryhistory/b;->aGV:Lcom/miui/powercenter/batteryhistory/b;

    :cond_0
    sget-object v0, Lcom/miui/powercenter/batteryhistory/b;->aGV:Lcom/miui/powercenter/batteryhistory/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public aTB()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/b;->aTA(Z)Lcom/miui/powercenter/batteryhistory/c;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/powercenter/batteryhistory/c;->aGW:Ljava/util/List;

    return-object v0
.end method

.method public aTz()Lcom/miui/powercenter/batteryhistory/c;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/b;->aTA(Z)Lcom/miui/powercenter/batteryhistory/c;

    move-result-object v0

    return-object v0
.end method
