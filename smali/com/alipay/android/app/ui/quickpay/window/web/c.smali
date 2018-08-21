.class public Lcom/alipay/android/app/ui/quickpay/window/web/c;
.super Ljava/lang/Object;
.source "RealWebActivityAdapter.java"

# interfaces
.implements Lcom/alipay/android/app/ui/quickpay/window/web/a;


# instance fields
.field private a:Lcom/alipay/android/app/b/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/window/MiniWebActivityAdapter;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/b/c/a;->onStop()V

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/b/c/a;->oncreate(Landroid/os/Bundle;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/b/c/a;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/b/c/a;->onBackPressed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/b/c/a;->onDestroy()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/web/c;->a:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/b/c/a;->finish()V

    :cond_0
    return-void
.end method
