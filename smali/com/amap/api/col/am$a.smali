.class public Lcom/amap/api/col/am$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/amap/api/col/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amap/api/col/az",
            "<",
            "Lcom/amap/api/col/u;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z

.field d:Ljava/lang/String;

.field e:I

.field f:I

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field final synthetic k:Lcom/amap/api/col/am;

.field private l:Z

.field private m:Z

.field private n:Landroid/content/Context;

.field private o:Z


# direct methods
.method private constructor <init>(Lcom/amap/api/col/am;Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/amap/api/col/am$a;->l:Z

    iput-boolean v3, p0, Lcom/amap/api/col/am$a;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    iput-boolean v1, p0, Lcom/amap/api/col/am$a;->b:Z

    iput-boolean v1, p0, Lcom/amap/api/col/am$a;->c:Z

    const-string v0, "zh_cn"

    iput-object v0, p0, Lcom/amap/api/col/am$a;->d:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/col/am$a;->e:I

    iput v1, p0, Lcom/amap/api/col/am$a;->f:I

    const-string v0, "SatelliteMap3"

    iput-object v0, p0, Lcom/amap/api/col/am$a;->h:Ljava/lang/String;

    const-string v0, "GridTmc3"

    iput-object v0, p0, Lcom/amap/api/col/am$a;->i:Ljava/lang/String;

    const-string v0, "SateliteTmc3"

    iput-object v0, p0, Lcom/amap/api/col/am$a;->j:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/col/am$a;->o:Z

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/amap/api/col/am$a;->n:Landroid/content/Context;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v2, v2, Lcom/amap/api/col/ah;->a:I

    div-int/2addr v0, v2

    invoke-direct {p0}, Lcom/amap/api/col/am$a;->c()I

    move-result v2

    add-int/2addr v0, v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    iget v2, v2, Lcom/amap/api/col/ah;->a:I

    div-int/2addr v1, v2

    invoke-direct {p0}, Lcom/amap/api/col/am$a;->c()I

    move-result v2

    add-int/2addr v1, v2

    mul-int v2, v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/am$a;->e:I

    iget v0, p0, Lcom/amap/api/col/am$a;->e:I

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/col/am$a;->f:I

    iget v0, p0, Lcom/amap/api/col/am$a;->f:I

    if-nez v0, :cond_2

    iput v3, p0, Lcom/amap/api/col/am$a;->f:I

    :cond_1
    :goto_1
    const-string v0, "zh_cn"

    invoke-direct {p0, p2, v0}, Lcom/amap/api/col/am$a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/amap/api/col/am$a;->f:I

    if-le v0, v4, :cond_1

    iput v4, p0, Lcom/amap/api/col/am$a;->f:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/am;Landroid/content/Context;Lcom/amap/api/col/an;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/amap/api/col/am$a;-><init>(Lcom/amap/api/col/am;Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/az;

    invoke-direct {v0}, Lcom/amap/api/col/az;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    :cond_0
    sget-object v0, Lcom/amap/api/col/it;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/amap/api/col/it;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "zh_cn"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GridMapV3"

    iput-object v0, p0, Lcom/amap/api/col/am$a;->g:Ljava/lang/String;

    :cond_2
    :goto_0
    new-instance v0, Lcom/amap/api/col/u;

    iget-object v1, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->i:Lcom/amap/api/col/ah;

    invoke-direct {v0, v1}, Lcom/amap/api/col/u;-><init>(Lcom/amap/api/col/ah;)V

    new-instance v1, Lcom/amap/api/col/ao;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/col/ao;-><init>(Lcom/amap/api/col/am$a;Lcom/amap/api/col/u;)V

    iput-object v1, v0, Lcom/amap/api/col/u;->j:Lcom/amap/api/col/bo;

    iget-object v1, p0, Lcom/amap/api/col/am$a;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/amap/api/col/u;->e:Z

    iput-boolean v4, v0, Lcom/amap/api/col/u;->f:Z

    sget v1, Lcom/amap/api/col/it;->d:I

    iput v1, v0, Lcom/amap/api/col/u;->c:I

    sget v1, Lcom/amap/api/col/it;->e:I

    iput v1, v0, Lcom/amap/api/col/u;->d:I

    new-instance v1, Lcom/amap/api/col/bg;

    iget-object v2, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v3, p0, Lcom/amap/api/col/am$a;->n:Landroid/content/Context;

    invoke-direct {v1, v2, v3, v0}, Lcom/amap/api/col/bg;-><init>(Lcom/amap/api/col/am;Landroid/content/Context;Lcom/amap/api/col/u;)V

    iput-object v1, v0, Lcom/amap/api/col/u;->q:Lcom/amap/api/col/bg;

    invoke-virtual {v0, v4}, Lcom/amap/api/col/u;->a(Z)V

    invoke-virtual {p0, v0, p1}, Lcom/amap/api/col/am$a;->a(Lcom/amap/api/col/u;Landroid/content/Context;)Z

    return-void

    :cond_3
    const-string v0, "en"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GridMapEnV3"

    iput-object v0, p0, Lcom/amap/api/col/am$a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/amap/api/col/it;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/col/am$a;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/col/u;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Lcom/amap/api/col/u;->a(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/am$a;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/am$a;->o:Z

    return v0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/am$a;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->g:Lcom/amap/api/col/d;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/d;->a(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, v0, Lcom/amap/api/col/u;->e:Z

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/amap/api/col/u;->a()Z

    move-result v4

    if-ne v4, v5, :cond_2

    invoke-virtual {v0, v2}, Lcom/amap/api/col/u;->a(Z)V

    goto :goto_1
.end method

.method private c()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->j:Lcom/amap/api/col/ad;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/ad;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v3}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput v1, v0, Lcom/amap/api/col/u;->l:I

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/amap/api/col/u;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v4, v0, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/col/u;->b()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    iget-object v0, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->clear()V

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->e:Lcom/amap/api/col/am$a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    goto :goto_0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;FF)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/am$a;->l:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p3, p4}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-direct {p0, p1}, Lcom/amap/api/col/am$a;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    invoke-virtual {v0}, Lcom/amap/api/col/be;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amap/api/col/am$a;->b(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/be;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    invoke-virtual {v0}, Lcom/amap/api/col/be;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/amap/api/col/am$a;->b(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/col/am$a;->b:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/col/am$a;->c:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/col/am$a;->a(Z)V

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-static {v0}, Lcom/amap/api/col/am$d;->a(Lcom/amap/api/col/am$d;)Lcom/amap/api/col/hw;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amap/api/col/hw;->b(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-static {v0}, Lcom/amap/api/col/am$d;->a(Lcom/amap/api/col/am$d;)Lcom/amap/api/col/hw;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/amap/api/col/hw;->c(F)Z

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-static {v0}, Lcom/amap/api/col/am$d;->a(Lcom/amap/api/col/am$d;)Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->F()V

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Lcom/amap/api/col/am$a;->c(Landroid/graphics/Canvas;)V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/amap/api/col/am$a;->a(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->h:Lcom/amap/api/col/hw;

    iget-object v0, v0, Lcom/amap/api/col/hw;->i:Lcom/amap/api/col/be;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/be;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/amap/api/col/am$a;->b(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Mediator"

    const-string v2, "draw"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/am$a;->l:Z

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method a(Lcom/amap/api/col/u;Landroid/content/Context;)Z
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p1, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, v8, :cond_0

    iget-object v0, p1, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/col/am$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eq v0, v8, :cond_0

    new-instance v0, Lcom/amap/api/col/az;

    invoke-direct {v0}, Lcom/amap/api/col/az;-><init>()V

    iput-object v0, p1, Lcom/amap/api/col/u;->p:Lcom/amap/api/col/az;

    new-instance v0, Lcom/amap/api/col/ap;

    iget v1, p0, Lcom/amap/api/col/am$a;->e:I

    iget v2, p0, Lcom/amap/api/col/am$a;->f:I

    iget-boolean v3, p1, Lcom/amap/api/col/u;->g:Z

    iget-wide v4, p1, Lcom/amap/api/col/u;->i:J

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/col/ap;-><init>(IIZJLcom/amap/api/col/u;)V

    iput-object v0, p1, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    new-instance v0, Lcom/amap/api/col/c;

    iget-object v1, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v1, v1, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-static {v1}, Lcom/amap/api/col/am$d;->a(Lcom/amap/api/col/am$d;)Lcom/amap/api/col/hw;

    move-result-object v1

    iget-boolean v1, v1, Lcom/amap/api/col/hw;->d:Z

    invoke-direct {v0, p2, v1, p1}, Lcom/amap/api/col/c;-><init>(Landroid/content/Context;ZLcom/amap/api/col/u;)V

    iput-object v0, p1, Lcom/amap/api/col/u;->o:Lcom/amap/api/col/c;

    iget-object v0, p1, Lcom/amap/api/col/u;->o:Lcom/amap/api/col/c;

    iget-object v1, p1, Lcom/amap/api/col/u;->n:Lcom/amap/api/col/ap;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/c;->a(Lcom/amap/api/col/ap;)V

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v0

    iget-boolean v1, p1, Lcom/amap/api/col/u;->e:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/az;->add(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    invoke-direct {p0}, Lcom/amap/api/col/am$a;->d()V

    invoke-virtual {p1}, Lcom/amap/api/col/u;->a()Z

    move-result v1

    if-ne v1, v8, :cond_3

    iget-object v1, p1, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v8}, Lcom/amap/api/col/am$a;->a(Ljava/lang/String;Z)Z

    :cond_3
    move v7, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-nez v0, :cond_6

    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    :cond_6
    iget-boolean v0, v0, Lcom/amap/api/col/u;->e:Z

    if-ne v0, v8, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v1, p1}, Lcom/amap/api/col/az;->add(ILjava/lang/Object;)V

    move v0, v7

    goto :goto_1

    :cond_7
    move v0, v7

    goto :goto_1
.end method

.method a(Ljava/lang/String;Z)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0}, Lcom/amap/api/col/az;->size()I

    move-result v4

    move v3, v1

    :goto_1
    if-ge v3, v4, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/am$a;->a:Lcom/amap/api/col/az;

    invoke-virtual {v0, v3}, Lcom/amap/api/col/az;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/u;

    if-nez v0, :cond_2

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v5, v0, Lcom/amap/api/col/u;->b:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_1

    invoke-virtual {v0, p2}, Lcom/amap/api/col/u;->a(Z)V

    iget-boolean v5, v0, Lcom/amap/api/col/u;->e:Z

    if-nez v5, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_1

    iget v3, v0, Lcom/amap/api/col/u;->c:I

    iget v4, v0, Lcom/amap/api/col/u;->d:I

    if-le v3, v4, :cond_4

    iget-object v3, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    iget v4, v0, Lcom/amap/api/col/u;->c:I

    invoke-virtual {v3, v4}, Lcom/amap/api/col/am$d;->a(I)V

    iget-object v3, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v3, v3, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    iget v0, v0, Lcom/amap/api/col/u;->d:I

    invoke-virtual {v3, v0}, Lcom/amap/api/col/am$d;->b(I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/api/col/am$a;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-virtual {v0, v1, v1}, Lcom/amap/api/col/am$d;->a(ZZ)V

    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-static {v0}, Lcom/amap/api/col/am$d;->a(Lcom/amap/api/col/am$d;)Lcom/amap/api/col/hw;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/am$a;->k:Lcom/amap/api/col/am;

    iget-object v0, v0, Lcom/amap/api/col/am;->c:Lcom/amap/api/col/am$d;

    invoke-static {v0}, Lcom/amap/api/col/am$d;->a(Lcom/amap/api/col/am$d;)Lcom/amap/api/col/hw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->postInvalidate()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/am$a;->m:Z

    return-void
.end method

.method public b(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
