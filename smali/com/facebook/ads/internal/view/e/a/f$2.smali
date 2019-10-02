.class Lcom/facebook/ads/internal/view/e/a/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/component/a/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/a/b;

.field final synthetic b:Lcom/facebook/ads/internal/view/e/a/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/a/f;Lcom/facebook/ads/internal/view/e/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/a/f$2;->b:Lcom/facebook/ads/internal/view/e/a/f;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/a/f$2;->a:Lcom/facebook/ads/internal/view/e/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$2;->a:Lcom/facebook/ads/internal/view/e/a/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/a/b;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$2;->b:Lcom/facebook/ads/internal/view/e/a/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/a/f;->a(Lcom/facebook/ads/internal/view/e/a/f;)Lcom/facebook/ads/internal/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/a/f$2;->b:Lcom/facebook/ads/internal/view/e/a/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/a/f;->c(Lcom/facebook/ads/internal/view/e/a/f;)Lcom/facebook/ads/internal/x/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/x/a;->a()V

    return-void
.end method
