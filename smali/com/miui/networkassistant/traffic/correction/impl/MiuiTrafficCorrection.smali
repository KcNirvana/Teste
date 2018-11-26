.class public Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;
.implements Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiTrafficCorrection"

.field private static sInstance:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

.field private static sInstanceMap:Ljava/util/HashMap;


# instance fields
.field private mAllDirection:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mCurrentTcDirection:Lcom/miui/sdk/tc/TcDirection;

.field private mCurrentTcIndex:I

.field private mCurrentTcType:I

.field private mDirectionCache:Ljava/util/Set;

.field private mDirectionSize:I

.field private mDirectionType:I

.field private mImsi:Ljava/lang/String;

.field private mIsBackground:Z

.field private mIsFinished:Z

.field private mIsUpdated:Z

.field private mListeners:Ljava/util/ArrayList;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSlotNum:I

.field private mSmsFilter:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;

.field private mSmsSendRegister:Z

.field private mSmsSentReceiver:Landroid/content/BroadcastReceiver;

.field private mTcManager:Lcom/miui/sdk/tc/TcManager;

.field private mTimer:Ljava/util/Timer;

.field private final mTimerLock:Ljava/lang/Object;

.field private mTotalLimit:J

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsFinished:Z

    iput-boolean v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsUpdated:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimerLock:Ljava/lang/Object;

    iput v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$1;-><init>(Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;)V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/sdk/tc/TcManager;->getInstance()Lcom/miui/sdk/tc/TcManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->initTcLib(Landroid/content/Context;)V

    return-void
.end method

.method private acquireWakeup()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "MiuiTrafficCorrection"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    const-string/jumbo v0, "MiuiTrafficCorrection"

    const-string/jumbo v1, "LRL acquireWakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method private addTcDirectionCache()V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionCache:Ljava/util/Set;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/TcDirection;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mAllDirection:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mAllDirection:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mAllDirection:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setEngine(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

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

