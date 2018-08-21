.class public abstract Lcom/ali/user/mobile/base/BaseActivity;
.super Lcom/ali/user/mobile/base/AdaptorActivity;
.source "BaseActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseActivity"


# instance fields
.field private hasFocus:Z

.field private mActivityHelper:Lcom/ali/user/mobile/base/a/a;

.field private mExclude:Z

.field protected mIsDestroy:Z

.field protected mRightCornerDefaultVisible:I

.field private waitForFocus:Z

.field private waitForFocusView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;-><init>()V

    iput-boolean v1, p0, Lcom/ali/user/mobile/base/BaseActivity;->mIsDestroy:Z

    const/16 v0, 0x8

    iput v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mRightCornerDefaultVisible:I

    iput-boolean v1, p0, Lcom/ali/user/mobile/base/BaseActivity;->mExclude:Z

    return-void
.end method

.method static synthetic access$002(Lcom/ali/user/mobile/base/BaseActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/base/BaseActivity;->waitForFocus:Z

    return p1
.end method

.method private invokeInputMethod(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/base/g;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/base/g;-><init>(Lcom/ali/user/mobile/base/BaseActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public alertPop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$b;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$a;)V
    .locals 8

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/ali/user/mobile/base/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$b;Ljava/lang/String;Lcom/ali/user/mobile/ui/widget/f$a;)V

    return-void
.end method

.method public closeInputMethod(Landroid/view/View;)V
    .locals 4

    :try_start_0
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeInputMethod exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected configRightCornerView(Landroid/view/ViewGroup;)V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    const-string/jumbo v0, "close"

    const-string/jumbo v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput v3, p0, Lcom/ali/user/mobile/base/BaseActivity;->mRightCornerDefaultVisible:I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/ali/user/mobile/common/a/d;->a()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput v3, p0, Lcom/ali/user/mobile/base/BaseActivity;->mRightCornerDefaultVisible:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput v3, p0, Lcom/ali/user/mobile/base/BaseActivity;->mRightCornerDefaultVisible:I

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/ali/user/mobile/base/BaseActivity;->mRightCornerDefaultVisible:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public dismissProgress()V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/a/a;->b()V

    return-void
.end method

.method public finish()V
    .locals 2

    const-string/jumbo v0, "BaseActivity"

    const-string/jumbo v1, "finish()"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/a/a;->a()V

    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->finish()V

    return-void
.end method

.method protected handleRpcException(Lcom/alipay/android/phone/mrpc/core/RpcException;)V
    .locals 2

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseActivity;->dismissProgress()V

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/RpcException;->isClientError()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "rpcException.isClientError, show network guide"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ali/user/mobile/base/h;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/base/h;-><init>(Lcom/ali/user/mobile/base/BaseActivity;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    throw p1
.end method

.method public isActivityDestroy()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mIsDestroy:Z

    return v0
.end method

.method public isExclude()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mExclude:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/AdaptorActivity;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    new-instance v0, Lcom/ali/user/mobile/base/a/a;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/base/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/a;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/login/rds/RDSWraper;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BaseActivity"

    const-string/jumbo v2, "oncreate error"

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/base/BaseActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->onDestroy()V

    const-string/jumbo v0, "BaseActivity"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mIsDestroy:Z

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    invoke-virtual {v0}, Lcom/ali/user/mobile/base/a/a;->a()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lcom/ali/user/mobile/base/AdaptorActivity;->onStart()V

    invoke-static {}, Lcom/ali/user/mobile/login/e;->a()Lcom/ali/user/mobile/login/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ali/user/mobile/login/e;->a(Lcom/ali/user/mobile/base/BaseActivity;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/AdaptorActivity;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/ali/user/mobile/base/BaseActivity;->hasFocus:Z

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->waitForFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->waitForFocusView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/base/BaseActivity;->invokeInputMethod(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected performDialogAction(Lcom/ali/user/mobile/ui/widget/aq;)V
    .locals 0

    return-void
.end method

.method protected performDialogAction(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected setButtonEnable(Landroid/widget/Button;Z)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/ali/user/mobile/base/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/ali/user/mobile/base/d;-><init>(Lcom/ali/user/mobile/base/BaseActivity;Landroid/widget/Button;Z)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/base/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected setExclude(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ali/user/mobile/base/BaseActivity;->mExclude:Z

    return-void
.end method

.method protected showInputMethodPannel(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->hasFocus:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->invokeInputMethod(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->waitForFocus:Z

    iput-object p1, p0, Lcom/ali/user/mobile/base/BaseActivity;->waitForFocusView:Landroid/view/View;

    goto :goto_0
.end method

.method protected showListDialog(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/ali/user/mobile/ui/widget/d;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/ui/widget/d;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/ali/user/mobile/base/e;

    invoke-direct {v1, p0, v0, p1}, Lcom/ali/user/mobile/base/e;-><init>(Lcom/ali/user/mobile/base/BaseActivity;Lcom/ali/user/mobile/ui/widget/d;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d$b;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/d;->show()V

    return-void
.end method

.method protected showListDialogWithTitle(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ali/user/mobile/ui/widget/aq;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/ali/user/mobile/ui/widget/d;

    invoke-direct {v0, p1, p2, p0}, Lcom/ali/user/mobile/ui/widget/d;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/d;->setCanceledOnTouchOutside(Z)V

    new-instance v1, Lcom/ali/user/mobile/base/f;

    invoke-direct {v1, p0, v0, p2}, Lcom/ali/user/mobile/base/f;-><init>(Lcom/ali/user/mobile/base/BaseActivity;Lcom/ali/user/mobile/ui/widget/d;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/ui/widget/d;->a(Lcom/ali/user/mobile/ui/widget/d$b;)V

    invoke-virtual {v0}, Lcom/ali/user/mobile/ui/widget/d;->show()V

    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/base/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public toast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/ali/user/mobile/base/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/base/BaseActivity;->mActivityHelper:Lcom/ali/user/mobile/base/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/base/a/a;->a(Ljava/lang/String;I)V

    return-void
.end method
