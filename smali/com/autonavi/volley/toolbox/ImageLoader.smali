.class public Lcom/autonavi/volley/toolbox/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;,
        Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;,
        Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;,
        Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;
    }
.end annotation


# instance fields
.field private mBatchResponseDelayMs:I

.field private final mBatchedResponses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mCache:Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mInFlightRequests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestQueue:Lcom/autonavi/volley/RequestQueue;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/autonavi/volley/RequestQueue;Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/autonavi/volley/RequestQueue;

    iput-object p2, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mCache:Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;

    return-void
.end method

.method static synthetic access$0(Lcom/autonavi/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/autonavi/volley/toolbox/ImageLoader;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2(Lcom/autonavi/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private batchResponse(Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;)V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mBatchedResponses:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/volley/toolbox/ImageLoader$4;

    invoke-direct {v0, p0}, Lcom/autonavi/volley/toolbox/ImageLoader$4;-><init>(Lcom/autonavi/volley/toolbox/ImageLoader;)V

    iput-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private static getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImageListener(Landroid/widget/ImageView;II)Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    new-instance v0, Lcom/autonavi/volley/toolbox/ImageLoader$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/autonavi/volley/toolbox/ImageLoader$1;-><init>(ILandroid/widget/ImageView;I)V

    return-object v0
.end method

.method private throwIfNotOnMainThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;)Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/autonavi/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;II)Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;II)Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;
    .locals 6

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/volley/toolbox/ImageLoader;->get(Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;IILandroid/widget/ImageView$ScaleType;)Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;
    .locals 20

    invoke-direct/range {p0 .. p0}, Lcom/autonavi/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/volley/toolbox/ImageLoader;->mCache:Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v5, v11}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v4, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/autonavi/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;)V

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;Z)V

    move-object v7, v4

    :goto_0
    return-object v7

    :cond_0
    new-instance v7, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;

    const/4 v9, 0x0

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;-><init>(Lcom/autonavi/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;)V

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v7, v5}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v19, :cond_1

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->addContainer(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)V

    goto :goto_0

    :cond_1
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lcom/autonavi/volley/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/autonavi/volley/Request;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/volley/toolbox/ImageLoader;->mRequestQueue:Lcom/autonavi/volley/RequestQueue;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/autonavi/volley/RequestQueue;->add(Lcom/autonavi/volley/Request;)Lcom/autonavi/volley/Request;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/autonavi/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    new-instance v8, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v8, v0, v1, v7}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;-><init>(Lcom/autonavi/volley/toolbox/ImageLoader;Lcom/autonavi/volley/Request;Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)V

    invoke-virtual {v5, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isCached(Ljava/lang/String;II)Z
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/autonavi/volley/toolbox/ImageLoader;->isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z

    move-result v0

    return v0
.end method

.method public isCached(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Z
    .locals 2

    invoke-direct {p0}, Lcom/autonavi/volley/toolbox/ImageLoader;->throwIfNotOnMainThread()V

    invoke-static {p1, p2, p3, p4}, Lcom/autonavi/volley/toolbox/ImageLoader;->getCacheKey(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mCache:Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, v0}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected makeImageRequest(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/autonavi/volley/Request;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/autonavi/volley/Request",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/autonavi/volley/toolbox/ImageRequest;

    new-instance v2, Lcom/autonavi/volley/toolbox/ImageLoader$2;

    invoke-direct {v2, p0, p5}, Lcom/autonavi/volley/toolbox/ImageLoader$2;-><init>(Lcom/autonavi/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/autonavi/volley/toolbox/ImageLoader$3;

    invoke-direct {v7, p0, p5}, Lcom/autonavi/volley/toolbox/ImageLoader$3;-><init>(Lcom/autonavi/volley/toolbox/ImageLoader;Ljava/lang/String;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/autonavi/volley/toolbox/ImageRequest;-><init>(Ljava/lang/String;Lcom/autonavi/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/autonavi/volley/Response$ErrorListener;)V

    return-object v0
.end method

.method protected onGetImageError(Ljava/lang/String;Lcom/autonavi/volley/VolleyError;)V
    .locals 2

    iget-object v1, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->setError(Lcom/autonavi/volley/VolleyError;)V

    invoke-direct {p0, p1, v0}, Lcom/autonavi/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    :cond_0
    return-void
.end method

.method protected onGetImageSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v1, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mCache:Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;

    invoke-interface {v1, p1, p2}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mInFlightRequests:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->access$1(Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, v0}, Lcom/autonavi/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;)V

    :cond_0
    return-void
.end method

.method public setBatchedResponseDelay(I)V
    .locals 0

    iput p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader;->mBatchResponseDelayMs:I

    return-void
.end method
