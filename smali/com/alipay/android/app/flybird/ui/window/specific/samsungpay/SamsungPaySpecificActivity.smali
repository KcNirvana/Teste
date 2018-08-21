.class public Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;
.super Lcom/alipay/android/app/AbsActivity;
.source "SamsungPaySpecificActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SamsungPaySpecificActivity"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isContinuousShowLoading:Z

.field private mCircleProgressBar:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->mCircleProgressBar:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->isContinuousShowLoading:Z

    return v0
.end method

.method static synthetic access$102(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->isContinuousShowLoading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->handler:Landroid/os/Handler;

    return-object p1
.end method


# virtual methods
.method public exitLoading()V
    .locals 4

    const/16 v0, 0xf

    const-string/jumbo v1, "phonecashiermsp#samsungPay"

    const-string/jumbo v2, "SamsungPaySpecificActivity"

    const-string/jumbo v3, "exitLoading"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$2;-><init>(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    const/16 v0, 0xf

    const-string/jumbo v1, "phonecashiermsp#samsungPay"

    const-string/jumbo v2, "SamsungPaySpecificActivity"

    const-string/jumbo v3, "onCreate"

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "specific_samsungpay_loading_layout"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->setContentView(I)V

    const-string/jumbo v0, "specific_samsungpay_circle_progressbar"

    invoke-static {v0}, Lcom/alipay/android/app/g/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->mCircleProgressBar:Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/CircleProgressBar;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->isContinuousShowLoading:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity$1;-><init>(Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecificActivity;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->getInstance()Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->update(Landroid/app/Activity;)V

    return-void
.end method
