.class public Lcom/miui/video/base/utils/ActvityUpdateUtils;
.super Ljava/lang/Object;
.source "ActvityUpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/miui/video/base/utils/ActvityUpdateUtils;


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/utils/ActvityUpdateUtils;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method public static getInstance()Lcom/miui/video/base/utils/ActvityUpdateUtils;
    .locals 2

    sget-object v0, Lcom/miui/video/base/utils/ActvityUpdateUtils;->mInstance:Lcom/miui/video/base/utils/ActvityUpdateUtils;

    if-nez v0, :cond_1

    const-class v0, Lcom/miui/video/base/utils/ActvityUpdateUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/video/base/utils/ActvityUpdateUtils;->mInstance:Lcom/miui/video/base/utils/ActvityUpdateUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/miui/video/base/utils/ActvityUpdateUtils;

    invoke-direct {v1}, Lcom/miui/video/base/utils/ActvityUpdateUtils;-><init>()V

    sput-object v1, Lcom/miui/video/base/utils/ActvityUpdateUtils;->mInstance:Lcom/miui/video/base/utils/ActvityUpdateUtils;

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
    sget-object v0, Lcom/miui/video/base/utils/ActvityUpdateUtils;->mInstance:Lcom/miui/video/base/utils/ActvityUpdateUtils;

    return-object v0
.end method


# virtual methods
.method public notifyChange()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/utils/ActvityUpdateUtils;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;

    invoke-interface {v1}, Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;->plusMainActivityDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerUpdateCallback(Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/utils/ActvityUpdateUtils;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/video/base/utils/ActvityUpdateUtils;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterUpdateCallback(Lcom/miui/video/base/utils/ActvityUpdateUtils$IActivityDestroyCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/base/utils/ActvityUpdateUtils;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
