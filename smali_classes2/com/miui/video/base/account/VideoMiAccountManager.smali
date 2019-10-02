.class public Lcom/miui/video/base/account/VideoMiAccountManager;
.super Ljava/lang/Object;
.source "VideoMiAccountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/account/VideoMiAccountManager$Holder;,
        Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;,
        Lcom/miui/video/base/account/VideoMiAccountManager$ServiceTokenCallback;,
        Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;,
        Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;,
        Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_XIAOMI:Ljava/lang/String; = "com.xiaomi"

.field private static final ACTION_XIAOMI_ACCOUNT_SYNC_SETTING:Ljava/lang/String; = "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

.field private static IS_STAGING:Z = false

.field public static final MARK_EXPIRE_INTERVAL:J = 0x3a98L

.field public static final REQUEST_CODE_GET_AUTH_TOKEN:I = 0x321

.field public static final SERVICE_TOKEN_NEED_USER_INTERACTION:Ljava/lang/String; = "SERVICE_TOKEN_NEED_USER_INTERACTION"

.field private static SID:Ljava/lang/String; = ""

.field private static SID_ID:Ljava/lang/String; = "mivideo_indonesia"

.field private static SID_IN:Ljava/lang/String; = "gmivideo_india"

.field private static final SID_PASSPORT:Ljava/lang/String; = "passportapi"

.field public static final TAG:Ljava/lang/String; = "VideoMiAccountManager"


# instance fields
.field private innerAccountUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

.field private mAccountUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentAccount:Landroid/accounts/Account;

.field private volatile mLastMarkExpireTimeMillis:J

.field private mMarkExpireLock:Ljava/lang/Object;

.field private mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

.field private volatile mServiceTokenExpired:Z

