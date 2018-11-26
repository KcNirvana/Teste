.class Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;
.super Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;
.source ""


# instance fields
.field private mListeners:Landroid/os/RemoteCallbackList;

.field private mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

.field private mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

.field final synthetic this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;


# direct methods
.method static synthetic -wrap0(Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V

    return-void
.end method

.method private constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->this$0:Lcom/miui/networkassistant/service/tm/TrafficManageService;

    invoke-direct {p0}, Lcom/miui/networkassistant/service/ITrafficCornBinder$Stub;-><init>()V

    new-instance v0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder$1;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;)V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;-><init>(Lcom/miui/networkassistant/service/tm/TrafficManageService;)V

    return-void
.end method

.method private onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    .locals 5

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/service/ITrafficCornBinderListener;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/service/ITrafficCornBinderListener;->onTrafficCorrected(Lcom/miui/networkassistant/model/TrafficUsedStatus;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v3, "TrafficManageService"

    const-string/jumbo v4, "onTrafficCorrected exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    return-void
.end method


# virtual methods
.method public getBrands(Ljava/lang/String;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getBrands(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCities(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getCities(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getInstructions(I)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getInstructions(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getOperators()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getOperators()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getProvinceCodeByCityCode(I)I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0, p1}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getProvinceCodeByCityCode(I)I

    move-result v0

    return v0
.end method

.method public getProvinces()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getProvinces()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTcType()I
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->getTcType()I

    move-result v0

    return v0
.end method

.method public isConfigUpdated()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isConfigUpdated()Z

    move-result v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    invoke-interface {v0}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->isFinished()Z

    move-result v0

    return v0
.end method

.method public registerLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTrafficCorrection(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;)V
    .locals 3

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->unRegisterLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V

    :cond_0
    iput-object p1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrection:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;

    iget-object v2, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mTrafficCorrectionListener:Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;

    invoke-interface {v0, v2}, Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection;->registerLisener(Lcom/miui/networkassistant/traffic/correction/ITrafficCorrection$TrafficCorrectionListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unRegisterLisener(Lcom/miui/networkassistant/service/ITrafficCornBinderListener;)V
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/service/tm/TrafficManageService$TrafficCornBinder;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
