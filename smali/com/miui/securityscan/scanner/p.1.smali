.class Lcom/miui/securityscan/scanner/p;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Dv:Lcom/miui/securityscan/scanner/p;


# instance fields
.field private Dt:Landroid/app/ActivityManager;

.field private Du:Lcom/miui/securityscan/g/b;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/p;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/p;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/securityscan/scanner/p;->Dt:Landroid/app/ActivityManager;

    invoke-static {p1}, Lcom/miui/securityscan/g/b;->Mr(Landroid/content/Context;)Lcom/miui/securityscan/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/p;->Du:Lcom/miui/securityscan/g/b;

    return-void
.end method

.method private EE(Landroid/content/Context;Ljava/lang/String;)I
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

.method private static EF(Landroid/content/Context;)Ljava/util/List;
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

.method private EG(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p0, Lcom/miui/securityscan/scanner/p;->mContext:Landroid/content/Context;

    invoke-static {v4, p2}, Lcom/miui/securityscan/scanner/p;->EH(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Lcom/miui/securityscan/scanner/p;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/securityscan/scanner/p;->EF(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Lcom/miui/securityscan/scanner/p;->Du:Lcom/miui/securityscan/g/b;

    invoke-virtual {v3}, Lcom/miui/securityscan/g/b;->Ms()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v3, p0, Lcom/miui/securityscan/scanner/p;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/miui/securityscan/scanner/p;->EE(Landroid/content/Context;Ljava/lang/String;)I

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

.method private static EH(Landroid/content/Context;I)Ljava/util/Set;
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

.method private EI(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
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

    iget-object v1, p0, Lcom/miui/securityscan/scanner/p;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic EJ(Lcom/miui/securityscan/scanner/p;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/p;->Dt:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic EK(Lcom/miui/securityscan/scanner/p;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/p;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic EL(Lcom/miui/securityscan/scanner/p;Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/securityscan/scanner/p;->EI(Landroid/app/ActivityManager$RecentTaskInfo;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic EM(Lcom/miui/securityscan/scanner/p;Ljava/lang/String;I)Landroid/util/SparseBooleanArray;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/scanner/p;->EG(Ljava/lang/String;I)Landroid/util/SparseBooleanArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic EN(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/miui/securityscan/scanner/p;->EF(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/p;
    .locals 3

    const-class v1, Lcom/miui/securityscan/scanner/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/scanner/p;->Dv:Lcom/miui/securityscan/scanner/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/scanner/p;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/securityscan/scanner/p;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/securityscan/scanner/p;->Dv:Lcom/miui/securityscan/scanner/p;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/p;->Dv:Lcom/miui/securityscan/scanner/p;
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
.method public EC(Lcom/miui/securitycenter/memory/e;)V
    .locals 2

    const-string/jumbo v0, "MemoryCheckManager"

    const-string/jumbo v1, "startScan"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/securityscan/scanner/V;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/scanner/V;-><init>(Lcom/miui/securityscan/scanner/p;Lcom/miui/securitycenter/memory/e;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ED(Ljava/util/List;Lcom/miui/securitycenter/memory/c;)V
    .locals 2

    const-string/jumbo v0, "MemoryCheckManager"

    const-string/jumbo v1, "startCleanup"

    invoke-static {v0, v1}, Lmiui/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/miui/securityscan/scanner/W;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/securityscan/scanner/W;-><init>(Lcom/miui/securityscan/scanner/p;Lcom/miui/securitycenter/memory/c;Ljava/util/List;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method
