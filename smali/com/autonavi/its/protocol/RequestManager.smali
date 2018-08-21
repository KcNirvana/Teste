.class public Lcom/autonavi/its/protocol/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# static fields
.field private static mAccount:Lcom/autonavi/its/protocol/model/Account;

.field private static mContext:Landroid/content/Context;

.field private static mRequestQueue:Lcom/autonavi/volley/RequestQueue;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CancelRequest(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/autonavi/its/protocol/RequestManager;->mRequestQueue:Lcom/autonavi/volley/RequestQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/its/protocol/RequestManager;->mRequestQueue:Lcom/autonavi/volley/RequestQueue;

    invoke-virtual {v0, p0}, Lcom/autonavi/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized Volley"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAccount()Lcom/autonavi/its/protocol/model/Account;
    .locals 1

    sget-object v0, Lcom/autonavi/its/protocol/RequestManager;->mAccount:Lcom/autonavi/its/protocol/model/Account;

    return-object v0
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/autonavi/its/protocol/RequestManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getRequestQueue()Lcom/autonavi/volley/RequestQueue;
    .locals 2

    sget-object v0, Lcom/autonavi/its/protocol/RequestManager;->mRequestQueue:Lcom/autonavi/volley/RequestQueue;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/autonavi/its/protocol/RequestManager;->mRequestQueue:Lcom/autonavi/volley/RequestQueue;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized Volley"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUserKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/autonavi/its/common/PreferenceUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lcom/autonavi/its/protocol/RequestManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/autonavi/its/protocol/RequestManager;->mRequestQueue:Lcom/autonavi/volley/RequestQueue;

    if-nez v0, :cond_1

    const-class v1, Lcom/autonavi/its/protocol/RequestManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/its/protocol/RequestManager;->mRequestQueue:Lcom/autonavi/volley/RequestQueue;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/autonavi/volley/toolbox/Volley;->newRequestQueue(Landroid/content/Context;)Lcom/autonavi/volley/RequestQueue;

    move-result-object v0

    sput-object v0, Lcom/autonavi/its/protocol/RequestManager;->mRequestQueue:Lcom/autonavi/volley/RequestQueue;

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setAccount(Lcom/autonavi/its/protocol/model/Account;)V
    .locals 0

    sput-object p0, Lcom/autonavi/its/protocol/RequestManager;->mAccount:Lcom/autonavi/its/protocol/model/Account;

    return-void
.end method

.method public static setUserKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/autonavi/its/common/PreferenceUtil;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
