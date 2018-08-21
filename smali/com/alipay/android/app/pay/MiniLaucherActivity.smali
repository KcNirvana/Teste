.class public Lcom/alipay/android/app/pay/MiniLaucherActivity;
.super Landroid/app/Activity;
.source "MiniLaucherActivity.java"


# instance fields
.field private authTask:Lcom/alipay/android/app/pay/AuthTask;

.field private hasResult:Z

.field private payTask:Lcom/alipay/android/app/pay/PayTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->hasResult:Z

    iput-object v1, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->payTask:Lcom/alipay/android/app/pay/PayTask;

    iput-object v1, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->authTask:Lcom/alipay/android/app/pay/AuthTask;

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/android/app/pay/MiniLaucherActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->hasResult:Z

    return p1
.end method

.method private doAuth(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/pay/AuthTask;

    new-instance v1, Lcom/alipay/android/app/pay/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/pay/d;-><init>(Lcom/alipay/android/app/pay/MiniLaucherActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/pay/AuthTask;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/AuthTask$OnAuthListener;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->authTask:Lcom/alipay/android/app/pay/AuthTask;

    iget-object v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->authTask:Lcom/alipay/android/app/pay/AuthTask;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/pay/AuthTask;->auth(Ljava/lang/String;)V

    return-void
.end method

.method private doPay(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/alipay/android/app/pay/PayTask;

    new-instance v1, Lcom/alipay/android/app/pay/e;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/pay/e;-><init>(Lcom/alipay/android/app/pay/MiniLaucherActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/pay/PayTask;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/PayTask$OnPayListener;)V

    iput-object v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->payTask:Lcom/alipay/android/app/pay/PayTask;

    iget-object v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->payTask:Lcom/alipay/android/app/pay/PayTask;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/app/pay/PayTask;->pay(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/sys/b;->a(Landroid/content/Context;Lcom/alipay/android/app/k;)V

    const-string/jumbo v0, "order_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "callback_url"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "is_out_trade"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->doPay(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "auth_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->doAuth(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->hasResult:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/pay/ResultStatus;->CANCELED:Lcom/alipay/android/app/pay/ResultStatus;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.android.app.pay.ACTION_PAY_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "resultStatus"

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ResultStatus;->getStatus()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "memo"

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/ResultStatus;->getMemo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "result"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->payTask:Lcom/alipay/android/app/pay/PayTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->payTask:Lcom/alipay/android/app/pay/PayTask;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/PayTask;->clear()V

    iput-object v4, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->payTask:Lcom/alipay/android/app/pay/PayTask;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->authTask:Lcom/alipay/android/app/pay/AuthTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->authTask:Lcom/alipay/android/app/pay/AuthTask;

    invoke-virtual {v0}, Lcom/alipay/android/app/pay/AuthTask;->clear()V

    iput-object v4, p0, Lcom/alipay/android/app/pay/MiniLaucherActivity;->authTask:Lcom/alipay/android/app/pay/AuthTask;

    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/alipay/android/app/b;->a(Landroid/content/Context;)Lcom/alipay/android/app/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/b;->a(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->resolveIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->finish()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->resolveIntent(Landroid/content/Intent;)V

    return-void
.end method
