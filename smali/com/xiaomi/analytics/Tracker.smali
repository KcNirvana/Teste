.class public Lcom/xiaomi/analytics/Tracker;
.super Lcom/xiaomi/analytics/BaseLogger;
.source ""


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/analytics/BaseLogger;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic endSession()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/analytics/BaseLogger;->endSession()V

    return-void
.end method

.method public bridge synthetic startSession()V
    .locals 0

    invoke-super {p0}, Lcom/xiaomi/analytics/BaseLogger;->startSession()V

    return-void
.end method

.method public track(Lcom/xiaomi/analytics/Action;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->bMZ()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNh(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNg(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/LogEvent;->create()Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->bMZ()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNh(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNg(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method

.method public track(Lcom/xiaomi/analytics/Action;Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0, p2}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->bMZ()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNh(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNg(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->bMZ()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNh(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNg(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaomi/analytics/Tracker;->log(Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method

.method public track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->bMZ()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNh(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNg(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/xiaomi/analytics/LogEvent;->create()Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->bMZ()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNh(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNg(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method

.method public track(Ljava/lang/String;Lcom/xiaomi/analytics/Action;Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/xiaomi/analytics/AdAction;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_AD:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-static {v0, p3}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->bMZ()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNh(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNg(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p3}, Lcom/xiaomi/analytics/LogEvent;->create(Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->bMZ()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNh(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaomi/analytics/Action;->getExtra()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/analytics/LogEvent;->bNg(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaomi/analytics/Tracker;->log(Ljava/lang/String;Lcom/xiaomi/analytics/LogEvent;)V

    goto :goto_0
.end method
