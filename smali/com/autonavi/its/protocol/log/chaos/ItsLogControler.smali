.class public Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;
.super Ljava/lang/Object;
.source "ItsLogControler.java"


# static fields
.field private static volatile instance:Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;
    .locals 2

    sget-object v0, Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;->instance:Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;

    if-nez v0, :cond_1

    const-class v1, Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;->instance:Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;

    invoke-direct {v0}, Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;-><init>()V

    sput-object v0, Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;->instance:Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;->instance:Lcom/autonavi/its/protocol/log/chaos/ItsLogControler;

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
.method public CreateUCDownLoadLog(Z)V
    .locals 0

    invoke-static {p1}, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->CreateUCDownLoadLog(Z)V

    return-void
.end method

.method public CreateUCInstallLog(Z)V
    .locals 0

    invoke-static {p1}, Lcom/autonavi/its/protocol/log/chaos/task/UCLogTask;->CreateUCInstallLog(Z)V

    return-void
.end method
