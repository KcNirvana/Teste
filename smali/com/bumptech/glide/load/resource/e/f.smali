.class public Lcom/bumptech/glide/load/resource/e/f;
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
        "Lcom/bumptech/glide/load/resource/e/a;",
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

.field private final b:Lcom/bumptech/glide/load/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/g",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/c;Lcom/bumptech/glide/load/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/c;",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/resource/d/e;

    invoke-direct {v0, p2, p1}, Lcom/bumptech/glide/load/resource/d/e;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/a/c;)V

    invoke-direct {p0, p2, v0}, Lcom/bumptech/glide/load/resource/e/f;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/resource/e/f;->b:Lcom/bumptech/glide/load/g;

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/k;II)Lcom/bumptech/glide/load/b/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;II)",
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/resource/e/a;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/e/a;->b()Lcom/bumptech/glide/load/b/k;

    move-result-object v1

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/e/a;->c()Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/g;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v0, v1, p2, p3}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/b/k;II)Lcom/bumptech/glide/load/b/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/bumptech/glide/load/resource/e/a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/e/a;->c()Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/b/k;)V

    new-instance p1, Lcom/bumptech/glide/load/resource/e/b;

    invoke-direct {p1, v1}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Lcom/bumptech/glide/load/resource/e/a;)V

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/e/f;->b:Lcom/bumptech/glide/load/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/e/f;->b:Lcom/bumptech/glide/load/g;

    invoke-interface {v1, v0, p2, p3}, Lcom/bumptech/glide/load/g;->a(Lcom/bumptech/glide/load/b/k;II)Lcom/bumptech/glide/load/b/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v2, Lcom/bumptech/glide/load/resource/e/a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/k;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/e/a;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/e/a;->b()Lcom/bumptech/glide/load/b/k;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/bumptech/glide/load/resource/e/a;-><init>(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/b/k;)V

    new-instance p1, Lcom/bumptech/glide/load/resource/e/b;

    invoke-direct {p1, v2}, Lcom/bumptech/glide/load/resource/e/b;-><init>(Lcom/bumptech/glide/load/resource/e/a;)V

    goto :goto_0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/resource/e/f;->a:Lcom/bumptech/glide/load/g;

    invoke-interface {v0}, Lcom/bumptech/glide/load/g;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
