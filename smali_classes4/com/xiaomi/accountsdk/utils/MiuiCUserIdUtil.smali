.class public final Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;
.super Ljava/lang/Object;
.source "MiuiCUserIdUtil.java"


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

.field private static final ACTION_NEW_NAME:Ljava/lang/String; = "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.account"

.field private static final TAG:Ljava/lang/String; = "MiuiCUserIdUtil"


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->mAccount:Landroid/accounts/Account;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->mAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method private getFromServiceTokenUtil()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->getInstance()Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenUtilFacade;->buildMiuiServiceTokenUtil()Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->mContext:Landroid/content/Context;

    const-string v2, "passportapi"

    invoke-interface {v0, v1, v2}, Lcom/xiaomi/passport/servicetoken/IServiceTokenUtil;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->cUserId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getFromXiaomiAccountService()Ljava/lang/String;
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_0
    const-string v0, "com.xiaomi.account.action.BIND_XIAOMI_ACCOUNT_SERVICE"

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/futureservice/SimpleClientFuture;-><init>()V

    new-instance v7, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;

    iget-object v3, p0, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->mContext:Landroid/content/Context;

    const-string v5, "com.xiaomi.account"

    move-object v1, v7

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;-><init>(Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/accountsdk/futureservice/ClientFuture;)V

    invoke-virtual {v7}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil$1;->bind()Z

    :try_start_0
    invoke-virtual {v0}, Lcom/xiaomi/accountsdk/futureservice/ClientFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MiuiCUserIdUtil"

    const-string v2, "getCUserId"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "MiuiCUserIdUtil"

    const-string v2, "getCUserId"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/accountsdk/utils/AccountLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final getCUserId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->getFromXiaomiAccountService()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/MiuiCUserIdUtil;->getFromServiceTokenUtil()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiuiCUserIdUtil#getCUserId() should NOT be called on main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
