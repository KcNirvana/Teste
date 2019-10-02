.class Lcom/facebook/ads/internal/adapters/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/AudienceNetworkActivity$BackButtonInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/h;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/h$1;->a:Lcom/facebook/ads/internal/adapters/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public interceptBackButton()Z
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/h$1;->a:Lcom/facebook/ads/internal/adapters/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/h;->a(Lcom/facebook/ads/internal/adapters/h;)Lcom/facebook/ads/internal/view/i/c/j;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/h$1;->a:Lcom/facebook/ads/internal/adapters/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/h;->a(Lcom/facebook/ads/internal/adapters/h;)Lcom/facebook/ads/internal/view/i/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/c/j;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/h$1;->a:Lcom/facebook/ads/internal/adapters/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/h;->a(Lcom/facebook/ads/internal/adapters/h;)Lcom/facebook/ads/internal/view/i/c/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/c/j;->getSkipSeconds()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/h$1;->a:Lcom/facebook/ads/internal/adapters/h;

    iget-object v0, v0, Lcom/facebook/ads/internal/adapters/h;->b:Lcom/facebook/ads/internal/view/i/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/h$1;->a:Lcom/facebook/ads/internal/adapters/h;

    iget-object v0, v0, Lcom/facebook/ads/internal/adapters/h;->b:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->f()V

    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/h$1;->a:Lcom/facebook/ads/internal/adapters/h;

    iget-object v0, v0, Lcom/facebook/ads/internal/adapters/h;->b:Lcom/facebook/ads/internal/view/i/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/h$1;->a:Lcom/facebook/ads/internal/adapters/h;

    iget-object v0, v0, Lcom/facebook/ads/internal/adapters/h;->b:Lcom/facebook/ads/internal/view/i/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/i/a;->g()V

    :cond_3
    return v1
.end method
