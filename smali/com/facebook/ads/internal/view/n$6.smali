.class Lcom/facebook/ads/internal/view/n$6;
.super Lcom/facebook/ads/internal/view/i/b/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/n;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/n;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n$6;->a:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/n;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/m;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/n$6;->a(Lcom/facebook/ads/internal/view/i/b/m;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/m;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$6;->a:Lcom/facebook/ads/internal/view/n;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/n;->b(Lcom/facebook/ads/internal/view/n;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$6;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->b(Lcom/facebook/ads/internal/view/n;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$6;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->f(Lcom/facebook/ads/internal/view/n;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/n$6;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/n;->c(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i/a;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$6;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/n;->g(Lcom/facebook/ads/internal/view/n;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$6;->a:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/n;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$6;->a:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/n;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    const-string v1, "videoInterstitalEvent"

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/o/d;)V

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/n$6;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/n;->h(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/x/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/x/a;->a()V

    return-void
.end method
