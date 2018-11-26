.class public Lcom/miui/optimizemanage/memoryclean/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private vS:[Ljava/lang/String;

.field private vT:Lcom/miui/optimizemanage/b/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a;->vS:[Ljava/lang/String;

    new-instance v0, Lcom/miui/optimizemanage/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/optimizemanage/b/c;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a;->vT:Lcom/miui/optimizemanage/b/c;

    iget-object v0, p0, Lcom/miui/optimizemanage/memoryclean/a;->vT:Lcom/miui/optimizemanage/b/c;

    invoke-virtual {v0}, Lcom/miui/optimizemanage/b/c;->init()V

    return-void
.end method

.method private xd(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p2, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x200001

    and-int/2addr v1, v2

    const/high16 v2, 0x10000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method private xf(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/optimizemanage/memoryclean/a;->vS:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private xg(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private xh(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v2

    invoke-static {}, Lcom/miui/common/b/f;->aHO()I

    move-result v3

    if-eq v2, v3, :cond_0

    if-nez v3, :cond_1

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private xi(Ljava/util/List;Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p3}, Lcom/miui/common/b/f;->aHR(I)I

    move-result v0

    invoke-static {p2, v0}, Lmiui/process/ProcessManager;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public xc(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public xe(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v2, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual/range {p0 .. p1}, Lcom/miui/optimizemanage/memoryclean/a;->xc(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0x3e9

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v3, 0x1

    move v5, v3

    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    if-ge v5, v3, :cond_3

    :try_start_0
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v3}, Lcom/miui/optimizemanage/memoryclean/a;->xd(Landroid/content/pm/PackageManager;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11}, Lcom/miui/optimizemanage/memoryclean/a;->xg(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v7, v11, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    new-instance v13, Lcom/miui/optimizemanage/memoryclean/b;

    invoke-direct {v13}, Lcom/miui/optimizemanage/memoryclean/b;-><init>()V

    iput-object v11, v13, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v4, "userId"

    invoke-static {v3, v4}, Lcom/miui/a/c/a;->btz(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    :goto_2
    :try_start_2
    iget v6, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v6}, Lcom/miui/common/b/f;->aHQ(II)I

    move-result v4

    iput v4, v13, Lcom/miui/optimizemanage/memoryclean/b;->uid:I

    iget v4, v13, Lcom/miui/optimizemanage/memoryclean/b;->uid:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v4}, Lcom/miui/optimizemanage/memoryclean/a;->xi(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v13, Lcom/miui/optimizemanage/memoryclean/b;->vU:Z

    invoke-virtual {v13}, Lcom/miui/optimizemanage/memoryclean/b;->xj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v13}, Lcom/miui/optimizemanage/memoryclean/b;->xj()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/optimizemanage/memoryclean/b;

    iget-object v4, v4, Lcom/miui/optimizemanage/memoryclean/b;->vV:Ljava/util/List;

    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v4

    const-string/jumbo v14, "RunningProcessLoader"

    const-string/jumbo v15, "userId"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v6

    goto :goto_2

    :catch_2
    move-exception v4

    const-string/jumbo v14, "RunningProcessLoader"

    const-string/jumbo v15, "userId"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v6

    goto :goto_2

    :cond_2
    iget-object v4, v13, Lcom/miui/optimizemanage/memoryclean/b;->vV:Ljava/util/List;

    iget v3, v3, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v13}, Lcom/miui/optimizemanage/memoryclean/b;->xj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_4

    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    :cond_4
    new-instance v7, Lcom/miui/optimizemanage/memoryclean/c;

    invoke-direct {v7}, Lcom/miui/optimizemanage/memoryclean/c;-><init>()V

    iget-object v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    iput-object v10, v7, Lcom/miui/optimizemanage/memoryclean/c;->wd:Landroid/content/ComponentName;

    iget v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    iput v10, v7, Lcom/miui/optimizemanage/memoryclean/c;->pid:I

    iget-wide v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v10, v7, Lcom/miui/optimizemanage/memoryclean/c;->startTime:J

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v3

    :goto_5
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/miui/optimizemanage/memoryclean/a;->xg(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v4, v3}, Lcom/miui/optimizemanage/memoryclean/b;->xk(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/optimizemanage/memoryclean/b;

    if-nez v3, :cond_16

    new-instance v3, Lcom/miui/optimizemanage/memoryclean/b;

    invoke-direct {v3}, Lcom/miui/optimizemanage/memoryclean/b;-><init>()V

    iput-object v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Lcom/miui/optimizemanage/memoryclean/a;->xi(Ljava/util/List;Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->vU:Z

    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->uid:I

    move-object v4, v3

    :goto_6
    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    const-string/jumbo v3, "flags"

    invoke-static {v2, v3}, Lcom/miui/a/c/a;->btz(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-boolean v5, v4, Lcom/miui/optimizemanage/memoryclean/b;->vW:Z

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_7
    or-int/2addr v3, v5

    iput-boolean v3, v4, Lcom/miui/optimizemanage/memoryclean/b;->vW:Z
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_8
    const/16 v3, 0xb

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x17

    if-lt v5, v12, :cond_15

    const/16 v3, 0xe

    move v5, v3

    :goto_9
    :try_start_4
    const-string/jumbo v3, "processState"

    invoke-static {v2, v3}, Lcom/miui/a/c/a;->btz(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-boolean v12, v4, Lcom/miui/optimizemanage/memoryclean/b;->isCached:Z

    if-lt v3, v5, :cond_b

    const/4 v3, 0x1

    :goto_a
    or-int/2addr v3, v12

    iput-boolean v3, v4, Lcom/miui/optimizemanage/memoryclean/b;->isCached:Z
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_6

    :goto_b
    iget v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_8

    const/4 v2, 0x1

    iput-boolean v2, v4, Lcom/miui/optimizemanage/memoryclean/b;->vX:Z

    :cond_8
    invoke-virtual {v9, v11, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_9
    const/4 v3, 0x0

    move-object v4, v3

    goto/16 :goto_5

    :cond_a
    const/4 v3, 0x0

    goto :goto_7

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_8

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_8

    :cond_b
    const/4 v3, 0x0

    goto :goto_a

    :cond_c
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/optimizemanage/memoryclean/a;->vT:Lcom/miui/optimizemanage/b/c;

    invoke-virtual {v2}, Lcom/miui/optimizemanage/b/c;->update()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/optimizemanage/memoryclean/a;->vT:Lcom/miui/optimizemanage/b/c;

    invoke-virtual {v2}, Lcom/miui/optimizemanage/b/c;->Ao()I

    move-result v3

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/optimizemanage/memoryclean/a;->vT:Lcom/miui/optimizemanage/b/c;

    invoke-virtual {v4, v2}, Lcom/miui/optimizemanage/b/c;->Ap(I)Lcom/miui/optimizemanage/b/d;

    move-result-object v4

    iget v5, v4, Lcom/miui/optimizemanage/b/d;->pid:I

    iget-wide v10, v4, Lcom/miui/optimizemanage/b/d;->zn:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v8, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_d
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_e
    :goto_d
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/optimizemanage/memoryclean/b;

    iget-boolean v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->isCached:Z

    if-eqz v4, :cond_f

    iget-object v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/optimizemanage/memoryclean/a;->xf(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_f
    iget v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->uid:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/optimizemanage/memoryclean/a;->xh(I)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_13

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->vY:[I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->vZ:[J

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_13

    iget-object v12, v3, Lcom/miui/optimizemanage/memoryclean/b;->vY:[I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v12, v5

    iget-object v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->vY:[I

    aget v4, v4, v5

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_11

    iget-object v12, v3, Lcom/miui/optimizemanage/memoryclean/b;->wa:Ljava/util/List;

    if-nez v12, :cond_10

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v3, Lcom/miui/optimizemanage/memoryclean/b;->wa:Ljava/util/List;

    :cond_10
    iget-object v12, v3, Lcom/miui/optimizemanage/memoryclean/b;->wa:Ljava/util/List;

    invoke-interface {v12, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11
    iget-object v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->vY:[I

    aget v4, v4, v5

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    if-eqz v4, :cond_12

    iget-object v12, v3, Lcom/miui/optimizemanage/memoryclean/b;->vZ:[J

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    aput-wide v14, v12, v5

    :goto_f
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_e

    :cond_12
    iget-object v4, v3, Lcom/miui/optimizemanage/memoryclean/b;->vZ:[J

    const-wide/16 v12, 0x0

    aput-wide v12, v4, v5

    goto :goto_f

    :cond_13
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_14
    return-object v10

    :catch_5
    move-exception v3

    goto/16 :goto_b

    :catch_6
    move-exception v3

    goto/16 :goto_b

    :cond_15
    move v5, v3

    goto/16 :goto_9

    :cond_16
    move-object v4, v3

    goto/16 :goto_6
.end method
