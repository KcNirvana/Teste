.class public Lcom/autonavi/volley/toolbox/ClearCacheRequest;
.super Lcom/autonavi/volley/Request;
.source "ClearCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/autonavi/volley/Request",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/autonavi/volley/Cache;

.field private final mCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/autonavi/volley/Cache;Ljava/lang/Runnable;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/autonavi/volley/Request;-><init>(ILjava/lang/String;Lcom/autonavi/volley/Response$ErrorListener;)V

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ClearCacheRequest;->mCache:Lcom/autonavi/volley/Cache;

    iput-object p2, p0, Lcom/autonavi/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getPriority()Lcom/autonavi/volley/Request$Priority;
    .locals 1

    sget-object v0, Lcom/autonavi/volley/Request$Priority;->IMMEDIATE:Lcom/autonavi/volley/Request$Priority;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 2

    iget-object v1, p0, Lcom/autonavi/volley/toolbox/ClearCacheRequest;->mCache:Lcom/autonavi/volley/Cache;

    invoke-interface {v1}, Lcom/autonavi/volley/Cache;->clear()V

    iget-object v1, p0, Lcom/autonavi/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/autonavi/volley/toolbox/ClearCacheRequest;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected parseNetworkResponse(Lcom/autonavi/volley/NetworkResponse;)Lcom/autonavi/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/volley/NetworkResponse;",
            ")",
            "Lcom/autonavi/volley/Response",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
