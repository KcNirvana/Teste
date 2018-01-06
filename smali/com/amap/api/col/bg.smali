.class Lcom/amap/api/col/bg;
.super Lcom/amap/api/col/ie;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/col/bp;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/col/ie",
        "<",
        "Lcom/amap/api/col/bd;",
        "Lcom/amap/api/col/bd;",
        ">;",
        "Lcom/amap/api/col/bp;"
    }
.end annotation


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/amap/api/col/u;

.field private f:Lcom/amap/api/col/am;

.field private g:Lcom/amap/api/col/t;


# direct methods
.method public constructor <init>(Lcom/amap/api/col/am;Landroid/content/Context;Lcom/amap/api/col/u;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/ie;-><init>(Lcom/amap/api/col/am;Landroid/content/Context;)V

    new-instance v0, Lcom/amap/api/col/t;

    invoke-direct {v0}, Lcom/amap/api/col/t;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/col/t;

    iput-object p3, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    iput-object p2, p0, Lcom/amap/api/col/bg;->d:Landroid/content/Context;

    new-instance v0, Lcom/amap/api/col/bc;

    invoke-direct {v0}, Lcom/amap/api/col/bc;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/bg;->c:Lcom/amap/api/col/ba;

    iget-object v0, p1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/am$d;->a(Lcom/amap/api/col/bp;)V

    iput-object p1, p0, Lcom/amap/api/col/bg;->f:Lcom/amap/api/col/am;

    invoke-virtual {p0}, Lcom/amap/api/col/bg;->h()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Lcom/amap/api/col/u;FZ)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;",
            "Lcom/amap/api/col/u;",
            "FZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/amap/api/col/u;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    if-eqz v2, :cond_0

    iget-object v2, p2, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    invoke-virtual {v2}, Lcom/amap/api/col/az;->clear()V

    iget v2, p2, Lcom/amap/api/col/u;->c:I

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-gtz v2, :cond_0

    iget v2, p2, Lcom/amap/api/col/u;->d:I

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_5

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v4, p2, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    invoke-virtual {v0}, Lcom/amap/api/col/bd;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/col/ap;->a(Ljava/lang/String;)I

    move-result v4

    new-instance v5, Lcom/amap/api/col/bd;

    iget v6, v0, Lcom/amap/api/col/bd;->b:I

    iget v7, v0, Lcom/amap/api/col/bd;->c:I

    iget v8, v0, Lcom/amap/api/col/bd;->d:I

    iget v9, p2, Lcom/amap/api/col/u;->l:I

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amap/api/col/bd;-><init>(IIII)V

    iput v4, v5, Lcom/amap/api/col/bd;->h:I

    iget-object v0, v0, Lcom/amap/api/col/bd;->g:Landroid/graphics/PointF;

    iput-object v0, v5, Lcom/amap/api/col/bd;->g:Landroid/graphics/PointF;

    iget-object v0, p2, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    invoke-virtual {v0, v5}, Lcom/amap/api/col/az;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v5}, Lcom/amap/api/col/bg;->a(Lcom/amap/api/col/bd;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p4, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/col/t;

    invoke-virtual {v0, v5}, Lcom/amap/api/col/t;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/amap/api/col/u;->f:Z

    if-nez v0, :cond_4

    const/4 v0, -0x1

    iput v0, v5, Lcom/amap/api/col/bd;->a:I

    :cond_4
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Ljava/util/ArrayList;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/bg;->c:Lcom/amap/api/col/ba;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->c:Lcom/amap/api/col/ba;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/col/ba;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method private a(Lcom/amap/api/col/bd;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/amap/api/col/bd;->h:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/col/t;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/col/t;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    invoke-virtual {v3, v0}, Lcom/amap/api/col/t;->a(Lcom/amap/api/col/bd;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private j()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v1, v1, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v1}, Lcom/amap/api/col/az;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    invoke-virtual {v0}, Lcom/amap/api/col/u;->a()Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/b;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/col/bg;->a(Ljava/util/List;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    iget-object v0, v0, Lcom/amap/api/col/u;->j:Lcom/amap/api/col/bo;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    iget-object v0, v0, Lcom/amap/api/col/u;->k:Lcom/amap/api/maps2d/a/o;

    if-eqz v0, :cond_5

    :cond_2
    new-instance v2, Lcom/amap/api/col/bi;

    iget-object v0, p0, Lcom/amap/api/col/bg;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    iget-object v3, v3, Lcom/amap/api/col/u;->k:Lcom/amap/api/maps2d/a/o;

    invoke-direct {v2, v0, p1, v3}, Lcom/amap/api/col/bi;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/amap/api/maps2d/a/o;)V

    iget-object v0, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    invoke-virtual {v2, v0}, Lcom/amap/api/col/bi;->a(Lcom/amap/api/col/u;)V

    invoke-virtual {v2}, Lcom/amap/api/col/bi;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lcom/amap/api/col/bi;->a(Lcom/amap/api/col/u;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/amap/api/col/bg;->c(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    if-nez v1, :cond_4

    :cond_3
    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v1}, Lcom/amap/api/col/am$a;->b()V

    move-object v1, v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public a()V
    .locals 1

    invoke-super {p0}, Lcom/amap/api/col/ie;->a()V

    iget-object v0, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/col/t;

    invoke-virtual {v0}, Lcom/amap/api/col/t;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/bg;->f:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->f:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bg;->f:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, p0}, Lcom/amap/api/col/am$d;->b(Lcom/amap/api/col/bp;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/amap/api/col/bg;->g:Lcom/amap/api/col/t;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    invoke-virtual {v3, v0}, Lcom/amap/api/col/t;->b(Lcom/amap/api/col/bd;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method public a(ZZ)V
    .locals 5

    invoke-direct {p0}, Lcom/amap/api/col/bg;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v1, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v1, v1, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v2, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v2}, Lcom/amap/api/col/ah;->b()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v3}, Lcom/amap/api/col/am$d;->c()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v4}, Lcom/amap/api/col/am$d;->d()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;III)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v3}, Lcom/amap/api/col/am$d;->e()F

    move-result v3

    invoke-direct {p0, v0, v1, v3, p2}, Lcom/amap/api/col/bg;->a(Ljava/util/ArrayList;Lcom/amap/api/col/u;FZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v1, v2}, Lcom/amap/api/col/bg;->a(Ljava/util/ArrayList;Z)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->invalidate()V

    goto :goto_0
