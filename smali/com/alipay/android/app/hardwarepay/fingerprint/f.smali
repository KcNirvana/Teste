.class Lcom/alipay/android/app/hardwarepay/fingerprint/f;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/f;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/f;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/f;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/f;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->d:Ljava/lang/Object;

    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/f;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    iget-object v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget v4, v4, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$200(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;II)V

    return-void
.end method
