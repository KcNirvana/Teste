.class public Lcom/sina/weibo/sdk/cmd/WbAppActivator;
.super Ljava/lang/Object;
.source "WbAppActivator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sina/weibo/sdk/cmd/WbAppActivator;


# instance fields
.field private mAppkey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

.field private mInvokeExecutor:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

.field private volatile mLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInvokeExecutor:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

    new-instance v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    iput-object p2, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mAppkey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$2(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/sina/weibo/sdk/cmd/WbAppActivator;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mAppkey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->requestCmdInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/sina/weibo/sdk/cmd/WbAppActivator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->handleInstallCmd(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$6(Lcom/sina/weibo/sdk/cmd/WbAppActivator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->handleInvokeCmd(Ljava/util/List;)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/cmd/WbAppActivator;
    .locals 2

    const-class v1, Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstance:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/cmd/WbAppActivator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstance:Lcom/sina/weibo/sdk/cmd/WbAppActivator;

    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstance:Lcom/sina/weibo/sdk/cmd/WbAppActivator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleInstallCmd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInstallCmd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->start()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->stop()V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/cmd/AppInstallCmd;

    iget-object v2, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInstallExecutor:Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;

    invoke-virtual {v2, v0}, Lcom/sina/weibo/sdk/cmd/AppInstallCmdExecutor;->doExecutor(Lcom/sina/weibo/sdk/cmd/AppInstallCmd;)Z

    goto :goto_0
.end method

.method private handleInvokeCmd(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;

    iget-object v2, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mInvokeExecutor:Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;

    invoke-virtual {v2, v0}, Lcom/sina/weibo/sdk/cmd/AppInvokeCmdExecutor;->doExecutor(Lcom/sina/weibo/sdk/cmd/AppInvokeCmd;)Z

    goto :goto_0
.end method

.method private static requestCmdInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, "http://api.weibo.cn/2/client/common_config"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/sina/weibo/sdk/utils/Utility;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-direct {v1, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "appkey"

    invoke-virtual {v1, v4, p1}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "packagename"

    invoke-virtual {v1, v4, v2}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "key_hash"

    invoke-virtual {v1, v4, v0}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "version"

    const-string/jumbo v5, "0031405000"

    invoke-virtual {v1, v4, v5}, Lcom/sina/weibo/sdk/net/WeiboParameters;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "http://api.weibo.cn/2/client/common_config"

    const-string/jumbo v5, "GET"

    invoke-static {p0, v4, v5, v1}, Lcom/sina/weibo/sdk/net/NetUtils;->internalHttpRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public activateApp()V
    .locals 12

    iget-object v7, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;->getWeiboSdkSp(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iget-object v7, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;->getFrequency(Landroid/content/Context;Landroid/content/SharedPreferences;)J

    move-result-wide v0

    iget-object v7, p0, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->mContext:Landroid/content/Context;

    invoke-static {v7, v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$FrequencyHelper;->getLastTime(Landroid/content/Context;Landroid/content/SharedPreferences;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v2

    cmp-long v7, v4, v0

    if-gez v7, :cond_0

    sget-object v7, Lcom/sina/weibo/sdk/cmd/WbAppActivator;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "it\'s only %d ms from last time get cmd"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sina/weibo/sdk/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;

    invoke-direct {v8, p0, v6}, Lcom/sina/weibo/sdk/cmd/WbAppActivator$1;-><init>(Lcom/sina/weibo/sdk/cmd/WbAppActivator;Landroid/content/SharedPreferences;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
