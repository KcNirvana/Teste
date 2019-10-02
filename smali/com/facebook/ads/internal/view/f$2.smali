.class Lcom/facebook/ads/internal/view/f$2;
.super Lcom/facebook/ads/internal/x/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/f;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/b/f;Lcom/facebook/ads/internal/s/c;Lcom/facebook/ads/internal/view/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/f;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-direct {p0}, Lcom/facebook/ads/internal/x/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->a(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/w;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->a(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/w/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/w;->a()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/f;->b(Lcom/facebook/ads/internal/view/f;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/f;->b(Lcom/facebook/ads/internal/view/f;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/facebook/ads/internal/view/g/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/f;->b(Lcom/facebook/ads/internal/view/f;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/internal/view/g/b;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/view/g/b;->a(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/view/g/b;->setViewability(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->c(Lcom/facebook/ads/internal/view/f;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/f$2;->a:Lcom/facebook/ads/internal/view/f;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/f;->d(Lcom/facebook/ads/internal/view/f;)Lcom/facebook/ads/internal/w/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/w/b/e;->a()Z

    :cond_2
    return-void
.end method
