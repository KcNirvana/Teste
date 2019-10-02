.class Lcom/facebook/ads/internal/view/f/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/i$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/f/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f/b$2;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$2;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f/b;->b(Lcom/facebook/ads/internal/view/f/b;)Lcom/facebook/ads/internal/view/f/b$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f/b$2;->a:Lcom/facebook/ads/internal/view/f/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f/b;->b(Lcom/facebook/ads/internal/view/f/b;)Lcom/facebook/ads/internal/view/f/b$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/f/b$c;->c()V

    :cond_0
    return-void
.end method
