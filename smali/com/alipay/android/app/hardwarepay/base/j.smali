.class Lcom/alipay/android/app/hardwarepay/base/j;
.super Ljava/lang/Object;
.source "HardwarePayValidateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/base/d;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/base/d;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/base/j;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/j;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->h(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->isSpinning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/j;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->h(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->stopSpinning()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/j;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->h(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->beginDrawTick()V

    iget-object v0, p0, Lcom/alipay/android/app/hardwarepay/base/j;->a:Lcom/alipay/android/app/hardwarepay/base/d;

    invoke-static {v0}, Lcom/alipay/android/app/hardwarepay/base/d;->h(Lcom/alipay/android/app/hardwarepay/base/d;)Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/flybird/ui/CustomProgressWheel;->start()V

    :cond_0
    return-void
.end method
