.class public Lcom/bumptech/glide/load/resource/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/g",
        "<",
        "Lcom/bumptech/glide/load/resource/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/bumptech/glide/load/b/a/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/b/a/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/d/e;->b:Lcom/bumptech/glide/load/b/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/k;II)Lcom/bumptech/glide/load/b/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;II)",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/d/b;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/resource/d/b;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/resource/d/b;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v1, Lcom/bumptech/glide/load/resource/bitmap/c;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/e;->b:Lcom/bumptech/glide/load/b/a/c;

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/resource/bitmap/c;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/c;)V

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v3, v1, p2, p3}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/b/k;II)Lcom/bumptech/glide/load/b/k;

    move-result-object v1

    invoke-interface {v1}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p1, Lcom/bumptech/glide/load/resource/d/d;

    new-instance v2, Lcom/bumptech/glide/load/resource/d/b;

    iget-object v3, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/g;

    invoke-direct {v2, v0, v1, v3}, Lcom/bumptech/glide/load/resource/d/b;-><init>(Lcom/bumptech/glide/load/resource/d/b;Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/g;)V

    invoke-direct {p1, v2}, Lcom/bumptech/glide/load/resource/d/d;-><init>(Lcom/bumptech/glide/load/resource/d/b;)V

    :cond_0
    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/d/e;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v0}, Lcom/bumptech/glide/load/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
