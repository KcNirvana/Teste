.class public Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;
.super Lcom/alipay/android/app/AbsActivity;
.source "FlybirdLocalViewActivity.java"


# instance fields
.field private mActivityAdapter:Lcom/alipay/android/app/b/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    return-void
.end method

.method private initActivityAdapter(I)V
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    const-string/jumbo v1, "msp"

    const-string/jumbo v2, "FlybirdLocalViewActivity"

    const-string/jumbo v3, "trade == null"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mini_app_error"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/alipay/android/app/g/b;->a(ILjava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->j()Lcom/alipay/android/app/b/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "msp"

    const-string/jumbo v1, "FlybirdLocalViewActivity"

    const-string/jumbo v2, "onCreate"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    :try_start_0
    const-string/jumbo v0, "CallingPid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->initActivityAdapter(I)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0, p1, p0}, Lcom/alipay/android/app/b/c/a;->oncreate(Landroid/os/Bundle;Landroid/app/Activity;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "CallingPid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    const-string/jumbo v1, "msp"

    const-string/jumbo v2, "FlybirdLocalViewActivity"

    const-string/jumbo v3, "onCreate finish"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->finish()V

    const-string/jumbo v1, "cs"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/b/e/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mini_app_error"

    invoke-static {v2}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/app/exception/AppErrorException;

    const/4 v3, 0x3

    invoke-static {v1, v3}, Lcom/alipay/android/app/g/b;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lcom/alipay/android/app/g/b;->a(ILjava/lang/Throwable;)V

    const/4 v0, 0x4

    const-string/jumbo v1, "msp"

    const-string/jumbo v2, "FlybirdLocalViewActivity"

    const-string/jumbo v3, "mActivityAdapter==null finish"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/b/c/a;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/AbsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onPause()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/b/c/a;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onResume()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/b/c/a;->onResume()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onStop()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/FlybirdLocalViewActivity;->mActivityAdapter:Lcom/alipay/android/app/b/c/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/b/c/a;->onStop()V

    :cond_0
    return-void
.end method
