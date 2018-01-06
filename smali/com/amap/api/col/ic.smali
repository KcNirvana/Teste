.class abstract Lcom/amap/api/col/ic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/os/Handler;

.field private b:I

.field protected c:I

.field protected d:I

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ic;->a:Landroid/os/Handler;

    iput v1, p0, Lcom/amap/api/col/ic;->b:I

    iput-boolean v1, p0, Lcom/amap/api/col/ic;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/ic;->f:Z

    new-instance v0, Lcom/amap/api/col/id;

    invoke-direct {v0, p0}, Lcom/amap/api/col/id;-><init>(Lcom/amap/api/col/ic;)V

    iput-object v0, p0, Lcom/amap/api/col/ic;->g:Ljava/lang/Runnable;

    iput p1, p0, Lcom/amap/api/col/ic;->c:I

    iput p2, p0, Lcom/amap/api/col/ic;->d:I

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/ic;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/ic;->a:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/col/ic;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/ic;->h()V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/ic;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ic;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/amap/api/col/ic;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/ic;->f:Z

    return v0
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/ic;->e:Z

    return-void
.end method

.method static synthetic d(Lcom/amap/api/col/ic;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/ic;->i()V

    return-void
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lcom/amap/api/col/ic;->b:I

    iget v1, p0, Lcom/amap/api/col/ic;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/ic;->b:I

    iget v0, p0, Lcom/amap/api/col/ic;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/amap/api/col/ic;->b:I

    iget v1, p0, Lcom/amap/api/col/ic;->c:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/col/ic;->d()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/col/ic;->b(Z)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/ic;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ic;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/col/ic;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/ic;->c:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/ic;->e:Z

    return-void
.end method

.method protected abstract b()V
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/ic;->f:Z

    return-void
.end method

.method protected abstract c()V
.end method

.method public e()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/col/ic;->g()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/col/ic;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/ic;->e:Z

    iput-boolean v2, p0, Lcom/amap/api/col/ic;->f:Z

    iput v2, p0, Lcom/amap/api/col/ic;->b:I

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/ic;->i()V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-static {}, Lcom/amap/api/col/io;->a()Lcom/amap/api/col/io;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/col/io;->b()V

    invoke-direct {p0}, Lcom/amap/api/col/ic;->d()V

    iget-object v0, p0, Lcom/amap/api/col/ic;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/ic;->e:Z

    return v0
.end method
