.class Lcom/facebook/ads/internal/view/i$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/i;->a(Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/b/m;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/facebook/ads/internal/view/i;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/i;Lcom/facebook/ads/internal/adapters/b/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/i$7;->c:Lcom/facebook/ads/internal/view/i;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/i$7;->a:Lcom/facebook/ads/internal/adapters/b/m;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/i$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$7;->c:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/f/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$7;->c:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/i;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/f/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/i$7;->a:Lcom/facebook/ads/internal/adapters/b/m;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/b/m;->c()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/facebook/ads/internal/w/e/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/w/e/g;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/i$7;->c:Lcom/facebook/ads/internal/view/i;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/i;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/i$7;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, v2}, Lcom/facebook/ads/internal/w/e/g;->a(Lcom/facebook/ads/internal/w/e/g;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
