.class public Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;
.super Ljava/lang/Object;
.source "AppInfoTask.java"

# interfaces
.implements Lcom/autonavi/its/protocol/log/chaos/ITask;


# static fields
.field public static final PACKAGE_LOG_ACTIVE_KEY:Ljava/lang/String; = "active"

.field public static final PACKAGE_LOG_INSTALL_KEY:Ljava/lang/String; = "install"

.field public static final PACKAGE_LOG_NAME_KEY:Ljava/lang/String; = "name"

.field public static final PACKAGE_LOG_TIME_KEY:Ljava/lang/String; = "time"


# instance fields
.field private mTaskConfiger:Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private douploadLog(Lorg/json/JSONArray;)V
    .locals 2

    new-instance v0, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;

    invoke-direct {v0, p1}, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;-><init>(Lorg/json/JSONArray;)V

    new-instance v1, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask$1;

    invoke-direct {v1, p0}, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask$1;-><init>(Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/log/req/ReqUpLoadLogRequest;->doRequest(Lcom/autonavi/its/protocol/ReqCallback;)V

    return-void
.end method

.method private setTaskConfiger(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)V
    .locals 0

    check-cast p1, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;

    iput-object p1, p0, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;->mTaskConfiger:Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;

    return-void
.end method


# virtual methods
.method public configer(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;->setTaskConfiger(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)V

    :cond_0
    return-void
.end method

.method public deal()V
    .locals 11

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;->getTaskConfiger()Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;

    move-result-object v7

    invoke-virtual {v7}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;->getPkgConfigers()Ljava/util/List;

    move-result-object v6

    const/4 v1, 0x0

    if-eqz v6, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v5}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/autonavi/its/protocol/log/util/LogUtil;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Lcom/autonavi/its/protocol/RequestManager;->getAppContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v5}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->getPkgFile()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/autonavi/its/protocol/log/util/LogUtil;->isExternalPathExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v9, "name"

    invoke-virtual {v5}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure$PkgConfig;->getPkgName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v9, "install"

    invoke-virtual {v3, v9, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v9, "active"

    invoke-virtual {v3, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v9, "time"

    invoke-static {}, Lcom/autonavi/its/protocol/log/util/LogUtil;->getTime()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_0

    invoke-direct {p0, v1}, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;->douploadLog(Lorg/json/JSONArray;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lez v8, :cond_3

    invoke-direct {p0, v2}, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;->douploadLog(Lorg/json/JSONArray;)V

    move-object v1, v2

    goto :goto_2

    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-direct {p0, v1}, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;->douploadLog(Lorg/json/JSONArray;)V

    :cond_2
    throw v8

    :catchall_1
    move-exception v8

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v8

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method

.method public getTaskConfiger()Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;->mTaskConfiger:Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;

    return-object v0
.end method

.method public getTriggerStrategy()Lcom/autonavi/its/protocol/log/chaos/ITriggerStrategy;
    .locals 1

    new-instance v0, Lcom/autonavi/its/protocol/log/TriggerStrategy/UpLoadLogTriggerStrategy;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/TriggerStrategy/UpLoadLogTriggerStrategy;-><init>()V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "appinfo"

    return-object v0
.end method
