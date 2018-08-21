.class Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$1;
.super Ljava/lang/Object;
.source "SamsungPaySpecific.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->access$000(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;

    invoke-static {v1}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->access$000(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
