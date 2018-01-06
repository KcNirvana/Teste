.class Lcom/amap/api/col/bw;
.super Lcom/amap/api/col/ic;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:Z

.field private e:Landroid/view/animation/Animation$AnimationListener;

.field private f:Lcom/amap/api/col/hw;

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/col/hw;Landroid/view/animation/Animation$AnimationListener;I)V
    .locals 2

    const/16 v0, 0xa0

    const/4 v1, 0x0

    if-ge p3, v0, :cond_0

    move p3, v0

    :cond_0
    const/16 v0, 0x28

    invoke-direct {p0, p3, v0}, Lcom/amap/api/col/ic;-><init>(II)V

    iput-boolean v1, p0, Lcom/amap/api/col/bw;->m:Z

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/amap/api/col/bw;->a:F

    iput-boolean v1, p0, Lcom/amap/api/col/bw;->b:Z

    iput-object p1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iput-object p2, p0, Lcom/amap/api/col/bw;->e:Landroid/view/animation/Animation$AnimationListener;

    iget v0, p0, Lcom/amap/api/col/bw;->c:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amap/api/col/bw;->c:I

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/bw;->b()V

    return-void
.end method

.method public a(FFZFF)V
    .locals 3

    const/high16 v2, 0x3f000000    # 0.5f

    iput-boolean p3, p0, Lcom/amap/api/col/bw;->l:Z

    iput p4, p0, Lcom/amap/api/col/bw;->g:F

    iput p5, p0, Lcom/amap/api/col/bw;->h:F

    iput p1, p0, Lcom/amap/api/col/bw;->i:F

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v1, p0, Lcom/amap/api/col/bw;->i:F

    iput v1, v0, Lcom/amap/api/col/ah;->c:F

    iget-boolean v0, p0, Lcom/amap/api/col/bw;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v0, v0, Lcom/amap/api/col/ah;->c:F

    iget v1, p0, Lcom/amap/api/col/bw;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/bw;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/bw;->k:F

    iget v0, p0, Lcom/amap/api/col/bw;->i:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/bw;->j:F

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v0, v0, Lcom/amap/api/col/ah;->c:F

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/amap/api/col/bw;->d:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/bw;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/bw;->k:F

    iget v0, p0, Lcom/amap/api/col/bw;->i:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/bw;->j:F

    goto :goto_0
.end method

.method public a(FZFF)V
    .locals 9

    const/4 v8, 0x0

    const/16 v2, 0xa0

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->c:[F

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v1, v1, Lcom/amap/api/col/hw;->c:[F

    aget v1, v1, v6

    aput v1, v0, v7

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->c:[F

    aput p1, v0, v6

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->c:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v1, v1, Lcom/amap/api/col/hw;->c:[F

    aget v1, v1, v6

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->x()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->a(Z)V

    invoke-virtual {p0}, Lcom/amap/api/col/bw;->g()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/amap/api/col/bw;->c:I

    if-ge v0, v2, :cond_1

    iput v2, p0, Lcom/amap/api/col/bw;->c:I

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->E()F

    move-result v1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/bw;->a(FFZFF)V

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v0, v6}, Lcom/amap/api/col/am$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iput-boolean v6, v0, Lcom/amap/api/col/am$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/col/bw;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v8}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    invoke-super {p0}, Lcom/amap/api/col/ic;->e()V

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/amap/api/col/bw;->m:Z

    invoke-virtual {p0}, Lcom/amap/api/col/bw;->f()V

    iget v1, p0, Lcom/amap/api/col/bw;->j:F

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/bw;->a(FFZFF)V

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    invoke-virtual {v0, v6}, Lcom/amap/api/col/am$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iput-boolean v6, v0, Lcom/amap/api/col/am$a;->b:Z

    iget-object v0, p0, Lcom/amap/api/col/bw;->e:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, v8}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    invoke-super {p0}, Lcom/amap/api/col/ic;->e()V

    iput-boolean v7, p0, Lcom/amap/api/col/bw;->m:Z

    goto :goto_0
.end method

.method public a(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/amap/api/col/bw;->c:I

    return-void
.end method

.method protected b()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/amap/api/col/bw;->m:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/amap/api/col/am$a;->b:Z

    iget-boolean v0, p0, Lcom/amap/api/col/bw;->b:Z

    if-ne v0, v4, :cond_2

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/col/bw;->g:F

    float-to-int v1, v1

    iget v2, p0, Lcom/amap/api/col/bw;->h:F

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->b()Lcom/amap/api/col/au;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/col/bw;->g:F

    float-to-int v2, v2

    iget v3, p0, Lcom/amap/api/col/bw;->h:F

    float-to-int v3, v3

    invoke-interface {v1, v2, v3}, Lcom/amap/api/col/au;->a(II)Lcom/amap/api/col/f;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v2}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v3, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v3}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v3, v1}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ah;->a(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/am$d;->a(ZZ)V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->z()Lcom/amap/api/col/z;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/col/bw;->a:F

    invoke-virtual {v0, v1}, Lcom/amap/api/col/z;->c(F)F

    iget-object v0, p0, Lcom/amap/api/col/bw;->e:Landroid/view/animation/Animation$AnimationListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-boolean v0, p0, Lcom/amap/api/col/bw;->b:Z

    if-ne v0, v4, :cond_3

    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->c()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v2}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v2}, Lcom/amap/api/col/am$d;->d()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->b()Lcom/amap/api/col/au;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v2}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v2}, Lcom/amap/api/col/am$d;->c()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v3}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v3}, Lcom/amap/api/col/am$d;->d()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-interface {v1, v2, v3}, Lcom/amap/api/col/au;->a(II)Lcom/amap/api/col/f;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v2}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v2

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v3, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v3}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v3

    iget-object v3, v3, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v3, v1}, Lcom/amap/api/col/ah;->a(Lcom/amap/api/col/f;)Lcom/amap/api/col/f;

    move-result-object v1

    iput-object v1, v2, Lcom/amap/api/col/ah;->l:Lcom/amap/api/col/f;

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v1

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/ah;->a(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/am$d;->a(ZZ)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/amap/api/col/ah;->c:F

    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/amap/api/col/ar;->j:F

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->a()Lcom/amap/api/col/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/am;->a(Z)V

    invoke-static {}, Lcom/amap/api/col/im;->a()Lcom/amap/api/col/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/im;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/16 v0, 0xa0

    iput v0, p0, Lcom/amap/api/col/bw;->c:I

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ZoomCtlAnim"

    const-string v2, "onStop"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected c()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/bw;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v1, v0, Lcom/amap/api/col/ah;->c:F

    iget v2, p0, Lcom/amap/api/col/bw;->k:F

    add-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/col/ah;->c:F

    :goto_1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v1, v1, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v1, v1, Lcom/amap/api/col/ah;->c:F

    iget-object v2, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v2, v2, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v2, v2, Lcom/amap/api/col/ah;->c:F

    iget v3, p0, Lcom/amap/api/col/bw;->g:F

    iget v4, p0, Lcom/amap/api/col/bw;->h:F

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v2, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v2, v2, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v2, v2, Lcom/amap/api/col/ah;->c:F

    invoke-virtual {v1, v2}, Lcom/amap/api/col/hw;->c(F)Z

    iget-object v1, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    invoke-virtual {v1, v0}, Lcom/amap/api/col/hw;->b(Landroid/graphics/Matrix;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/bw;->f:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->a:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v1, v0, Lcom/amap/api/col/ah;->c:F

    iget v2, p0, Lcom/amap/api/col/bw;->k:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/amap/api/col/ah;->c:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
