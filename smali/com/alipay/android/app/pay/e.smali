.class Lcom/alipay/android/app/pay/e;
.super Ljava/lang/Object;
.source "MiniLaucherActivity.java"

# interfaces
.implements Lcom/alipay/android/app/pay/PayTask$TaoBaoOnPayListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/MiniLaucherActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/pay/MiniLaucherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTaoBaoPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.android.app.pay.ACTION_PAY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "memo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "openTime"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "netError"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->access$002(Lcom/alipay/android/app/pay/MiniLaucherActivity;Z)Z

    iget-object v1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->finish()V

    iget-object v1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onTaoBaoPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.android.app.pay.ACTION_PAY_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "memo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "openTime"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "netError"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->access$002(Lcom/alipay/android/app/pay/MiniLaucherActivity;Z)Z

    iget-object v1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->finish()V

    iget-object v1, p0, Lcom/alipay/android/app/pay/e;->a:Lcom/alipay/android/app/pay/MiniLaucherActivity;

    invoke-virtual {v1}, Lcom/alipay/android/app/pay/MiniLaucherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
