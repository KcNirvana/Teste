.class Lcom/facebook/ads/internal/view/s$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/s;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/s;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/s$10;->a:Lcom/facebook/ads/internal/view/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$10;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->n(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$10;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->n(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/view/i$a;->a:Lcom/facebook/ads/internal/view/i$a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i;->setCloseButtonStyle(Lcom/facebook/ads/internal/view/i$a;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/s$10;->a:Lcom/facebook/ads/internal/view/s;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/s;->n(Lcom/facebook/ads/internal/view/s;)Lcom/facebook/ads/internal/view/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i;->a(Z)V

    :cond_0
    return-void
.end method
