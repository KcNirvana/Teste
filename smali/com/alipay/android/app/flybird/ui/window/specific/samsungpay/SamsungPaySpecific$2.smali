.class Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$2;
.super Ljava/lang/Object;
.source "SamsungPaySpecific.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$2;->this$0:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;

    invoke-static {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->access$000(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->exitLoading()V

    return-void
.end method
