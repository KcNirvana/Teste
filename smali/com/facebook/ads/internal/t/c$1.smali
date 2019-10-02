.class Lcom/facebook/ads/internal/t/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/i/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/t/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/t/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/t/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/t/c$1;->a:Lcom/facebook/ads/internal/t/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$1;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/c;->a(Lcom/facebook/ads/internal/t/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$1;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/c;->b(Lcom/facebook/ads/internal/t/c;)Lcom/facebook/ads/internal/t/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/t/c$1;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/t/c;->b(Lcom/facebook/ads/internal/t/c;)Lcom/facebook/ads/internal/t/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/t/c$1;->a:Lcom/facebook/ads/internal/t/c;

    invoke-static {v1}, Lcom/facebook/ads/internal/t/c;->c(Lcom/facebook/ads/internal/t/c;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/t/c$a;->a(Z)V

    :cond_0
    return-void
.end method
