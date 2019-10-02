.class Lcom/facebook/ads/internal/view/n$2;
.super Lcom/facebook/ads/internal/view/i/b/f;


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

    iput-object p1, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/i/b/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/o/d;)V
    .locals 0

    check-cast p1, Lcom/facebook/ads/internal/view/i/b/e;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/n$2;->a(Lcom/facebook/ads/internal/view/i/b/e;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/i/b/e;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/n;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/n;->getAudienceNetworkListener()Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    const-string v1, "videoInterstitalEvent"

    invoke-interface {v0, v1, p1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/o/d;)V

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/n;->b(Lcom/facebook/ads/internal/view/n;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/n;->c(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->g()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/n;->c(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i/a;->l()V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/view/n;->a(Lcom/facebook/ads/internal/view/n;Z)Z

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/n;->d(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/n$2;->a:Lcom/facebook/ads/internal/view/n;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/n;->d(Lcom/facebook/ads/internal/view/n;)Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/facebook/ads/AudienceNetworkActivity;->finish()V

    :cond_2
    return-void
.end method
