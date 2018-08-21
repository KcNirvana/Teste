.class Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay$1;
.super Landroid/content/BroadcastReceiver;
.source "InsideServicePay.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay;

.field final synthetic val$callback:Lcom/alipay/android/phone/inside/framework/service/b;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay;Lcom/alipay/android/phone/inside/framework/service/b;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay$1;->this$0:Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay$1;->val$callback:Lcom/alipay/android/phone/inside/framework/service/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay$1;->this$0:Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay;

    invoke-static {v0, p1}, Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay;->access$000(Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay;Landroid/content/Context;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay$1;->val$callback:Lcom/alipay/android/phone/inside/framework/service/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/cashier/service/InsideServicePay$1;->val$callback:Lcom/alipay/android/phone/inside/framework/service/b;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/inside/framework/service/b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
