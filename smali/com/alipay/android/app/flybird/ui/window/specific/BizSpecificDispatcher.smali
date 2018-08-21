.class public Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;
.super Ljava/lang/Object;
.source "BizSpecificDispatcher.java"


# static fields
.field private static sInstance:Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;


# instance fields
.field private bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;

    invoke-direct {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;-><init>()V

    sput-object v0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->sInstance:Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;

    return-void
.end method

.method public static getInstance()Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->sInstance:Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;

    return-object v0
.end method


# virtual methods
.method public tryDismissSpecificLoading(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/logic/c/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_2

    const-string/jumbo v0, "bizSpecific"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v2, "samsungPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;->dismissLoading()V

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public tryShowSpecificLoading(Landroid/app/Activity;I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/b/d/b;->a()Lcom/alipay/android/app/b/d/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alipay/android/app/b/d/b;->d(I)Lcom/alipay/android/app/b/d/a;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/logic/c/a;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/b/d/a;->p()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    const-string/jumbo v0, "bizSpecific"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string/jumbo v2, "samsungPay"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;

    invoke-interface {v0}, Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;->showLoading()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public update(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;

    instance-of v0, v0, Lcom/alipay/android/app/flybird/ui/window/specific/samsungpay/SamsungPaySpecific;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/flybird/ui/window/specific/BizSpecificDispatcher;->bizSpecific:Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/flybird/ui/window/specific/IBizSpecific;->update(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
