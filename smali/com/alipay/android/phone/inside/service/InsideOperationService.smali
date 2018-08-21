.class public Lcom/alipay/android/phone/inside/service/InsideOperationService;
.super Ljava/lang/Object;
.source "InsideOperationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;,
        Lcom/alipay/android/phone/inside/service/InsideOperationService$RunInMainThreadException;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/alipay/android/phone/inside/service/InsideOperationService;


# instance fields
.field private mHelper:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/InsideOperationService;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationService;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/service/InsideOperationService;->sInstance:Lcom/alipay/android/phone/inside/service/InsideOperationService;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationService;->mHelper:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/inside/service/InsideOperationService;)Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getPayCodeServiceHelper()Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    move-result-object v0

    return-object v0
.end method

.method private doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 5

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->init()V

    if-nez p3, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/model/OperationResult;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->REQUEST_NOT_NULL:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/util/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/inside/service/InsideOperationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start Action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Lcom/alipay/android/phone/inside/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/inside/model/OperationResult;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    :try_start_0
    invoke-interface {p2, p1, p3}, Lcom/alipay/android/phone/inside/a/a;->a(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/inside/service/InsideOperationService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "end Action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lcom/alipay/android/phone/inside/a/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",Result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->sumit()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/inside/service/InsideOperationService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->EXCEPTION:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v3, "sdk"

    const-string/jumbo v4, "doAction"

    invoke-interface {v1, v2, v3, v4, v0}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lcom/alipay/android/phone/inside/model/OperationResult;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->INTERNAL_CODE_ERROR:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/alipay/android/phone/inside/service/InsideOperationService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/phone/inside/service/InsideOperationService$RunInMainThreadException;
        }
    .end annotation

    invoke-static {}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->isInMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/service/InsideOperationService$RunInMainThreadException;

    const-string/jumbo v1, "onAuth  cannot exec in mainThread."

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/service/InsideOperationService$RunInMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/service/InsideOperationService;->sInstance:Lcom/alipay/android/phone/inside/service/InsideOperationService;

    return-object v0
.end method

.method private declared-synchronized getPayCodeServiceHelper()Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationService;->mHelper:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationService;->mHelper:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/inside/service/InsideOperationService;->mHelper:Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isInMainThread()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static jumpToAlipayScheme(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    invoke-static {p0, v0}, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a(Landroid/content/Context;I)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Lcom/alipay/android/phone/inside/model/OperationResult;

    sget-object v1, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-class v3, Lcom/alipay/android/phone/inside/service/InsideOperationService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/inside/model/OperationResult;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    goto :goto_1
.end method

.method private push(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/PushRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/g;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/g;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public checkAlipayWalletStatus(Landroid/content/Context;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2

    const/16 v0, 0x6e

    invoke-static {p1, v0}, Lcom/alipay/android/phone/inside/commonbiz/c/a;->a(Landroid/content/Context;I)Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    move-result-object v1

    sget-object v0, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->SUCCESS:Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/model/OperationResult;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/inside/model/OperationResult;-><init>(Lcom/alipay/android/phone/inside/commonbiz/model/ResultCodeEnum;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/android/phone/inside/service/k;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/k;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    new-instance v1, Lcom/alipay/android/phone/inside/service/l;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/inside/service/l;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method public doAuth(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/AuthRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/m;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/m;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public doPush(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/PushRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->push(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/PushRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public generatePayCode(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/CreateCodeRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/n;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/n;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "1.0.0"

    return-object v0
.end method

.method public loginOut(Landroid/content/Context;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2

    new-instance v0, Lcom/alipay/android/phone/inside/service/o;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/o;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    new-instance v1, Lcom/alipay/android/phone/inside/model/req/LoginOutModel;

    invoke-direct {v1}, Lcom/alipay/android/phone/inside/model/req/LoginOutModel;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public pay(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/PayModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/j;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/j;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public preCheck(Landroid/content/Context;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 2

    new-instance v0, Lcom/alipay/android/phone/inside/service/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/c;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    new-instance v1, Lcom/alipay/android/phone/inside/service/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/inside/service/d;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public preLoadService(Landroid/content/Context;ZZ)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/inside/util/b;->a(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getPayCodeServiceHelper()Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doInsideInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "preLoadService"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getPayCodeServiceHelper()Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->doAlipayInvoke(Landroid/content/Context;Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/inside/service/InsideOperationService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public queryPayResult(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/QueryPayResult;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/h;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/h;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public scanCode(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/ScanCodeRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/f;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/f;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public scanCodeV2(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/ScanCodeRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/e;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public setUnLockScreenListener(Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->getPayCodeServiceHelper()Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/phone/inside/service/InsideOperationServiceHelper;->setUnLockScreenListener(Lcom/alipay/android/phone/inside/service/InsideOperationService$UnLockScreenListener;)V

    return-void
.end method

.method public switchChannel(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/SwitchChannelModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/b;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public switchUser(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/SwithUserRequestModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/p;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/p;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public updateAlipaySupportMinVersion(I)V
    .locals 0

    sput p1, Lcom/alipay/android/phone/inside/commonbiz/a;->a:I

    return-void
.end method

.method public userIdentify(Landroid/content/Context;Lcom/alipay/android/phone/inside/model/req/UserIdentifyModel;)Lcom/alipay/android/phone/inside/model/OperationResult;
    .locals 1

    new-instance v0, Lcom/alipay/android/phone/inside/service/i;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/service/i;-><init>(Lcom/alipay/android/phone/inside/service/InsideOperationService;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/android/phone/inside/service/InsideOperationService;->doAction(Landroid/content/Context;Lcom/alipay/android/phone/inside/a/a;Lcom/alipay/android/phone/inside/model/req/BaseModel;)Lcom/alipay/android/phone/inside/model/OperationResult;

    move-result-object v0

    return-object v0
.end method
