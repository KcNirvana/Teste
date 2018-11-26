.class public Lcom/miui/securitycenter/dynamic/DynamicServiceManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_UPDATE_COUNT:Ljava/lang/String; = "dynamic_update_count"

.field private static final KEY_UPDATE_FORCE:Ljava/lang/String; = "dynamic_update_force"

.field private static final TAG:Ljava/lang/String; = "DynamicServiceManager"

.field private static final WHAT_CONNECT:I = 0x1

.field private static final WHAT_CONNECTED:I = 0x1

.field private static final WHAT_CONNECT_FAIL:I = 0x2

.field private static final WHAT_INIT_APK_LOADER:I = 0x3

.field private static final WHAT_UPDATE:I = 0x2

.field private static sDynamicManager:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;


# instance fields
.field private mApkLoader:Lcom/miui/securitycenter/dynamic/ApkLoader;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mManagers:Ljava/util/HashMap;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;)Lcom/miui/securitycenter/dynamic/ApkLoader;
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mApkLoader:Lcom/miui/securitycenter/dynamic/ApkLoader;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->connectWT(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->internalUpdateWT(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mManagers:Ljava/util/HashMap;

    new-instance v0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$1;-><init>(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/miui/securitycenter/Application;->getInstance()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/securitycenter/Application;->bsI()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Dynamic must be run remote process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mContext:Landroid/content/Context;

    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DynamicServiceManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$DynamicWorkHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$DynamicWorkHandler;-><init>(Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mWorkHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/securitycenter/dynamic/ApkLoader;

    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0, v2}, Lcom/miui/securitycenter/dynamic/ApkLoader;-><init>(Landroid/content/Context;Lcom/miui/securitycenter/dynamic/DynamicServiceManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mApkLoader:Lcom/miui/securitycenter/dynamic/ApkLoader;

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    iput-object p1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private connectWT(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mManagers:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->-get2(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/dynamic/AbsDynamicManager;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->-get2(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->createOrUpdateManagerWT(Ljava/lang/String;Lcom/miui/securitycenter/dynamic/AbsDynamicManager;)Lcom/miui/securitycenter/dynamic/AbsDynamicManager;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    invoke-static {p1, v0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->-set1(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;Lcom/miui/securitycenter/dynamic/AbsDynamicManager;)Lcom/miui/securitycenter/dynamic/AbsDynamicManager;

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private createOrUpdateManagerWT(Ljava/lang/String;Lcom/miui/securitycenter/dynamic/AbsDynamicManager;)Lcom/miui/securitycenter/dynamic/AbsDynamicManager;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mApkLoader:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-virtual {v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->getDynamicContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v2, "com.miui.securitycenter.dynamic.Configuration"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "newService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/dynamic/DynamicService;

    invoke-virtual {v0, v1}, Lcom/miui/securitycenter/dynamic/DynamicService;->attach(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/securitycenter/dynamic/DynamicService;->onCreate()V

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/miui/securitycenter/dynamic/ServiceRegistry;->getServcieClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securitycenter/dynamic/AbsDynamicManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mManagers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object p2, v1

    :cond_0
    :try_start_2
    invoke-virtual {p2, v0}, Lcom/miui/securitycenter/dynamic/AbsDynamicManager;->attach(Lcom/miui/securitycenter/dynamic/DynamicService;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-object p2

    :catch_0
    move-exception v0

    :goto_1
    const-string/jumbo v1, "DynamicServiceManager"

    const-string/jumbo v2, "ensureDynamicManager "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v0}, Lcom/miui/securitycenter/dynamic/EventTrack;->track(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p2, v1

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/securitycenter/dynamic/DynamicServiceManager;
    .locals 2

    const-class v1, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->sDynamicManager:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    invoke-direct {v0, p0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->sDynamicManager:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    :cond_0
    sget-object v0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->sDynamicManager:Lcom/miui/securitycenter/dynamic/DynamicServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private internalUpdateWT(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "dynamic_update_force"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    const-string/jumbo v0, "dynamic_update_force"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mApkLoader:Lcom/miui/securitycenter/dynamic/ApkLoader;

    const-string/jumbo v1, "dynamic_update_force"

    invoke-static {v1, v2}, Lcom/miui/common/persistence/a;->aMN(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/securitycenter/dynamic/ApkLoader;->update(Z)V

    return-void

    :cond_1
    const-string/jumbo v0, "dynamic_update_count"

    invoke-static {v0, v2}, Lcom/miui/common/persistence/a;->aMM(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v1, "dynamic_update_count"

    invoke-static {v1, v0}, Lcom/miui/common/persistence/a;->aMR(Ljava/lang/String;I)V

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "dynamic_update_force"

    invoke-static {v0, v3}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static main(Landroid/content/Context;)V
    .locals 3

    invoke-static {p0}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->getInstance(Landroid/content/Context;)Lcom/miui/securitycenter/dynamic/DynamicServiceManager;

    move-result-object v0

    const-string/jumbo v1, "app_activity"

    new-instance v2, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$2;

    invoke-direct {v2}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->getService(Ljava/lang/String;Lcom/miui/securitycenter/dynamic/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "DynamicServiceManager dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mApkLoader:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/securitycenter/dynamic/ApkLoader;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getService(Ljava/lang/String;Lcom/miui/securitycenter/dynamic/ServiceConnection;)V
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "connection is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/miui/securitycenter/dynamic/ServiceRegistry;->getServcieClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;

    invoke-direct {v0, v1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;-><init>(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;)V

    invoke-static {v0, p1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->-set2(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;->-set0(Lcom/miui/securitycenter/dynamic/DynamicServiceManager$ConnectionInfo;Lcom/miui/securitycenter/dynamic/ServiceConnection;)Lcom/miui/securitycenter/dynamic/ServiceConnection;

    iget-object v1, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method onDynamicContextChangeWT()V
    .locals 4

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mManagers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/securitycenter/dynamic/AbsDynamicManager;

    invoke-virtual {v1}, Lcom/miui/securitycenter/dynamic/AbsDynamicManager;->getService()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/securitycenter/dynamic/DynamicService;

    invoke-virtual {v2}, Lcom/miui/securitycenter/dynamic/DynamicService;->performDestroy()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->createOrUpdateManagerWT(Ljava/lang/String;Lcom/miui/securitycenter/dynamic/AbsDynamicManager;)Lcom/miui/securitycenter/dynamic/AbsDynamicManager;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public track()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mApkLoader:Lcom/miui/securitycenter/dynamic/ApkLoader;

    invoke-virtual {v0}, Lcom/miui/securitycenter/dynamic/ApkLoader;->track()V

    return-void
.end method

.method public update(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/securitycenter/dynamic/DynamicServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
