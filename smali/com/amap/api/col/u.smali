.class Lcom/amap/api/col/u;
.super Lcom/amap/api/col/v;
.source "SourceFile"


# instance fields
.field a:Lcom/amap/api/col/ah;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:J

.field public j:Lcom/amap/api/col/bo;

.field k:Lcom/amap/api/maps2d/a/o;

.field public l:I

.field public m:Ljava/lang/String;

.field n:Lcom/amap/api/col/ap;

.field o:Lcom/amap/api/col/c;

.field p:Lcom/amap/api/col/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/col/az",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/lang/String;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/col/ah;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/amap/api/col/v;-><init>()V

    const-string v0, "LayerPropertys"

    iput-object v0, p0, Lcom/amap/api/col/u;->r:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    const/16 v0, 0x12

    iput v0, p0, Lcom/amap/api/col/u;->c:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/amap/api/col/u;->d:I

    iput-boolean v3, p0, Lcom/amap/api/col/u;->e:Z

    iput-boolean v1, p0, Lcom/amap/api/col/u;->s:Z

    iput-boolean v1, p0, Lcom/amap/api/col/u;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/col/u;->g:Z

    iput-boolean v3, p0, Lcom/amap/api/col/u;->h:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/u;->i:J

    iput-object v2, p0, Lcom/amap/api/col/u;->j:Lcom/amap/api/col/bo;

    iput-object v2, p0, Lcom/amap/api/col/u;->k:Lcom/amap/api/maps2d/a/o;

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/col/u;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/u;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    iput-object v2, p0, Lcom/amap/api/col/u;->o:Lcom/amap/api/col/c;

    iput-object v2, p0, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    iput-object p1, p0, Lcom/amap/api/col/u;->a:Lcom/amap/api/col/ah;

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/bd;

    if-eqz v0, :cond_2

    iget v2, v0, Lcom/amap/api/col/bd;->h:I

    if-gez v2, :cond_3

    iget-boolean v0, p0, Lcom/amap/api/col/u;->e:Z

    if-nez v0, :cond_2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    iget v3, v0, Lcom/amap/api/col/bd;->h:I

    invoke-virtual {v2, v3}, Lcom/amap/api/col/ap;->a(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/col/u;->a:Lcom/amap/api/col/ah;

    iget v4, v0, Lcom/amap/api/col/bd;->b:I

    iget v0, v0, Lcom/amap/api/col/bd;->c:I

    invoke-virtual {v3, v4, v0}, Lcom/amap/api/col/ah;->a(II)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/amap/api/col/u;->a:Lcom/amap/api/col/ah;

    iget v4, v4, Lcom/amap/api/col/ah;->a:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/amap/api/col/u;->a:Lcom/amap/api/col/ah;

    iget v5, v5, Lcom/amap/api/col/ah;->a:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    new-instance v5, Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v5, v6, v0, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/api/col/u;->r:Ljava/lang/String;

    const-string v2, "drawLayer"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/amap/api/col/u;->s:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    invoke-virtual {v0}, Lcom/amap/api/col/ap;->c()V

    iget-object v0, p0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->c()V

    goto :goto_0
.end method

.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/u;->s:Z

    return v0
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    invoke-virtual {v0}, Lcom/amap/api/col/bg;->i()V

    iget-object v0, p0, Lcom/amap/api/col/u;->o:Lcom/amap/api/col/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/col/c;->a(Lcom/amap/api/col/ap;)V

    iget-object v0, p0, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    invoke-virtual {v0}, Lcom/amap/api/col/ap;->c()V

    iget-object v0, p0, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->clear()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/amap/api/col/u;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/amap/api/col/u;

    iget-object v0, p0, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/u;->l:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    return-object v0
.end method
