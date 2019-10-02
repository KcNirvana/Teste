.class final Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;
.super Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;
.source "ServiceTokenUtilMiui.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;,
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnectorBase;,
        Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$ServiceTokenServiceConnector;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceTokenUtilMiui"

.field private static volatile miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static volatile xiaomiAccountAppSlhPhAvailability:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->xiaomiAccountAppSlhPhAvailability:Ljava/lang/Boolean;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilImplBase;-><init>()V

    return-void
.end method

.method private checkBindServiceSuccess(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    iget-object p1, p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_REMOTE_EXCEPTION:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getAMServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;

    new-instance v2, Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-direct {v2}, Lcom/xiaomi/passport/servicetoken/AMKeys;-><init>()V

    invoke-direct {v1, v2}, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;-><init>(Lcom/xiaomi/passport/servicetoken/AMKeys;)V

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;-><init>(Lcom/xiaomi/passport/servicetoken/IAMUtil;)V

    return-object v0
.end method


# virtual methods
.method protected canAccessAccountImpl(Landroid/content/Context;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    .locals 3

    new-instance v0, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;

    new-instance v1, Lcom/xiaomi/passport/servicetoken/AMKeys;

    invoke-direct {v1}, Lcom/xiaomi/passport/servicetoken/AMKeys;-><init>()V

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;-><init>(Lcom/xiaomi/passport/servicetoken/AMKeys;)V

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/servicetoken/AMUtilImpl;->getXiaomiAccount(Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v2, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {p1, v2, v1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->accountVisible(ZLandroid/accounts/Account;)Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->build()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;-><init>()V

    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;

    invoke-direct {v2, p0, p1, v0, p1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$5;->bind()Z

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v1, "setSystemAccountVisible"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_EXECUTION:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->build()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, "setSystemAccountVisible"

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;

    sget-object v0, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;->ERROR_CANCELLED:Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;

    invoke-direct {p1, v0, v1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;-><init>(Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility$Builder;->build()Lcom/xiaomi/passport/servicetoken/data/XmAccountVisibility;

    move-result-object p1

    return-object p1
.end method

.method public doesXiaomiAccountAppSupportServiceTokenUIResponse(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;-><init>()V

    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$3;->bind()Z

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public fastCheckSlhPhCompatibility(Landroid/content/Context;)Z
    .locals 3

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-class v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    monitor-enter v0

    :try_start_0
    sget-object v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->xiaomiAccountAppSlhPhAvailability:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    sget-object p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->xiaomiAccountAppSlhPhAvailability:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;-><init>()V

    new-instance v2, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$4;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    invoke-virtual {v2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$4;->bind()Z

    :try_start_1
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const-class v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    sput-object p1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->xiaomiAccountAppSlhPhAvailability:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_0

    return p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception p1

    const-string v0, "ServiceTokenUtilMiui"

    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/xiaomi/accountsdk/utils/AccountLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catchall_1
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method public getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 8

    if-eqz p2, :cond_0

    const-string v0, "weblogin:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$MiuiCompatUtil;->hasWebLoginCompatIssue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->getAMServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    new-instance v7, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$1;->bind()Z

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->checkBindServiceSuccess(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :cond_1
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->getAMServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->getServiceTokenImpl(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method

.method public invalidateServiceTokenImpl(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;
    .locals 2

    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;-><init>(Lcom/xiaomi/accountsdk/futureservice/ClientFuture$ClientCallback;)V

    new-instance v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;-><init>(Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)V

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui$2;->bind()Z

    invoke-direct {p0, v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->checkBindServiceSuccess(Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->miuiServiceTokenServiceAvailability:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilMiui;->getAMServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilAM;->invalidateServiceTokenImpl(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object p1

    return-object p1
.end method
