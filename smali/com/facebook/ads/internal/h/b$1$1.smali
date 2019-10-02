.class Lcom/facebook/ads/internal/h/b$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/h/b$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/facebook/ads/internal/h/b$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/h/b$1;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/h/b$1$1;->b:Lcom/facebook/ads/internal/h/b$1;

    iput-object p2, p0, Lcom/facebook/ads/internal/h/b$1$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/b$1$1;->b:Lcom/facebook/ads/internal/h/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/h/b$1;->b:Lcom/facebook/ads/internal/h/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/h/b$1$1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/h/b$1$1;->b:Lcom/facebook/ads/internal/h/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/h/b$1;->b:Lcom/facebook/ads/internal/h/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/a;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/h/b$1$1;->b:Lcom/facebook/ads/internal/h/b$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/h/b$1;->b:Lcom/facebook/ads/internal/h/a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/h/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method
