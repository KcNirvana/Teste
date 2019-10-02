.class Lcom/facebook/ads/internal/view/i/c/a$a$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i/c/a$a$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/i/c/a$a$3;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i/c/a$a$3;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/i/c/a$a$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/i/c/a$a$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/i/c/a$a$3;->a:Lcom/facebook/ads/internal/view/i/c/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/a$a;->a(Lcom/facebook/ads/internal/view/i/c/a$a;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/i/c/a$a$3$1;->a:Lcom/facebook/ads/internal/view/i/c/a$a$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/i/c/a$a$3;->a:Lcom/facebook/ads/internal/view/i/c/a$a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/i/c/a$a;->f(Lcom/facebook/ads/internal/view/i/c/a$a;)V

    return-void
.end method
