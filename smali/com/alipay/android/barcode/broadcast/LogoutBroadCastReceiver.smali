.class public Lcom/alipay/android/barcode/broadcast/LogoutBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LogoutBroadCastReceiver.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.alipay.security.logout"

.field private static final TAG:Ljava/lang/String; = "LogoutBroadCastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo v0, "com.alipay.security.logout"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "LogoutBroadCastReceiver"

    const-string/jumbo v2, "\u6536\u5230\u4e86\u5e94\u7528\u7684\u5e7f\u64ad\u7c7b\u578b\uff1a com.alipay.security.logout"

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/android/barcode/b;->a()Lcom/alipay/android/barcode/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "LogoutBroadCastReceiver"

    const-string/jumbo v3, "\u63a5\u6536\u5b89\u5168\u9000\u51fa\u6d88\u606f\u540e\uff0c\u5220\u9664index\u5f00\u59cb"

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/barcode/b;->d()V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    const-string/jumbo v1, "BARCODE"

    sget-object v2, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->AUTOEVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v3, "LOGOUT_DELETE_SEED"

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v3, "BARCODE"

    const-string/jumbo v4, "LOGOUT_DELETE_SEED"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "LogoutBroadCastReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5b89\u5168\u9000\u51fa\u6a21\u5757\u5e7f\u64ad\u5f02\u5e38:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
