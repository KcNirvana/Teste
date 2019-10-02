.class Lcom/facebook/ads/internal/view/component/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/component/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/component/k;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/component/k;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/k$1;->a:Lcom/facebook/ads/internal/view/component/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/k$1;->a:Lcom/facebook/ads/internal/view/component/k;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/k;->c(Lcom/facebook/ads/internal/view/component/k;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object p1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/k$1;->a:Lcom/facebook/ads/internal/view/component/k;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/component/k;->a(Lcom/facebook/ads/internal/view/component/k;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/component/k$1;->a:Lcom/facebook/ads/internal/view/component/k;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/component/k;->b(Lcom/facebook/ads/internal/view/component/k;)Lcom/facebook/ads/internal/view/a/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;ZLcom/facebook/ads/internal/view/a/b;)V

    return-void
.end method
