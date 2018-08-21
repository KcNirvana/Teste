.class public Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;
.super Ljava/lang/Object;
.source "UCLogTask.java"

# interfaces
.implements Lcom/autonavi/its/protocol/log/chaos/ITask;


# static fields
.field private static final UC_DOWNLOAD:Ljava/lang/String; = "its_uc_click_download"

.field private static final UC_INSTALL:Ljava/lang/String; = "its_uc_click_install"

.field private static final UC_LOG:Ljava/lang/String; = "uc_log"


# instance fields
.field private mconfigure:Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateUCDownLoadLog(Z)V
    .locals 4

    :try_start_0
    const-string/jumbo v2, "uc_log"

    invoke-static {v2}, Lcom/autonavi/its/common/PreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string/jumbo v2, "its_uc_click_download"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "uc_log"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public static CreateUCInstallLog(Z)V
    .locals 4

    :try_start_0
    const-string/jumbo v2, "uc_log"

    invoke-static {v2}, Lcom/autonavi/its/common/PreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-string/jumbo v2, "its_uc_click_install"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "uc_log"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private douploadLog(Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lcom/autonavi/its/protocol/log/req/ReqUpLoadUCLogRequest;

    invoke-direct {v0, p1}, Lcom/autonavi/its/protocol/log/req/ReqUpLoadUCLogRequest;-><init>(Lorg/json/JSONObject;)V

    new-instance v1, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask$1;

    invoke-direct {v1, p0}, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask$1;-><init>(Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;)V

    invoke-virtual {v0, v1}, Lcom/autonavi/its/protocol/log/req/ReqUpLoadUCLogRequest;->doRequest(Lcom/autonavi/its/protocol/ReqCallback;)V

    return-void
.end method


# virtual methods
.method public configer(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->setConfigure(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)V

    return-void
.end method

.method public deal()V
    .locals 2

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->getConfigure()Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;

    move-result-object v1

    invoke-virtual {v1}, Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;->isUpload_enable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->getUcUploadLog()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->douploadLog(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public deleteUcLog()V
    .locals 2

    const-string/jumbo v0, "uc_log"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getConfigure()Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->mconfigure:Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;

    return-object v0
.end method

.method public getTriggerStrategy()Lcom/autonavi/its/protocol/log/chaos/ITriggerStrategy;
    .locals 1

    new-instance v0, Lcom/autonavi/its/protocol/log/TriggerStrategy/UCLogTriggerStrategy;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/TriggerStrategy/UCLogTriggerStrategy;-><init>()V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "uc_download_install"

    return-object v0
.end method

.method public getUcUploadLog()Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    const-string/jumbo v1, "uc_log"

    invoke-static {v1}, Lcom/autonavi/its/common/PreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setConfigure(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)V
    .locals 0

    check-cast p1, Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;

    iput-object p1, p0, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->mconfigure:Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;

    return-void
.end method
