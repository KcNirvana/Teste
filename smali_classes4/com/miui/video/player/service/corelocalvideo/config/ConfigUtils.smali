.class public Lcom/miui/video/player/service/corelocalvideo/config/ConfigUtils;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field private static volatile mInstance:Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commitConfigEntity()V
    .locals 1

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigUtils;->mInstance:Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/config/ConfigUtils;->getInstance()Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;

    :cond_0
    return-void
.end method

.method private static getConfigEntity()Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;
    .locals 1

    new-instance v0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;

    invoke-direct {v0}, Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigUtils;->mInstance:Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigUtils;->mInstance:Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/corelocalvideo/config/ConfigUtils;->mInstance:Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/video/player/service/corelocalvideo/config/ConfigUtils;->getConfigEntity()Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;

    move-result-object v1

    sput-object v1, Lcom/miui/video/player/service/corelocalvideo/config/ConfigUtils;->mInstance:Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/video/player/service/corelocalvideo/config/ConfigUtils;->mInstance:Lcom/miui/video/player/service/corelocalvideo/config/ConfigEntity;

    return-object v0
.end method
