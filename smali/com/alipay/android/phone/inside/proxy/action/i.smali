.class Lcom/alipay/android/phone/inside/proxy/action/i;
.super Ljava/lang/Object;
.source "OnlinePayAction.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/framework/service/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/phone/inside/framework/service/b",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

.field final synthetic c:Lcom/alipay/android/phone/inside/proxy/action/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/inside/proxy/action/h;Ljava/lang/String;Lcom/alipay/android/phone/inside/commonbiz/model/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->c:Lcom/alipay/android/phone/inside/proxy/action/h;

    iput-object p2, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "resultStatus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v2

    const-string/jumbo v3, "action"

    sget-object v4, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CashierPayEnd|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V

    const-string/jumbo v2, "9000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v0, ""

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "result"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "return_caller_result"

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const-string/jumbo v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "payCode"

    iget-object v2, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_2
    const-string/jumbo v1, "8000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_RESULT_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_4
    :try_start_5
    const-string/jumbo v1, "6001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INSIDE_CANCEL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    monitor-enter v1

    :try_start_6
    iget-object v2, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_FAILED:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/inside/proxy/action/i;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "insideSdk"

    invoke-interface {v0, v1, p1}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "dynamicId"

    iget-object v2, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "payStatus"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/alipay/android/phone/inside/proxy/action/i;->b:Lcom/alipay/android/phone/inside/commonbiz/model/a;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0
.end method