.end method

.method protected b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;"
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v6, 0x0

    if-nez p1, :cond_1

    move-object v4, v6

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    move-object v4, v6

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v2, v7

    move-object v4, v6

    :goto_1
    if-ge v1, v5, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    if-nez v0, :cond_3

    move v0, v1

    move v3, v5

    move v1, v2

    move-object v2, v4

    :goto_2
    add-int/lit8 v0, v0, 0x1

    move-object v4, v2

    move v5, v3

    move v2, v1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v3, v3, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-nez v3, :cond_5

    :cond_4
    move-object v4, v6

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v3, v3, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v3}, Lcom/amap/api/col/az;->size()I

    iget-object v3, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    iget-boolean v3, v3, Lcom/amap/api/col/u;->f:Z

    if-nez v3, :cond_6

    move v0, v1

    move v3, v5

    move v1, v2

    move-object v2, v4

    goto :goto_2

    :cond_6
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    iget-object v3, v3, Lcom/amap/api/col/u;->o:Lcom/amap/api/col/c;

    invoke-virtual {v3, v0}, Lcom/amap/api/col/c;->a(Lcom/amap/api/col/bd;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :goto_3
    if-ltz v3, :cond_a

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v2, v1, -0x1

    iget-object v1, p0, Lcom/amap/api/col/bg;->e:Lcom/amap/api/col/u;

    iget-object v8, v1, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    if-nez v8, :cond_7

    move v0, v2

    move v1, v3

    move-object v2, v4

    move v3, v5

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move v3, v2

    goto :goto_3

    :cond_7
    monitor-enter v8

    :try_start_1
    invoke-virtual {v8}, Lcom/amap/api/col/az;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/bd;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Lcom/amap/api/col/bd;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    iput v3, v1, Lcom/amap/api/col/bd;->h:I

    iget-object v0, p0, Lcom/amap/api/col/bg;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v0}, Lcom/amap/api/col/am$a;->b()V

    :cond_9
    monitor-exit v8

    move v0, v2

    move v1, v3

    move-object v2, v4

    move v3, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    if-nez v4, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    new-instance v4, Lcom/amap/api/col/bd;

    invoke-direct {v4, v0}, Lcom/amap/api/col/bd;-><init>(Lcom/amap/api/col/bd;)V

    iput v7, v4, Lcom/amap/api/col/bd;->a:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v1, v3

    move v3, v5

    goto/16 :goto_2

    :cond_b
    move-object v2, v4

    goto :goto_4
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/amap/api/col/bg;->a(ZZ)V

    return-void
.end method

.method protected f()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected g()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
