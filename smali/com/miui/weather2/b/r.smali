.class public final Lcom/miui/weather2/b/r;
.super Lcom/miui/weather2/b/o;
.source "SourceFile"


# instance fields
.field private t:F

.field private u:F

.field private v:F

.field private w:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/b/o;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-super {p0}, Lcom/miui/weather2/b/o;->a()V

    iget v0, p0, Lcom/miui/weather2/b/r;->t:F

    float-to-double v0, v0

    const-wide v2, 0x3fd3333333333333L    # 0.3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/b/r;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/r;->v:F

    iget v0, p0, Lcom/miui/weather2/b/r;->u:F

    iget v1, p0, Lcom/miui/weather2/b/r;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/r;->w:F

    iget v0, p0, Lcom/miui/weather2/b/r;->w:F

    invoke-super {p0, v0}, Lcom/miui/weather2/b/o;->d(F)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/miui/weather2/b/o;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/b/r;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcom/miui/weather2/b/r;->v:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/miui/weather2/b/r;->c:F

    iget v2, p0, Lcom/miui/weather2/b/r;->d:F

    iget v0, p0, Lcom/miui/weather2/b/r;->c:F

    iget v3, p0, Lcom/miui/weather2/b/r;->w:F

    iget v4, p0, Lcom/miui/weather2/b/r;->n:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lcom/miui/weather2/b/r;->d:F

    iget v4, p0, Lcom/miui/weather2/b/r;->w:F

    iget v5, p0, Lcom/miui/weather2/b/r;->m:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/miui/weather2/b/r;->o:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public e(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/b/r;->t:F

    return-void
.end method

.method protected f()V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/weather2/b/r;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/weather2/b/r;->j:J

    iget v2, p0, Lcom/miui/weather2/b/r;->e:F

    iget v3, p0, Lcom/miui/weather2/b/r;->a:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/b/r;->h:F

    iget v4, p0, Lcom/miui/weather2/b/r;->c:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/b/r;->a(JFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/r;->c:F

    :cond_0
    return-void
.end method

.method public f(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/b/r;->u:F

    return-void
.end method

.method protected g()V
    .locals 5

    iget-wide v0, p0, Lcom/miui/weather2/b/r;->j:J

    iget v2, p0, Lcom/miui/weather2/b/r;->f:F

    iget v3, p0, Lcom/miui/weather2/b/r;->a:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/miui/weather2/b/r;->g:F

    iget v4, p0, Lcom/miui/weather2/b/r;->d:F

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/weather2/b/r;->a(JFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/weather2/b/r;->d:F

    return-void
.end method
