.class public Lcom/bumptech/glide/load/resource/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/b/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only contain either a bitmap resource or a gif resource, not both"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must contain either a bitmap resource or a gif resource"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/bumptech/glide/load/resource/e/a;->b:Lcom/bumptech/glide/load/b/k;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/e/a;->a:Lcom/bumptech/glide/load/b/k;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/a;->b:Lcom/bumptech/glide/load/b/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/a;->b:Lcom/bumptech/glide/load/b/k;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/k;->c()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/a;->a:Lcom/bumptech/glide/load/b/k;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/k;->c()I

    move-result v0

    goto :goto_0
.end method

.method public b()Lcom/bumptech/glide/load/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/a;->b:Lcom/bumptech/glide/load/b/k;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/b/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/a;->a:Lcom/bumptech/glide/load/b/k;

    return-object v0
.end method
