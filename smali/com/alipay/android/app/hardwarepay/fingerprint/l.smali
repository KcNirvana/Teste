.class Lcom/alipay/android/app/hardwarepay/fingerprint/l;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Lcom/alipay/android/app/hardwarepay/base/d$a;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/k;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(I)V
    .locals 5

    if-nez p1, :cond_0

    const-string/jumbo v0, "fp"

    const-string/jumbo v1, "FpOpenDlgCancel"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/statistic/h;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$900(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->b:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->c:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v3, "bizId"

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->d:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->e:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v4}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$800(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/l;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/k;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->c:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "bizId"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$1000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
