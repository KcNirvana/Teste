.class public Lcom/miui/common/h/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static aCr:Lcom/miui/common/h/b;


# instance fields
.field private aCo:Landroid/app/ActivityManager;

.field private aCp:Ljava/lang/ref/SoftReference;

.field private aCq:Ljava/util/Map;

.field private mLock:Ljava/lang/Object;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/common/h/b;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/common/h/b;->aCq:Ljava/util/Map;

    new-instance v0, Ljava/lang/ref/SoftReference;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/common/h/b;->aCp:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/h/b;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "activity"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/common/h/b;->aCo:Landroid/app/ActivityManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/common/h/c;

    invoke-direct {v2, p0, v3}, Lcom/miui/common/h/c;-><init>(Lcom/miui/common/h/b;Lcom/miui/common/h/c;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/common/h/d;

    invoke-direct {v2, p0, v3}, Lcom/miui/common/h/d;-><init>(Lcom/miui/common/h/b;Lcom/miui/common/h/d;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic aNo(Lcom/miui/common/h/b;)Ljava/lang/ref/SoftReference;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/h/b;->aCp:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method static synthetic aNp(Lcom/miui/common/h/b;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/h/b;->aCq:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic aNq(Lcom/miui/common/h/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/h/b;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;
    .locals 2

    const-class v1, Lcom/miui/common/h/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/common/h/b;->aCr:Lcom/miui/common/h/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/common/h/b;

    invoke-direct {v0, p0}, Lcom/miui/common/h/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/common/h/b;->aCr:Lcom/miui/common/h/b;

    :cond_0
    sget-object v0, Lcom/miui/common/h/b;->aCr:Lcom/miui/common/h/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public aNk()Ljava/util/List;
    .locals 4

    iget-object v1, p0, Lcom/miui/common/h/b;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/h/b;->aCp:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/common/h/b;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/miui/common/h/b;->aCp:Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aNl(Ljava/lang/String;)Lcom/miui/common/h/a;
    .locals 3

    iget-object v0, p0, Lcom/miui/common/h/b;->aCq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/h/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/h/b;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/common/h/b;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/miui/common/h/a;

    invoke-direct {v0}, Lcom/miui/common/h/a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/common/h/a;->setLabel(Ljava/lang/String;)V

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Lcom/miui/common/h/a;->setUid(I)V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/miui/common/h/a;->setPkgName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/common/h/b;->aCq:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public aNm(Landroid/content/pm/ApplicationInfo;)Lcom/miui/common/h/a;
    .locals 3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/common/h/b;->aCq:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/common/h/a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/common/h/b;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/miui/common/h/a;

    invoke-direct {v0}, Lcom/miui/common/h/a;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/common/h/a;->setLabel(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Lcom/miui/common/h/a;->setUid(I)V

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/common/h/a;->setPkgName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/common/h/b;->aCq:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public aNn()Ljava/util/List;
    .locals 2

    iget-object v1, p0, Lcom/miui/common/h/b;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/miui/common/h/b;->aCo:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
