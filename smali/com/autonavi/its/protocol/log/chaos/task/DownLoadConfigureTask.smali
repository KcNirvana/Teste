.class public Lcom/autonavi/its/protocol/log/chaos/task/DownLoadConfigureTask;
.super Ljava/lang/Object;
.source "DownLoadConfigureTask.java"

# interfaces
.implements Lcom/autonavi/its/protocol/log/chaos/ITask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public configer(Lcom/autonavi/its/protocol/log/chaos/TaskConfigure;)V
    .locals 0

    return-void
.end method

.method public deal()V
    .locals 1

    invoke-static {}, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->getInstance()Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/its/protocol/log/chaos/LogConfigControler;->downloadConfig()V

    return-void
.end method

.method public getTriggerStrategy()Lcom/autonavi/its/protocol/log/chaos/ITriggerStrategy;
    .locals 1

    new-instance v0, Lcom/autonavi/its/protocol/log/TriggerStrategy/DownLoadConfigureTriggerStrategy;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/TriggerStrategy/DownLoadConfigureTriggerStrategy;-><init>()V

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "downloadconfigure"

    return-object v0
.end method
