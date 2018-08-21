.class public Lcom/autonavi/its/protocol/log/chaos/TaskFactory;
.super Ljava/lang/Object;
.source "TaskFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTask(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)Lcom/autonavi/its/protocol/log/chaos/ITask;
    .locals 3

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "appinfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/task/AppInfoTask;-><init>()V

    invoke-interface {v0, p0}, Lcom/autonavi/its/protocol/log/chaos/ITask;->configer(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "downloadconfigure"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/task/DownLoadConfigureTask;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/task/DownLoadConfigureTask;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;->getType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uc_download_install"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;-><init>()V

    invoke-interface {v0, p0}, Lcom/autonavi/its/protocol/log/chaos/ITask;->configer(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
