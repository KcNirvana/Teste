.class public Lcom/bumptech/glide/load/resource/f/b;
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
        "Lcom/bumptech/glide/load/resource/d/b;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)",
            "Lcom/bumptech/glide/load/b/k",
            "<[B>;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/b;

    new-instance v1, Lcom/bumptech/glide/load/resource/a/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/d/b;->d()[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/resource/a/a;-><init>([B)V

    return-object v1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "GifDrawableBytesTranscoder.com.bumptech.glide.load.resource.transcode"

    return-object v0
.end method
