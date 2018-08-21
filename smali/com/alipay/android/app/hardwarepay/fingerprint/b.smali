.class Lcom/alipay/android/app/hardwarepay/fingerprint/b;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/android/app/json/JSONObject;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:I

.field final synthetic g:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Landroid/content/Context;ILcom/alipay/android/app/json/JSONObject;Ljava/lang/Object;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->g:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->b:Landroid/content/Context;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->c:I

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->d:Lcom/alipay/android/app/json/JSONObject;

    iput-object p6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->e:Ljava/lang/Object;

    iput p7, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->b:Landroid/content/Context;

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(Landroid/content/Context;ILjava/lang/String;)I

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->d:Lcom/alipay/android/app/json/JSONObject;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->g:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->e:Ljava/lang/Object;

    iget v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->c:I

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->g:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget v6, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/b;->f:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$100(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method
