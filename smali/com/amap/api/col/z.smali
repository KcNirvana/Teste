.class final Lcom/amap/api/col/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/z$b;,
        Lcom/amap/api/col/z$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:Lcom/amap/api/col/am;

.field private d:Z

.field private e:Lcom/amap/api/col/z$b;

.field private f:Lcom/amap/api/col/z$a;


# direct methods
.method constructor <init>(Lcom/amap/api/col/am;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/amap/api/col/z;->a:F

    iput v0, p0, Lcom/amap/api/col/z;->b:F

    iput-object p1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/z;->d:Z

    new-instance v0, Lcom/amap/api/col/z$b;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/z$b;-><init>(Lcom/amap/api/col/z;Lcom/amap/api/col/aa;)V

    iput-object v0, p0, Lcom/amap/api/col/z;->e:Lcom/amap/api/col/z$b;

    new-instance v0, Lcom/amap/api/col/z$a;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/z$a;-><init>(Lcom/amap/api/col/z;Lcom/amap/api/col/aa;)V

    iput-object v0, p0, Lcom/amap/api/col/z;->f:Lcom/amap/api/col/z$a;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/z;)Lcom/amap/api/col/am;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    return-object v0
.end method

.method private a(IIZZ)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/z;->a(IIZZII)Z

    move-result v0

    return v0
.end method

.method private a(IIZZII)Z
    .locals 8

    const/4 v1, 0x0

    const-string v7, "zoomWithAnimation"

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->H()V

    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->e()F

    move-result v0

    int-to-float v2, p5

    add-float/2addr v0, v2

    :goto_1
    iget-object v2, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v2}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hw;->a(F)F

    move-result v3

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->e()F

    move-result v0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/col/z;->a(IIFZZI)V

    const/4 v0, 0x1

    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->p()Lcom/amap/api/col/s;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/col/s;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->I()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapController"

    invoke-static {v1, v2, v7}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->e()F

    move-result v0

    int-to-float v2, p5

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private b(Lcom/amap/api/col/f;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->f()Lcom/amap/api/col/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/col/f;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/amap/api/col/f;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/amap/api/col/f;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/amap/api/col/f;->a()I

    move-result v1

    if-eq v2, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/amap/api/col/f;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->H()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/am$d;->a(Lcom/amap/api/col/f;)V

    :cond_1
    return-void
.end method

.method private e(F)F
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    const-string v1, "setZoom"

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->H()V

    invoke-virtual {v0, p1}, Lcom/amap/api/col/hw;->a(F)F

    move-result p1

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/am$d;->a(F)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->p()Lcom/amap/api/col/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/col/s;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->I()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "MapController"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(F)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->e()F

    move-result v1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/z;->a:F

    return v0
.end method

.method public a(FI)F
    .locals 1

    sget v0, Lcom/amap/api/col/it;->d:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    sget v0, Lcom/amap/api/col/it;->d:I

    int-to-float p1, v0

    :cond_0
    sget v0, Lcom/amap/api/col/it;->e:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    sget v0, Lcom/amap/api/col/it;->e:I

    int-to-float p1, v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/col/z;->f(F)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    return p1

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/amap/api/col/z;->b(FI)Z

    goto :goto_0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/z;->a:F

    return-void
.end method

.method public a(FF)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/z;->a(FFIII)V

    return-void
.end method

.method public a(FFIII)V
    .locals 19

    const-string v8, "zoomToSpan"

    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->b:Lcom/amap/api/col/am$e;

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v4}, Lcom/amap/api/col/am$d;->e()F

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->b:Lcom/amap/api/col/am$e;

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2}, Lcom/amap/api/col/am$e;->b(III)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v7, v7, Lcom/amap/api/col/am;->b:Lcom/amap/api/col/am$e;

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v7, v0, v1, v2}, Lcom/amap/api/col/am$e;->a(III)I

    move-result v7

    if-nez v4, :cond_3

    if-nez v7, :cond_3

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amap/api/col/z;->a:F

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amap/api/col/z;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    move v4, v5

    move-object/from16 v5, v18

    :goto_1
    const-string v6, "MapController"

    invoke-static {v5, v6, v8}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string v5, "MapController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "zoom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/amap/api/col/z;->c(F)F

    goto :goto_0

    :cond_3
    int-to-float v5, v7

    div-float v5, v5, p1

    float-to-double v10, v5

    int-to-float v4, v4

    div-float v4, v4, p2

    float-to-double v4, v4

    :try_start_1
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v7, v7, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-wide v10, v7, Lcom/amap/api/col/ah;->k:D

    div-double/2addr v10, v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-wide v4, v4, Lcom/amap/api/col/ah;->d:D

    :goto_3
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v12

    cmpl-double v9, v4, v10

    if-lez v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v4, v4, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-wide v4, v4, Lcom/amap/api/col/ah;->d:D

    const/4 v9, 0x1

    shl-int/2addr v9, v7

    int-to-double v12, v9

    div-double/2addr v4, v12

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    div-double/2addr v4, v10

    int-to-double v6, v7

    add-double/2addr v4, v6

    double-to-float v5, v4

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/amap/api/col/z;->d(F)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    float-to-int v5, v4

    int-to-float v6, v5

    sub-float v6, v4, v6

    float-to-double v10, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :try_start_3
    sget-wide v16, Lcom/amap/api/col/am;->a:D

    sub-double v14, v14, v16

    const-wide v16, 0x3fd999999999999aL    # 0.4

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    cmpl-double v7, v10, v12

    if-lez v7, :cond_5

    sget-wide v6, Lcom/amap/api/col/am;->a:D

    double-to-float v4, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    goto/16 :goto_2

    :cond_5
    float-to-double v10, v6

    sget-wide v12, Lcom/amap/api/col/am;->a:D

    cmpl-double v7, v10, v12

    if-lez v7, :cond_6

    sget-wide v6, Lcom/amap/api/col/am;->a:D

    const-wide v8, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    sub-double/2addr v6, v8

    double-to-float v4, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    goto/16 :goto_2

    :cond_6
    float-to-double v6, v6

    sget-wide v10, Lcom/amap/api/col/am;->a:D

    sub-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide v10, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    cmpg-double v6, v6, v10

    if-gtz v6, :cond_2

    sget-wide v6, Lcom/amap/api/col/am;->a:D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-wide v8, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    sub-double/2addr v6, v8

    double-to-float v4, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    goto/16 :goto_2

    :catch_1
    move-exception v4

    move-object v5, v4

    move v4, v6

    goto/16 :goto_1

    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public a(IIFZZI)V
    .locals 7

    iget-object v0, p0, Lcom/amap/api/col/z;->e:Lcom/amap/api/col/z$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/amap/api/col/z$b;->a(IIFZZI)V

    return-void