.method private getCustomizedInstructions(Ljava/util/Map;)Ljava/util/ArrayList;
    .locals 7

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    new-instance v4, Lcom/miui/sdk/tc/TcDirection;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v0, v5}, Lcom/miui/sdk/tc/TcDirection;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v0, v1, v4}, Lcom/miui/sdk/tc/TcManager;->addBlockNumber(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    monitor-enter v1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-direct {v0, p1, p2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setImsi(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    if-nez v0, :cond_3

    invoke-static {p0, p2}, Lcom/miui/networkassistant/utils/TelephonyUtil;->getSubscriberId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    sget-object v2, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;

    invoke-direct {v2, v0, p2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setImsi(Ljava/lang/String;I)V

    :cond_3
    sget-object v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sInstance:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getInstructionsByTcType(I)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/sdk/tc/TcManager;->getInstructionsByTcType(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getTcDirectionCache()Ljava/util/Set;
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastTrafficTcDirection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/miui/sdk/tc/TcDirection;

    invoke-direct {v3, v0}, Lcom/miui/sdk/tc/TcDirection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getLastBillTcDirection()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/miui/sdk/tc/TcDirection;

    invoke-direct {v1, v0}, Lcom/miui/sdk/tc/TcDirection;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private handleJustRemainStatus(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->isTrafficCmdType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    iget-wide v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTotalLimit:J

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getRemainTrafficB()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->isExtraEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getExtraRemainB()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v6}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setExtraEnable(Z)V

    :cond_0
    cmp-long v2, v0, v4

    if-ltz v2, :cond_2

    invoke-virtual {p1, v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setUsedTrafficB(J)V

    :goto_0
    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getUsedTrafficB()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setReturnCode(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setTotalLimitError(Z)V

    invoke-virtual {p1, v4, v5}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setUsedTrafficB(J)V

    goto :goto_0
.end method

.method private initTcLib(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "A2FscFVdX1+ULfEz/TTPQVNRXE+lzSe2"

    invoke-virtual {v0, p1, v1, v2}, Lcom/miui/sdk/tc/TcManager;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-void
.end method

.method private isTrafficCmdType(I)Z
    .locals 2

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private registerSmsSendReceiver()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsSendRegister:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "sms_receiver_action"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseWakeup()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v0, "MiuiTrafficCorrection"

    const-string/jumbo v1, "LRL releaseWakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private sendTextMessage(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-string/jumbo v0, "MiuiTrafficCorrection"

    const-string/jumbo v2, "addr:%s, text:%s, slotId:%d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v6

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "sms_receiver_action"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v0, p1

    move-object v2, p2

    move-object v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/miui/networkassistant/utils/TelephonyUtil;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;I)V

    return-void
.end method

.method private declared-synchronized setConfigUpdated(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setFinished(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setImsi(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0, p1, p2}, Lcom/miui/sdk/tc/TcManager;->setImsi(Ljava/lang/String;I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    iput p2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    iput-object p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mImsi:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getTcDirectionCache()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionCache:Ljava/util/Set;

    return-void
.end method

.method private setLastTcDirection(Lcom/miui/sdk/tc/TcDirection;)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SimUserInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/sdk/tc/TcDirection;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setLastTrafficTcDirection(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/miui/sdk/tc/TcDirection;->toJSON()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/config/SimUserInfo;->setLastBillTcDirection(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private startCorrectionByIndex(II)V
    .locals 11

    const/4 v10, 0x5

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->registerSmsSendReceiver()V

    :goto_0
    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionSize:I

    if-ge p1, v1, :cond_6

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mAllDirection:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/TcDirection;

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcDirection:Lcom/miui/sdk/tc/TcDirection;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcDirection:Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getSendNumber()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcDirection:Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getDirection()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcDirection:Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcDirection:Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getReceiveNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v1

    :cond_0
    const-string/jumbo v5, "MiuiTrafficCorrection"

    const-string/jumbo v6, "i:%d,address:%s,receive:%s,instruction:%s,type:%d"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    aput-object v1, v7, v2

    const/4 v8, 0x2

    aput-object v0, v7, v8

    const/4 v8, 0x3

    aput-object v4, v7, v8

    iget v8, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-direct {p0, v1, v4, v5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v1, v0

    move v0, v2

    :goto_1
    iget v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionSize:I

    if-lt p1, v4, :cond_2

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    invoke-direct {v0, v10}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsFilter:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;

    if-nez v0, :cond_3

    new-instance v0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;

    iget-object v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;-><init>(Landroid/content/Context;Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsFilter:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsFilter:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;

    iget v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    iget v5, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    invoke-virtual {v0, v4, v1, v2, v5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->regist(ILjava/lang/String;II)V

    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsBackground:Z

    if-nez v0, :cond_5

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setFinished(Z)V

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_4
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimer:Ljava/util/Timer;

    new-instance v2, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$TimeOutTask;

    invoke-direct {v2, p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$TimeOutTask;-><init>(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    const-wide/32 v4, 0x83d60

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->acquireWakeup()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_6
    move-object v1, v0

    move v0, v3

    goto :goto_1
.end method

.method private stopCurrentCorrection()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsFilter:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsFilter:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;

    invoke-virtual {v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;->unregist()V

    iput-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsFilter:Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection$SmsFilter;

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->releaseWakeup()V

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->unRegisterSmsSendReceiver()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setFinished(Z)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private unRegisterSmsSendReceiver()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsSendRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsSentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSmsSendRegister:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MiuiTrafficCorrection"

    const-string/jumbo v2, "unRegisterSmsSendReceiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updatePluginLib()V
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mImsi:Ljava/lang/String;

    iget v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v0, v1, v2}, Lcom/miui/sdk/tc/TcManager;->setImsi(Ljava/lang/String;I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    return-void
.end method


# virtual methods
.method public getBrands(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0, p1}, Lcom/miui/sdk/tc/TcManager;->getBrands(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCities(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0, p1}, Lcom/miui/sdk/tc/TcManager;->getCities(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getConfig()Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getInstructions(I)Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/sdk/tc/TcManager;->getInstructionsMapByType(II)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOperators()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcManager;->getOperators()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getProvinceCodeByCityCode(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0, p1}, Lcom/miui/sdk/tc/TcManager;->getProvinceCodeByCityCode(I)I

    move-result v0

    return v0
.end method

.method public getProvinces()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcManager;->getProvinces()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTcType()I
    .locals 1

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    return v0
.end method

.method public declared-synchronized isConfigUpdated()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsUpdated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isFinished()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 3

    const-string/jumbo v0, "MiuiTrafficCorrection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LRL status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->handleJustRemainStatus(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->stopCurrentCorrection()V

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    invoke-virtual {p1, v0}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->setCorrectionType(I)V

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcIndex:I

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcIndex:I

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionSize:I

    if-ge v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;->getReturnCode()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionType:I

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcType:I

    xor-int/2addr v0, v1

    iput v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionType:I

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionCache:Ljava/util/Set;

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcDirection:Lcom/miui/sdk/tc/TcDirection;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcDirection:Lcom/miui/sdk/tc/TcDirection;

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setLastTcDirection(Lcom/miui/sdk/tc/TcDirection;)Z

    :cond_0
    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcIndex:I

    iget v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionType:I

    invoke-direct {p0, v0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->startCorrectionByIndex(II)V

    :cond_3
    return-void
.end method

.method public registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public saveConfig(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setConfigUpdated(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->stopCurrentCorrection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->updatePluginLib()V

    new-instance v2, Lcom/miui/sdk/tc/UserConfig;

    invoke-direct {v2}, Lcom/miui/sdk/tc/UserConfig;-><init>()V

    invoke-virtual {p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->getProvinceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/sdk/tc/UserConfig;->setProvince(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->getCityId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/sdk/tc/UserConfig;->setCity(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficConfig;->getOperatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/sdk/tc/UserConfig;->setOperator(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    invoke-virtual {v3, v2, v4}, Lcom/miui/sdk/tc/TcManager;->setConfig(Lcom/miui/sdk/tc/UserConfig;I)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setConfigUpdated(Z)V

    new-instance v3, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    sget-object v3, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setTotalLimit(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTotalLimit:J

    return-void
.end method

.method public startCorrection(ZLjava/util/Map;)Z
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->startCorrection(ZLjava/util/Map;JI)Z

    move-result v0

    return v0
.end method

.method public startCorrection(ZLjava/util/Map;JI)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    const-string/jumbo v0, "MiuiTrafficCorrection"

    const-string/jumbo v1, "mina lrl startCorrection, isBackground:%s, type:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcIndex:I

    iput-boolean p1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mIsBackground:Z

    iput p5, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionType:I

    invoke-direct {p0, p5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getInstructionsByTcType(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mAllDirection:Ljava/util/List;

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->addTcDirectionCache()V

    invoke-direct {p0, p2}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->getCustomizedInstructions(Ljava/util/Map;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mAllDirection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/TcDirection;

    invoke-virtual {v0}, Lcom/miui/sdk/tc/TcDirection;->getCmdType()I

    move-result v0

    if-ne v0, v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/sdk/tc/TcDirection;

    iget-object v2, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mAllDirection:Ljava/util/List;

    invoke-interface {v2, v4, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mAllDirection:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionSize:I

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mDirectionSize:I

    if-lez v0, :cond_4

    iget v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mCurrentTcIndex:I

    invoke-direct {p0, v0, p5}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->startCorrectionByIndex(II)V

    :goto_2
    return v5

    :cond_4
    const-string/jumbo v0, "MiuiTrafficCorrection"

    const-string/jumbo v1, "instructions is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    goto :goto_2
.end method

.method public unRegisterLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateSMSTemplate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setConfigUpdated(Z)V

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->stopCurrentCorrection()V

    invoke-direct {p0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->updatePluginLib()V

    new-instance v2, Lcom/miui/sdk/tc/UserConfig;

    invoke-direct {v2, p1, p2, p3}, Lcom/miui/sdk/tc/UserConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mTcManager:Lcom/miui/sdk/tc/TcManager;

    iget v4, p0, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->mSlotNum:I

    const/4 v5, 0x7

    invoke-virtual {v3, v2, v4, v5}, Lcom/miui/sdk/tc/TcManager;->setConfig(Lcom/miui/sdk/tc/UserConfig;II)Lcom/miui/sdk/tc/TcManager$ReturnCode;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->setConfigUpdated(Z)V

    new-instance v3, Lcom/miui/networkassistant/model/TrafficUsedStatus;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lcom/miui/networkassistant/model/TrafficUsedStatus;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/miui/networkassistant/traffic/correction/impl/MiuiTrafficCorrection;->broadcastTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    sget-object v3, Lcom/miui/sdk/tc/TcManager$ReturnCode;->OK:Lcom/miui/sdk/tc/TcManager$ReturnCode;

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
