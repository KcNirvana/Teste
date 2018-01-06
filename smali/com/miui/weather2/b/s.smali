.class public final Lcom/miui/weather2/b/s;
.super Lcom/miui/weather2/b/o;
.source "SourceFile"


# instance fields
.field private t:F

.field private u:F

.field private v:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/b/o;-><init>()V

    return-void
.end method

.method private h()F
    .locals 6

    const v0, 0x3f99999a    # 1.2f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    rem-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x43960000    # 300.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/b/s;->u:F

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-super {p0}, Lcom/miui/weather2/b/o;->a()V

    iget v0, p0, Lcom/miui/weather2/b/s;->v:F

    iget v1, p0, Lcom/miui/weather2/b/s;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/s;->t:F

    iget v0, p0, Lcom/miui/weather2/b/s;->t:F

    invoke-super {p0, v0}, Lcom/miui/weather2/b/o;->d(F)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/s;->u:F

    iget v0, p0, Lcom/miui/weather2/b/s;->p:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/miui/weather2/b/s;->a:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/weather2/b/s;->b:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/miui/weather2/b/o;->a(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/weather2/b/s;->c:F

    iget v1, p0, Lcom/miui/weather2/b/s;->d:F

    iget v2, p0, Lcom/miui/weather2/b/s;->t:F

    iget-object v3, p0, Lcom/miui/weather2/b/s;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public e(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/b/s;->v:F

    return-void
.end method

.method protected f()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/weather2/b/s;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/weather2/b/s;->j:J

    iget v2, p0, Lcom/miui/weather2/b/s;->e:F

    iget v3, p0, Lcom/miui/weather2/b/s;->a:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/b/s;->h:F

    iget v4, p0, Lcom/miui/weather2/b/s;->c:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/b/s;->a(JFFF)F

    move-result v0

    invoke-direct {p0}, Lcom/miui/weather2/b/s;->h()F

    move-result v1

    iget v2, p0, Lcom/miui/weather2/b/s;->m:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/miui/weather2/b/s;->a:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/s;->c:F

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 5

    iget-wide v0, p0, Lcom/miui/weather2/b/s;->j:J

    iget v2, p0, Lcom/miui/weather2/b/s;->f:F

    iget v3, p0, Lcom/miui/weather2/b/s;->a:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/b/s;->g:F

    iget v4, p0, Lcom/miui/weather2/b/s;->d:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/b/s;->a(JFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/s;->d:F

    invoke-virtual {p0}, Lcom/miui/weather2/b/s;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v1, p0, Lcom/miui/weather2/b/s;->d:F

    iget v0, p0, Lcom/miui/weather2/b/s;->l:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    invoke-direct {p0}, Lcom/miui/weather2/b/s;->h()F

    move-result v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/miui/weather2/b/s;->n:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/miui/weather2/b/s;->a:F

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/s;->d:F

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
