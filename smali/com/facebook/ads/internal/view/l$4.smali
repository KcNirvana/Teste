.class Lcom/facebook/ads/internal/view/l$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/l;->setUpContent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/l;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/l;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/l$4;->a:Lcom/facebook/ads/internal/view/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l$4;->a:Lcom/facebook/ads/internal/view/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/l;->d(Lcom/facebook/ads/internal/view/l;)Lcom/facebook/ads/internal/view/component/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->b()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/l$4;->a:Lcom/facebook/ads/internal/view/l;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/l;->d(Lcom/facebook/ads/internal/view/l;)Lcom/facebook/ads/internal/view/component/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/component/a/l;->a()V

    return-void
.end method
