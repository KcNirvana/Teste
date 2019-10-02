.class Lcom/facebook/ads/internal/view/i/c/b$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i/c/b$3$1;->onAudioFocusChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/facebook/ads/internal/view/i/c/b$3$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/b$3$1;I)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/b$3$1$1;->b:Lcom/facebook/ads/internal/view/i/c/b$3$1;

    iput p2, p0, Lcom/facebook/ads/internal/view/i/c/b$3$1$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/b$3$1$1;->b:Lcom/facebook/ads/internal/view/i/c/b$3$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/i/c/b$3$1;->a:Lcom/facebook/ads/internal/view/i/c/b$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/i/c/b$3;->a:Lcom/facebook/ads/internal/view/i/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/b;->b(Lcom/facebook/ads/internal/view/i/c/b;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/internal/view/i/c/b$3$1$1;->a:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/b$3$1$1;->b:Lcom/facebook/ads/internal/view/i/c/b$3$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/i/c/b$3$1;->a:Lcom/facebook/ads/internal/view/i/c/b$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/i/c/b$3;->a:Lcom/facebook/ads/internal/view/i/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/b;->c(Lcom/facebook/ads/internal/view/i/c/b;)Lcom/facebook/ads/internal/view/i/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/i/a;->a(Z)V

    :cond_0
    return-void
.end method
