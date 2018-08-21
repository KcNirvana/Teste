.class Lcom/alipay/android/app/hardwarepay/base/f;
.super Ljava/lang/Object;
.source "HardwarePayValidateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/base/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/base/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/base/f;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/f;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/f;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->c(Lcom/alipay/android/app/hardwarepay/base/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/f;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->a(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/hardwarepay/base/d$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/d$a;->onAction(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/f;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/app/hardwarepay/base/d;->b(Lcom/alipay/android/app/hardwarepay/base/d;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/f;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->b(Lcom/alipay/android/app/hardwarepay/base/d;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
