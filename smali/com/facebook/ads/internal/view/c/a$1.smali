.class Lcom/facebook/ads/internal/view/c/a$1;
.super Lcom/facebook/ads/internal/x/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/c/a;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/c/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/view/c/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/x/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/c/a;->a(Lcom/facebook/ads/internal/view/c/a;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/c/a;->b(Lcom/facebook/ads/internal/view/c/a;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/w;->b()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/c/a;->b(Lcom/facebook/ads/internal/view/c/a;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/w;->a()V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/c/a;->c(Lcom/facebook/ads/internal/view/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/c/a$1;->a:Lcom/facebook/ads/internal/view/c/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/c/a;->c(Lcom/facebook/ads/internal/view/c/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/c/a$b;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/c/a$b;->b()V

    :cond_2
    return-void
.end method
