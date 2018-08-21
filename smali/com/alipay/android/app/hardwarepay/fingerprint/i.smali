.class Lcom/alipay/android/app/hardwarepay/fingerprint/i;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/i;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const-string/jumbo v2, ""

    const-string/jumbo v3, "FingerPrintPay.execute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u5f00\u542f\u6dfb\u52a0\u6307\u7eb9UI\u8fd4\u56de\u503c:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
