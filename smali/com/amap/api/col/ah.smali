.class Lcom/amap/api/col/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/ah$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field c:F

.field public d:D

.field e:I

.field f:D

.field g:D

.field public h:I

.field public i:I

.field public j:F

.field public k:D

.field public l:Lcom/amap/api/col/f;

.field public m:Lcom/amap/api/col/f;

.field public n:Landroid/graphics/Point;

.field public o:Lcom/amap/api/col/ah$a;

.field p:Lcom/amap/api/col/am$d;

.field private q:D

.field private r:D

.field private s:D


# direct methods
.method public constructor <init>(Lcom/amap/api/col/am$d;)V
    .locals 3

    const/16 v0, 0x100

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/col/ah;->a:I

    iput v0, p0, Lcom/amap/api/col/ah;->b:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/ah;->c:F

    const-wide v0, 0x405d196b11c6d1e1L    # 116.39716

    iput-wide v0, p0, Lcom/amap/api/col/ah;->q:D

    const-wide v0, 0x4043f556191148feL    # 39.91669

    iput-wide v0, p0, Lcom/amap/api/col/ah;->r:D

    const-wide v0, 0x41031bf8456d5cfbL    # 156543.0339

    iput-wide v0, p0, Lcom/amap/api/col/ah;->d:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/ah;->e:I

    const-wide v0, -0x3e8ce407ba8f5c29L    # -2.003750834E7

    iput-wide v0, p0, Lcom/amap/api/col/ah;->f:D

    const-wide v0, 0x41731bf84570a3d7L    # 2.003750834E7

    iput-wide v0, p0, Lcom/amap/api/col/ah;->g:D

    sget v0, Lcom/amap/api/col/it;->e:I

    iput v0, p0, Lcom/amap/api/col/ah;->h:I

    sget v0, Lcom/amap/api/col/it;->d:I

    iput v0, p0, Lcom/amap/api/col/ah;->i:I

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/amap/api/col/ah;->j:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/ah;->k:D

    iput-object v2, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iput-object v2, p0, Lcom/amap/api/col/ah;->m:Lcom/amap/api/col/f;

    iput-object v2, p0, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    iput-object v2, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iput-object v2, p0, Lcom/amap/api/col/ah;->p:Lcom/amap/api/col/am$d;

    const-wide v0, 0x3f91df46a2529d37L    # 0.01745329251994329

    iput-wide v0, p0, Lcom/amap/api/col/ah;->s:D

    iput-object p1, p0, Lcom/amap/api/col/ah;->p:Lcom/amap/api/col/am$d;

    return-void
.end method

