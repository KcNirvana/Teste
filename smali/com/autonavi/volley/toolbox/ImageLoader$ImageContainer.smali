.class public Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageContainer"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mCacheKey:Ljava/lang/String;

.field private final mListener:Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;

.field private final mRequestUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/autonavi/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/autonavi/volley/toolbox/ImageLoader;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    iput-object p5, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;

    return-void
.end method

.method static synthetic access$0(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public cancelRequest()V
    .locals 4

    iget-object v2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mListener:Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    invoke-static {v2}, Lcom/autonavi/volley/toolbox/ImageLoader;->access$0(Lcom/autonavi/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p0}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    invoke-static {v2}, Lcom/autonavi/volley/toolbox/ImageLoader;->access$0(Lcom/autonavi/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    invoke-static {v2}, Lcom/autonavi/volley/toolbox/ImageLoader;->access$1(Lcom/autonavi/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->removeContainerAndCancelIfNecessary(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)Z

    invoke-static {v1}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->access$0(Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    invoke-static {v2}, Lcom/autonavi/volley/toolbox/ImageLoader;->access$1(Lcom/autonavi/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mCacheKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method
