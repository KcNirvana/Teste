.class Lcom/alipay/android/app/hardwarepay/fingerprint/k;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

.field final synthetic c:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic d:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic e:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic f:Landroid/content/BroadcastReceiver;

.field final synthetic g:Landroid/content/BroadcastReceiver;

.field final synthetic h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;Landroid/content/BroadcastReceiver;Landroid/content/BroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->b:Lcom/alipay/android/app/flybird/ui/window/FlybirdIFormShower;

    iput-object p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->c:Lcom/alipay/android/app/json/JSONObject;

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->d:Lcom/alipay/android/app/json/JSONObject;

    iput-object p6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->e:Lcom/alipay/android/app/json/JSONObject;

    iput-object p7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->f:Landroid/content/BroadcastReceiver;

    iput-object p8, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->g:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$600(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    new-instance v1, Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-direct {v1}, Lcom/alipay/android/app/hardwarepay/base/d;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$502(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d;

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->h:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$500(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Lcom/alipay/android/app/hardwarepay/base/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->a:Landroid/content/Context;

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/k;->a:Landroid/content/Context;

    const-string/jumbo v4, "flybird_fp_open"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/app/hardwarepay/fingerprint/l;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/l;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/k;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Landroid/content/Context;ILjava/lang/String;Lcom/alipay/android/app/hardwarepay/base/d$a;)Landroid/app/Dialog;

    goto :goto_0
.end method
