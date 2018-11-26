.class public Lcom/miui/networkassistant/config/SharedPreferenceHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static sInstanceMap:Ljava/util/HashMap;

.field static sTmConnection:Landroid/content/ServiceConnection;

.field private static sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;


# instance fields
.field private final MODE:I

.field private mBinderPreLock:Ljava/lang/Object;

.field private mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

.field private mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

.field private mFileName:Ljava/lang/String;

.field private mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;


# direct methods
.method static synthetic -set0(Lcom/miui/networkassistant/service/ITrafficManageBinder;)Lcom/miui/networkassistant/service/ITrafficManageBinder;
    .locals 0

    sput-object p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    return-object p0
.end method

.method static synthetic -wrap0()V
    .locals 0

    invoke-static {}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->onBinderAttach()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Ljava/util/HashMap;

    sput-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    new-instance v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$1;

    invoke-direct {v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$1;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTmConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->MODE:I

    iput-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    iput-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    iput-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    iput-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mFileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mFileName:Ljava/lang/String;

    new-instance v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;-><init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    sget-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    sget-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mFileName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->getBinderListener()Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getSharedPreBinder(Ljava/lang/String;Lcom/miui/networkassistant/service/ISharedPreBinderListener;)Lcom/miui/networkassistant/service/ISharedPreBinder;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;-><init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper;Lcom/miui/networkassistant/service/ISharedPreBinder;)V

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private attachBinder(Lcom/miui/networkassistant/service/ITrafficManageBinder;)V
    .locals 5

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    sget-object v2, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    iget-object v3, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v4}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->getBinderListener()Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/miui/networkassistant/service/ITrafficManageBinder;->getSharedPreBinder(Ljava/lang/String;Lcom/miui/networkassistant/service/ISharedPreBinderListener;)Lcom/miui/networkassistant/service/ISharedPreBinder;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;-><init>(Lcom/miui/networkassistant/config/SharedPreferenceHelper;Lcom/miui/networkassistant/service/ISharedPreBinder;)V

    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/networkassistant/config/SharedPreferenceHelper;
    .locals 3

    const-class v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Ljava/util/HashMap;

    :cond_0
    sget-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    invoke-direct {v0, p0, p1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v2, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static initForUIProcess()V
    .locals 2

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->bindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private static declared-synchronized onBinderAttach()V
    .locals 4

    const-class v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;

    sget-object v3, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTrafficManageBinder:Lcom/miui/networkassistant/service/ITrafficManageBinder;

    invoke-direct {v0, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->attachBinder(Lcom/miui/networkassistant/service/ITrafficManageBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    monitor-exit v1

    return-void
.end method


# virtual methods
.method public attachBinderListener(Lcom/miui/networkassistant/service/ISharedPreBinderListener;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected finalize()V
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-static {}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->getInstance()Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->sTmConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/miui/networkassistant/service/wrapper/TmBinderCacher;->unbindTmService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public load(Ljava/lang/String;F)F
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;F)F

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v3, v1, v0

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v1, p1, v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;F)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public load(Ljava/lang/String;I)I
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;I)I

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v1, p1, v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public load(Ljava/lang/String;J)J
    .locals 6

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, v2, v3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v5, v2, v0

    if-eqz v5, :cond_0

    iget-object v2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v2, p1, v0, v1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v4

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v1, p1, v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->load(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v2, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, v1}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->load(Ljava/lang/String;Z)Z

    move-result v0

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v1, p1, v0}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public save(Ljava/lang/String;F)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;F)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutFloat(Ljava/lang/String;F)Z
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;F)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public save(Ljava/lang/String;I)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutInt(Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public save(Ljava/lang/String;J)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;J)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutLong(Ljava/lang/String;J)Z
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;J)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v1, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mBinderPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$BinderPreferences;->save(Ljava/lang/String;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/networkassistant/service/ISharedPreBinderListener;->onPutBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v1

    iget-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mPreferences:Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;

    invoke-virtual {v0, p1, p2}, Lcom/miui/networkassistant/config/SharedPreferenceHelper$NaSharedPreferences;->save(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/miui/networkassistant/config/SharedPreferenceHelper;->mClientBinderListener:Lcom/miui/networkassistant/service/ISharedPreBinderListener;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
