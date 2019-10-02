.class Lcom/facebook/ads/internal/view/component/a/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/b/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/component/a/h;-><init>(Lcom/facebook/ads/internal/view/component/a/e;Lcom/facebook/ads/internal/adapters/b/h;IILcom/facebook/ads/internal/a/i;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/facebook/ads/internal/view/b/b;

.field final synthetic c:Lcom/facebook/ads/internal/view/component/a/h;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/component/a/h;Landroid/widget/FrameLayout;Lcom/facebook/ads/internal/view/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->c:Lcom/facebook/ads/internal/view/component/a/h;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->a:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->b:Lcom/facebook/ads/internal/view/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->c:Lcom/facebook/ads/internal/view/component/a/h;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/component/a/h;->g(Lcom/facebook/ads/internal/view/component/a/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->b:Lcom/facebook/ads/internal/view/b/b;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/view/b/b;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->c:Lcom/facebook/ads/internal/view/component/a/h;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/view/component/a/h;->a(Lcom/facebook/ads/internal/view/component/a/h;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->a:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->b:Lcom/facebook/ads/internal/view/b/b;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/view/b/b;->setProgress(I)V

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->c:Lcom/facebook/ads/internal/view/component/a/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/view/component/a/h;->a(Lcom/facebook/ads/internal/view/component/a/h;Z)Z

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a/h$2;->a:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
