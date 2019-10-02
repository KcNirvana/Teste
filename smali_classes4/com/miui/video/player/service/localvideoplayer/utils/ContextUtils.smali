.class public Lcom/miui/video/player/service/localvideoplayer/utils/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static mInstance:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/content/Context;
    .locals 2

    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/utils/ContextUtils;->mInstance:Landroid/content/Context;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/player/service/localvideoplayer/utils/ContextUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/utils/ContextUtils;->mInstance:Landroid/content/Context;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/miui/video/framework/FrameworkApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/miui/video/player/service/localvideoplayer/utils/ContextUtils;->mInstance:Landroid/content/Context;

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
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/utils/ContextUtils;->mInstance:Landroid/content/Context;

    return-object v0
.end method