.method private b(Landroid/graphics/PointF;Landroid/graphics/PointF;)[D
    .locals 8

    iget-wide v4, p0, Lcom/amap/api/col/ah;->k:D

    iget-object v2, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v3, p0, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/col/ah;->b(Landroid/graphics/PointF;Lcom/amap/api/col/f;Landroid/graphics/Point;DLcom/amap/api/col/ah$a;)Lcom/amap/api/col/f;

    move-result-object v7

    iget-object v2, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v3, p0, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/col/ah;->b(Landroid/graphics/PointF;Lcom/amap/api/col/f;Landroid/graphics/Point;DLcom/amap/api/col/ah$a;)Lcom/amap/api/col/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/f;->e()D

    move-result-wide v2

    invoke-virtual {v7}, Lcom/amap/api/col/f;->e()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {v0}, Lcom/amap/api/col/f;->f()D

    move-result-wide v0

    invoke-virtual {v7}, Lcom/amap/api/col/f;->f()D

    move-result-wide v4

    sub-double v4, v0, v4

    iget-object v0, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    invoke-virtual {v0}, Lcom/amap/api/col/f;->e()D

    move-result-wide v0

    add-double/2addr v0, v2

    iget-object v2, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    invoke-virtual {v2}, Lcom/amap/api/col/f;->f()D

    move-result-wide v2

    add-double/2addr v2, v4

    :goto_0
    iget-object v4, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v4, v4, Lcom/amap/api/col/ah$a;->a:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v4, v4, Lcom/amap/api/col/ah$a;->b:F

    iget-object v5, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v5, v5, Lcom/amap/api/col/ah$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v0, v4

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v4, v4, Lcom/amap/api/col/ah$a;->b:F

    float-to-double v4, v4

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v4, v4, Lcom/amap/api/col/ah$a;->b:F

    iget-object v5, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v5, v5, Lcom/amap/api/col/ah$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v0, v4

    goto :goto_1

    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v4, v4, Lcom/amap/api/col/ah$a;->d:F

    float-to-double v4, v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v4, v4, Lcom/amap/api/col/ah$a;->c:F

    iget-object v5, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v5, v5, Lcom/amap/api/col/ah$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v2, v4

    goto :goto_2

    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v4, v4, Lcom/amap/api/col/ah$a;->c:F

    float-to-double v4, v4

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v4, v4, Lcom/amap/api/col/ah$a;->c:F

    iget-object v5, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget v5, v5, Lcom/amap/api/col/ah$a;->d:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    sub-double/2addr v2, v4

    goto :goto_3

    :cond_3
    const/4 v4, 0x2

    new-array v4, v4, [D

    const/4 v5, 0x0

    aput-wide v0, v4, v5

    const/4 v0, 0x1

    aput-wide v2, v4, v0

    return-object v4
.end method


# virtual methods
.method public a(Lcom/amap/api/col/f;Lcom/amap/api/col/f;)F
    .locals 21

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/f;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/col/iu;->a(J)D

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/f;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amap/api/col/iu;->a(J)D

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/col/f;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/amap/api/col/iu;->a(J)D

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/amap/api/col/f;->d()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/amap/api/col/iu;->a(J)D

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/amap/api/col/ah;->s:D

    mul-double/2addr v2, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/amap/api/col/ah;->s:D

    mul-double/2addr v4, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/amap/api/col/ah;->s:D

    mul-double/2addr v6, v10

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/amap/api/col/ah;->s:D

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v19, v0

    const/16 v20, 0x0

    mul-double/2addr v2, v4

    aput-wide v2, v18, v20

    const/4 v2, 0x1

    mul-double/2addr v4, v10

    aput-wide v4, v18, v2

    const/4 v2, 0x2

    aput-wide v12, v18, v2

    const/4 v2, 0x0

    mul-double v4, v8, v6

    aput-wide v4, v19, v2

    const/4 v2, 0x1

    mul-double v4, v8, v14

    aput-wide v4, v19, v2

    const/4 v2, 0x2

    aput-wide v16, v19, v2

    const/4 v2, 0x0

    aget-wide v2, v18, v2

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    sub-double/2addr v2, v4

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    const/4 v6, 0x0

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v4, v18, v4

    const/4 v6, 0x1

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v18, v6

    const/4 v8, 0x1

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x2

    aget-wide v4, v18, v4

    const/4 v6, 0x2

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v6, v18, v6

    const/4 v8, 0x2

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double/2addr v2, v4

    double-to-float v2, v2

    goto/16 :goto_0
.end method

.method public a(II)Landroid/graphics/PointF;
    .locals 8

    const-wide/16 v2, 0x0

    iget v0, p0, Lcom/amap/api/col/ah;->a:I

    mul-int/2addr v0, p1

    int-to-double v0, v0

    iget-wide v4, p0, Lcom/amap/api/col/ah;->k:D

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lcom/amap/api/col/ah;->f:D

    add-double/2addr v4, v0

    iget v0, p0, Lcom/amap/api/col/ah;->e:I

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/amap/api/col/ah;->g:D

    iget v2, p0, Lcom/amap/api/col/ah;->a:I

    mul-int/2addr v2, p2

    int-to-double v2, v2

    iget-wide v6, p0, Lcom/amap/api/col/ah;->k:D

    mul-double/2addr v2, v6

    sub-double v2, v0, v2

    :cond_0
    :goto_0
    new-instance v1, Lcom/amap/api/col/f;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/f;-><init>(DDZ)V

    iget-object v2, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v3, p0, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    iget-wide v4, p0, Lcom/amap/api/col/ah;->k:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;Lcom/amap/api/col/f;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0

    :cond_1
    iget v0, p0, Lcom/amap/api/col/ah;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lcom/amap/api/col/ah;->a:I

    mul-int/2addr v0, v1

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/amap/api/col/ah;->k:D

    mul-double/2addr v2, v0

    goto :goto_0
.end method

.method a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sub-int v1, p1, p3

    iget v2, p0, Lcom/amap/api/col/ah;->a:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/amap/api/col/ah;->e:I

    if-nez v1, :cond_3

    sub-int v1, p2, p4

    iget v2, p0, Lcom/amap/api/col/ah;->a:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p5, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    :cond_0
    :goto_0
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/amap/api/col/ah;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, v1, v4

    if-lez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->x:F

    int-to-float v2, p6

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/amap/api/col/ah;->a:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, v1, v4

    if-lez v1, :cond_1

    iget v1, v0, Landroid/graphics/PointF;->y:F

    int-to-float v2, p7

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0

    :cond_3
    iget v1, p0, Lcom/amap/api/col/ah;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p5, Landroid/graphics/PointF;->y:F

    sub-int v2, p2, p4

    iget v3, p0, Lcom/amap/api/col/ah;->a:I

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method a(Lcom/amap/api/col/f;Lcom/amap/api/col/f;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 10

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/col/f;->e()D

    move-result-wide v2

    invoke-virtual {p2}, Lcom/amap/api/col/f;->e()D

    move-result-wide v4

    sub-double/2addr v2, v4

    div-double/2addr v2, p4

    iget v1, p3, Landroid/graphics/Point;->x:I

    int-to-double v4, v1

    add-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget v1, p3, Landroid/graphics/Point;->y:I

    int-to-double v2, v1

    invoke-virtual {p1}, Lcom/amap/api/col/f;->f()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/amap/api/col/f;->f()D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double/2addr v4, p4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    iput v1, v0, Landroid/graphics/PointF;->y:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    const-string v2, "MapProjection"

    const-string v3, "convertProjectionToScreen"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_1
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/amap/api/col/f;
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/ah;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)[D

    move-result-object v0

    new-instance v1, Lcom/amap/api/col/f;

    iget-object v2, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    invoke-virtual {v2}, Lcom/amap/api/col/f;->b()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    invoke-virtual {v3}, Lcom/amap/api/col/f;->a()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/amap/api/col/f;-><init>(II)V

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/f;->b(D)V

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/f;->a(D)V

    return-object v1
.end method

.method public a(Landroid/graphics/PointF;Lcom/amap/api/col/f;Landroid/graphics/Point;DLcom/amap/api/col/ah$a;)Lcom/amap/api/col/f;
    .locals 2

    invoke-virtual/range {p0 .. p6}, Lcom/amap/api/col/ah;->b(Landroid/graphics/PointF;Lcom/amap/api/col/f;Landroid/graphics/Point;DLcom/amap/api/col/ah$a;)Lcom/amap/api/col/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/ah;->b(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;
    .locals 10

    const-wide v8, 0x41731bf84570a3d7L    # 2.003750834E7

    const-wide v4, 0x412e848000000000L    # 1000000.0

    const-wide v6, 0x4066800000000000L    # 180.0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/col/f;->b()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v4

    invoke-virtual {p1}, Lcom/amap/api/col/f;->a()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v4

    mul-double/2addr v2, v8

    div-double v4, v2, v6

    const-wide v2, 0x4056800000000000L    # 90.0

    add-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3f91df46a2529d39L    # 0.017453292519943295

    div-double/2addr v0, v2

    mul-double/2addr v0, v8

    div-double v2, v0, v6

    new-instance v1, Lcom/amap/api/col/f;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/f;-><init>(DDZ)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/col/f;III)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/col/f;",
            "III)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/bd;",
            ">;"
        }
    .end annotation

    const-string v11, "getTilesInDomain"

    iget-wide v12, p0, Lcom/amap/api/col/ah;->k:D

    const/4 v0, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/f;->e()D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/col/ah;->f:D

    sub-double/2addr v2, v4

    iget v1, p0, Lcom/amap/api/col/ah;->a:I

    int-to-double v4, v1

    mul-double/2addr v4, v12

    div-double/2addr v2, v4

    double-to-int v14, v2

    iget v1, p0, Lcom/amap/api/col/ah;->a:I

    mul-int/2addr v1, v14

    int-to-double v2, v1

    mul-double/2addr v2, v12

    iget-wide v4, p0, Lcom/amap/api/col/ah;->f:D

    add-double/2addr v4, v2

    const-wide/16 v2, 0x0

    iget v1, p0, Lcom/amap/api/col/ah;->e:I

    if-nez v1, :cond_2

    iget-wide v0, p0, Lcom/amap/api/col/ah;->g:D

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/f;->f()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/amap/api/col/ah;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, v12

    div-double/2addr v0, v2

    double-to-int v0, v0

    iget-wide v2, p0, Lcom/amap/api/col/ah;->g:D

    iget v1, p0, Lcom/amap/api/col/ah;->a:I

    mul-int/2addr v1, v0

    int-to-double v6, v1

    mul-double/2addr v6, v12

    sub-double/2addr v2, v6

    move v8, v0

    :goto_0
    new-instance v1, Lcom/amap/api/col/f;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/f;-><init>(DDZ)V

    iget-object v3, p0, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    move-object v0, p0

    move-object/from16 v2, p1

    move-wide v4, v12

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;Lcom/amap/api/col/f;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v5

    new-instance v0, Lcom/amap/api/col/bd;

    invoke-virtual {p0}, Lcom/amap/api/col/ah;->b()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v14, v8, v1, v2}, Lcom/amap/api/col/bd;-><init>(IIII)V

    iput-object v5, v0, Lcom/amap/api/col/bd;->g:Landroid/graphics/PointF;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    move v10, v0

    :goto_1
    const/4 v9, 0x0

    sub-int v1, v14, v10

    :goto_2
    add-int v0, v14, v10

    if-gt v1, v0, :cond_3

    add-int v2, v8, v10

    move-object v0, p0

    move v3, v14

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    :try_start_0
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/col/ah;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez v9, :cond_0

    const/4 v9, 0x1

    :cond_0
    new-instance v3, Lcom/amap/api/col/bd;

    invoke-virtual {p0}, Lcom/amap/api/col/ah;->b()I

    move-result v4

    const/4 v6, -0x1

    invoke-direct {v3, v1, v2, v4, v6}, Lcom/amap/api/col/bd;-><init>(IIII)V

    iput-object v0, v3, Lcom/amap/api/col/bd;->g:Landroid/graphics/PointF;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sub-int v2, v8, v10

    move-object v0, p0

    move v3, v14

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/col/ah;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v3, :cond_b

    if-nez v9, :cond_a

    const/4 v0, 0x1

    :goto_3
    new-instance v4, Lcom/amap/api/col/bd;

    invoke-virtual {p0}, Lcom/amap/api/col/ah;->b()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/amap/api/col/bd;-><init>(IIII)V

    iput-object v3, v4, Lcom/amap/api/col/bd;->g:Landroid/graphics/PointF;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    add-int/lit8 v1, v1, 0x1

    move v9, v0

    goto :goto_2

    :cond_2
    iget v1, p0, Lcom/amap/api/col/ah;->e:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/amap/api/col/f;->f()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/ah;->g:D

    sub-double/2addr v0, v2

    iget v2, p0, Lcom/amap/api/col/ah;->a:I

    int-to-double v2, v2

    mul-double/2addr v2, v12

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/amap/api/col/ah;->a:I

    mul-int/2addr v1, v2

    int-to-double v2, v1

    mul-double/2addr v2, v12

    move v8, v0

    goto/16 :goto_0

    :cond_3
    add-int v0, v8, v10

    add-int/lit8 v2, v0, -0x1

    :goto_5
    sub-int v0, v8, v10

    if-le v2, v0, :cond_6

    add-int v1, v14, v10

    move-object v0, p0

    move v3, v14

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    :try_start_1
    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/col/ah;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v0

    if-eqz v0, :cond_5

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :cond_4
    new-instance v3, Lcom/amap/api/col/bd;

    invoke-virtual {p0}, Lcom/amap/api/col/ah;->b()I

    move-result v4

    const/4 v6, -0x1

    invoke-direct {v3, v1, v2, v4, v6}, Lcom/amap/api/col/bd;-><init>(IIII)V

    iput-object v0, v3, Lcom/amap/api/col/bd;->g:Landroid/graphics/PointF;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    sub-int v1, v14, v10

    move-object v0, p0

    move v3, v14

    move v4, v8

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/amap/api/col/ah;->a(IIIILandroid/graphics/PointF;II)Landroid/graphics/PointF;

    move-result-object v3

    if-eqz v3, :cond_9

    if-nez v9, :cond_8

    const/4 v0, 0x1

    :goto_6
    new-instance v4, Lcom/amap/api/col/bd;

    invoke-virtual {p0}, Lcom/amap/api/col/ah;->b()I

    move-result v6

    const/4 v7, -0x1

    invoke-direct {v4, v1, v2, v6, v7}, Lcom/amap/api/col/bd;-><init>(IIII)V

    iput-object v3, v4, Lcom/amap/api/col/bd;->g:Landroid/graphics/PointF;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    :goto_7
    add-int/lit8 v2, v2, -0x1

    move v9, v0

    goto :goto_5

    :cond_6
    if-nez v9, :cond_7

    :goto_8
    return-object v12

    :cond_7
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MapProjection"

    invoke-static {v0, v1, v11}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    move v0, v9

    goto :goto_6

    :cond_9
    move v0, v9

    goto :goto_7

    :cond_a
    move v0, v9

    goto/16 :goto_3

    :cond_b
    move v0, v9

    goto/16 :goto_4

    :cond_c
    move v8, v0

    goto/16 :goto_0
.end method

.method public a()V
    .locals 9

    const/4 v6, 0x1

    const v8, 0x4b98dfc2    # 2.0037508E7f

    const v7, -0x3467203e    # -2.0037508E7f

    iget-wide v0, p0, Lcom/amap/api/col/ah;->g:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/amap/api/col/ah;->a:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/amap/api/col/ah;->d:D

    iget v0, p0, Lcom/amap/api/col/ah;->j:F

    float-to-int v0, v0

    iget-wide v2, p0, Lcom/amap/api/col/ah;->d:D

    shl-int v1, v6, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/amap/api/col/ah;->j:F

    add-float/2addr v1, v4

    int-to-float v0, v0

    sub-float v0, v1, v0

    float-to-double v0, v0

    div-double v0, v2, v0

    iput-wide v0, p0, Lcom/amap/api/col/ah;->k:D

    new-instance v1, Lcom/amap/api/col/f;

    iget-wide v2, p0, Lcom/amap/api/col/ah;->r:D

    iget-wide v4, p0, Lcom/amap/api/col/ah;->q:D

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/f;-><init>(DDZ)V

    invoke-virtual {p0, v1}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v0, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    invoke-virtual {v0}, Lcom/amap/api/col/f;->g()Lcom/amap/api/col/f;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ah;->m:Lcom/amap/api/col/f;

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/col/ah;->p:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/api/col/ah;->p:Lcom/amap/api/col/am$d;

    invoke-virtual {v2}, Lcom/amap/api/col/am$d;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    new-instance v0, Lcom/amap/api/col/ah$a;

    invoke-direct {v0}, Lcom/amap/api/col/ah$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iget-object v0, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iput v7, v0, Lcom/amap/api/col/ah$a;->a:F

    iget-object v0, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iput v8, v0, Lcom/amap/api/col/ah$a;->b:F

    iget-object v0, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iput v8, v0, Lcom/amap/api/col/ah$a;->c:F

    iget-object v0, p0, Lcom/amap/api/col/ah;->o:Lcom/amap/api/col/ah$a;

    iput v7, v0, Lcom/amap/api/col/ah$a;->d:F

    return-void
.end method

.method public a(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ah;->n:Landroid/graphics/Point;

    return-void
.end method

.method public a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/ah;->b(Landroid/graphics/PointF;Landroid/graphics/PointF;)[D

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/f;->b(D)V

    iget-object v1, p0, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/f;->a(D)V

    goto :goto_0
.end method

.method b()I
    .locals 6

    iget v0, p0, Lcom/amap/api/col/ah;->j:F

    float-to-int v0, v0

    iget v1, p0, Lcom/amap/api/col/ah;->j:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-double v2, v1

    sget-wide v4, Lcom/amap/api/col/am;->a:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(Lcom/amap/api/col/f;Lcom/amap/api/col/f;Landroid/graphics/Point;D)Landroid/graphics/PointF;
    .locals 6

    iget-object v0, p0, Lcom/amap/api/col/ah;->p:Lcom/amap/api/col/am$d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;Lcom/amap/api/col/f;Landroid/graphics/Point;D)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/ah;->p:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/col/hw;->b(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0
.end method

.method b(Landroid/graphics/PointF;Lcom/amap/api/col/f;Landroid/graphics/Point;DLcom/amap/api/col/ah$a;)Lcom/amap/api/col/f;
    .locals 8

    iget-object v0, p0, Lcom/amap/api/col/ah;->p:Lcom/amap/api/col/am$d;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p6, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/ah;->p:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/hw;->c(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, p3, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p3, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    invoke-virtual {p2}, Lcom/amap/api/col/f;->e()D

    move-result-wide v4

    float-to-double v0, v1

    mul-double/2addr v0, p4

    add-double/2addr v0, v4

    invoke-virtual {p2}, Lcom/amap/api/col/f;->f()D

    move-result-wide v4

    float-to-double v2, v2

    mul-double/2addr v2, p4

    sub-double v2, v4, v2

    :goto_1
    iget v4, p6, Lcom/amap/api/col/ah$a;->a:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_5

    iget v4, p6, Lcom/amap/api/col/ah$a;->b:F

    iget v5, p6, Lcom/amap/api/col/ah$a;->a:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    add-double/2addr v0, v4

    goto :goto_1

    :goto_2
    iget v0, p6, Lcom/amap/api/col/ah$a;->b:F

    float-to-double v0, v0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_4

    iget v0, p6, Lcom/amap/api/col/ah$a;->b:F

    iget v1, p6, Lcom/amap/api/col/ah$a;->a:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sub-double/2addr v4, v0

    goto :goto_2

    :goto_3
    iget v2, p6, Lcom/amap/api/col/ah$a;->d:F

    float-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    iget v2, p6, Lcom/amap/api/col/ah$a;->c:F

    iget v3, p6, Lcom/amap/api/col/ah$a;->d:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    goto :goto_3

    :goto_4
    iget v0, p6, Lcom/amap/api/col/ah$a;->c:F

    float-to-double v0, v0

    cmpl-double v0, v2, v0

    if-lez v0, :cond_2

    iget v0, p6, Lcom/amap/api/col/ah$a;->c:F

    iget v1, p6, Lcom/amap/api/col/ah$a;->d:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sub-double/2addr v2, v0

    goto :goto_4

    :cond_2
    new-instance v1, Lcom/amap/api/col/f;

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/amap/api/col/f;-><init>(DDZ)V

    goto :goto_0

    :cond_3
    move-wide v2, v0

    goto :goto_4

    :cond_4
    move-wide v0, v2

    goto :goto_3

    :cond_5
    move-wide v4, v0

    goto :goto_2
.end method

.method public b(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;
    .locals 14

    const-wide v4, 0x41731bf84570a3d7L    # 2.003750834E7

    const-wide v12, 0x412e848000000000L    # 1000000.0

    const-wide v10, 0x4066800000000000L    # 180.0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/amap/api/col/f;->e()D

    move-result-wide v0

    mul-double/2addr v0, v10

    div-double/2addr v0, v4

    double-to-float v1, v0

    invoke-virtual {p1}, Lcom/amap/api/col/f;->f()D

    move-result-wide v2

    mul-double/2addr v2, v10

    div-double/2addr v2, v4

    double-to-float v0, v2

    const-wide v2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    float-to-double v6, v0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->atan(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    new-instance v0, Lcom/amap/api/col/f;

    float-to-double v2, v2

    mul-double/2addr v2, v12

    double-to-int v2, v2

    float-to-double v4, v1

    mul-double/2addr v4, v12

    double-to-int v1, v4

    invoke-direct {v0, v2, v1}, Lcom/amap/api/col/f;-><init>(II)V

    goto :goto_0
.end method
