.class public Lcom/nostra13/universalimageloader/b/b/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/nostra13/universalimageloader/b/b/a;


# instance fields
.field private final bnd:Lcom/nostra13/universalimageloader/b/b/a;

.field private final bne:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/b/b/a;Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bnd:Lcom/nostra13/universalimageloader/b/b/a;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bne:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public bKh()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bnd:Lcom/nostra13/universalimageloader/b/b/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/b/b/a;->bKh()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bKi(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bnd:Lcom/nostra13/universalimageloader/b/b/a;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bnd:Lcom/nostra13/universalimageloader/b/b/a;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/b/b/a;->bKh()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bne:Ljava/util/Comparator;

    invoke-interface {v4, p1, v0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bnd:Lcom/nostra13/universalimageloader/b/b/a;

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/b/b/a;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bnd:Lcom/nostra13/universalimageloader/b/b/a;

    invoke-interface {v0, p1, p2}, Lcom/nostra13/universalimageloader/b/b/a;->bKi(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bnd:Lcom/nostra13/universalimageloader/b/b/a;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/b/b/a;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/b/b/a/a;->bnd:Lcom/nostra13/universalimageloader/b/b/a;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/b/b/a;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
