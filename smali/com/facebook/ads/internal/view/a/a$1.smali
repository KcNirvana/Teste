.class Lcom/facebook/ads/internal/view/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/a/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/a$1;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/a$1;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/a/a;->a(Lcom/facebook/ads/internal/view/a/a;)Lcom/facebook/ads/internal/view/a/e;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/a$1;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/a/a;->b(Lcom/facebook/ads/internal/view/a/a;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/a$1;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/a/a;->a(Lcom/facebook/ads/internal/view/a/a;)Lcom/facebook/ads/internal/view/a/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/facebook/ads/internal/view/a/e;->b()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/a$1;->a:Lcom/facebook/ads/internal/view/a/a;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/a/a;->a(Lcom/facebook/ads/internal/view/a/a;)Lcom/facebook/ads/internal/view/a/e;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/facebook/ads/internal/view/a/e;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
