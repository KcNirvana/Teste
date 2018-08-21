.class public Lcom/autonavi/its/protocol/log/chaos/TaskConfigureFactory;
.super Ljava/lang/Object;
.source "TaskConfigureFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTaskConfigure(Ljava/lang/String;Ljava/lang/String;)Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;
    .locals 1

    const-string/jumbo v0, "appinfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;-><init>()V

    invoke-virtual {v0, p1}, Lcom/autonavi/its/protocol/log/chaos/configure/AppinfoConfigure;->parser(Ljava/lang/String;)Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "downloadconfigure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/configure/DownLoadConfigure;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/configure/DownLoadConfigure;-><init>()V

    invoke-virtual {v0, p1}, Lcom/autonavi/its/protocol/log/chaos/configure/DownLoadConfigure;->parser(Ljava/lang/String;)Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "uc_download_install"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;-><init>()V

    invoke-virtual {v0, p1}, Lcom/autonavi/its/protocol/log/chaos/configure/UCLogConfigure;->parser(Ljava/lang/String;)Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
