.class Lcom/facebook/ads/internal/b/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/InterstitialAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/facebook/ads/internal/b/f;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/b/f;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iput-object p2, p0, Lcom/facebook/ads/internal/b/f$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialActivityDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/f;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/a;->f()V

    return-void
.end method

.method public onInterstitialAdClicked(Lcom/facebook/ads/internal/adapters/g;Ljava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/f;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->a()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object p3, p3, Lcom/facebook/ads/internal/b/f;->b:Landroid/content/Context;

    instance-of p3, p3, Landroid/app/Activity;

    if-nez p3, :cond_0

    const/high16 p3, 0x10000000

    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object p2, p2, Lcom/facebook/ads/internal/b/f;->b:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onInterstitialAdDismissed(Lcom/facebook/ads/internal/adapters/g;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/f;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->d()V

    return-void
.end method

.method public onInterstitialAdDisplayed(Lcom/facebook/ads/internal/adapters/g;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/f;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->e()V

    return-void
.end method

.method public onInterstitialAdLoaded(Lcom/facebook/ads/internal/adapters/g;)V
    .locals 6

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/f;->e:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/f;->b:Landroid/content/Context;

    const-string v1, "api"

    sget v2, Lcom/facebook/ads/internal/w/h/b;->b:I

    new-instance v3, Lcom/facebook/ads/internal/protocol/b;

    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_ADAPTER_ON_LOAD:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v5, "Adapter is null on loadInterstitialAd"

    invoke-direct {v3, v4, v5}, Lcom/facebook/ads/internal/protocol/b;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/ads/internal/w/h/a;->b(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Exception;)V

    const/16 v0, 0x7d4

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/ads/internal/b/f$2;->onInterstitialError(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/AdError;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/f;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/f$2;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iput-object p1, v0, Lcom/facebook/ads/internal/b/f;->f:Lcom/facebook/ads/internal/adapters/AdAdapter;

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/f;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    return-void
.end method

.method public onInterstitialError(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/AdError;)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object v0, v0, Lcom/facebook/ads/internal/b/f;->e:Lcom/facebook/ads/internal/adapters/AdAdapter;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/b/f;->j()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/b/f$2;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/b/f;->a(Lcom/facebook/ads/internal/adapters/AdAdapter;)V

    iget-object p1, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/f;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->ac(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/b/f;->i()V

    :cond_1
    iget-object p1, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/f;->c:Lcom/facebook/ads/internal/adapters/a;

    new-instance v0, Lcom/facebook/ads/internal/protocol/a;

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {p2}, Lcom/facebook/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/internal/protocol/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/facebook/ads/internal/adapters/a;->a(Lcom/facebook/ads/internal/protocol/a;)V

    return-void
.end method

.method public onInterstitialLoggingImpression(Lcom/facebook/ads/internal/adapters/g;)V
    .locals 0

    iget-object p1, p0, Lcom/facebook/ads/internal/b/f$2;->b:Lcom/facebook/ads/internal/b/f;

    iget-object p1, p1, Lcom/facebook/ads/internal/b/f;->c:Lcom/facebook/ads/internal/adapters/a;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/adapters/a;->b()V

    return-void
.end method
