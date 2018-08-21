.class Lcom/alipay/android/app/hardwarepay/fingerprint/j;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$300(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->d:Ljava/lang/Object;

    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/j;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method
