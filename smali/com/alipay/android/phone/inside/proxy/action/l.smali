.class public Lcom/alipay/android/phone/inside/proxy/action/l;
.super Ljava/lang/Object;
.source "PreCheckAction.java"

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

    invoke-direct {v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/barcode/b;->a()Lcom/alipay/android/barcode/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/barcode/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    const-string/jumbo v2, "action"

    sget-object v3, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v4, "PRE_LOAD"

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V

    :goto_1
    return-object v1

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->NOT_INITIAL_SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;
    :try_end_0
    .catch Lcom/alibaba/wireless/security/open/SecException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/barcode/ex/InvalidUserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/android/barcode/ex/InvalidTidException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "PreCheckAction"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v4, "action"

    const-string/jumbo v5, "PRE_LOAD"

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "PreCheckAction"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->AUTH_OP_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "PreCheckAction"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->AUTH_OP_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "PreCheckAction"

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v2, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v2}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v4, "action"

    const-string/jumbo v5, "PRE_LOAD"

    invoke-interface {v2, v3, v4, v5, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->PRE_CHECK:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
