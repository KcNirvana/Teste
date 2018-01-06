.class Lcom/amap/api/col/ad;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/ad$a;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/col/hw;

.field b:Lcom/amap/api/col/ad$a;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/q;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/col/k;",
            ">;"
        }
    .end annotation
.end field

.field private volatile e:I

.field private f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/amap/api/col/n;

.field private i:Lcom/amap/api/col/k;

.field private j:Lcom/amap/api/col/k;

.field private k:F

.field private l:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amap/api/col/hw;)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/col/ad;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/ad;->e:I

    new-instance v0, Lcom/amap/api/col/ad$a;

    invoke-direct {v0}, Lcom/amap/api/col/ad$a;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ad;->b:Lcom/amap/api/col/ad$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ad;->f:Landroid/os/Handler;

    new-instance v0, Lcom/amap/api/col/ae;

    invoke-direct {v0, p0}, Lcom/amap/api/col/ae;-><init>(Lcom/amap/api/col/ad;)V

    iput-object v0, p0, Lcom/amap/api/col/ad;->g:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/ad;->j:Lcom/amap/api/col/k;

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/ad;->k:F

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/ad;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p3, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    return-void
.end method

.method private a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/col/n;)Lcom/amap/api/col/q;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amap/api/col/q;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/col/n;",
            ")",
            "Lcom/amap/api/col/q;"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/q;

    invoke-interface {v0}, Lcom/amap/api/col/q;->a()Lcom/amap/api/maps2d/a/h;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    iget-wide v2, v4, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v4, v4, Lcom/amap/api/maps2d/a/h;->b:D

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/col/hw;->a(DDLcom/amap/api/col/n;)V

    iget v1, p3, Lcom/amap/api/col/n;->a:I

    iget v2, p3, Lcom/amap/api/col/n;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/col/ad;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/col/ad;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/col/n;)Lcom/amap/api/col/k;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/amap/api/col/k;",
            ">;",
            "Landroid/graphics/Rect;",
            "Lcom/amap/api/col/n;",
            ")",
            "Lcom/amap/api/col/k;"
        }
    .end annotation

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/k;

    invoke-interface {v0}, Lcom/amap/api/col/k;->u()Lcom/amap/api/maps2d/a/h;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    iget-wide v2, v4, Lcom/amap/api/maps2d/a/h;->a:D

    iget-wide v4, v4, Lcom/amap/api/maps2d/a/h;->b:D

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/amap/api/col/hw;->a(DDLcom/amap/api/col/n;)V

    iget v1, p3, Lcom/amap/api/col/n;->a:I

    iget v2, p3, Lcom/amap/api/col/n;->b:I

    invoke-virtual {p0, p2, v1, v2}, Lcom/amap/api/col/ad;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/col/ad;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ad;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private g()I
    .locals 2

    iget v0, p0, Lcom/amap/api/col/ad;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/col/ad;->e:I

    return v0
.end method

.method private h()V
    .locals 6

    const-string v2, "redrawInfoWindow"

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/k;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ad;->i:Lcom/amap/api/col/k;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/ad;->i:Lcom/amap/api/col/k;

    invoke-interface {v1}, Lcom/amap/api/col/k;->l()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amap/api/col/k;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/ad;->i:Lcom/amap/api/col/k;

    invoke-interface {v1}, Lcom/amap/api/col/k;->w()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :catch_0
    move-exception v1

    const-string v4, "MapOverlayImageView"

    invoke-static {v1, v4, v2}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lcom/amap/api/col/k;->a()Landroid/graphics/Rect;

    move-result-object v1

    new-instance v4, Lcom/amap/api/col/n;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    invoke-interface {v0}, Lcom/amap/api/col/k;->h()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v4, v0, v1}, Lcom/amap/api/col/n;-><init>(II)V

    iput-object v4, p0, Lcom/amap/api/col/ad;->h:Lcom/amap/api/col/n;

    iget-object v0, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->r()V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/col/hw;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    return-object v0
.end method

