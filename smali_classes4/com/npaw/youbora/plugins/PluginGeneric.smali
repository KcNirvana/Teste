.class public Lcom/npaw/youbora/plugins/PluginGeneric;
.super Ljava/lang/Object;
.source "PluginGeneric.java"


# instance fields
.field protected adnalyzer:Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

.field protected infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

.field protected player:Ljava/lang/Object;

.field protected pluginName:Ljava/lang/String;

.field protected pluginVersion:Ljava/lang/String;

.field protected startAutoDetectionEnabled:Z

.field protected viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iput-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->player:Ljava/lang/Object;

    iput-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->adnalyzer:Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->startAutoDetectionEnabled:Z

    invoke-virtual {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;-><init>()V

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->setOptions(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;-><init>()V

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->setOptions(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public bufferedHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendJoin()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekEnd()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendBufferEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bufferingHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendBufferStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableBufferMonitor()V
    .locals 2

    invoke-virtual {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "enableNiceBuffer"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableBufferMonitor:Z

    :cond_0
    return-void
.end method

.method public enableSeekMonitor()V
    .locals 2

    invoke-virtual {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "enableNiceBuffer"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableSeekMonitor:Z

    :cond_0
    return-void
.end method

.method public endedHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isShowingAds:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public errorHandler(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    const-string p1, "Unknown error"

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msg"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendError(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method public errorHandler(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "errorCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "msg"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendError(Ljava/util/Map;)V

    goto :goto_3

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/npaw/youbora/plugins/PluginGeneric;->errorHandler(Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, p2}, Lcom/npaw/youbora/plugins/PluginGeneric;->errorHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_3
    return-void
.end method

.method public errorHandler(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    if-eqz p1, :cond_5

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "errorCode"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "msg"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "errorMetadata"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendError(Ljava/util/Map;)V

    goto :goto_4

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/npaw/youbora/plugins/PluginGeneric;->errorHandler(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    :goto_1
    invoke-virtual {p0, p1}, Lcom/npaw/youbora/plugins/PluginGeneric;->errorHandler(Ljava/lang/String;)V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0, p2}, Lcom/npaw/youbora/plugins/PluginGeneric;->errorHandler(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_4
    return-void
.end method

.method public getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->adnalyzer:Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    return-object v0
.end method

.method public getBitrate()Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIsLive()Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getMediaDuration()Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptions()Lcom/npaw/youbora/youboralib/data/Options;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    return-object v0
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "Generic"

    return-object v0
.end method

.method public getPlayhead()Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPluginName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->pluginName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPluginVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->pluginVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRendition()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    return-object v0
.end method

.method public getThroughput()Ljava/lang/Double;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    return-object v0
.end method

.method public ignoredAdHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendIgnoreAdEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public ignoringAdHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendIgnoreAdStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method protected init()V
    .locals 1

    new-instance v0, Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-direct {v0, p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;-><init>(Lcom/npaw/youbora/plugins/PluginGeneric;)V

    iput-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    const-string v0, "5.3.0-GENERIC"

    iput-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->pluginVersion:Ljava/lang/String;

    const-string v0, "GENERIC"

    iput-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->pluginName:Ljava/lang/String;

    return-void
.end method

.method public joinHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendJoin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public pauseHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public pauseMonitoring()V
    .locals 1

    const-string v0, "pauseMonitoring"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->stopTimers()V

    :cond_0
    return-void
.end method

.method public pauseToggleHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendResume()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public playHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public playingHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isStartSent:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isJoinSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendJoin()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekEnd()V

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendResume()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekEnd()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendBufferEnd()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isPaused:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public resumeHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public resumeMonitoring()V
    .locals 1

    const-string v0, "resumeMonitoring"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->startTimers()V

    :cond_0
    return-void
.end method

.method public seekedHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public seekingHandler()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-eqz v0, :cond_0

    const-string v0, "Detected seek while buffering: converting buffer to seek event."

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoSeek:Lcom/npaw/youbora/youboralib/utils/Chrono;

    iget-object v1, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v1, v1, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStartTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStartTime(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoSeek:Lcom/npaw/youbora/youboralib/utils/Chrono;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStopTime(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/utils/Chrono;->stop()J

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isSeeking:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendSeekStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public setAdnalyzer(Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;)V
    .locals 0

    iput-object p1, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->adnalyzer:Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    return-void
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->setOptions(Ljava/lang/String;)V

    return-void
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->setOptions(Ljava/util/Map;)V

    return-void
.end method

.method public setStartAutoDetection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->startAutoDetectionEnabled:Z

    return-void
.end method

.method public startMonitoring(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->player:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->stopMonitoring()V

    :cond_0
    iput-object p1, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->player:Ljava/lang/Object;

    new-instance p1, Lcom/npaw/youbora/youboralib/managers/ViewManager;

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->infoManager:Lcom/npaw/youbora/youboralib/managers/InfoManager;

    invoke-direct {p1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;-><init>(Lcom/npaw/youbora/youboralib/managers/InfoManager;)V

    iput-object p1, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    return-void
.end method

.method public startMonitoring(Ljava/lang/Object;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/npaw/youbora/plugins/PluginGeneric;->startMonitoring(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->startAutoDetectionEnabled:Z

    invoke-virtual {p0}, Lcom/npaw/youbora/plugins/PluginGeneric;->playHandler()V

    :cond_0
    return-void
.end method

.method public stopMonitoring()V
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->viewManager:Lcom/npaw/youbora/youboralib/managers/ViewManager;

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendStop()V

    goto :goto_0

    :cond_0
    const-string v0, "stopMonitoring called before startMonitoring"

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->notice(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/npaw/youbora/plugins/PluginGeneric;->player:Ljava/lang/Object;

    return-void
.end method
