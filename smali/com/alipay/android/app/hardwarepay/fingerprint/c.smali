.class Lcom/alipay/android/app/hardwarepay/fingerprint/c;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Object;

.field final synthetic e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Landroid/content/Context;Lcom/alipay/android/app/hardwarepay/fingerprint/n;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    iput-object p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iput p4, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    iput-object p5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    invoke-static {}, Lcom/alipay/android/app/b/e/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_0

    new-instance v2, Lcom/alipay/android/app/hardwarepay/fingerprint/d;

    invoke-direct {v2, p0, v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/d;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/c;I)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->b()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/n;

    invoke-virtual {v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/n;->c()I

    move-result v2

    const/4 v3, 0x1

    const-string/jumbo v4, "phonecashiermsp#fingerprint"

    const-string/jumbo v5, "FingerPrintPay.execute"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u5f53\u524d\u6307\u7eb9\u6570\u91cf:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x4

    aget-object v1, v1, v2

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->e:Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;->access$302(Lcom/alipay/android/app/hardwarepay/fingerprint/FingerPrintPay;Z)Z

    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/g;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/g;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->c:I

    const-string/jumbo v2, "true"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/app/plugin/b;->hardwarePayOpt(ILjava/lang/String;)V

    goto :goto_0
.end method
