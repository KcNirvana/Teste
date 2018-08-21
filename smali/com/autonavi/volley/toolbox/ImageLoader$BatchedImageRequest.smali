.class Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/autonavi/volley/VolleyError;

.field private final mRequest:Lcom/autonavi/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/autonavi/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/autonavi/volley/toolbox/ImageLoader;Lcom/autonavi/volley/Request;Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/autonavi/volley/Request",
            "<*>;",
            "Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    iput-object p2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/autonavi/volley/Request;

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic access$0(Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2(Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method public addContainer(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getError()Lcom/autonavi/volley/VolleyError;
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/autonavi/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/autonavi/volley/Request;

    invoke-virtual {v0}, Lcom/autonavi/volley/Request;->cancel()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setError(Lcom/autonavi/volley/VolleyError;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/autonavi/volley/VolleyError;

    return-void
.end method
