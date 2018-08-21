.class public Lcom/alipay/android/app/CertPayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CertPayReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x1

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "LiveConnectReceiver.onReceive"

    const-string/jumbo v2, "onReceive"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1

    const-string/jumbo v0, "phonecashiermsp"

    const-string/jumbo v1, "LiveConnectReceiver.onReceive"

    const-string/jumbo v2, "\u4f20\u5165LiveConnectReceiver\u7684intent\u4e3a\u7a7a\uff0c\u9000\u51fa"

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "certpay_session"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "phonecashiermsp"

    const-string/jumbo v2, "LiveConnectReceiver.onReceive"

    invoke-static {v3, v1, v2, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pay_result"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/app/b;->a(Landroid/content/Context;)Lcom/alipay/android/app/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getInstance()Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/flybird/ui/FlyBirdTradeUiManager;->getWindowManager(I)Lcom/alipay/android/app/flybird/ui/FlybirdWindowManager;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->h()Lcom/alipay/android/app/b/b/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/b/b/a;->d(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x1

    const-string/jumbo v3, "phonecashiermsp"

    const-string/jumbo v4, "LiveConnectReceiver.exit"

    invoke-static {v0, v3, v4, v1}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ex"

    const-string/jumbo v3, "CertPayExitSuccess"

    const-string/jumbo v4, "CertPayExitSuccess"

    invoke-static {v0, v3, v4}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alipay/android/app/b/b;->exit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v0, "ex"

    const-string/jumbo v1, "CertPayExitException"

    const-string/jumbo v2, "CertPayExitException"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v0, "ex"

    const-string/jumbo v1, "CertPayExitBizIdError"

    const-string/jumbo v2, "CertPayExitBizIdError"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
