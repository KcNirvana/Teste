.class Lcom/facebook/ads/internal/w/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/w/b/e;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/w/b/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/w/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/w/b/e$1;->a:Lcom/facebook/ads/internal/w/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/w/b/e$1;->a:Lcom/facebook/ads/internal/w/b/e;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/w/b/e$1;->a:Lcom/facebook/ads/internal/w/b/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/e;->a(Lcom/facebook/ads/internal/w/b/e;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/w/b/e$1;->a:Lcom/facebook/ads/internal/w/b/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/w/b/e;->b(Lcom/facebook/ads/internal/w/b/e;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
