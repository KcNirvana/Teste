.class public abstract Lcom/miui/weather2/b/o;
.super Lcom/miui/weather2/b/p;
.source "SourceFile"


# instance fields
.field protected a:F

.field protected b:I

.field protected c:F

.field protected d:F

.field protected e:F

.field protected f:F

.field protected g:F

.field protected h:F

.field protected i:F

.field protected j:J

.field protected k:Landroid/graphics/Rect;

.field protected l:F

.field protected m:F

.field protected n:F

.field protected o:Landroid/graphics/Paint;

.field protected p:I

.field protected q:F

.field protected r:F

.field protected s:F

.field private t:J

.field private u:F

.field private v:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/weather2/b/p;-><init>()V

    iput v1, p0, Lcom/miui/weather2/b/o;->i:F

    iput v1, p0, Lcom/miui/weather2/b/o;->u:F

    iput v1, p0, Lcom/miui/weather2/b/o;->l:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/miui/weather2/b/o;->m:F

    iput v1, p0, Lcom/miui/weather2/b/o;->n:F

    return-void
.end method

.method protected static a(JFFF)F
    .locals 4

    long-to-float v0, p0

    mul-float/2addr v0, p2

    long-to-float v1, p0

    mul-float/2addr v1, p3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, p4

    return v0
.end method

.method private static e(F)F
    .locals 6

    const/high16 v0, -0x40800000    # -1.0f

    float-to-int v1, p0

    int-to-float v1, v1

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    double-to-float v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 7

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/b/o;->t:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/weather2/b/o;->j:J

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/o;->a:F

    iget v0, p0, Lcom/miui/weather2/b/o;->p:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/b/o;->a:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/weather2/b/o;->b:I

    iput v6, p0, Lcom/miui/weather2/b/o;->i:F

    iget v0, p0, Lcom/miui/weather2/b/o;->r:F

    iget v1, p0, Lcom/miui/weather2/b/o;->m:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->g:F

    iget v0, p0, Lcom/miui/weather2/b/o;->r:F

    iget v1, p0, Lcom/miui/weather2/b/o;->n:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->h:F

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget v2, p0, Lcom/miui/weather2/b/o;->u:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/b/o;->l:F

    cmpl-float v0, v0, v6

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->d:F

    iget-object v0, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->c:F

    iget v0, p0, Lcom/miui/weather2/b/o;->q:F

    iput v0, p0, Lcom/miui/weather2/b/o;->f:F

    iget v0, p0, Lcom/miui/weather2/b/o;->l:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/b/o;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->e:F

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-double v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->d:F

    iget v0, p0, Lcom/miui/weather2/b/o;->l:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/b/o;->v:F

    neg-float v1, v1

    iget v2, p0, Lcom/miui/weather2/b/o;->n:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->c:F

    :cond_3
    iget v0, p0, Lcom/miui/weather2/b/o;->l:F

    cmpg-float v0, v0, v6

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-double v0, v0

    iget v2, p0, Lcom/miui/weather2/b/o;->v:F

    float-to-double v2, v2

    iget v4, p0, Lcom/miui/weather2/b/o;->l:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/o;->c:F

    :cond_4
    iget v0, p0, Lcom/miui/weather2/b/o;->d:F

    iget-object v1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/b/o;->g:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/b/o;->q:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->f:F

    iget v0, p0, Lcom/miui/weather2/b/o;->l:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/b/o;->f:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->e:F

    goto :goto_1
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/b/o;->q:F

    return-void
.end method

