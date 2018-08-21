.class public Lcom/alipay/android/phone/inside/proxy/a;
.super Ljava/lang/Object;
.source "InsideInteractionProxy.java"


# static fields
.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/alipay/android/phone/inside/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/l;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/l;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/b;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/b;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/e;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/e;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/n;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/n;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/h;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/h;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/m;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/m;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/r;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/r;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/f;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/f;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/o;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/o;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/a;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/j;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/j;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/p;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/p;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/t;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/t;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/proxy/action/ScanCodeV2;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Lcom/alipay/android/phone/inside/commonbiz/a/a;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/proxy/a;->c:Ljava/util/List;

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/a;->c:Ljava/util/List;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->GENERATE_CODE:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/a;->c:Ljava/util/List;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->ONLINE_PAY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/a;->c:Ljava/util/List;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->QUERY_PAY_RESULT:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/a;->c:Ljava/util/List;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->SWITCH_USER:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/a;->c:Ljava/util/List;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->PUSH:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/a;->c:Ljava/util/List;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->AUTH:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/inside/proxy/a;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/alipay/android/phone/inside/commonbiz/model/a;)Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "result"

    invoke-virtual {p1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "code"

    invoke-virtual {p1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;
    .locals 9

    :try_start_0
    const-string/jumbo v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/proxy/a;->a(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/alipay/android/phone/inside/commonbiz/b/a;->a(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/a/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alipay/android/phone/inside/commonbiz/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/b/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    const-string/jumbo v2, "action"

    sget-object v3, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ActionEnter|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/alipay/android/phone/inside/commonbiz/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p1}, Lcom/alipay/android/phone/inside/commonbiz/a/a;->a(Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v4

    const-string/jumbo v5, "action"

    sget-object v6, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ActionResult|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v1}, Lcom/alipay/android/phone/inside/commonbiz/a/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a()Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getPerfLogger()Lcom/alipay/android/phone/inside/log/api/b/a;

    move-result-object v4

    const-string/jumbo v5, "action"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ActionTime|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/alipay/android/phone/inside/commonbiz/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v1, v2}, Lcom/alipay/android/phone/inside/log/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "insideSdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/a;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/inside/proxy/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "REPORT_DEVICE_LOCATION_SERVICE"

    invoke-static {v0}, Lcom/alipay/android/phone/inside/framework/a/c;->b(Ljava/lang/String;)Lcom/alipay/android/phone/inside/framework/service/a;

    move-result-object v0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/alipay/android/phone/inside/framework/service/a;->start(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/inside/proxy/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v2, "insideSdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->init()V

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/inside/proxy/a;->b(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/proxy/a;->a(Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->sumit()V

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/inside/proxy/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/a;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alipay/android/phone/inside/a/f;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/phone/inside/proxy/a;->b:Lcom/alipay/android/phone/inside/a/f;

    iget-object v0, p0, Lcom/alipay/android/phone/inside/proxy/a;->b:Lcom/alipay/android/phone/inside/a/f;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/b/c;->a(Lcom/alipay/android/phone/inside/a/f;)V

    return-void
.end method

.method public b(Lcom/alipay/android/phone/inside/a/f;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/proxy/a;->b:Lcom/alipay/android/phone/inside/a/f;

    invoke-static {v0}, Lcom/alipay/android/phone/inside/b/c;->a(Lcom/alipay/android/phone/inside/a/f;)V

    return-void
.end method
