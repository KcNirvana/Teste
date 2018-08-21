.class Lcom/alipay/android/app/hardwarepay/base/h;
.super Ljava/lang/Object;
.source "HardwarePayValidateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/base/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/base/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/base/h;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/h;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->d(Lcom/alipay/android/app/hardwarepay/base/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/h;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d$a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/h;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->e(Lcom/alipay/android/app/hardwarepay/base/d;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/h;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d$a;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/d$a;->onAction(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/h;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/h;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->f(Lcom/alipay/android/app/hardwarepay/base/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/h;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/d$a;->onAction(I)V

    goto :goto_0
.end method
