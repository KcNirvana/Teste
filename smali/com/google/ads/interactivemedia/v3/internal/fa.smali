.class public final Lcom/google/ads/interactivemedia/v3/internal/fa;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/fa$b;,
        Lcom/google/ads/interactivemedia/v3/internal/fa$a;,
        Lcom/google/ads/interactivemedia/v3/internal/fa$c;,
        Lcom/google/ads/interactivemedia/v3/internal/fa$d;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/ExecutorService;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/fa$b;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/fa;Lcom/google/ads/interactivemedia/v3/internal/fa$b;)Lcom/google/ads/interactivemedia/v3/internal/fa$b;
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$b;

    return-object p1
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/fa;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->c:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/fa$c;Lcom/google/ads/interactivemedia/v3/internal/fa$a;)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->c:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->c:Z

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fa$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/fa$b;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fa;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/fa$c;Lcom/google/ads/interactivemedia/v3/internal/fa$a;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$b;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->a:Ljava/util/concurrent/ExecutorService;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$b;

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fa$c;Lcom/google/ads/interactivemedia/v3/internal/fa$a;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fa;->a(Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/fa$c;Lcom/google/ads/interactivemedia/v3/internal/fa$a;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fa;->b()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->c:Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fa;->b:Lcom/google/ads/interactivemedia/v3/internal/fa$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fa$b;->a()V

    return-void
.end method
