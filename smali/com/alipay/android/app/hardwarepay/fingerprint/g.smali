.class Lcom/alipay/android/app/hardwarepay/fingerprint/g;
.super Ljava/lang/Object;
.source "FingerPrintPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/fingerprint/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    const-string/jumbo v3, "mini_add_fp"

    invoke-static {v3}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v3, v3, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    const-string/jumbo v4, "alipay_cancel"

    invoke-static {v4}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/app/hardwarepay/fingerprint/h;

    invoke-direct {v4, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/h;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V

    iget-object v5, p0, Lcom/alipay/android/app/hardwarepay/fingerprint/g;->a:Lcom/alipay/android/app/hardwarepay/fingerprint/c;

    iget-object v5, v5, Lcom/alipay/android/app/hardwarepay/fingerprint/c;->a:Landroid/content/Context;

    const-string/jumbo v6, "mini_to_open"

    invoke-static {v6}, Lcom/alipay/android/app/g/i;->f(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/app/hardwarepay/fingerprint/i;

    invoke-direct {v6, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/i;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/app/flybird/ui/window/widget/SystemDefaultDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/hardwarepay/fingerprint/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/hardwarepay/fingerprint/j;-><init>(Lcom/alipay/android/app/hardwarepay/fingerprint/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
