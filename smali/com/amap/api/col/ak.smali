.class Lcom/amap/api/col/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/col/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/ak$a;
    }
.end annotation


# static fields
.field private static a:I


# instance fields
.field private b:I

.field private c:F

.field private d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/amap/api/maps2d/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Lcom/amap/api/maps2d/a/h;

.field private h:Lcom/amap/api/maps2d/a/h;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:F

.field private l:F

.field private m:Z

.field private n:Z

.field private o:Lcom/amap/api/col/ad;

.field private p:Ljava/lang/Object;

.field private q:Z

.field private r:Lcom/amap/api/col/ak$a;

.field private s:Z

.field private t:I

.field private u:I

.field private v:F

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/col/ak;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/a/k;Lcom/amap/api/col/ad;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/amap/api/col/ak;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/ak;->c:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/16 v0, 0x14

    iput v0, p0, Lcom/amap/api/col/ak;->e:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/amap/api/col/ak;->k:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/amap/api/col/ak;->l:F

    iput-boolean v1, p0, Lcom/amap/api/col/ak;->m:Z

    iput-boolean v2, p0, Lcom/amap/api/col/ak;->n:Z

    iput-boolean v1, p0, Lcom/amap/api/col/ak;->q:Z

    iput-boolean v1, p0, Lcom/amap/api/col/ak;->s:Z

    const-string v1, "MarkerDelegateImp"

    iput-object p2, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->l()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/ak;->q:Z

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->c()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/ak;->v:F

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->d()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->q:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->d()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    iget-wide v2, v0, Lcom/amap/api/maps2d/a/h;->b:D

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->d()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    iget-wide v4, v0, Lcom/amap/api/maps2d/a/h;->a:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/hv;->a(DD)[D

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps2d/a/h;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/col/ak;->h:Lcom/amap/api/maps2d/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->d()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ak;->g:Lcom/amap/api/maps2d/a/h;

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->h()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/ak;->k:F

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->i()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/ak;->l:F

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->k()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/ak;->n:Z

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ak;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ak;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/ak;->m:Z

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->b()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/ak;->e:I

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ak;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/ak;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->g()Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/col/ak;->a(Lcom/amap/api/maps2d/a/a;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/k;->d()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ak;->h:Lcom/amap/api/maps2d/a/h;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/ak;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/col/ak;->b:I

    return p1
.end method

.method private a(FF)Lcom/amap/api/col/n;
    .locals 8

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    iget v2, p0, Lcom/amap/api/col/ak;->c:F

    float-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    new-instance v1, Lcom/amap/api/col/n;

    invoke-direct {v1}, Lcom/amap/api/col/n;-><init>()V

    float-to-double v2, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p2

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, v1, Lcom/amap/api/col/n;->a:I

    float-to-double v2, p2

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    float-to-double v4, p1

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Lcom/amap/api/col/n;->b:I

    return-object v1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget v0, Lcom/amap/api/col/ak;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amap/api/col/ak;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/amap/api/col/ak;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/col/ak;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private a(Lcom/amap/api/maps2d/a/a;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->f()V

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/a/a;->a()Lcom/amap/api/maps2d/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->a()Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->postInvalidate()V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/ak;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/ak;->b:I

    return v0
.end method

.method static synthetic c(Lcom/amap/api/col/ak;)I
    .locals 2

    iget v0, p0, Lcom/amap/api/col/ak;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/ak;->b:I

    return v0
.end method

.method static synthetic d(Lcom/amap/api/col/ak;)Lcom/amap/api/col/ad;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    return-object v0
.end method

.method static synthetic e(Lcom/amap/api/col/ak;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/ak;->e:I

    return v0
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 13

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const-string v1, "getRect"

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->j()Lcom/amap/api/col/n;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/col/ak;->h()I

    move-result v3

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->i()I

    move-result v4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v5, p0, Lcom/amap/api/col/ak;->c:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    iget v5, v2, Lcom/amap/api/col/n;->b:I

    int-to-float v5, v5

    int-to-float v6, v4

    iget v7, p0, Lcom/amap/api/col/ak;->l:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget v5, v2, Lcom/amap/api/col/n;->a:I

    int-to-float v5, v5

    iget v6, p0, Lcom/amap/api/col/ak;->k:F

    int-to-float v7, v3

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iget v5, v2, Lcom/amap/api/col/n;->b:I

    int-to-float v5, v5

    int-to-float v4, v4

    iget v6, p0, Lcom/amap/api/col/ak;->l:F

    sub-float v6, v10, v6

    mul-float/2addr v4, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Lcom/amap/api/col/n;->a:I

    int-to-float v2, v2

    iget v4, p0, Lcom/amap/api/col/ak;->k:F

    sub-float v4, v10, v4

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Rect;->right:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget v5, p0, Lcom/amap/api/col/ak;->k:F

    neg-float v5, v5

    int-to-float v6, v3

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/amap/api/col/ak;->l:F

    sub-float/2addr v6, v10

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-direct {p0, v5, v6}, Lcom/amap/api/col/ak;->a(FF)Lcom/amap/api/col/n;

    move-result-object v5

    iget v6, p0, Lcom/amap/api/col/ak;->k:F

    neg-float v6, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/amap/api/col/ak;->l:F

    int-to-float v8, v4

    mul-float/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lcom/amap/api/col/ak;->a(FF)Lcom/amap/api/col/n;

    move-result-object v6

    iget v7, p0, Lcom/amap/api/col/ak;->k:F

    sub-float v7, v10, v7

    int-to-float v8, v3

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/amap/api/col/ak;->l:F

    int-to-float v9, v4

    mul-float/2addr v8, v9

    invoke-direct {p0, v7, v8}, Lcom/amap/api/col/ak;->a(FF)Lcom/amap/api/col/n;

    move-result-object v7

    iget v8, p0, Lcom/amap/api/col/ak;->k:F

    sub-float v8, v10, v8

    int-to-float v3, v3

    mul-float/2addr v3, v8

    iget v8, p0, Lcom/amap/api/col/ak;->l:F

    sub-float/2addr v8, v10

    int-to-float v4, v4

    mul-float/2addr v4, v8

    invoke-direct {p0, v3, v4}, Lcom/amap/api/col/ak;->a(FF)Lcom/amap/api/col/n;

    move-result-object v3

    iget v4, v2, Lcom/amap/api/col/n;->b:I

    iget v8, v5, Lcom/amap/api/col/n;->b:I

    iget v9, v6, Lcom/amap/api/col/n;->b:I

    iget v10, v7, Lcom/amap/api/col/n;->b:I

    iget v11, v3, Lcom/amap/api/col/n;->b:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v4, v8

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Lcom/amap/api/col/n;->a:I

    iget v8, v5, Lcom/amap/api/col/n;->a:I

    iget v9, v6, Lcom/amap/api/col/n;->a:I

    iget v10, v7, Lcom/amap/api/col/n;->a:I

    iget v11, v3, Lcom/amap/api/col/n;->a:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v4, v8

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Lcom/amap/api/col/n;->b:I

    iget v8, v5, Lcom/amap/api/col/n;->b:I

    iget v9, v6, Lcom/amap/api/col/n;->b:I

    iget v10, v7, Lcom/amap/api/col/n;->b:I

    iget v11, v3, Lcom/amap/api/col/n;->b:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int/2addr v4, v8

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Lcom/amap/api/col/n;->a:I

    iget v4, v5, Lcom/amap/api/col/n;->a:I

    iget v5, v6, Lcom/amap/api/col/n;->a:I

    iget v6, v7, Lcom/amap/api/col/n;->a:I

    iget v3, v3, Lcom/amap/api/col/n;->a:I

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Lcom/amap/api/col/ak;->v:F

    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->d()V

    return-void
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/ak;->w:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Lcom/amap/api/col/h;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->k()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->o()Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/ak;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/amap/api/col/n;

    iget v1, p0, Lcom/amap/api/col/ak;->t:I

    iget v3, p0, Lcom/amap/api/col/ak;->u:I

    invoke-direct {v0, v1, v3}, Lcom/amap/api/col/n;-><init>(II)V

    move-object v1, v0

    :goto_1
    invoke-virtual {p0}, Lcom/amap/api/col/ak;->v()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v4, :cond_3

    iget v3, p0, Lcom/amap/api/col/ak;->b:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/a;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v3, p0, Lcom/amap/api/col/ak;->c:F

    iget v4, v1, Lcom/amap/api/col/n;->a:I

    int-to-float v4, v4

    iget v5, v1, Lcom/amap/api/col/n;->b:I

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v3, v1, Lcom/amap/api/col/n;->a:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->r()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v1, v1, Lcom/amap/api/col/n;->b:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->s()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/amap/api/col/ak;->j()Lcom/amap/api/col/n;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/a;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method public a(Lcom/amap/api/maps2d/a/h;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->q:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/amap/api/col/ak;->h:Lcom/amap/api/maps2d/a/h;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/amap/api/col/ak;->g:Lcom/amap/api/maps2d/a/h;

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/a/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->f()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/a;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/a;->a()Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ak;->r:Lcom/amap/api/col/ak$a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/amap/api/col/ak$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/ak$a;-><init>(Lcom/amap/api/col/ak;Lcom/amap/api/col/al;)V

    iput-object v0, p0, Lcom/amap/api/col/ak;->r:Lcom/amap/api/col/ak$a;

    iget-object v0, p0, Lcom/amap/api/col/ak;->r:Lcom/amap/api/col/ak$a;

    invoke-virtual {v0}, Lcom/amap/api/col/ak$a;->start()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->a()Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->postInvalidate()V

    return-void
.end method

.method public a(Lcom/amap/api/a/e;)Z
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/amap/api/a/e;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lcom/amap/api/col/iv;
    .locals 4

    new-instance v0, Lcom/amap/api/col/iv;

    invoke-direct {v0}, Lcom/amap/api/col/iv;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->h()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/col/ak;->k:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    iput-wide v2, v0, Lcom/amap/api/col/iv;->a:D

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->i()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/col/ak;->l:F

    mul-float/2addr v1, v2

    float-to-double v2, v1

    iput-wide v2, v0, Lcom/amap/api/col/iv;->b:D

    :cond_0
    return-object v0
.end method

.method public b(Lcom/amap/api/maps2d/a/h;)V
    .locals 9

    const/4 v8, 0x0

    const-string v1, "setPosition"

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/ak;->q:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-wide v2, p1, Lcom/amap/api/maps2d/a/h;->b:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/a/h;->a:D

    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/col/hv;->a(DD)[D

    move-result-object v0

    new-instance v2, Lcom/amap/api/maps2d/a/h;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x0

    aget-wide v6, v0, v3

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    iput-object v2, p0, Lcom/amap/api/col/ak;->h:Lcom/amap/api/maps2d/a/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iput-boolean v8, p0, Lcom/amap/api/col/ak;->s:Z

    iput-object p1, p0, Lcom/amap/api/col/ak;->g:Lcom/amap/api/maps2d/a/h;

    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    invoke-virtual {v0}, Lcom/amap/api/col/ad;->a()Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->postInvalidate()V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amap/api/col/ak;->h:Lcom/amap/api/maps2d/a/h;

    goto :goto_1
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/ak;->v:F

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/ak;->w:I

    return v0
.end method

.method public e()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "destroy"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ak;->g:Lcom/amap/api/maps2d/a/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ak;->p:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ak;->r:Lcom/amap/api/col/ak$a;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "MarkerDelegateImp"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "destroy erro"

    const-string v1, "MarkerDelegateImp destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput-object v3, p0, Lcom/amap/api/col/ak;->r:Lcom/amap/api/col/ak$a;

    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    iget-object v0, v0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    iget-object v0, v0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->invalidate()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ak;->g:Lcom/amap/api/maps2d/a/h;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ak;->p:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    goto :goto_0
.end method

.method public g()Lcom/amap/api/col/n;
    .locals 8

    const-wide v6, 0x412e848000000000L    # 1000000.0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->k()Lcom/amap/api/maps2d/a/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/amap/api/col/n;

    invoke-direct {v0}, Lcom/amap/api/col/n;-><init>()V

    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/col/ak;->q:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/amap/api/col/f;

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->u()Lcom/amap/api/maps2d/a/h;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->u()Lcom/amap/api/maps2d/a/h;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/a/h;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Lcom/amap/api/col/f;-><init>(II)V

    :goto_1
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    invoke-virtual {v3}, Lcom/amap/api/col/ad;->a()Lcom/amap/api/col/hw;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/col/hw;->b()Lcom/amap/api/col/au;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/amap/api/col/au;->a(Lcom/amap/api/col/f;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget v1, v2, Landroid/graphics/Point;->x:I

    iput v1, v0, Lcom/amap/api/col/n;->a:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    iput v1, v0, Lcom/amap/api/col/n;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/amap/api/col/f;

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->k()Lcom/amap/api/maps2d/a/h;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps2d/a/h;->a:D

    mul-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->k()Lcom/amap/api/maps2d/a/h;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/a/h;->b:D

    mul-double/2addr v4, v6

    double-to-int v3, v4

    invoke-direct {v1, v2, v3}, Lcom/amap/api/col/f;-><init>(II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public h()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->o()Lcom/amap/api/maps2d/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->o()Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/a;->c()I

    move-result v0

    :cond_0
    return v0
.end method

.method public i()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->o()Lcom/amap/api/maps2d/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->o()Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/a/a;->d()I

    move-result v0

    :cond_0
    return v0
.end method

.method public j()Lcom/amap/api/col/n;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->g()Lcom/amap/api/col/n;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public k()Lcom/amap/api/maps2d/a/h;
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->s:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amap/api/col/iv;

    invoke-direct {v1}, Lcom/amap/api/col/iv;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    iget-object v0, v0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    iget v2, p0, Lcom/amap/api/col/ak;->t:I

    iget v3, p0, Lcom/amap/api/col/ak;->u:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/amap/api/col/hw;->a(IILcom/amap/api/col/iv;)V

    new-instance v0, Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v1, Lcom/amap/api/col/iv;->b:D

    iget-wide v4, v1, Lcom/amap/api/col/iv;->a:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ak;->g:Lcom/amap/api/maps2d/a/h;

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ak;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Marker"

    invoke-static {v0}, Lcom/amap/api/col/ak;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/ak;->f:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ak;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ak;->i:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ak;->j:Ljava/lang/String;

    return-object v0
.end method

.method public o()Lcom/amap/api/maps2d/a/a;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->f()V

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lcom/amap/api/maps2d/a/b;->a()Lcom/amap/api/maps2d/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/a;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    invoke-virtual {p0}, Lcom/amap/api/col/ak;->o()Lcom/amap/api/maps2d/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->m:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->n:Z

    return v0
.end method

.method public r()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/ak;->k:F

    return v0
.end method

.method public s()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/ak;->l:F

    return v0
.end method

.method public t()I
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public u()Lcom/amap/api/maps2d/a/h;
    .locals 6

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->s:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amap/api/col/iv;

    invoke-direct {v1}, Lcom/amap/api/col/iv;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/ak;->o:Lcom/amap/api/col/ad;

    iget-object v0, v0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    iget v2, p0, Lcom/amap/api/col/ak;->t:I

    iget v3, p0, Lcom/amap/api/col/ak;->u:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/amap/api/col/hw;->a(IILcom/amap/api/col/iv;)V

    new-instance v0, Lcom/amap/api/maps2d/a/h;

    iget-wide v2, v1, Lcom/amap/api/col/iv;->b:D

    iget-wide v4, v1, Lcom/amap/api/col/iv;->a:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/amap/api/maps2d/a/h;-><init>(DD)V

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/ak;->q:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ak;->h:Lcom/amap/api/maps2d/a/h;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/ak;->g:Lcom/amap/api/maps2d/a/h;

    goto :goto_0
.end method

.method public v()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/maps2d/a/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/ak;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/ak;->s:Z

    return v0
.end method
