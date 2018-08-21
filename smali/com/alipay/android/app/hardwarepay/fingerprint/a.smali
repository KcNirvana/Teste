.class Lcom/alipay/android/app/hardwarepay/fingerprint/a;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->b:Landroid/content/Context;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->c:I

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->b:Landroid/content/Context;

    iget v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "FingerPrintPay::execute"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6307\u7eb9\u521d\u59cb\u5316\u7ed3\u679c(MSG_INIT_REQUEST)\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_0

    const/16 v0, 0x6a

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->d:Ljava/lang/Object;

    iget v4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->c:I

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/a;->e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    invoke-virtual {v5, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->createInitReplyJson(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$000(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Lcom/alipay/android/app/hardwarepay/fingerprint/n;Ljava/lang/Object;ILjava/lang/String;)V

    return-void
.end method
