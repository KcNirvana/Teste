.class public Lcom/npaw/youbora/youboralib/managers/InfoManager;
.super Ljava/lang/Object;
.source "InfoManager.java"


# instance fields
.field private lastAdBitrate:J

.field private lastBitrate:J

.field private options:Lcom/npaw/youbora/youboralib/data/Options;

.field private plugin:Lcom/npaw/youbora/plugins/PluginGeneric;


# direct methods
.method public constructor <init>(Lcom/npaw/youbora/plugins/PluginGeneric;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->lastBitrate:J

    iput-wide v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->lastAdBitrate:J

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    new-instance p1, Lcom/npaw/youbora/youboralib/data/Options;

    invoke-direct {p1}, Lcom/npaw/youbora/youboralib/data/Options;-><init>()V

    iput-object p1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    return-void
.end method

.method public constructor <init>(Lcom/npaw/youbora/plugins/PluginGeneric;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;-><init>(Lcom/npaw/youbora/plugins/PluginGeneric;)V

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    invoke-virtual {p1, p2}, Lcom/npaw/youbora/youboralib/data/Options;->setOptions(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/npaw/youbora/plugins/PluginGeneric;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/npaw/youbora/plugins/PluginGeneric;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;-><init>(Lcom/npaw/youbora/plugins/PluginGeneric;)V

    iget-object p1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    invoke-virtual {p1, p2}, Lcom/npaw/youbora/youboralib/data/Options;->setOptions(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getAdBitrate()Ljava/lang/Double;
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :try_start_0
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdBitrate()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAdBufferEndParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdBufferEndParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdBufferEndParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "adPlayhead"

    const-string v1, "adPlayhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "adPlayhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPlayhead()Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getAdDuration()Ljava/lang/Double;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "duration"

    invoke-virtual {v1, v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdDuration()Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getAdJoinParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdJoinParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdJoinParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "adPlayhead"

    const-string v1, "adPlayhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "adPlayhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPlayhead()Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getAdPauseParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPauseParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdPauseParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getAdPingParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPingParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdPingParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const-string v0, "adPlayhead"

    const-string v1, "adPlayhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "adPlayhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPlayhead()Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adBitrate"

    const-string v1, "adBitrate"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "adBitrate"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdBitrate()Ljava/lang/Double;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getAdPlayerVersion()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdPlayerVersion()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getAdPlayhead()Ljava/lang/Double;
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdPlayhead()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getAdPosition()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "ads"

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "ads"

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdPosition()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    const-string v0, "unknown"

    return-object v0
.end method

.method public getAdResource()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "ads"

    const-string v2, "resource"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "ads"

    const-string v2, "resource"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdResource()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    const-string v0, "unknown"

    return-object v0
.end method

.method public getAdResumeParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdResumeParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdResumeParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getAdStartParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdStartParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdStartParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_9

    :cond_0
    :goto_0
    const-string v0, "resource"

    const-string v1, "resource"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "resource"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdResource()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "position"

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "position"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPosition()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "campaign"

    const-string v1, "campaign"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "campaign"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "ads"

    const-string v3, "campaign"

    invoke-virtual {v1, v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "title"

    const-string v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdTitle()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adDuration"

    const-string v1, "adDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "adDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_5
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdDuration()Ljava/lang/Double;

    move-result-object v1

    :goto_5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "playhead"

    const-string v1, "playhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "playhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_6
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPlayhead()Ljava/lang/Double;

    move-result-object v1

    :goto_6
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adnalyzerVersion"

    const-string v1, "adnalyzerVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "adnalyzerVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdnalyzerVersion()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adPlayerVersion"

    const-string v1, "adPlayerVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "adPlayerVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPlayerVersion()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_9
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getAdStopParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdStopParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAdStopParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const-string v0, "adPlayhead"

    const-string v1, "adPlayhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "adPlayhead"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdPlayhead()Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adBitrate"

    const-string v1, "adBitrate"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "adBitrate"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getAdBitrate()Ljava/lang/Double;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adPlayhead"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "adPlayhead"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "adPlayhead"

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p1

    :goto_3
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getAdTitle()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "title"

    invoke-virtual {v1, v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v1

    invoke-virtual {v1}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getAdTitle()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :cond_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public getBitrate()Ljava/lang/Double;
    .locals 7

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :try_start_0
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getBitrate()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_1

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getBufferEndParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getBufferEndParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBufferEndParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getSeekEndParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getIsLive()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "time"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "time"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getCDN()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->getResourceParser()Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    move-result-object v0

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "useCDNFromParser"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getCDNCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getCDNCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getCDNCode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v1, "media"

    const-string v2, "cdn"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    const-string v0, ""

    return-object v0
.end method

.method public getDataParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getDataParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDataParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    const-string v0, "system"

    const-string v1, "system"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "system"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "accountCode"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pluginName"

    const-string v1, "pluginName"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "pluginName"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getPluginName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pluginVersion"

    const-string v1, "pluginVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "pluginVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getPluginVersion()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_4
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getErrorParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getErrorParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getErrorParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getStartParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "msg"

    const-string v1, "msg"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "msg"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Unknown error"

    :goto_0
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorCode"

    const-string v1, "errorCode"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "errorCode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/16 v1, 0x2328

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getIsLive()Ljava/lang/Boolean;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "media"

    const-string v2, "isLive"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "media"

    const-string v2, "isLive"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getIsLive()Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getJoinParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getJoinParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getJoinParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_0
    :goto_0
    const-string v0, "eventTime"

    const-string v1, "eventTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "eventTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPlayhead()Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "mediaDuration"

    const-string v1, "mediaDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mediaDuration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getMediaDuration()Ljava/lang/Double;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_3
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getMediaDuration()Ljava/lang/Double;
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v3

    const-string v4, "media"

    const-string v5, "duration"

    invoke-virtual {v3, v4, v5}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v3

    const-string v4, "media"

    const-string v5, "duration"

    invoke-virtual {v3, v4, v5}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_0

    move-object v2, v3

    check-cast v2, Ljava/lang/Double;

    goto :goto_0

    :cond_0
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getMediaDuration()Ljava/lang/Double;

    move-result-object v2

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpg-double v3, v3, v0

    if-gez v3, :cond_5

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-object v2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/npaw/youbora/youboralib/data/Options;
    .locals 1

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    return-object v0
.end method

.method public getPauseParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPauseParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPauseParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getPingParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPingParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getPingParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_0
    const-string v0, "time"

    const-string v1, "time"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "time"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPlayhead()Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "bitrate"

    const-string v1, "bitrate"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "bitrate"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getBitrate()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "throughput"

    const-string v1, "throughput"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "throughput"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getThroughput()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_4
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getPlayerVersion()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getPlayerVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPlayhead()Ljava/lang/Double;
    .locals 3

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getAdnalyzer()Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;

    move-result-object v2

    invoke-virtual {v2}, Lcom/npaw/youbora/adnalyzers/AdnalyzerGeneric;->getMediaPlayhead()Ljava/lang/Double;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getPlayhead()Ljava/lang/Double;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getRendition()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "media"

    const-string v2, "rendition"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "media"

    const-string v2, "rendition"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getRendition()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getResource()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getViewManager()Lcom/npaw/youbora/youboralib/managers/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/managers/ViewManager;->getResourceParser()Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getRealResource()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getRealResource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/npaw/youbora/youboralib/services/resourceparser/ResourceParser;->getRealResource()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "media"

    const-string v2, "resource"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "media"

    const-string v2, "resource"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getResource()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    const-string v0, "unknown"

    return-object v0
.end method

.method public getResumeParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getResumeParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResumeParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getSeekEndParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getSeekEndParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getSeekEndParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    const-string v0, "time"

    const-string v1, "time"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "time"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPlayhead()Ljava/lang/Double;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getStartParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getStartParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStartParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_15

    :cond_0
    :goto_0
    const-string v0, "system"

    const-string v1, "system"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "system"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v1

    const-string v2, "accountCode"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "player"

    const-string v1, "player"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "player"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getPluginName()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "user"

    const-string v1, "user"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "user"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "username"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transcode"

    const-string v1, "transcode"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "transcode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "transactionCode"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_4
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "hashTitle"

    const-string v1, "hashTitle"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "hashTitle"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_5

    :cond_5
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "hashTitle"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_5
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "deviceId"

    const-string v1, "deviceId"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "deviceId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_6

    :cond_6
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "device"

    const-string v3, "deviceId"

    invoke-virtual {v1, v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_6
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "pluginVersion"

    const-string v1, "pluginVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "pluginVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_7

    :cond_7
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v1}, Lcom/npaw/youbora/plugins/PluginGeneric;->getPluginVersion()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "playerVersion"

    const-string v1, "playerVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "playerVersion"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getPlayerVersion()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "resource"

    const-string v1, "resource"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "resource"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_9

    :cond_9
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getResource()Ljava/lang/String;

    move-result-object v1

    :goto_9
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "duration"

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "duration"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_a

    :cond_a
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getMediaDuration()Ljava/lang/Double;

    move-result-object v1

    :goto_a
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "live"

    const-string v1, "live"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "live"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_b

    :cond_b
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getIsLive()Ljava/lang/Boolean;

    move-result-object v1

    :goto_b
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "rendition"

    const-string v1, "rendition"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "rendition"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_c

    :cond_c
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getRendition()Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "title"

    const-string v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "title"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d

    :cond_d
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_d
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "properties"

    const-string v1, "properties"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "properties"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_e

    :cond_e
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "properties"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_e
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cdn"

    const-string v1, "cdn"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "cdn"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_f

    :cond_f
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getCDN()Ljava/lang/String;

    move-result-object v1

    :goto_f
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "isp"

    const-string v1, "isp"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "isp"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_10

    :cond_10
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "network"

    const-string v3, "isp"

    invoke-virtual {v1, v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_10
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ip"

    const-string v1, "ip"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "ip"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_11

    :cond_11
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "network"

    const-string v3, "ip"

    invoke-virtual {v1, v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_11
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v1, "extraParams"

    invoke-virtual {v0, v1}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_13

    const/4 v1, 0x1

    :goto_12
    const/16 v2, 0xb

    if-ge v1, v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "param"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_13

    :cond_12
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_13
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_13
    const-string v0, "adsExpected"

    const-string v1, "adsExpected"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "adsExpected"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_14

    :cond_14
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "ads"

    const-string v3, "adsExpected"

    invoke-virtual {v1, v2, v3}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_14
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1"

    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "isBalanced"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, "isBalanced"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    iget-object v1, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    const-string v2, "isResumed"

    invoke-virtual {v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const-string v1, "isResumed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_16
    return-object p1

    :goto_15
    invoke-static {p1}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getStopParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getStopParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStopParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getThroughput()Ljava/lang/Double;
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :try_start_0
    iget-object v2, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v2}, Lcom/npaw/youbora/plugins/PluginGeneric;->getThroughput()Ljava/lang/Double;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v2

    :catch_0
    move-exception v2

    invoke-static {v2}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "media"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/npaw/youbora/youboralib/managers/InfoManager;->getOptions()Lcom/npaw/youbora/youboralib/data/Options;

    move-result-object v0

    const-string v1, "media"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Lcom/npaw/youbora/youboralib/data/Options;->getFromMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->plugin:Lcom/npaw/youbora/plugins/PluginGeneric;

    invoke-virtual {v0}, Lcom/npaw/youbora/plugins/PluginGeneric;->getTitle()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/npaw/youbora/youboralib/utils/YBLog;->error(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public setOptions(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/data/Options;->setOptions(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/npaw/youbora/youboralib/managers/InfoManager;->options:Lcom/npaw/youbora/youboralib/data/Options;

    invoke-virtual {v0, p1}, Lcom/npaw/youbora/youboralib/data/Options;->setOptions(Ljava/util/Map;)V

    return-void
.end method
