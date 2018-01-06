.class Landroid/support/a/a/r$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/a/a/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "v"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/a/a/r;

.field private b:I

.field private c:I

.field private d:Landroid/support/v4/f/d;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/a/a/r;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/support/a/a/r;->r()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/r$v;->e:Landroid/view/animation/Interpolator;

    iput-boolean v1, p0, Landroid/support/a/a/r$v;->f:Z

    iput-boolean v1, p0, Landroid/support/a/a/r$v;->g:Z

    invoke-virtual {p1}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/a/a/r;->r()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/f/d;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/f/d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/r$v;->d:Landroid/support/v4/f/d;

    return-void
.end method

.method private a(F)F
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float v0, p1, v0

    float-to-double v0, v0

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private b(IIII)I
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    mul-int v1, p3, p3

    mul-int v4, p4, p4

    add-int/2addr v1, v4

    int-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v1}, Landroid/support/a/a/r;->getWidth()I

    move-result v1

    :goto_1
    div-int/lit8 v6, v1, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v8

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    int-to-float v7, v6

    int-to-float v6, v6

    invoke-direct {p0, v5}, Landroid/support/a/a/r$v;->a(F)F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    if-lez v4, :cond_2

    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v1}, Landroid/support/a/a/r;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v8

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/a/r$v;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r$v;->f:Z

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/a/r$v;->f:Z

    iget-boolean v0, p0, Landroid/support/a/a/r$v;->g:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/a/a/r$v;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/a/a/r$v;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a/r$v;->g:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v0, p0}, Landroid/support/a/a/r;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v0, p0}, Landroid/support/v4/e/w;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 9

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/a/a/r;->b(Landroid/support/a/a/r;I)V

    iput v1, p0, Landroid/support/a/a/r$v;->c:I

    iput v1, p0, Landroid/support/a/a/r$v;->b:I

    iget-object v0, p0, Landroid/support/a/a/r$v;->d:Landroid/support/v4/f/d;

    move v2, v1

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/f/d;->a(IIIIIIII)V

    invoke-virtual {p0}, Landroid/support/a/a/r$v;->a()V

    return-void
.end method

.method public a(III)V
    .locals 1

    invoke-static {}, Landroid/support/a/a/r;->r()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/a/a/r$v;->a(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/a/a/r$v;->b(IIII)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/a/a/r$v;->a(III)V

    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/a/a/r$v;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    iput-object p4, p0, Landroid/support/a/a/r$v;->e:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v0}, Landroid/support/a/a/r;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/f/d;->a(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/f/d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/a/a/r$v;->d:Landroid/support/v4/f/d;

    :cond_0
    iget-object v0, p0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/a/a/r;->b(Landroid/support/a/a/r;I)V

    iput v1, p0, Landroid/support/a/a/r$v;->c:I

    iput v1, p0, Landroid/support/a/a/r$v;->b:I

    iget-object v0, p0, Landroid/support/a/a/r$v;->d:Landroid/support/v4/f/d;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/f/d;->a(IIIII)V

    invoke-virtual {p0}, Landroid/support/a/a/r$v;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v0, p0}, Landroid/support/a/a/r;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/a/a/r$v;->d:Landroid/support/v4/f/d;

    invoke-virtual {v0}, Landroid/support/v4/f/d;->h()V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/a/a/r$v;->a(IIII)V

    return-void
.end method

