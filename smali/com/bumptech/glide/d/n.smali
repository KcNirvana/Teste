.class public Lcom/bumptech/glide/d/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/bumptech/glide/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/g/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/d/n;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/d/n;->c:Z

    iget-object v0, p0, Lcom/bumptech/glide/d/n;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/i/h;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g/c;

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->e()V

    iget-object v2, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Lcom/bumptech/glide/g/c;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/bumptech/glide/d/n;->c:Z

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/bumptech/glide/g/c;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/d/n;->c:Z

    iget-object v0, p0, Lcom/bumptech/glide/d/n;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/i/h;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g/c;

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->f()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->b()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Lcom/bumptech/glide/g/c;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/d/n;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/d/n;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/i/h;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g/c;

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->d()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public d()V
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/d/n;->a:Ljava/util/Set;

    invoke-static {v0}, Lcom/bumptech/glide/i/h;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/g/c;

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->g()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->i()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->e()V

    iget-boolean v2, p0, Lcom/bumptech/glide/d/n;->c:Z

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/bumptech/glide/g/c;->b()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bumptech/glide/d/n;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