.field private mServiceTokenLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mAccountUpdateListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mServiceTokenExpired:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mLastMarkExpireTimeMillis:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMarkExpireLock:Ljava/lang/Object;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mServiceTokenLock:Ljava/lang/Object;

    new-instance v1, Lcom/miui/video/base/account/VideoMiAccountManager$1;

    invoke-direct {v1, p0}, Lcom/miui/video/base/account/VideoMiAccountManager$1;-><init>(Lcom/miui/video/base/account/VideoMiAccountManager;)V

    iput-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->innerAccountUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->get(Landroid/content/Context;)Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUseSystem()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUseLocal()V

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mCurrentAccount:Landroid/accounts/Account;

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mCurrentAccount:Landroid/accounts/Account;

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v0}, Lcom/miui/video/base/account/AccountStatisticsUtils;->stateOnLaunchApp(Z)V

    invoke-direct {p0}, Lcom/miui/video/base/account/VideoMiAccountManager;->addAccountUpdateListener()V

    const-string p1, "ID"

    invoke-static {p1}, Lcom/miui/video/base/utils/RegionUtils;->checkRegion(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/miui/video/base/account/VideoMiAccountManager;->SID_ID:Ljava/lang/String;

    sput-object p1, Lcom/miui/video/base/account/VideoMiAccountManager;->SID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string p1, "IN"

    invoke-static {p1}, Lcom/miui/video/base/utils/RegionUtils;->checkRegion(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/miui/video/base/account/VideoMiAccountManager;->SID_IN:Ljava/lang/String;

    sput-object p1, Lcom/miui/video/base/account/VideoMiAccountManager;->SID:Ljava/lang/String;

    :cond_3
    :goto_1
    sget-boolean p1, Lcom/miui/video/base/account/VideoMiAccountManager;->IS_STAGING:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    invoke-virtual {p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->setUseLocal()V

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaomi/accountsdk/account/XMPassportSettings;->ensureApplicationContext(Landroid/app/Application;)V

    iget-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/xiaomi/accountsdk/account/URLs;->setLocalUsePreview(Landroid/content/Context;Z)V

    :cond_4
    const-string p1, "VideoMiAccountManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is preview = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/xiaomi/accountsdk/account/XMPassport;->USE_PREVIEW:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/miui/video/base/account/VideoMiAccountManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/account/VideoMiAccountManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/base/account/VideoMiAccountManager;)Landroid/accounts/Account;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mCurrentAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method static synthetic access$002(Lcom/miui/video/base/account/VideoMiAccountManager;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 0

    iput-object p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mCurrentAccount:Landroid/accounts/Account;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/video/base/account/VideoMiAccountManager;Landroid/accounts/Account;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/base/account/VideoMiAccountManager;->onAccountChanged(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/video/base/account/VideoMiAccountManager;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/CipherException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getXiaomiUserInfoOnce()Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;

    move-result-object p0

    return-object p0
.end method

.method private addAccountUpdateListener()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    iget-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->innerAccountUpdateListener:Landroid/accounts/OnAccountsUpdateListener;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public static get()Lcom/miui/video/base/account/VideoMiAccountManager;
    .locals 1

    invoke-static {}, Lcom/miui/video/base/account/VideoMiAccountManager$Holder;->access$300()Lcom/miui/video/base/account/VideoMiAccountManager;

    move-result-object v0

    return-object v0
.end method

.method private getXiaomiUserInfoOnce()Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/accountsdk/request/AccessDeniedException;,
            Lcom/xiaomi/accountsdk/request/AuthenticationFailureException;,
            Lcom/xiaomi/accountsdk/request/InvalidResponseException;,
            Lcom/xiaomi/accountsdk/request/CipherException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mContext:Landroid/content/Context;

    const-string v1, "passportapi"

    invoke-static {v0, v1}, Lcom/xiaomi/passport/data/XMPassportInfo;->build(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/data/XMPassportInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "VideoMiAccountManager"

    const-string v1, "XMPassportInfo == null"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/accountsdk/account/XMPassport;->getXiaomiUserInfo(Lcom/xiaomi/accountsdk/account/data/PassportInfo;)Lcom/xiaomi/accountsdk/account/data/XiaomiUserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "VideoMiAccountManager"

    const-string v2, "get MI user info success"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v1, "VideoMiAccountManager"

    const-string v2, "get MI user info == null"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method private invalidateServiceTokenIfExpired()V
    .locals 4

    const-string v0, "VideoMiAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateServiceTokenIfExpired is called, isExpire = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mServiceTokenExpired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "LOCK_REQUEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateServiceTokenIfExpired "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mServiceTokenExpired:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Ready To invalidate"

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/base/account/VideoMiAccountManager;->markServiceTokenExpire(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "VideoMiAccountManager"

    const-string v1, "invalidateServiceToken"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    iget-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/miui/video/base/account/VideoMiAccountManager;->SID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    iget-object v2, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->invalidateServiceToken(Landroid/content/Context;Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    const-string v0, "VideoMiAccountManager"

    const-string v1, "Try To Refresh ServiceToken"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "VideoMiAccountManager"

    const-string v1, "getAccount == null, Not invalidateServiceToken"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "LOCK_REQUEST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateServiceTokenIfExpired END "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private onAccountChanged(Landroid/accounts/Account;)V
    .locals 2

    const-string v0, "VideoMiAccountManager"

    const-string v1, "onAccountChanged "

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mAccountUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;->changeListener(Landroid/accounts/Account;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/miui/video/base/account/AccountStatisticsUtils;->onLogout(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public addAccountUpdateListener(Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mAccountUpdateListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mAccountUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/video/base/account/VideoMiAccountManager$AccountUpdateListener;

    if-ne v1, p1, :cond_0

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mAccountUpdateListeners:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public exeServiceToken()Ljava/lang/String;
    .locals 5

    const-string v0, "VideoMiAccountManager"

    const-string v1, "start getServiceToken"

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mServiceTokenLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "LOCK_REQUEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exeServiceToken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/miui/video/base/account/VideoMiAccountManager;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/base/account/VideoMiAccountManager;->invalidateServiceTokenIfExpired()V

    iget-object v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    iget-object v2, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/miui/video/base/account/VideoMiAccountManager;->SID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getServiceToken(Landroid/content/Context;Ljava/lang/String;)Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/passport/servicetoken/ServiceTokenFuture;->get()Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "VideoMiAccountManager"

    const-string v3, "get service token is null"

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_NONE:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "VideoMiAccountManager"

    const-string v3, "get service Token succuss"

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "VideoMiAccountManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get service token ERROR, Error code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorMessage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->errorCode:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    sget-object v3, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;->ERROR_USER_INTERACTION_NEEDED:Lcom/xiaomi/passport/servicetoken/ServiceTokenResult$ErrorCode;

    if-ne v2, v3, :cond_3

    const-string v2, "VideoMiAccountManager"

    const-string v3, "need user interaction"

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const-string v2, "LOCK_REQUEST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exeServiceToken END "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_4

    const-string v1, ""

    goto :goto_1

    :cond_4
    iget-object v1, v1, Lcom/xiaomi/passport/servicetoken/ServiceTokenResult;->serviceToken:Ljava/lang/String;

    :goto_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    invoke-virtual {v0}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->getXiaomiAccount()Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "VideoMiAccountManager"

    const-string v2, "get Account success"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v1, "VideoMiAccountManager"

    const-string v2, "getAccount == null"

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->e(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public getServiceToken(Lcom/miui/video/base/account/VideoMiAccountManager$ServiceTokenCallback;)V
    .locals 1

    new-instance v0, Lcom/miui/video/base/account/VideoMiAccountManager$5;

    invoke-direct {v0, p0, p1}, Lcom/miui/video/base/account/VideoMiAccountManager$5;-><init>(Lcom/miui/video/base/account/VideoMiAccountManager;Lcom/miui/video/base/account/VideoMiAccountManager$ServiceTokenCallback;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getUserInfo(Lcom/miui/video/base/account/VideoMiAccountManager$UserInfoCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string p1, "VideoMiAccountManager"

    const-string v1, "start get userInfo"

    invoke-static {p1, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lcom/miui/video/base/account/VideoMiAccountManager$2;

    invoke-direct {p1, p0, v0}, Lcom/miui/video/base/account/VideoMiAccountManager$2;-><init>(Lcom/miui/video/base/account/VideoMiAccountManager;Ljava/lang/ref/WeakReference;)V

    invoke-static {p1}, Lcom/miui/video/framework/task/AsyncTaskUtils;->exeIOTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public login(Landroid/app/Activity;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V
    .locals 8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "default_auth_provider"

    const-string v1, "ID_PSW_AUTH_PROVIDER"

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    const-string v1, "com.xiaomi"

    sget-object v2, Lcom/miui/video/base/account/VideoMiAccountManager;->SID:Ljava/lang/String;

    new-instance v6, Lcom/miui/video/base/account/VideoMiAccountManager$3;

    invoke-direct {v6, p0, p2}, Lcom/miui/video/base/account/VideoMiAccountManager$3;-><init>(Lcom/miui/video/base/account/VideoMiAccountManager;Lcom/miui/video/base/account/VideoMiAccountManager$LoginCallback;)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public logout(Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMiAccountManager:Lcom/xiaomi/passport/accountmanager/MiAccountManager;

    new-instance v1, Lcom/miui/video/base/account/VideoMiAccountManager$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/video/base/account/VideoMiAccountManager$4;-><init>(Lcom/miui/video/base/account/VideoMiAccountManager;Lcom/miui/video/base/account/VideoMiAccountManager$LogoutCallback;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/passport/accountmanager/MiAccountManager;->removeXiaomiAccount(Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public markServiceTokenExpire(ZLjava/lang/String;)V
    .locals 4

    const-string v0, "VideoMiAccountManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markServiceTokenExpire isExpire = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mMarkExpireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "LOCK_REQUEST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "markServiceTokenExpire "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    invoke-static {p2}, Lcom/miui/video/framework/utils/TxtUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/miui/video/base/account/AccountStatisticsUtils;->onInvalidToken(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mLastMarkExpireTimeMillis:J

    const/4 v3, 0x0

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x3a98

    cmp-long p1, p1, v1

    if-lez p1, :cond_1

    const-string p1, "VideoMiAccountManager"

    const-string p2, "mServiceTokenExpired = true"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mLastMarkExpireTimeMillis:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mServiceTokenExpired:Z

    goto :goto_0

    :cond_1
    const-string p1, "VideoMiAccountManager"

    const-string p2, "Just Changed; DO NOT Change"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string p1, "VideoMiAccountManager"

    const-string p2, "mServiceTokenExpired = false"

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/base/account/VideoMiAccountManager;->mServiceTokenExpired:Z

    :goto_0
    const-string p1, "LOCK_REQUEST"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "markServiceTokenExpire end : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startUserInfoActivity(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/miui/video/framework/miui/utils/MiuiUtils;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.XIAOMI_ACCOUNT_SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
