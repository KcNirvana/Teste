.class public Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;
.super Ljava/lang/Object;
.source "AdnalyzerGeneric.java"


# instance fields
.field protected adnalyzerVersion:Ljava/lang/String;

.field protected adsPlayer:Ljava/lang/Object;

.field protected plugin:Lcom/npaw/youbora/plugins/PluginGeneric;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    iput-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->adnalyzerVersion:Ljava/lang/String;

    const-string v0, "1.0.0-GENERIC"

    iput-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->adnalyzerVersion:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/npaw/youbora/plugins/PluginGeneric;)V
    .locals 0

    invoke-direct {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    return-void
.end method


# virtual methods
.method public bufferedAdHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdStartSent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdJoinSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdJoin()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdBuffering:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdBufferEnd()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bufferingAdHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdBufferStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public enableBufferMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "enableNiceBuffer"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->enableAdBufferMonitor:Z

    :cond_0
    return-void
.end method

.method public endedAdHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public getAdBitrate()Ljava/lang/Double;
    .locals 2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAdDuration()Ljava/lang/Double;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAdPlayerVersion()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAdPlayhead()Ljava/lang/Double;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAdPosition()Ljava/lang/String;
    .locals 1

    const-string v0, "unknown"

    return-object v0
.end method

.method public getAdResource()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public final getAdnalyzerVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->adnalyzerVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaPlayhead()Ljava/lang/Double;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getPlayhead()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public joinAdHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdJoin()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public pauseAdHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public pauseToggleHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdPaused:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdResume()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public playAdHandler()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdStartSent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdStart()V

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    iget-object v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoAdJoinTime:Lcom/npaw/youbora/youboralib/utils/Chrono;

    iget-object v1, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v1

    iget-object v1, v1, Lcom/npaw/youbora/youboralib/managers/ViewManager;->chronoBuffer:Lcom/npaw/youbora/youboralib/utils/Chrono;

    invoke-virtual {v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->getStartTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/utils/Chrono;->setStartTime(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isBuffering:Z
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

.method public resumeAdHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public skipAdHandler()V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "skipped"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->sendAdStop(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public startJoinAdHandler()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/npaw/youbora/youboralib/managers/ViewManager;->isAdStartSent:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->playAdHandler()V

    invoke-virtual {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->joinAdHandler()V
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

.method public startMonitoring(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->adsPlayer:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->endedAdHandler()V

    :cond_0
    iput-object p1, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->adsPlayer:Ljava/lang/Object;

    return-void
.end method

.method public stopMonitoring()V
    .locals 1

    invoke-virtual {p0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->endedAdHandler()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->adsPlayer:Ljava/lang/Object;

    return-void
.end method
