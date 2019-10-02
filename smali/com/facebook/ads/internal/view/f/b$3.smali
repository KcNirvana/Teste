.class Lcom/facebook/ads/internal/view/f/b$3;
.super Lcom/facebook/ads/internal/view/c/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/f/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/c/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/facebook/ads/internal/view/f/b;->a(Lcom/facebook/ads/internal/view/f/b;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/f/b;->c(Lcom/facebook/ads/internal/view/f/b;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/f/b;->c(Lcom/facebook/ads/internal/view/f/b;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/ads/internal/view/c/a;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/facebook/ads/internal/view/c/a;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/f/b;->b(Lcom/facebook/ads/internal/view/f/b;)Lcom/facebook/ads/internal/view/f/b$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/f/b;->b(Lcom/facebook/ads/internal/view/f/b;)Lcom/facebook/ads/internal/view/f/b$c;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/internal/view/f/b$c;->d()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f/b;->d(Lcom/facebook/ads/internal/view/f/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f/b;->c(Lcom/facebook/ads/internal/view/f/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f/b;->b(Lcom/facebook/ads/internal/view/f/b;)Lcom/facebook/ads/internal/view/f/b$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f/b;->c(Lcom/facebook/ads/internal/view/f/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/c/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/f/b;->b(Lcom/facebook/ads/internal/view/f/b;)Lcom/facebook/ads/internal/view/f/b$c;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/a;->getViewabilityChecker()Lcom/facebook/ads/internal/x/a;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/c/a;->getTouchDataRecorder()Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/facebook/ads/internal/view/f/b$c;->a(Lcom/facebook/ads/internal/x/a;Lcom/facebook/ads/internal/w/b/w;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$3;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f/b;->e(Lcom/facebook/ads/internal/view/f/b;)Lcom/facebook/ads/internal/w/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/e;->a()Z

    :cond_0
    return-void
.end method
