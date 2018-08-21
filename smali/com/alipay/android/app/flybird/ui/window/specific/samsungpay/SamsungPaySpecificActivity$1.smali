.class Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$1;
.super Ljava/lang/Object;
.source "SamsungPaySpecificActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->access$000(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;->setmStart(I)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->access$100(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->access$200(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$1;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->access$200(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x8

    const-string/jumbo v2, "phonecashiermsp#samsungPay"

    const-string/jumbo v3, "SamsungPaySpecificActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
