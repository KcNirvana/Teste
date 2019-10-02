.class public Lcom/google/ads/interactivemedia/v3/internal/iy;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/jj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/iy$a;,
        Lcom/google/ads/interactivemedia/v3/internal/iy$c;,
        Lcom/google/ads/interactivemedia/v3/internal/iy$e;,
        Lcom/google/ads/interactivemedia/v3/internal/iy$d;,
        Lcom/google/ads/interactivemedia/v3/internal/iy$b;,
        Lcom/google/ads/interactivemedia/v3/internal/iy$f;,
        Lcom/google/ads/interactivemedia/v3/internal/iy$g;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ba;

.field private final b:Landroid/view/SurfaceView;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/at;

.field private final d:Landroid/widget/FrameLayout;

.field private final e:Landroid/view/ViewGroup;

.field private final f:Landroid/content/Context;

.field private final g:Landroid/os/Handler;

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/iy$b;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/iy$e;

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/iy$c;

.field private final l:Lcom/google/ads/interactivemedia/v3/internal/iy$a;

.field private m:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

.field private n:Z

.field private o:Lcom/google/ads/interactivemedia/v3/internal/bq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ba$b;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ba;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/iy;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/internal/ba;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/interactivemedia/v3/internal/ba;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->f:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->e:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/iy$b;

    invoke-direct {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/iy$b;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iy;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->i:Lcom/google/ads/interactivemedia/v3/internal/iy$b;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/iy$c;

    invoke-direct {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/iy$c;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iy;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->k:Lcom/google/ads/interactivemedia/v3/internal/iy$c;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/iy$e;

    invoke-direct {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/iy$e;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iy;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->j:Lcom/google/ads/interactivemedia/v3/internal/iy$e;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/iy$a;

    invoke-direct {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/iy$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iy;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->l:Lcom/google/ads/interactivemedia/v3/internal/iy$a;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->l:Lcom/google/ads/interactivemedia/v3/internal/iy$a;

    invoke-interface {p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a(Lcom/google/ads/interactivemedia/v3/internal/ba$c;)V

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->g:Landroid/os/Handler;

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->h:Ljava/util/List;

    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->d:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->d:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/at;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/at;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->c:Lcom/google/ads/interactivemedia/v3/internal/at;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x11

    iput v2, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->c:Lcom/google/ads/interactivemedia/v3/internal/at;

    invoke-virtual {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/at;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/iy$f;->a:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->m:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->b:Landroid/view/SurfaceView;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->b:Landroid/view/SurfaceView;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->b:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/iy$1;

    invoke-direct {p2, p0, p3}, Lcom/google/ads/interactivemedia/v3/internal/iy$1;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iy;Lcom/google/ads/interactivemedia/v3/internal/ba;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->c:Lcom/google/ads/interactivemedia/v3/internal/at;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->b:Landroid/view/SurfaceView;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/at;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->d:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->c:Lcom/google/ads/interactivemedia/v3/internal/at;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->e:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->d:Landroid/widget/FrameLayout;

    new-instance p3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p3, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/iy;)Lcom/google/ads/interactivemedia/v3/internal/iy$f;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->m:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    return-object p0
.end method

.method private a(Landroid/view/Surface;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->o:Lcom/google/ads/interactivemedia/v3/internal/bq;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->o:Lcom/google/ads/interactivemedia/v3/internal/bq;

    invoke-interface {p2, v1, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ba;->b(Lcom/google/ads/interactivemedia/v3/internal/ba$a;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->o:Lcom/google/ads/interactivemedia/v3/internal/bq;

    invoke-interface {p2, v1, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a(Lcom/google/ads/interactivemedia/v3/internal/ba$a;ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/iy;Landroid/view/Surface;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/iy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/iy;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/iy;->g()V

    return-void
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/iy;)Lcom/google/ads/interactivemedia/v3/internal/at;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->c:Lcom/google/ads/interactivemedia/v3/internal/at;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/iy;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->h:Ljava/util/List;

    return-object p0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onError()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->d:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public addCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->d:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->b:Landroid/view/SurfaceView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->l:Lcom/google/ads/interactivemedia/v3/internal/iy$a;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ba;->b(Lcom/google/ads/interactivemedia/v3/internal/ba$c;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ba;->c()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public d()Lcom/google/ads/interactivemedia/v3/internal/iy$b;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->i:Lcom/google/ads/interactivemedia/v3/internal/iy$b;

    return-object v0
.end method

.method public e()Lcom/google/ads/interactivemedia/v3/internal/iy$e;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->j:Lcom/google/ads/interactivemedia/v3/internal/iy$e;

    return-object v0
.end method

.method public f()Lcom/google/ads/interactivemedia/v3/internal/iy$c;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->k:Lcom/google/ads/interactivemedia/v3/internal/iy$c;

    return-object v0
.end method

.method public getAdProgress()Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ba;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;->VIDEO_TIME_NOT_READY:Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    return-object v0

    :cond_2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/ba;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/ba;->d()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/api/player/VideoProgressUpdate;-><init>(JJ)V

    return-object v0
.end method

.method public getVolume()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public loadAd(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ba;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a(J)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jp;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->f:Landroid/content/Context;

    const-string v3, "IMA SDK ExoPlayer"

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/jp;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->g:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jp;->a(Lcom/google/ads/interactivemedia/v3/internal/iy;Landroid/os/Handler;)[Lcom/google/ads/interactivemedia/v3/internal/bq;

    move-result-object p1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->a:Lcom/google/ads/interactivemedia/v3/internal/iy$g;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/iy$g;->a()I

    move-result v0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->o:Lcom/google/ads/interactivemedia/v3/internal/bq;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a([Lcom/google/ads/interactivemedia/v3/internal/bq;)V

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/iy$f;->b:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->m:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    return-void
.end method

.method public pauseAd()V
    .locals 2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$f;->d:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->m:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public playAd()V
    .locals 4

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$2;->a:[I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->m:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/iy$f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "IMA SDK"

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->m:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x35

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring call to playAd during invalid player state: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onResume()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;->onPlay()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->b:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Landroid/view/Surface;Z)V

    :cond_1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$f;->c:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->m:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ba;->a(Z)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeCallback(Lcom/google/ads/interactivemedia/v3/api/player/VideoAdPlayer$VideoAdPlayerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public resumeAd()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/iy;->playAd()V

    return-void
.end method

.method public stopAd()V
    .locals 2

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/iy$f;->a:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->m:Lcom/google/ads/interactivemedia/v3/internal/iy$f;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/iy;->a:Lcom/google/ads/interactivemedia/v3/internal/ba;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/ba;->b()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/iy;->a(Landroid/view/Surface;Z)V

    return-void
.end method
