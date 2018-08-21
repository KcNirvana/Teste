.class public Lcom/alipay/android/phone/inside/proxy/action/o;
.super Ljava/lang/Object;
.source "ScanAction.java"

# interfaces
.implements Lcom/alipay/android/phone/inside/commonbiz/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;
    .locals 6

    new-instance v1, Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    const-string/jumbo v0, "SCAN_CODE_SERVICE"

    invoke-static {v0}, Lcom/alipay/android/phone/inside/framework/a/c;->b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-class v3, Lcom/alipay/android/phone/inside/proxy/action/o;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "\u626b\u7801\u68c0\u6d4b\u5f00\u59cb"

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, p1}, Lcom/alipay/android/phone/inside/framework/service/a;->startForResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "statusCode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "ScanAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u7ed3\u679c\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->CODE_PARSE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    const-string/jumbo v0, "\u7801\u503c\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :pswitch_0
    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    const-string/jumbo v0, "\u672c\u5730alipay\u672a\u5b89\u88c5"

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v2

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->AUTH_OP_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v4, "action"

    const-string/jumbo v5, "SCAN_RESULT"

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->CODE_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    const-string/jumbo v0, "\u7801\u503c\u65e0\u6cd5\u5904\u7406"

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "scanCode"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SCAN_CODE:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
