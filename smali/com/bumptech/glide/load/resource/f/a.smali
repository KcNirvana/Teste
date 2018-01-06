.class public Lcom/bumptech/glide/load/resource/f/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/resource/f/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/f/d",
        "<",
        "Lcom/bumptech/glide/load/resource/e/a;",
        "Lcom/bumptech/glide/load/resource/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/f/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/f/d",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/resource/f/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/resource/f/d",
            "<",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/load/resource/bitmap/m;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/f/a;->a:Lcom/bumptech/glide/load/resource/f/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;)",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/b/b;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/e/a;->b()Lcom/bumptech/glide/load/b/k;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/f/a;->a:Lcom/bumptech/glide/load/resource/f/d;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/resource/f/d;->a(Lcom/bumptech/glide/load/b/k;)Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/e/a;->c()Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
