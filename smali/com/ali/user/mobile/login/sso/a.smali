.class public final Lcom/ali/user/mobile/login/sso/a;
.super Ljava/lang/Object;
.source "SsoServiceImpl.java"


# static fields
.field private static d:Lcom/ali/user/mobile/login/sso/a;


# instance fields
.field a:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Lcom/ali/user/mobile/login/sso/SsoLoginInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lcom/ali/user/mobile/rpc/facade/CreateSsoTokenFacade;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ali/user/mobile/login/sso/b;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/sso/b;-><init>(Lcom/ali/user/mobile/login/sso/a;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/a;->a:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/ali/user/mobile/login/sso/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/android/phone/inside/d/a;->a()Lcom/alipay/android/phone/inside/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/d/a;->b()Lcom/alipay/android/phone/inside/d/c;

    move-result-object v0

    const-class v1, Lcom/ali/user/mobile/rpc/facade/CreateSsoTokenFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/inside/d/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/rpc/facade/CreateSsoTokenFacade;

    iput-object v0, p0, Lcom/ali/user/mobile/login/sso/a;->c:Lcom/ali/user/mobile/rpc/facade/CreateSsoTokenFacade;

    return-void
.end method

.method static synthetic a(Lcom/ali/user/mobile/login/sso/a;)Lcom/ali/user/mobile/login/sso/SsoLoginInfo;
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/login/sso/a;->b()Lcom/ali/user/mobile/login/sso/SsoLoginInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/a;
    .locals 2

    const-class v1, Lcom/ali/user/mobile/login/sso/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/login/sso/a;->d:Lcom/ali/user/mobile/login/sso/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/login/sso/a;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/sso/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ali/user/mobile/login/sso/a;->d:Lcom/ali/user/mobile/login/sso/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/ali/user/mobile/login/sso/a;->d:Lcom/ali/user/mobile/login/sso/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenResultPb;
    .locals 6

    new-instance v1, Lcom/ali/user/mobile/e/j;

    const-string/jumbo v0, "event"

    const-string/jumbo v2, "YWUC-JTTYZH-C27sso"

    const-string/jumbo v3, "unifyVerifySsoToken.pb"

    invoke-direct {v1, v0, v2, v3}, Lcom/ali/user/mobile/e/j;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->a()Lcom/ali/user/mobile/e/j;

    move-result-object v0

    const-string/jumbo v2, "alipay.client.unifyVerifySsoToken.pb"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/e/j;->a(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    :try_start_0
    new-instance v0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;

    invoke-direct {v0}, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;-><init>()V

    new-instance v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    invoke-direct {v2}, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;-><init>()V

    iput-object p1, v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->loginId:Ljava/lang/String;

    iput-object p3, v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->alipaySsoToken:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/e;->a()Lcom/ali/user/mobile/info/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/e;->f()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->did:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getProductId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productId:Ljava/lang/String;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->productVersion:Ljava/lang/String;

    const-string/jumbo v3, "android"

    iput-object v3, v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->systemType:Ljava/lang/String;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;

    invoke-direct {v4}, Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;-><init>()V

    const-string/jumbo v5, "apdid"

    iput-object v5, v4, Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;->key:Ljava/lang/String;

    iget-object v5, v3, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    iput-object v5, v4, Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;->value:Ljava/lang/String;

    iget-object v5, v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;

    invoke-direct {v4}, Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;-><init>()V

    const-string/jumbo v5, "apdidToken"

    iput-object v5, v4, Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;->key:Ljava/lang/String;

    iget-object v3, v3, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdidToken:Ljava/lang/String;

    iput-object v3, v4, Lcom/ali/user/mobile/rpc/vo/sso/KeyValueEntryPB;->value:Ljava/lang/String;

    iget-object v3, v2, Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;->externParam:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object v2, v0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;->verifySsoTokenRequest:Lcom/ali/user/mobile/rpc/vo/sso/VerifySsoTokenRequestPb;

    iget-object v2, p0, Lcom/ali/user/mobile/login/sso/a;->c:Lcom/ali/user/mobile/rpc/facade/CreateSsoTokenFacade;

    invoke-interface {v2, v0}, Lcom/ali/user/mobile/rpc/facade/CreateSsoTokenFacade;->unifyVerifySsoTokenPb(Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenRequestPb;)Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenResultPb;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    const-string/jumbo v3, "UnifyVerifySSOTokenResultPb=null"

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->c()V

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v2

    iget-object v3, v0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenResultPb;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ali/user/mobile/e/j;->d(Ljava/lang/String;)Lcom/ali/user/mobile/e/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ali/user/mobile/e/j;->c()V
    :try_end_0
    .catch Lcom/alipay/android/phone/mrpc/core/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SSOManager.login"

    invoke-static {v2, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/j;->a(Lcom/ali/user/mobile/e/j;Lcom/alipay/android/phone/mrpc/core/RpcException;)V

    invoke-virtual {v1}, Lcom/ali/user/mobile/e/j;->b()Lcom/ali/user/mobile/e/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/e/j;->c()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lcom/ali/user/mobile/login/sso/SsoLoginInfo;
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.alipay.ali.authlogin/aliuser_sdk_sso"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "query sso token cursor:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "loginId"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "headImg"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "alipaySsoToken"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "SSOManager.login"

    const-string/jumbo v5, "sso id:%s, img:%s, token:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    const/4 v8, 0x2

    aput-object v0, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;-><init>()V

    const-string/jumbo v4, "com.alipay"

    iput-object v4, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->type:Ljava/lang/String;

    iput-object v3, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->nick:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->loginToken:Ljava/lang/String;

    iput-object v2, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->headImg:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->isDirectLogin:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SSOManager.login"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v6

    goto :goto_1

    :cond_1
    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/ali/user/mobile/login/sso/SsoLoginInfo;
    .locals 6

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Ljava/util/concurrent/FutureTask;

    iget-object v0, p0, Lcom/ali/user/mobile/login/sso/a;->a:Ljava/util/concurrent/Callable;

    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v3, "SSOManager.login"

    const-string/jumbo v4, "getResultTimeout executed"

    invoke-interface {v0, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x6

    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v2, "SSOManager.login"

    const-string/jumbo v3, "getResultTimeout Exception"

    invoke-interface {v0, v2, v3}, Lcom/alipay/android/phone/inside/log/api/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw v0
.end method

.method public a(Lcom/ali/user/mobile/login/sso/SsoLoginInfo;)Lcom/ali/user/mobile/login/sso/SsoLoginInfo;
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can not invoke on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    const-string/jumbo v0, "SSOManager.login"

    const-string/jumbo v1, "start verifyAlipaySsoToken:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->loginToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->nick:Ljava/lang/String;

    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->headImg:Ljava/lang/String;

    iget-object v2, p1, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->loginToken:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/ali/user/mobile/login/sso/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenResultPb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenResultPb;->success:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SSOManager.login"

    const-string/jumbo v2, "unifyVerifySsoTokenPb success"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/e/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenResultPb;->loginToken:Ljava/lang/String;

    iput-object v1, p1, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->loginToken:Ljava/lang/String;

    iget-object v0, v0, Lcom/ali/user/mobile/rpc/vo/sso/UnifyVerifySSOTokenResultPb;->isDirectLogin:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/ali/user/mobile/login/sso/SsoLoginInfo;->isDirectLogin:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SSOManager.login"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method