.method public a(FFFI)V
    .locals 4

    packed-switch p4, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/high16 v0, 0x40000000    # 2.0f

    const v1, 0x3e4ccccd    # 0.2f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->u:F

    invoke-static {p1}, Lcom/miui/weather2/b/o;->e(F)F

    move-result v0

    iget v1, p0, Lcom/miui/weather2/b/o;->l:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/miui/weather2/b/o;->l:F

    iget v0, p0, Lcom/miui/weather2/b/o;->l:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/o;->m:F

    iget v0, p0, Lcom/miui/weather2/b/o;->l:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/miui/weather2/b/o;->n:F

    iget v0, p0, Lcom/miui/weather2/b/o;->e:F

    float-to-double v0, v0

    iget v2, p0, Lcom/miui/weather2/b/o;->f:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/b/o;->n:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/miui/weather2/b/o;->e:F

    iget v1, p0, Lcom/miui/weather2/b/o;->m:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->f:F

    iget v0, p0, Lcom/miui/weather2/b/o;->r:F

    iget v1, p0, Lcom/miui/weather2/b/o;->m:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->g:F

    iget v0, p0, Lcom/miui/weather2/b/o;->r:F

    iget v1, p0, Lcom/miui/weather2/b/o;->n:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->h:F

    :cond_0
    return-void

    :pswitch_1
    neg-float p1, p2

    goto :goto_0

    :pswitch_2
    neg-float p1, p1

    goto :goto_0

    :pswitch_3
    move p1, p2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/b/o;->p:I

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/b/o;->e()V

    invoke-virtual {p0}, Lcom/miui/weather2/b/o;->d()V

    invoke-virtual {p0}, Lcom/miui/weather2/b/o;->f()V

    invoke-virtual {p0}, Lcom/miui/weather2/b/o;->g()V

    invoke-virtual {p0}, Lcom/miui/weather2/b/o;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/b/o;->a()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Paint;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/o;->o:Landroid/graphics/Paint;

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/miui/weather2/b/o;->a()V

    return-void
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/b/o;->r:F

    return-void
.end method

.method protected b()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/miui/weather2/b/o;->d:F

    iget-object v1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/b/o;->l:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/b/o;->c:F

    iget-object v1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/weather2/b/o;->l:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/weather2/b/o;->c:F

    iget-object v1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/b/o;->s:F

    return-void
.end method

.method protected c()Z
    .locals 3

    iget v0, p0, Lcom/miui/weather2/b/o;->d:F

    iget v1, p0, Lcom/miui/weather2/b/o;->v:F

    iget v2, p0, Lcom/miui/weather2/b/o;->m:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected d()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/weather2/b/o;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/weather2/b/o;->e:F

    iget v1, p0, Lcom/miui/weather2/b/o;->h:F

    iget-wide v2, p0, Lcom/miui/weather2/b/o;->j:J

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->e:F

    iget v0, p0, Lcom/miui/weather2/b/o;->f:F

    iget v1, p0, Lcom/miui/weather2/b/o;->g:F

    iget-wide v2, p0, Lcom/miui/weather2/b/o;->j:J

    long-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->f:F

    :cond_0
    iget v0, p0, Lcom/miui/weather2/b/o;->i:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/b/o;->d:F

    iget-object v1, p0, Lcom/miui/weather2/b/o;->k:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/weather2/b/o;->s:F

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/weather2/b/o;->b:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/weather2/b/o;->s:F

    iget v2, p0, Lcom/miui/weather2/b/o;->f:F

    div-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/b/o;->i:F

    :cond_1
    iget v0, p0, Lcom/miui/weather2/b/o;->b:I

    int-to-float v0, v0

    iget-wide v2, p0, Lcom/miui/weather2/b/o;->j:J

    long-to-float v1, v2

    iget v2, p0, Lcom/miui/weather2/b/o;->i:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/weather2/b/o;->b:I

    iget-object v1, p0, Lcom/miui/weather2/b/o;->o:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/weather2/b/o;->b:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void

    :cond_2
    iget v0, p0, Lcom/miui/weather2/b/o;->b:I

    goto :goto_0
.end method

.method protected d(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/b/o;->v:F

    return-void
.end method

.method protected e()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/weather2/b/o;->t:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/weather2/b/o;->j:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/b/o;->t:J

    return-void
.end method

.method protected abstract f()V
.end method

.method protected abstract g()V
.end method
