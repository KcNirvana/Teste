.class Lcom/autonavi/volley/toolbox/ImageLoader$4;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/volley/toolbox/ImageLoader;->batchResponse(Ljava/lang/String;Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/volley/toolbox/ImageLoader;


# direct methods
.method constructor <init>(Lcom/autonavi/volley/toolbox/ImageLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/volley/toolbox/ImageLoader$4;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$4;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    invoke-static {v2}, Lcom/autonavi/volley/toolbox/ImageLoader;->access$1(Lcom/autonavi/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$4;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    invoke-static {v2}, Lcom/autonavi/volley/toolbox/ImageLoader;->access$1(Lcom/autonavi/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/autonavi/volley/toolbox/ImageLoader$4;->this$0:Lcom/autonavi/volley/toolbox/ImageLoader;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/autonavi/volley/toolbox/ImageLoader;->access$2(Lcom/autonavi/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;

    invoke-static {v0}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->access$0(Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;

    invoke-static {v1}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->access$0(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/autonavi/volley/VolleyError;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-static {v0}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->access$2(Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->access$1(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->access$0(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;->access$0(Lcom/autonavi/volley/toolbox/ImageLoader$ImageContainer;)Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    invoke-virtual {v0}, Lcom/autonavi/volley/toolbox/ImageLoader$BatchedImageRequest;->getError()Lcom/autonavi/volley/VolleyError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/autonavi/volley/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/autonavi/volley/VolleyError;)V

    goto :goto_0
.end method
