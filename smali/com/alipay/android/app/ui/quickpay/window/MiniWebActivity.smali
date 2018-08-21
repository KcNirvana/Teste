.class public Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;
.super Lcom/alipay/android/app/AbsActivity;
.source "MiniWebActivity.java"


# instance fields
.field private mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/a;->d()V

    :cond_0
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/window/web/c;

    invoke-direct {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    invoke-interface {v0, p1, p0}, Lcom/alipay/android/app/ui/quickpay/window/web/a;->a(Landroid/os/Bundle;Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/a;->c()V

    :cond_0
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/window/web/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/AbsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onPause()V

    invoke-static {}, Lcom/alipay/android/app/statistic/e/a;->a()Lcom/alipay/android/app/statistic/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/statistic/e/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onResume()V

    invoke-static {}, Lcom/alipay/android/app/statistic/e/a;->a()Lcom/alipay/android/app/statistic/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/statistic/e/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onStop()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->mWebActivityAdapter:Lcom/alipay/android/app/ui/quickpay/window/web/a;

    invoke-interface {v0}, Lcom/alipay/android/app/ui/quickpay/window/web/a;->a()V

    :cond_0
    return-void
.end method
