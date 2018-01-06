.class public Lcom/bumptech/glide/h;
.super Lcom/bumptech/glide/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bumptech/glide/e",
        "<TModelType;",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/d/b;",
        "Lcom/bumptech/glide/load/resource/d/b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/f/f",
            "<TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;",
            "Ljava/lang/Class",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;",
            "Lcom/bumptech/glide/e",
            "<TModelType;***>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/e;-><init>(Lcom/bumptech/glide/f/f;Ljava/lang/Class;Lcom/bumptech/glide/e;)V

    return-void
.end method

.method private c([Lcom/bumptech/glide/load/g;)[Lcom/bumptech/glide/load/resource/d/e;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)[",
            "Lcom/bumptech/glide/load/resource/d/e;"
        }
    .end annotation

    array-length v0, p1

    new-array v1, v0, [Lcom/bumptech/glide/load/resource/d/e;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    new-instance v2, Lcom/bumptech/glide/load/resource/d/e;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/j;

    invoke-virtual {v4}, Lcom/bumptech/glide/j;->a()Lcom/bumptech/glide/load/b/a/c;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/bumptech/glide/load/resource/d/e;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/a/c;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/j;

    invoke-virtual {v2}, Lcom/bumptech/glide/j;->c()Lcom/bumptech/glide/load/resource/bitmap/e;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(I)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(II)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/e;->b(II)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/f",
            "<-TModelType;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/b;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b",
            "<",
            "Ljava/io/InputStream;",
            ">;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->d(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public a(Z)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b(Z)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/g",
            "<",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->b([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public varargs a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/bumptech/glide/load/resource/bitmap/d;",
            ")",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->c([Lcom/bumptech/glide/load/g;)[Lcom/bumptech/glide/load/resource/d/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(I)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(I)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(II)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/h;->a(II)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/g/f;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/b/b;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/b;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/c;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/Object;)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(Ljava/lang/Object;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Z)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(Z)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a([Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/j;

    invoke-virtual {v2}, Lcom/bumptech/glide/j;->d()Lcom/bumptech/glide/load/resource/bitmap/l;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->a([Lcom/bumptech/glide/load/resource/bitmap/d;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/d/b;",
            ">;)",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/bumptech/glide/e;->c(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public synthetic c(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/g/a/a;

    invoke-direct {v0}, Lcom/bumptech/glide/g/a/a;-><init>()V

    invoke-super {p0, v0}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/a/d;)Lcom/bumptech/glide/e;

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/h;->g()Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/e;)Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method d()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/h;->b()Lcom/bumptech/glide/h;

    return-void
.end method

.method e()V
    .locals 0

    invoke-virtual {p0}, Lcom/bumptech/glide/h;->a()Lcom/bumptech/glide/h;

    return-void
.end method

.method public synthetic f()Lcom/bumptech/glide/e;
    .locals 1

    invoke-virtual {p0}, Lcom/bumptech/glide/h;->g()Lcom/bumptech/glide/h;

    move-result-object v0

    return-object v0
.end method

.method public g()Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/h",
            "<TModelType;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/bumptech/glide/e;->f()Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/h;

    return-object v0
.end method
