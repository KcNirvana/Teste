.class Lcom/alipay/android/phone/inside/proxy/action/s;
.super Ljava/lang/Object;
.source "SwitchUserAction.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/b;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

.field final synthetic b:Lcom/alipay/android/phone/inside/proxy/action/r;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/proxy/action/r;Lcom/alipay/android/phone/inside/commonbiz/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/proxy/action/s;->b:Lcom/alipay/android/phone/inside/proxy/action/r;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/proxy/action/s;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v1, "loginStatus"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "success"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/s;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/s;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/s;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_1
    const-string/jumbo v2, "cancel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INSIDE_CANCEL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/s;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/s;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/s;->a:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
