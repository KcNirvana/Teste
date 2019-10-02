.class Lcom/facebook/ads/internal/s/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/s/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/s/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/s/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/s/b$1;->a:Lcom/facebook/ads/internal/s/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/s/b$1;->a:Lcom/facebook/ads/internal/s/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/s/b;->a(Lcom/facebook/ads/internal/s/b;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/s/b$1;->a:Lcom/facebook/ads/internal/s/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/s/b;->b(Lcom/facebook/ads/internal/s/b;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/s/b$1;->a:Lcom/facebook/ads/internal/s/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/s/b;->b(Lcom/facebook/ads/internal/s/b;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/s/b$1;->a:Lcom/facebook/ads/internal/s/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/s/b;->c()V

    return-void
.end method
