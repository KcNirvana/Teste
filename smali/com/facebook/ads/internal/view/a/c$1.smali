.class Lcom/facebook/ads/internal/view/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/view/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/a/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/a/c;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->a(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/c;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/a/c$1;->a(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->b(Lcom/facebook/ads/internal/view/a/c;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->a(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/c;->e()Lcom/facebook/ads/internal/f/c;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->c(Lcom/facebook/ads/internal/view/a/c;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/a/c;->a(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/f/c;->e()Lcom/facebook/ads/internal/f/c;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/a/c;->a(Lcom/facebook/ads/internal/view/a/c;Lcom/facebook/ads/internal/f/c;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/f/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->d(Lcom/facebook/ads/internal/view/a/c;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/view/a/c;->a(Lcom/facebook/ads/internal/view/a/c;Lcom/facebook/ads/internal/f/b$a;)Lcom/facebook/ads/internal/f/b$a;

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/a/c;->e(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/b$a;

    move-result-object p1

    sget-object v0, Lcom/facebook/ads/internal/f/b$a;->b:Lcom/facebook/ads/internal/f/b$a;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/f/a;->d(Landroid/content/Context;)Lcom/facebook/ads/internal/f/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/ads/internal/f/a;->g(Landroid/content/Context;)Lcom/facebook/ads/internal/f/c;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/view/a/c;->a(Lcom/facebook/ads/internal/view/a/c;Lcom/facebook/ads/internal/f/c;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/f/c;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->d(Lcom/facebook/ads/internal/view/a/c;)I

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->f(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/ads/internal/f/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/f/b;->a(I)V

    invoke-virtual {p1}, Lcom/facebook/ads/internal/f/c;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/view/a/c;->b(Lcom/facebook/ads/internal/view/a/c;Lcom/facebook/ads/internal/f/c;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->g(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->g(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/a/c;->e(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/b$a;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/facebook/ads/internal/view/a/b;->a(Lcom/facebook/ads/internal/f/c;Lcom/facebook/ads/internal/f/b$a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/view/a/c;->a(Lcom/facebook/ads/internal/view/a/c;Lcom/facebook/ads/internal/f/c;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/c;->c()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->h(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->h(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->g(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->g(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/a/b;->a(Z)V

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {p1}, Lcom/facebook/ads/internal/view/a/c;->i(Lcom/facebook/ads/internal/view/a/c;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->j(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->j(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a$a;

    move-result-object v0

    const-string v1, "com.facebook.ads.adreporting.FINISH_AD_REPORTING_FLOW"

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/f/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/w/e/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/w/e/g;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/f/a;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/a/c;->k(Lcom/facebook/ads/internal/view/a/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/w/e/g;->a(Lcom/facebook/ads/internal/w/e/g;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->f(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/b;->c()V

    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/c;->c()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->h(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->h(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/view/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/view/a;->b(Z)V

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/f/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/facebook/ads/internal/w/e/g;

    invoke-direct {v0}, Lcom/facebook/ads/internal/w/e/g;-><init>()V

    iget-object v1, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/a/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/f/a;->m(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/a/c;->k(Lcom/facebook/ads/internal/view/a/c;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/w/e/g;->a(Lcom/facebook/ads/internal/w/e/g;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->f(Lcom/facebook/ads/internal/view/a/c;)Lcom/facebook/ads/internal/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/f/b;->b()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/a/c$1;->a:Lcom/facebook/ads/internal/view/a/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/a/c;->i(Lcom/facebook/ads/internal/view/a/c;)V

    return-void
.end method
