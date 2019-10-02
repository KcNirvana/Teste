.class Lcom/facebook/ads/internal/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/b/c;->a(Lcom/facebook/ads/internal/u/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/u/f;

.field final synthetic b:Lcom/facebook/ads/internal/b/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/c;Lcom/facebook/ads/internal/u/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/c$1;->b:Lcom/facebook/ads/internal/b/c;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/c$1;->a:Lcom/facebook/ads/internal/u/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c$1;->a:Lcom/facebook/ads/internal/u/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/u/f;->a()Lcom/facebook/ads/internal/m/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/m/c;->a()Lcom/facebook/ads/internal/m/d;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/c$1;->b:Lcom/facebook/ads/internal/b/c;

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/b/c;->a(Lcom/facebook/ads/internal/b/c;Lcom/facebook/ads/internal/m/c;)Lcom/facebook/ads/internal/m/c;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/c$1;->b:Lcom/facebook/ads/internal/b/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/c;->i()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid placement in response"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
