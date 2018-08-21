.class Lcom/alipay/android/app/hardwarepay/fingerprint/d;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/c;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iput p2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    const-string/jumbo v4, "mini_to_open_error"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/d;->b:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    const-string/jumbo v4, "alipay_ensure"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/app/hardwarepay/fingerprint/e;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/e;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/d;)V

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/app/flybird/ui/window/widget/SystemDefaultDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/f;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