.method public declared-synchronized a(Landroid/view/MotionEvent;)Lcom/amap/api/col/k;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/k;

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/amap/api/col/k;->a()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/amap/api/col/ad;->a(Landroid/graphics/Rect;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Lcom/amap/api/col/k;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/k;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amap/api/col/k;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/graphics/Canvas;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/col/ad;->h()V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v3}, Lcom/amap/api/col/hw;->e()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v4}, Lcom/amap/api/col/hw;->f()I

    move-result v4

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Lcom/amap/api/col/n;

    invoke-direct {v3}, Lcom/amap/api/col/n;-><init>()V

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v0, p0, Lcom/amap/api/col/ad;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-direct {p0, v4, v2, v3}, Lcom/amap/api/col/ad;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/col/n;)Lcom/amap/api/col/k;

    move-result-object v1

    invoke-direct {p0, v5, v2, v3}, Lcom/amap/api/col/ad;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/col/n;)Lcom/amap/api/col/q;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    if-nez v1, :cond_1

    invoke-interface {v0, p1}, Lcom/amap/api/col/q;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v5, v2, v3}, Lcom/amap/api/col/ad;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/col/n;)Lcom/amap/api/col/q;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v6, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-interface {v1, p1, v6}, Lcom/amap/api/col/k;->a(Landroid/graphics/Canvas;Lcom/amap/api/col/h;)V

    invoke-direct {p0, v4, v2, v3}, Lcom/amap/api/col/ad;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/col/n;)Lcom/amap/api/col/k;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/amap/api/col/k;->c()F

    move-result v6

    invoke-interface {v0}, Lcom/amap/api/col/q;->c()F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_3

    invoke-interface {v1}, Lcom/amap/api/col/k;->c()F

    move-result v6

    invoke-interface {v0}, Lcom/amap/api/col/q;->c()F

    move-result v7

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    invoke-interface {v1}, Lcom/amap/api/col/k;->d()I

    move-result v6

    invoke-interface {v0}, Lcom/amap/api/col/q;->d()I

    move-result v7

    if-ge v6, v7, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-interface {v1, p1, v6}, Lcom/amap/api/col/k;->a(Landroid/graphics/Canvas;Lcom/amap/api/col/h;)V

    invoke-direct {p0, v4, v2, v3}, Lcom/amap/api/col/ad;->b(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/col/n;)Lcom/amap/api/col/k;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-interface {v0, p1}, Lcom/amap/api/col/q;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, v5, v2, v3}, Lcom/amap/api/col/ad;->a(Ljava/util/Iterator;Landroid/graphics/Rect;Lcom/amap/api/col/n;)Lcom/amap/api/col/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/api/col/k;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v1, "addMarker"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/amap/api/col/ad;->d(Lcom/amap/api/col/k;)V

    invoke-direct {p0}, Lcom/amap/api/col/ad;->g()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amap/api/col/k;->a(I)V

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/amap/api/col/ad;->d()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "MapOverlayImageView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/graphics/Rect;II)Z
    .locals 1

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method protected b()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized b(Landroid/view/MotionEvent;)Z
    .locals 6

    monitor-enter p0

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/k;

    if-nez v0, :cond_1

    :cond_0
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/amap/api/col/k;->a()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v1, v5}, Lcom/amap/api/col/ad;->a(Landroid/graphics/Rect;II)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/amap/api/col/n;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    invoke-interface {v0}, Lcom/amap/api/col/k;->h()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-direct {v2, v3, v4}, Lcom/amap/api/col/n;-><init>(II)V

    iput-object v2, p0, Lcom/amap/api/col/ad;->h:Lcom/amap/api/col/n;

    iput-object v0, p0, Lcom/amap/api/col/ad;->i:Lcom/amap/api/col/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    :goto_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public declared-synchronized b(Lcom/amap/api/col/k;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/ad;->d(Lcom/amap/api/col/k;)V

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/col/ad;->postInvalidate()V

    iget-object v1, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v1}, Lcom/amap/api/col/hw;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v1, "clear"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/k;

    invoke-interface {v0}, Lcom/amap/api/col/k;->e()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "MapOverlayImageView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/col/ad;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/ad;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ad;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->invalidate()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Lcom/amap/api/col/k;)V
    .locals 2

    const/high16 v1, 0x4f000000

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ad;->j:Lcom/amap/api/col/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/ad;->j:Lcom/amap/api/col/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ad;->j:Lcom/amap/api/col/k;

    invoke-interface {v0}, Lcom/amap/api/col/k;->c()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/ad;->j:Lcom/amap/api/col/k;

    iget v1, p0, Lcom/amap/api/col/ad;->k:F

    invoke-interface {v0, v1}, Lcom/amap/api/col/k;->a(F)V

    :cond_2
    invoke-interface {p1}, Lcom/amap/api/col/k;->c()F

    move-result v0

    iput v0, p0, Lcom/amap/api/col/ad;->k:F

    iput-object p1, p0, Lcom/amap/api/col/ad;->j:Lcom/amap/api/col/k;

    const/high16 v0, 0x4f000000

    invoke-interface {p1, v0}, Lcom/amap/api/col/k;->a(F)V

    invoke-virtual {p0}, Lcom/amap/api/col/ad;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method d()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/ad;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/col/ad;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/amap/api/col/ad;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amap/api/col/ad;->g:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public d(Lcom/amap/api/col/k;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/amap/api/col/ad;->e(Lcom/amap/api/col/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0}, Lcom/amap/api/col/hw;->q()V

    :cond_0
    return-void
.end method

.method public e()Lcom/amap/api/col/k;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ad;->i:Lcom/amap/api/col/k;

    return-object v0
.end method

.method public e(Lcom/amap/api/col/k;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/ad;->a:Lcom/amap/api/col/hw;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/hw;->b(Lcom/amap/api/col/k;)Z

    move-result v0

    return v0
.end method

.method public f()V
    .locals 4

    const-string v1, "destory"

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/ad;->f:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/ad;->f:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/ad;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MapOverlayImageView"

    invoke-static {v0, v2, v1}, Lcom/amap/api/col/bz;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "amapApi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MapOverlayImageView clear erro"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
