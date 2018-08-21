.class Lcom/alipay/android/app/hardwarepay/bracelet/d;
.super Ljava/lang/Object;
.source "BraceletPay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/d;->a:Lcom/alipay/android/app/hardwarepay/bracelet/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/bracelet/d;->a:Lcom/alipay/android/app/hardwarepay/bracelet/b;

    iget-object v0, v0, Lcom/alipay/android/app/hardwarepay/bracelet/b;->d:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;

    iget-object v1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/d;->a:Lcom/alipay/android/app/hardwarepay/bracelet/b;

    iget-object v1, v1, Lcom/alipay/android/app/hardwarepay/bracelet/b;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/app/hardwarepay/bracelet/d;->a:Lcom/alipay/android/app/hardwarepay/bracelet/b;

    iget-object v2, v2, Lcom/alipay/android/app/hardwarepay/bracelet/b;->b:Lcom/alipay/android/app/hardwarepay/bracelet/f;

    iget-object v3, p0, Lcom/alipay/android/app/hardwarepay/bracelet/d;->a:Lcom/alipay/android/app/hardwarepay/bracelet/b;

    iget v3, v3, Lcom/alipay/android/app/hardwarepay/bracelet/b;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletPay;->callbackWhenFailed(Landroid/app/Activity;Lcom/alipay/android/app/hardwarepay/bracelet/f;I)V

    return-void
.end method
