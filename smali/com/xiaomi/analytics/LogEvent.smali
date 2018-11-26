.class public Lcom/xiaomi/analytics/LogEvent;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bpg:Lcom/xiaomi/analytics/LogEvent$IdType;

.field private bph:Lcom/xiaomi/analytics/LogEvent$LogType;

.field private bpi:Lorg/json/JSONObject;

.field private bpj:J

.field private bpk:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bph:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpi:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpk:Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpg:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpj:J

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bph:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpi:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpk:Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpg:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpj:J

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->bpg:Lcom/xiaomi/analytics/LogEvent$IdType;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$LogType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bph:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpi:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpk:Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpg:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpj:J

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->bph:Lcom/xiaomi/analytics/LogEvent$LogType;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$LogType;->TYPE_EVENT:Lcom/xiaomi/analytics/LogEvent$LogType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bph:Lcom/xiaomi/analytics/LogEvent$LogType;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpi:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpk:Lorg/json/JSONObject;

    sget-object v0, Lcom/xiaomi/analytics/LogEvent$IdType;->TYPE_DEFAULT:Lcom/xiaomi/analytics/LogEvent$IdType;

    iput-object v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpg:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/analytics/LogEvent;->bpj:J

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->bph:Lcom/xiaomi/analytics/LogEvent$LogType;

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/xiaomi/analytics/LogEvent;->bpg:Lcom/xiaomi/analytics/LogEvent$IdType;

    :cond_1
    return-void
.end method

.method public static create()Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0}, Lcom/xiaomi/analytics/LogEvent;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$IdType;)V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$LogType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$LogType;)V

    return-object v0
.end method

.method public static create(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)Lcom/xiaomi/analytics/LogEvent;
    .locals 1

    new-instance v0, Lcom/xiaomi/analytics/LogEvent;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/analytics/LogEvent;-><init>(Lcom/xiaomi/analytics/LogEvent$LogType;Lcom/xiaomi/analytics/LogEvent$IdType;)V

    return-object v0
.end method


# virtual methods
.method bNg(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->bpk:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method bNh(Lorg/json/JSONObject;)Lcom/xiaomi/analytics/LogEvent;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/xiaomi/analytics/LogEvent;->bpi:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public pack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "v"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "appId"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "sessionId"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "configKey"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "content"

    iget-object v2, p0, Lcom/xiaomi/analytics/LogEvent;->bpi:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "eventTime"

    iget-wide v2, p0, Lcom/xiaomi/analytics/LogEvent;->bpj:J

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v0, "logType"

    iget-object v2, p0, Lcom/xiaomi/analytics/LogEvent;->bph:Lcom/xiaomi/analytics/LogEvent$LogType;

    invoke-virtual {v2}, Lcom/xiaomi/analytics/LogEvent$LogType;->value()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v0, "extra"

    iget-object v2, p0, Lcom/xiaomi/analytics/LogEvent;->bpk:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "idType"

    iget-object v2, p0, Lcom/xiaomi/analytics/LogEvent;->bpg:Lcom/xiaomi/analytics/LogEvent$IdType;

    invoke-virtual {v2}, Lcom/xiaomi/analytics/LogEvent$IdType;->value()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "LogEvent"

    invoke-static {v2}, Lcom/xiaomi/analytics/internal/util/b;->bKH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "pack e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
