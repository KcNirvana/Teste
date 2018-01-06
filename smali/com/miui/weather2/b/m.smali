.class public Lcom/miui/weather2/b/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:[F

.field private static final m:[F

.field private static final n:[F

.field private static final o:[F


# instance fields
.field private a:Landroid/graphics/PointF;

.field private b:Landroid/graphics/PointF;

.field private c:Landroid/graphics/PointF;

.field private d:Landroid/graphics/PointF;

.field private e:Landroid/graphics/PointF;

.field private f:Landroid/graphics/PointF;

.field private g:Landroid/graphics/PointF;

.field private h:F

.field private i:F

.field private j:F

.field private k:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/weather2/b/m;->l:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/weather2/b/m;->m:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/miui/weather2/b/m;->n:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Lcom/miui/weather2/b/m;->o:[F

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3ed70a3d    # 0.42f
        0x3f2e147b    # 0.68f
        0x3cf5c28f    # 0.03f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3eb851ec    # 0.36f
    .end array-data

    :array_2
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3ea8f5c3    # 0.33f
        0x3f333333    # 0.7f
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
    .end array-data
.end method

.method public constructor <init>(FFFFI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/weather2/b/m;->b:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    iput-object v0, p0, Lcom/miui/weather2/b/m;->g:Landroid/graphics/PointF;

    sub-float v0, p3, p1

    iput v0, p0, Lcom/miui/weather2/b/m;->i:F

    sub-float v0, p4, p2

    iput v0, p0, Lcom/miui/weather2/b/m;->h:F

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {p0, p5}, Lcom/miui/weather2/b/m;->a(I)F

    move-result v1

    invoke-direct {p0, p5}, Lcom/miui/weather2/b/m;->b(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/weather2/b/m;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {p0, p5}, Lcom/miui/weather2/b/m;->c(I)F

    move-result v1

    invoke-direct {p0, p5}, Lcom/miui/weather2/b/m;->d(I)F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/weather2/b/m;->d:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/miui/weather2/b/m;->i()F

    move-result v1

    invoke-direct {p0}, Lcom/miui/weather2/b/m;->j()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/weather2/b/m;->e:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {p0}, Lcom/miui/weather2/b/m;->k()F

    move-result v1

    invoke-direct {p0}, Lcom/miui/weather2/b/m;->l()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/miui/weather2/b/m;->f:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/miui/weather2/b/m;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/miui/weather2/b/m;->e:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/m;->j:F

    iget-object v0, p0, Lcom/miui/weather2/b/m;->f:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/m;->k:F

    return-void
.end method

.method private a(I)F
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/miui/weather2/b/m;->i:F

    sget-object v2, Lcom/miui/weather2/b/m;->l:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private b(I)F
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/miui/weather2/b/m;->h:F

    sget-object v2, Lcom/miui/weather2/b/m;->m:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private c(I)F
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/b/m;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget v1, p0, Lcom/miui/weather2/b/m;->i:F

    sget-object v2, Lcom/miui/weather2/b/m;->n:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private d(I)F
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/b/m;->b:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/miui/weather2/b/m;->h:F

    sget-object v2, Lcom/miui/weather2/b/m;->o:[F

    aget v2, v2, p1

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private i()F
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const v1, 0x3f333333    # 0.7f

    iget v2, p0, Lcom/miui/weather2/b/m;->i:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private j()F
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const v1, 0x3f333333    # 0.7f

    iget v2, p0, Lcom/miui/weather2/b/m;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private k()F
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const v1, 0x3dcccccd    # 0.1f

    iget v2, p0, Lcom/miui/weather2/b/m;->i:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private l()F
    .locals 3

    iget-object v0, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const v1, 0x3dcccccd    # 0.1f

    iget v2, p0, Lcom/miui/weather2/b/m;->h:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()I
    .locals 7

    const/4 v1, 0x0

    const/high16 v6, 0x437f0000    # 255.0f

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/miui/weather2/b/m;->g:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/miui/weather2/b/m;->f:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/miui/weather2/b/m;->f:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/miui/weather2/b/m;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/miui/weather2/b/m;->e:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/miui/weather2/b/m;->b:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, p0, Lcom/miui/weather2/b/m;->e:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    cmpl-float v3, v0, v5

    if-ltz v3, :cond_0

    iget v2, p0, Lcom/miui/weather2/b/m;->k:F

    div-float/2addr v0, v2

    mul-float/2addr v0, v6

    neg-float v0, v0

    float-to-int v0, v0

    :goto_0
    if-ltz v0, :cond_1

    const/16 v2, 0xff

    if-gt v0, v2, :cond_1

    :goto_1
    return v0

    :cond_0
    cmpl-float v0, v2, v5

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/miui/weather2/b/m;->j:F

    div-float v0, v2, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public a(Landroid/graphics/PointF;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/m;->g:Landroid/graphics/PointF;

    return-void
.end method

.method public b()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/m;->a:Landroid/graphics/PointF;

    return-object v0
.end method

.method public c()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/m;->b:Landroid/graphics/PointF;

    return-object v0
.end method

.method public d()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/m;->c:Landroid/graphics/PointF;

    return-object v0
.end method

.method public e()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/m;->d:Landroid/graphics/PointF;

    return-object v0
.end method

.method public f()F
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/m;->g:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    return v0
.end method

.method public g()F
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/m;->g:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/weather2/b/m;->g:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/miui/weather2/b/m;->b:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
