.class Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$4;
.super Landroid/content/BroadcastReceiver;
.source "FingerPrintPay.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$4;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string/jumbo v0, "com.alipay.security.mobile.alipayauthenticatorservice.broadcast.FINGERPRINTSENSOR_STATUS_VALUE"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "phonecashiermsp#fingerprint"

    const-string/jumbo v2, "FingerPrintPay.fpStatusReceiver.onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5f00\u901a\u6307\u7eb9\u72b6\u6001\u53d8\u5316 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$4;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0, v5}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$402(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$4;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay$4;->this$0:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    const-string/jumbo v1, "flybird_fp_validating"

    invoke-static {v1}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v1, v6, v2}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Ljava/lang/String;II)V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "phonecashiermsp#fingerprint"

    const-string/jumbo v2, "FingerPrintPay.fpStatusReceiver.onReceive"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6307\u7eb9\u652f\u4ed8\u72b6\u6001\u53d8\u5316 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v1, v2, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x64 -> :sswitch_2
        0x66 -> :sswitch_2
        0x67 -> :sswitch_2
        0x71 -> :sswitch_2
    .end sparse-switch
.end method
