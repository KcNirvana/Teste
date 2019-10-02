.class Lcom/facebook/ads/internal/view/component/a$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/component/a$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/component/a$1;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/component/a$1;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/component/a$1$2;->a:Lcom/facebook/ads/internal/view/component/a$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a$1$2;->a:Lcom/facebook/ads/internal/view/component/a$1;

    iget-object p1, p1, Lcom/facebook/ads/internal/view/component/a$1;->f:Lcom/facebook/ads/internal/view/component/a;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a;->b(Lcom/facebook/ads/internal/view/component/a;)Lcom/facebook/ads/internal/s/c;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/component/a$1$2;->a:Lcom/facebook/ads/internal/view/component/a$1;

    iget-object p1, p1, Lcom/facebook/ads/internal/view/component/a$1;->f:Lcom/facebook/ads/internal/view/component/a;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/component/a;->b(Lcom/facebook/ads/internal/view/component/a;)Lcom/facebook/ads/internal/s/c;

    move-result-object p1

    iget-object p2, p0, Lcom/facebook/ads/internal/view/component/a$1$2;->a:Lcom/facebook/ads/internal/view/component/a$1;

    iget-object p2, p2, Lcom/facebook/ads/internal/view/component/a$1;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/component/a$1$2;->a:Lcom/facebook/ads/internal/view/component/a$1;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/component/a$1;->b:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Lcom/facebook/ads/internal/s/c;->k(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