.end method

.method public a(III)V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/z;->d:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/col/z;->d:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/amap/api/col/it;->s:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-virtual {v2, v0, v1}, Lcom/amap/api/col/ah;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)Lcom/amap/api/col/f;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lcom/amap/api/col/z;->a(Lcom/amap/api/col/f;I)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/am$d;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MapController"

    const-string v2, "scrollBy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/col/f;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/z;->b(Lcom/amap/api/col/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amap/api/col/z;->c(Lcom/amap/api/col/f;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/col/f;F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/z;->b(Lcom/amap/api/col/f;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/col/z;->f(F)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/z;->c(Lcom/amap/api/col/f;)V

    invoke-direct {p0, p2}, Lcom/amap/api/col/z;->e(F)F

    goto :goto_0
.end method

.method public a(Lcom/amap/api/col/f;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/z;->f:Lcom/amap/api/col/z$a;

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/amap/api/col/z$a;->a(Lcom/amap/api/col/f;Landroid/os/Message;Ljava/lang/Runnable;I)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->H()V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->e()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amap/api/col/hw;->a(F)F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->e()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/z;->c(F)F

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->e()F

    move-result v1

    int-to-float v0, v0

    sub-float v0, v1, v0

    goto :goto_0
.end method

.method public a(FIII)Z
    .locals 1

    invoke-virtual {p0, p2, p3, p1, p4}, Lcom/amap/api/col/z;->a(IIFI)Z

    move-result v0

    return v0
.end method

.method public a(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/z;->a(II)Z

    move-result v0

    return v0
.end method

.method a(II)Z
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->c()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->d()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/z;->a(IIZZII)Z

    move-result v4

    goto :goto_0
.end method

.method public a(IIFI)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->g()Lcom/amap/api/col/hw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->H()V

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->e()F

    move-result v4

    cmpl-float v1, p3, v4

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/z;->e:Lcom/amap/api/col/z$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/col/z$b;->a(IIFFI)V

    const/4 v0, 0x1

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->p()Lcom/amap/api/col/s;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/api/col/s;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->I()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MapController"

    const-string v3, "zoomToAnimation"

    invoke-static {v1, v2, v3}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lcom/amap/api/col/z;->b:F

    return v0
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/z;->b:F

    return-void
.end method

.method public b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/z;->e:Lcom/amap/api/col/z$b;

    invoke-virtual {v0}, Lcom/amap/api/col/z$b;->a()V

    iget-object v0, p0, Lcom/amap/api/col/z;->f:Lcom/amap/api/col/z$a;

    invoke-virtual {v0}, Lcom/amap/api/col/z$a;->b()V

    return-void
.end method

.method public b(FI)Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->c()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v1}, Lcom/amap/api/col/am$d;->d()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amap/api/col/z;->a(IIFI)Z

    move-result v0

    return v0
.end method

.method public b(I)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/z;->b(II)Z

    move-result v0

    return v0
.end method

.method b(II)Z
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->c()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->d()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    move-object v0, p0

    move v4, v3

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/z;->a(IIZZII)Z

    move-result v3

    goto :goto_0
.end method

.method public c(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/amap/api/col/z;->f(F)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/z;->e(F)F

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/z;->a(I)Z

    move-result v0

    return v0
.end method

.method public c(II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amap/api/col/z;->a(IIZZ)Z

    move-result v0

    return v0
.end method

.method public d(F)F
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->b()I

    move-result v0

    int-to-float p1, v0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->a()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0}, Lcom/amap/api/col/am$d;->a()I

    move-result v0

    int-to-float p1, v0

    goto :goto_0
.end method

.method public d(II)V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/amap/api/col/z;->d:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/amap/api/col/z;->d:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    if-eqz v0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/amap/api/col/it;->s:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v2, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v2, v2, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget-object v3, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v3}, Lcom/amap/api/col/am$d;->e()F

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/amap/api/col/ah;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/z;->c:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/col/am$d;->a(ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MapController"

    const-string v2, "scrollBy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/z;->b(I)Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/z;->d:Z

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/z;->f:Lcom/amap/api/col/z$a;

    invoke-virtual {v0}, Lcom/amap/api/col/z$a;->a()Z

    move-result v0

    return v0
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/z;->f:Lcom/amap/api/col/z$a;

    invoke-virtual {v0}, Lcom/amap/api/col/z$a;->b()V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v3, 0xa

    const/16 v2, -0xa

    const/4 v1, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/amap/api/col/z;->d(II)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0, v3, v1}, Lcom/amap/api/col/z;->d(II)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/amap/api/col/z;->d(II)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v1, v3}, Lcom/amap/api/col/z;->d(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
