.class public Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;
.super Ljava/lang/Object;
.source "LogConfigControler.java"


# static fields
.field private static final CONFIG_KEY:Ljava/lang/String; = "config"

.field private static final LOG_SHAREPREFERENCES:Ljava/lang/String; = "log_Pre"

.field private static final default_config:Ljava/lang/String; = ""

.field private static volatile instance:Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;
    .locals 2

    sget-object v0, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->instance:Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    if-nez v0, :cond_1

    const-class v1, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->instance:Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;-><init>()V

    sput-object v0, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->instance:Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->instance:Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public downloadConfig()V
    .locals 2

    new-instance v0, Lcom/autonavi/its/protocol/log/req/ReqDownLoadConfig;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/req/ReqDownLoadConfig;-><init>()V

    new-instance v1, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler$1;

    invoke-direct {v1, p0}, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler$1;-><init>(Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/log/req/ReqDownLoadConfig;->doRequest(Lcom/autonavi/its/protocol/ReqCallback;)V

    return-void
.end method

.method public readConfig()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "log_Pre"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "config"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public saveConfig(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "log_Pre"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "config"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method
