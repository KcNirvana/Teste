.class Lcom/alipay/android/app/ui/quickpay/util/f;
.super Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;
.source "MiniReadSmsBean.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/util/e;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/util/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/f;->a:Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-direct {p0}, Lcom/alipay/android/app/flybird/ui/event/MiniReadSmsArgs;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "temp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/f;->a:Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/e;->a(Lcom/alipay/android/app/ui/quickpay/util/e;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "rules"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/f;->a:Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/e;->b(Lcom/alipay/android/app/ui/quickpay/util/e;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "tmp_group"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/f;->a:Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/e;->c(Lcom/alipay/android/app/ui/quickpay/util/e;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "read_time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/f;->a:Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/e;->d(Lcom/alipay/android/app/ui/quickpay/util/e;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reSendSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/f;->a:Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/e;->e(Lcom/alipay/android/app/ui/quickpay/util/e;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/g;->a()Lcom/alipay/android/app/ui/quickpay/util/g;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/f;->a:Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/util/g;->a(Lcom/alipay/android/app/ui/quickpay/util/e;)V

    goto :goto_0
.end method

.method public readSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/f;->a:Lcom/alipay/android/app/ui/quickpay/util/e;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/e;->e(Lcom/alipay/android/app/ui/quickpay/util/e;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\'sms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/birdnest/a;->a()Lcom/alipay/android/app/birdnest/a;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/birdnest/a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
