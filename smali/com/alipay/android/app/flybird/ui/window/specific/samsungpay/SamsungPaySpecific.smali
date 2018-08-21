.class public Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;
.super Ljava/lang/Object;
.source "SamsungPaySpecific.java"

# interfaces
.implements Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public dismissLoading()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public showLoading()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public update(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;->mActivity:Landroid/app/Activity;

    return-void
.end method
