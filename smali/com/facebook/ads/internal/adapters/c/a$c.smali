.class Lcom/facebook/ads/internal/adapters/c/a$c;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Z

.field final b:Lcom/facebook/ads/internal/adapters/b/n;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/internal/adapters/c/a$b;",
            ">;"
        }
    .end annotation
.end field

.field final d:Z


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/b/n;Ljava/lang/ref/WeakReference;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/adapters/b/n;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/internal/adapters/c/a$b;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->a:Z

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->b:Lcom/facebook/ads/internal/adapters/b/n;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->c:Ljava/lang/ref/WeakReference;

    iput-boolean p3, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->d:Z

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/c/a$b;

    invoke-interface {v0}, Lcom/facebook/ads/internal/adapters/c/a$b;->a()V

    :cond_0
    return-void
.end method

.method private a(Landroid/webkit/WebResourceError;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->d:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/adapters/c/a$b;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {p1, v0}, Lcom/facebook/ads/internal/adapters/c/a$b;->a(Lcom/facebook/ads/AdError;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/c/a$c;->a()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/c/a$c;Landroid/webkit/WebResourceError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/adapters/c/a$c;->a(Landroid/webkit/WebResourceError;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->a:Z

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/c/a$c;->a()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/facebook/ads/internal/adapters/c/a$c$1;

    invoke-direct {p2, p0}, Lcom/facebook/ads/internal/adapters/c/a$c$1;-><init>(Lcom/facebook/ads/internal/adapters/c/a$c;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->b:Lcom/facebook/ads/internal/adapters/b/n;

    invoke-virtual {p3}, Lcom/facebook/ads/internal/adapters/b/n;->g()I

    move-result p3

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/c/a$c;->a:Z

    invoke-direct {p0, p3}, Lcom/facebook/ads/internal/adapters/c/a$c;->a(Landroid/webkit/WebResourceError;)V

    return-void
.end method
