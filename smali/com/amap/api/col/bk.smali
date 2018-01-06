.class Lcom/amap/api/col/bk;
.super Lcom/amap/api/col/ic;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/api/col/f;

.field private b:Lcom/amap/api/col/f;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Lcom/amap/api/col/bl;

.field private m:J

.field private n:I


# direct methods
.method public constructor <init>(IILcom/amap/api/col/f;Lcom/amap/api/col/f;ILcom/amap/api/col/bl;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/ic;-><init>(II)V

    iput-object p3, p0, Lcom/amap/api/col/bk;->a:Lcom/amap/api/col/f;

    iput-object p4, p0, Lcom/amap/api/col/bk;->b:Lcom/amap/api/col/f;

    iget-object v0, p0, Lcom/amap/api/col/bk;->a:Lcom/amap/api/col/f;

    invoke-virtual {v0}, Lcom/amap/api/col/f;->e()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/bk;->e:I

    iget-object v0, p0, Lcom/amap/api/col/bk;->a:Lcom/amap/api/col/f;

    invoke-virtual {v0}, Lcom/amap/api/col/f;->f()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/bk;->f:I

    iput-object p6, p0, Lcom/amap/api/col/bk;->l:Lcom/amap/api/col/bl;

    invoke-virtual {p4}, Lcom/amap/api/col/f;->e()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/bk;->a:Lcom/amap/api/col/f;

    invoke-virtual {v2}, Lcom/amap/api/col/f;->e()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/bk;->i:I

    invoke-virtual {p4}, Lcom/amap/api/col/f;->f()D

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/col/bk;->a:Lcom/amap/api/col/f;

    invoke-virtual {v2}, Lcom/amap/api/col/f;->f()D

    move-result-wide v2

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/bk;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/col/bk;->m:J

    iput p1, p0, Lcom/amap/api/col/bk;->n:I

    return-void
.end method

.method private a(III)I
    .locals 2

    const/4 v1, 0x0

    if-le p2, p1, :cond_0

    add-int v0, p1, p3

    if-lt v0, p2, :cond_1

    iput v1, p0, Lcom/amap/api/col/bk;->k:I

    :goto_0
    return p2

    :cond_0
    sub-int v0, p1, p3

    if-gt v0, p2, :cond_1

    iput v1, p0, Lcom/amap/api/col/bk;->k:I

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_0
.end method

.method private b(I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/bk;->m:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    iput-wide v0, p0, Lcom/amap/api/col/bk;->m:J

    int-to-float v0, v2

    int-to-float v1, p1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/bk;->i:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/amap/api/col/bk;->g:I

    iget v1, p0, Lcom/amap/api/col/bk;->j:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/bk;->h:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bk;->l:Lcom/amap/api/col/bl;

    invoke-interface {v0}, Lcom/amap/api/col/bl;->c()V

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/im;->b()V

    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/bk;->l:Lcom/amap/api/col/bl;

    invoke-interface {v0}, Lcom/amap/api/col/bl;->c()V

    invoke-static {}, Lcom/amap/api/col/io;->a()Lcom/amap/api/col/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/io;->b()V

    return-void
.end method

.method protected c()V
    .locals 9

    const/4 v6, 0x0

    iget v0, p0, Lcom/amap/api/col/bk;->n:I

    invoke-direct {p0, v0}, Lcom/amap/api/col/bk;->b(I)V

    iget-object v0, p0, Lcom/amap/api/col/bk;->b:Lcom/amap/api/col/f;

    invoke-virtual {v0}, Lcom/amap/api/col/f;->e()D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/amap/api/col/bk;->b:Lcom/amap/api/col/f;

    invoke-virtual {v1}, Lcom/amap/api/col/f;->f()D

    move-result-wide v2

    double-to-int v7, v2

    invoke-virtual {p0}, Lcom/amap/api/col/bk;->g()Z

    move-result v1

    if-nez v1, :cond_1

    iput v0, p0, Lcom/amap/api/col/bk;->e:I

    iput v7, p0, Lcom/amap/api/col/bk;->f:I

    iget-object v0, p0, Lcom/amap/api/col/bk;->l:Lcom/amap/api/col/bl;

    new-instance v1, Lcom/amap/api/col/f;

    iget v2, p0, Lcom/amap/api/col/bk;->f:I

    int-to-double v2, v2

    iget v4, p0, Lcom/amap/api/col/bk;->e:I

    int-to-double v4, v4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/f;-><init>(DDZ)V

    invoke-interface {v0, v1}, Lcom/amap/api/col/bl;->a(Lcom/amap/api/col/f;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/amap/api/col/bk;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/amap/api/col/bk;->k:I

    iget v1, p0, Lcom/amap/api/col/bk;->e:I

    iget v2, p0, Lcom/amap/api/col/bk;->g:I

    invoke-direct {p0, v1, v0, v2}, Lcom/amap/api/col/bk;->a(III)I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/bk;->e:I

    iget v1, p0, Lcom/amap/api/col/bk;->f:I

    iget v2, p0, Lcom/amap/api/col/bk;->h:I

    invoke-direct {p0, v1, v7, v2}, Lcom/amap/api/col/bk;->a(III)I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/bk;->f:I

    iget-object v8, p0, Lcom/amap/api/col/bk;->l:Lcom/amap/api/col/bl;

    new-instance v1, Lcom/amap/api/col/f;

    iget v2, p0, Lcom/amap/api/col/bk;->f:I

    int-to-double v2, v2

    iget v4, p0, Lcom/amap/api/col/bk;->e:I

    int-to-double v4, v4

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/f;-><init>(DDZ)V

    invoke-interface {v8, v1}, Lcom/amap/api/col/bl;->a(Lcom/amap/api/col/f;)V

    iget v1, p0, Lcom/amap/api/col/bk;->e:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/amap/api/col/bk;->f:I

    if-ne v0, v7, :cond_0

    invoke-virtual {p0, v6}, Lcom/amap/api/col/bk;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/bk;->b(Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/bk;->d()V

    goto :goto_0
.end method

.method protected d()V
    .locals 1

    invoke-static {}, Lcom/amap/api/col/ay;->a()Lcom/amap/api/col/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/ay;->b()V

    return-void
.end method
