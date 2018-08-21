.class public Lcom/alipay/android/phone/inside/b/c;
.super Ljava/lang/Object;
.source "PayResultUtil.java"


# static fields
.field private static volatile a:Z

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/alipay/android/phone/inside/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/phone/inside/b/c;->a:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/b/c;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/b/c;->c:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;
    .locals 14

    new-instance v1, Lcom/alipay/android/phone/inside/commonbiz/model/a;

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INSIDE_CANCEL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    :try_start_0
    const-string/jumbo v6, ""

    const-string/jumbo v5, ""

    const-string/jumbo v4, ""

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "payCodePageVisible"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "dynamicId"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "attachAction"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "action"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, "sdkBizData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v2, "mcashierParamStr"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "dynamicIds"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "#"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v11, v9, v7

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-le v12, v13, :cond_0

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_RESULT_UNKNOWN:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    const-string/jumbo v2, "action"

    sget-object v3, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v4, "PUSH_UNKNOWN"

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    const-string/jumbo v7, "DELSEED"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string/jumbo v7, "DELSEEDANDINDEX"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/alipay/android/barcode/b;->a()Lcom/alipay/android/barcode/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/android/barcode/b;->d()V

    sget-object v5, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->OTP_INVALID:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v5}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v5

    const-string/jumbo v7, "action"

    sget-object v9, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    const-string/jumbo v10, "QUERY_PAY_DELETE_SEED"

    invoke-interface {v5, v7, v9, v10}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    sget-boolean v5, Lcom/alipay/android/phone/inside/b/c;->a:Z

    if-nez v5, :cond_c

    invoke-interface {v8, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    sget-object v5, Lcom/alipay/android/phone/inside/b/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    sget-object v5, Lcom/alipay/android/phone/inside/b/c;->b:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-boolean v7, Lcom/alipay/android/phone/inside/b/c;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_a

    const/4 v3, 0x1

    :try_start_2
    sput-boolean v3, Lcom/alipay/android/phone/inside/b/c;->a:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INSIDE_CANCEL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INSIDE_CANCEL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->getDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    :try_start_3
    sput-boolean v0, Lcom/alipay/android/phone/inside/b/c;->a:Z

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_1

    :cond_5
    :try_start_4
    sget-object v0, Lcom/alipay/android/phone/inside/b/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    sget-object v0, Lcom/alipay/android/phone/inside/b/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_6

    sget-object v0, Lcom/alipay/android/phone/inside/b/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    :cond_6
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;

    move-result-object v0

    const-string/jumbo v3, "action"

    sget-object v4, Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;->EVENT:Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ActionResult|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "|ToOnlinePay"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v3, v4, v7}, Lcom/alipay/android/phone/inside/log/api/behavior/b;->a(Ljava/lang/String;Lcom/alipay/android/phone/inside/log/api/behavior/BehaviorType;Ljava/lang/String;)V

    const-string/jumbo v0, "inside"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&app_name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "payStr"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "dynamicId"

    invoke-virtual {v3, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/android/phone/inside/b/c;->a()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :try_start_5
    sget-object v2, Lcom/alipay/android/phone/inside/b/c;->d:Lcom/alipay/android/phone/inside/a/f;

    if-eqz v2, :cond_7

    sget-object v0, Lcom/alipay/android/phone/inside/b/c;->d:Lcom/alipay/android/phone/inside/a/f;

    invoke-interface {v0}, Lcom/alipay/android/phone/inside/a/f;->a()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    :cond_7
    :goto_2
    if-nez v0, :cond_8

    :try_start_6
    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_RESULT_IGNORE:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v0, 0x0

    :try_start_7
    sput-boolean v0, Lcom/alipay/android/phone/inside/b/c;->a:Z

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v0, v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    :try_start_8
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v4

    sget-object v6, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v7, "PayResultUtil"

    const-string/jumbo v8, "unLockScreen"

    invoke-interface {v4, v6, v7, v8, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_2

    :cond_8
    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->ONLINE_PAY:Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/commonbiz/model/ActionEnum;->getActionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/commonbiz/a/b;->a(Ljava/lang/String;)Lcom/alipay/android/phone/inside/commonbiz/a/a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/alipay/android/phone/inside/commonbiz/a/a;->a(Lorg/json/JSONObject;)Lcom/alipay/android/phone/inside/commonbiz/model/a;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v0

    const/4 v2, 0x0

    :try_start_9
    sput-boolean v2, Lcom/alipay/android/phone/inside/b/c;->a:Z

    monitor-exit v5

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-class v3, Lcom/alipay/android/phone/inside/b/c;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    :goto_3
    move-object v0, v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_b
    sput-boolean v2, Lcom/alipay/android/phone/inside/b/c;->a:Z

    throw v0

    :cond_a
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_b
    :goto_4
    :try_start_c
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "pay_success"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "payCode"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/alipay/android/barcode/rpc/a;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->PAY_RESULT_IGNORE:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/inside/commonbiz/model/a;->a(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_4
.end method

.method public static a(Lcom/alipay/android/phone/inside/a/f;)V
    .locals 0

    sput-object p0, Lcom/alipay/android/phone/inside/b/c;->d:Lcom/alipay/android/phone/inside/a/f;

    return-void
.end method

.method private static a()Z
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/inside/framework/LauncherApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v3, "PayResultUtil"

    const-string/jumbo v4, "needUnLockScreen"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