.method public run()V
    .locals 22

    invoke-direct/range {p0 .. p0}, Landroid/support/a/a/r$v;->c()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v4}, Landroid/support/a/a/r;->e(Landroid/support/a/a/r;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/a/a/r$v;->d:Landroid/support/v4/f/d;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v4}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v4

    iget-object v12, v4, Landroid/support/a/a/r$i;->j:Landroid/support/a/a/r$s;

    invoke-virtual {v11}, Landroid/support/v4/f/d;->g()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual {v11}, Landroid/support/v4/f/d;->b()I

    move-result v13

    invoke-virtual {v11}, Landroid/support/v4/f/d;->c()I

    move-result v14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/a/a/r$v;->b:I

    sub-int v15, v13, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/a/a/r$v;->c:I

    sub-int v16, v14, v4

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Landroid/support/a/a/r$v;->b:I

    move-object/from16 v0, p0

    iput v14, v0, Landroid/support/a/a/r$v;->c:I

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v8}, Landroid/support/a/a/r;->f(Landroid/support/a/a/r;)Landroid/support/a/a/r$a;

    move-result-object v8

    if-eqz v8, :cond_18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v8}, Landroid/support/a/a/r;->b()V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v8}, Landroid/support/a/a/r;->g(Landroid/support/a/a/r;)V

    const-string v8, "RV Scroll"

    invoke-static {v8}, Landroid/support/v4/c/a;->a(Ljava/lang/String;)V

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v6}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    iget-object v7, v7, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    iget-object v8, v8, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v6, v15, v7, v8}, Landroid/support/a/a/r$i;->a(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v7

    sub-int v6, v15, v7

    :cond_0
    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v4}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    iget-object v5, v5, Landroid/support/a/a/r;->a:Landroid/support/a/a/r$o;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    iget-object v8, v8, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5, v8}, Landroid/support/a/a/r$i;->b(ILandroid/support/a/a/r$o;Landroid/support/a/a/r$t;)I

    move-result v5

    sub-int v4, v16, v5

    :cond_1
    invoke-static {}, Landroid/support/v4/c/a;->a()V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v8}, Landroid/support/a/a/r;->h(Landroid/support/a/a/r;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    iget-object v8, v8, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v8}, Landroid/support/a/a/b;->b()I

    move-result v9

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    iget-object v10, v10, Landroid/support/a/a/r;->c:Landroid/support/a/a/b;

    invoke-virtual {v10, v8}, Landroid/support/a/a/b;->b(I)Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/support/a/a/r;->a(Landroid/view/View;)Landroid/support/a/a/r$w;

    move-result-object v17

    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/a/a/r$w;->h:Landroid/support/a/a/r$w;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/a/a/r$w;->h:Landroid/support/a/a/r$w;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/a/a/r$w;->a:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v18

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v19

    move/from16 v0, v19

    if-eq v10, v0, :cond_3

    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v19

    add-int v19, v19, v18

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v20

    add-int v20, v20, v10

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v8}, Landroid/support/a/a/r;->i(Landroid/support/a/a/r;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/a/a/r;->a(Z)V

    if-eqz v12, :cond_18

    invoke-virtual {v12}, Landroid/support/a/a/r$s;->b()Z

    move-result v8

    if-nez v8, :cond_18

    invoke-virtual {v12}, Landroid/support/a/a/r$s;->c()Z

    move-result v8

    if-eqz v8, :cond_18

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    iget-object v8, v8, Landroid/support/a/a/r;->e:Landroid/support/a/a/r$t;

    invoke-virtual {v8}, Landroid/support/a/a/r$t;->d()I

    move-result v8

    if-nez v8, :cond_16

    invoke-virtual {v12}, Landroid/support/a/a/r$s;->a()V

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v8}, Landroid/support/a/a/r;->j(Landroid/support/a/a/r;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v8}, Landroid/support/a/a/r;->invalidate()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v8}, Landroid/support/v4/e/w;->a(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    move/from16 v0, v16

    invoke-static {v8, v15, v0}, Landroid/support/a/a/r;->a(Landroid/support/a/a/r;II)V

    :cond_6
    if-nez v5, :cond_7

    if-eqz v4, :cond_c

    :cond_7
    invoke-virtual {v11}, Landroid/support/v4/f/d;->f()F

    move-result v8

    float-to-int v9, v8

    const/4 v8, 0x0

    if-eq v5, v13, :cond_21

    if-gez v5, :cond_19

    neg-int v8, v9

    :goto_2
    move v10, v8

    :goto_3
    const/4 v8, 0x0

    if-eq v4, v14, :cond_20

    if-gez v4, :cond_1b

    neg-int v9, v9

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v8}, Landroid/support/v4/e/w;->a(Landroid/view/View;)I

    move-result v8

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v8, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v8, v10, v9}, Landroid/support/a/a/r;->c(II)V

    :cond_9
    if-nez v10, :cond_a

    if-eq v5, v13, :cond_a

    invoke-virtual {v11}, Landroid/support/v4/f/d;->d()I

    move-result v5

    if-nez v5, :cond_c

    :cond_a
    if-nez v9, :cond_b

    if-eq v4, v14, :cond_b

    invoke-virtual {v11}, Landroid/support/v4/f/d;->e()I

    move-result v4

    if-nez v4, :cond_c

    :cond_b
    invoke-virtual {v11}, Landroid/support/v4/f/d;->h()V

    :cond_c
    if-nez v7, :cond_d

    if-eqz v6, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v4, v7, v6}, Landroid/support/a/a/r;->g(II)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v4}, Landroid/support/a/a/r;->k(Landroid/support/a/a/r;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-virtual {v4}, Landroid/support/a/a/r;->invalidate()V

    :cond_f
    if-eqz v16, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v4}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/a/a/r$i;->d()Z

    move-result v4

    if-eqz v4, :cond_1c

    move/from16 v0, v16

    if-ne v6, v0, :cond_1c

    const/4 v4, 0x1

    move v5, v4

    :goto_5
    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    invoke-static {v4}, Landroid/support/a/a/r;->d(Landroid/support/a/a/r;)Landroid/support/a/a/r$i;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/a/a/r$i;->c()Z

    move-result v4

    if-eqz v4, :cond_1d

    if-ne v7, v15, :cond_1d

    const/4 v4, 0x1

    :goto_6
    if-nez v15, :cond_10

    if-eqz v16, :cond_11

    :cond_10
    if-nez v4, :cond_11

    if-eqz v5, :cond_1e

    :cond_11
    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v11}, Landroid/support/v4/f/d;->a()Z

    move-result v5

    if-nez v5, :cond_12

    if-nez v4, :cond_1f

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/a/a/r$v;->a:Landroid/support/a/a/r;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/support/a/a/r;->b(Landroid/support/a/a/r;I)V

    :cond_13
    :goto_8
    if-eqz v12, :cond_15

    invoke-virtual {v12}, Landroid/support/a/a/r$s;->b()Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v12, v4, v5}, Landroid/support/a/a/r$s;->a(Landroid/support/a/a/r$s;II)V

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/a/a/r$v;->g:Z

    if-nez v4, :cond_15

    invoke-virtual {v12}, Landroid/support/a/a/r$s;->a()V

    :cond_15
    invoke-direct/range {p0 .. p0}, Landroid/support/a/a/r$v;->d()V

    return-void

    :cond_16
    invoke-virtual {v12}, Landroid/support/a/a/r$s;->d()I

    move-result v9

    if-lt v9, v8, :cond_17

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v12, v8}, Landroid/support/a/a/r$s;->a(I)V

    sub-int v8, v15, v6

    sub-int v9, v16, v4

    invoke-static {v12, v8, v9}, Landroid/support/a/a/r$s;->a(Landroid/support/a/a/r$s;II)V

    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    goto/16 :goto_1

    :cond_17
    sub-int v8, v15, v6

    sub-int v9, v16, v4

    invoke-static {v12, v8, v9}, Landroid/support/a/a/r$s;->a(Landroid/support/a/a/r$s;II)V

    :cond_18
    move/from16 v21, v6

    move v6, v5

    move/from16 v5, v21

    goto/16 :goto_1

    :cond_19
    if-lez v5, :cond_1a

    move v8, v9

    goto/16 :goto_2

    :cond_1a
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_1b
    if-gtz v4, :cond_8

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_1c
    const/4 v4, 0x0

    move v5, v4

    goto :goto_5

    :cond_1d
    const/4 v4, 0x0

    goto :goto_6

    :cond_1e
    const/4 v4, 0x0

    goto :goto_7

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/support/a/a/r$v;->a()V

    goto :goto_8

    :cond_20
    move v9, v8

    goto/16 :goto_4

    :cond_21
    move v10, v8

    goto/16 :goto_3
.end method
