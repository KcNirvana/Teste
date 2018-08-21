.class Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$2;
.super Ljava/lang/Object;
.source "SamsungPaySpecificActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->access$102(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;Z)Z

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->access$202(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->finish()V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-virtual {v0, v2, v2}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->overridePendingTransition(II)V

    return-void
.end method
