.class public Lcom/miui/securitycenter/memory/MemoryCheck;
.super Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;
.source ""


# instance fields
.field private aXx:Landroid/app/ActivityManager;

.field private aXy:Lcom/miui/securityscan/g/b;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securitycenter/memory/IMemoryCheck$Stub;-><init>()V

    iput-object p1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/securityscan/g/b;->Mr(Landroid/content/Context;)Lcom/miui/securityscan/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXy:Lcom/miui/securityscan/g/b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXx:Landroid/app/ActivityManager;

    return-void
.end method

.method private bpO(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v0, "android.miui.AppOpsUtils"

    invoke-static {v0}, Lcom/miui/a/c/d;->btN(Ljava/lang/String;)Lcom/miui/a/c/d;

    move-result-object v0

    const-string/jumbo v1, "getApplicationAutoStart"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/a/c/d;->btO(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Lcom/miui/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/a/c/d;->btV()I

    move-result v0

    return v0
.end method

.method private static bpP()Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "com.miui.cleanmaster"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static bpQ(Landroid/content/Context;)Ljava/util/List;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.android.providers.media"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.android.deskclock"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "com.miui.cleanmaster"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private bpR(Ljava/lang/String;)Landroid/util/SparseBooleanArray;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v5

    invoke-static {v4, v5}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpT(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpQ(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXy:Lcom/miui/securityscan/g/b;

    invoke-virtual {v3}, Lcom/miui/securityscan/g/b;->Ms()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpO(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    const/4 v1, 0x3

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-object v2

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static bpS(Landroid/content/Context;)Ljava/util/Set;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpT(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static bpT(Landroid/content/Context;I)Ljava/util/Set;
    .locals 2

    invoke-static {p1}, Lmiui/process/ProcessManager;->getLockedApplication(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto :goto_0
.end method

.method private bpX(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private bpY(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p1}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpZ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXx:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXx:Landroid/app/ActivityManager;

    invoke-static {v0, p1}, Lcom/miui/common/b/k;->forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private bpZ(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lcom/miui/common/b/k;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpO(Landroid/content/Context;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MemoryCheck"

    const-string/jumbo v3, "needKillBackgroundProcesses error"

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method


# virtual methods
.method public bpL(Ljava/util/List;Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v0, "MemoryCheck"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "cleanupAppsMemory callingPid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "   ;   callingUid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->bpK()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXx:Landroid/app/ActivityManager;

    const/16 v2, 0x3e9

    const/4 v5, 0x6

    invoke-virtual {v0, v2, v5}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    move v2, v1

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpX(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v4, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/a/b/c/c;->getInstance(Landroid/content/Context;)Lcom/miui/a/b/c/c;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/miui/a/b/c/c;->btv(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {p2}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->bpJ()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    return-void

    :cond_2
    :try_start_3
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXx:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v2, v2, v6

    :goto_4
    if-eqz v2, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6, v2}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpZ(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXx:Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {p2}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->bpJ()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    throw v0

    :cond_4
    move-object v2, v3

    goto :goto_4

    :cond_5
    :try_start_5
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_7
    const-string/jumbo v0, "MemoryCheck"

    invoke-static {v2, v0}, Lcom/miui/common/b/k;->aIE([ILjava/lang/String;)Z

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->bpI(Ljava/lang/String;)Z

    goto :goto_7

    :cond_8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpY(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->bpI(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_8

    :cond_9
    :try_start_6
    invoke-interface {p2}, Lcom/miui/securitycenter/memory/IMemoryCleanupCallback;->bpJ()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_5
.end method

.method public bpM(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpN(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public bpN(Ljava/lang/String;I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p1, p2}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bpU()Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpV(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bpV(I)Ljava/util/List;
    .locals 2

    if-nez p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpS(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/common/b/e;->aHL(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXy:Lcom/miui/securityscan/g/b;

    invoke-virtual {v1}, Lcom/miui/securityscan/g/b;->Ms()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpT(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public bpW()Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpS(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpQ(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXy:Lcom/miui/securityscan/g/b;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/b;->Ms()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public bqa(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bqb(Ljava/lang/String;II)V

    return-void
.end method

.method public bqb(Ljava/lang/String;II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    if-eqz p2, :cond_0

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    :goto_0
    invoke-static {p1, p3, v0}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public bqc(Lcom/miui/securitycenter/memory/IMemoryScanCallback;)V
    .locals 14

    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v1, "impl MemoryCheck startScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "security"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    const-string/jumbo v3, "getPackageNameByPid"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0, v3, v4, v5}, Lcom/miui/a/c/a;->btB(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-interface {p1}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQN()V

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpQ(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXx:Landroid/app/ActivityManager;

    const/16 v3, 0x3e9

    const/4 v8, 0x2

    invoke-virtual {v2, v3, v8}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_e

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpX(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan recentTaskAppsMap add"

    invoke-static {v0, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    move v3, v0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ge v3, v0, :cond_3

    :try_start_2
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RecentTaskInfo;

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpX(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_2

    iget-object v9, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget v10, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_1

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v9

    if-ne v9, v7, :cond_1

    iget-object v9, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v0, v10}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    new-instance v9, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-direct {v9}, Lcom/miui/securitycenter/memory/MemoryModel;-><init>()V

    invoke-virtual {v9, v0}, Lcom/miui/securitycenter/memory/MemoryModel;->setPackageName(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpR(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/securitycenter/memory/MemoryModel;->bpx(Landroid/util/SparseBooleanArray;)V

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/miui/securitycenter/memory/MemoryModel;->bpy(J)V

    iget-object v10, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v10, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/miui/securitycenter/memory/MemoryModel;->bpw(Ljava/lang/String;)V

    invoke-interface {v2, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {p1}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQK()Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :try_start_3
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v1, "impl MemoryCheck startScan callback.onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQL(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "MemoryCheck"

    const-string/jumbo v3, "getPackageNameByPid error"

    invoke-static {v2, v3, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan RemoteException2"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    :cond_3
    move-object v3, v2

    :goto_3
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan runningAppsMap add"

    invoke-static {v0, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->aXx:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v2, v2, v10

    :goto_5
    const/4 v10, 0x1

    new-array v10, v10, [I

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    const/4 v11, 0x0

    aput v0, v10, v11
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v10}, Lmiui/securitycenter/utils/SecurityCenterHelper;->getProcessPss([I)[J

    move-result-object v10

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v0, v2, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    iget v11, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v0, v2, v11}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/MemoryModel;

    const/4 v11, 0x0

    aget-wide v10, v10, v11

    const-wide/16 v12, 0x400

    mul-long/2addr v10, v12

    if-nez v0, :cond_5

    new-instance v0, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-direct {v0}, Lcom/miui/securitycenter/memory/MemoryModel;-><init>()V

    invoke-virtual {v0, v2}, Lcom/miui/securitycenter/memory/MemoryModel;->setPackageName(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpR(Ljava/lang/String;)Landroid/util/SparseBooleanArray;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/miui/securitycenter/memory/MemoryModel;->bpx(Landroid/util/SparseBooleanArray;)V

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v12, v13}, Lcom/miui/securitycenter/memory/MemoryModel;->bpy(J)V

    iget-object v12, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v12, v2}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/miui/securitycenter/memory/MemoryModel;->bpw(Ljava/lang/String;)V

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/miui/securitycenter/memory/MemoryModel;->bpv()J

    move-result-wide v12

    add-long/2addr v10, v12

    invoke-virtual {v0, v10, v11}, Lcom/miui/securitycenter/memory/MemoryModel;->bpy(J)V

    :cond_6
    invoke-interface {p1}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQK()Z
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v0

    if-eqz v0, :cond_4

    :try_start_6
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v1, "impl MemoryCheck startScan callback.onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQL(Ljava/util/List;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_6
    return-void

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    const-string/jumbo v1, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan RemoteException2"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_8
    :try_start_7
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan modelPkgList.add"

    invoke-static {v0, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQM(Ljava/lang/String;)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v6

    if-eqz v6, :cond_9

    :try_start_8
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v1, "impl MemoryCheck startScan callback.onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQL(Ljava/util/List;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan RemoteException2"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_9
    :try_start_9
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_7

    :catch_5
    move-exception v0

    :try_start_a
    const-string/jumbo v1, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan RemoteException1"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v1, "impl MemoryCheck startScan callback.onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQL(Ljava/util/List;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    :goto_9
    return-void

    :cond_a
    :try_start_c
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan modelList.add"

    invoke-static {v0, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-static {}, Lcom/miui/securitycenter/memory/MemoryCheck;->bpP()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/securitycenter/memory/MemoryCheck;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQM(Ljava/lang/String;)Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v2

    if-eqz v2, :cond_c

    :try_start_d
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v1, "impl MemoryCheck startScan callback.onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQL(Ljava/util/List;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6

    :goto_b
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan RemoteException2"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_c
    :try_start_e
    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securitycenter/memory/MemoryModel;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_f
    const-string/jumbo v1, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan callback.onFinishScan"

    invoke-static {v1, v2}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQL(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_9

    :goto_c
    throw v0

    :cond_d
    :try_start_10
    const-string/jumbo v0, "MemoryCheck"

    const-string/jumbo v1, "impl MemoryCheck startScan callback.onFinishScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Lcom/miui/securitycenter/memory/IMemoryScanCallback;->aQL(Ljava/util/List;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_9

    :catch_7
    move-exception v0

    const-string/jumbo v1, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan RemoteException2"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catch_8
    move-exception v0

    const-string/jumbo v1, "MemoryCheck"

    const-string/jumbo v2, "impl MemoryCheck startScan RemoteException2"

    invoke-static {v1, v2, v0}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    :catch_9
    move-exception v1

    const-string/jumbo v2, "MemoryCheck"

    const-string/jumbo v3, "impl MemoryCheck startScan RemoteException2"

    invoke-static {v2, v3, v1}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_c

    :catch_a
    move-exception v0

    goto/16 :goto_4

    :cond_e
    move-object v3, v0

    goto/16 :goto_3
.end method
