.class Lcom/miui/securityscan/scanner/z;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static DK:Lcom/miui/securityscan/scanner/z;


# instance fields
.field private DL:Lcom/miui/antivirus/g;

.field private DM:Lcom/miui/common/f/a;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/z;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/antivirus/g;->getInstance(Landroid/content/Context;)Lcom/miui/antivirus/g;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/z;->DL:Lcom/miui/antivirus/g;

    invoke-static {p1}, Lcom/miui/common/f/a;->getInstance(Landroid/content/Context;)Lcom/miui/common/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/z;->DM:Lcom/miui/common/f/a;

    return-void
.end method

.method private static Fl(Landroid/content/Context;)Ljava/util/Map;
    .locals 9

    const/4 v6, 0x0

    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "getAllScanAppPaths start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/b;->aNk()Ljava/util/List;

    move-result-object v0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    new-instance v2, Lcom/miui/antivirus/model/VirusModel;

    invoke-direct {v2}, Lcom/miui/antivirus/model/VirusModel;-><init>()V

    sget-object v3, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/VirusModel;->arv(Lcom/miui/antivirus/AntiVirusManager$ScanItemType;)V

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/VirusModel;->setPkgName(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/VirusModel;->setAppLabel(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/antivirus/model/VirusModel;->arx(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "getAllScanAppPaths start apks"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "external"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_data"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "date_modified"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "_data LIKE \'%.apk\'"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/miui/common/b/k;->aIv(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_4

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_2
    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "getAllScanAppPaths end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_4
    :try_start_2
    new-instance v3, Lcom/miui/antivirus/model/VirusModel;

    invoke-direct {v3}, Lcom/miui/antivirus/model/VirusModel;-><init>()V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/antivirus/model/VirusModel;->setAppLabel(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/model/VirusModel;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/miui/antivirus/model/VirusModel;->arx(Ljava/lang/String;)V

    sget-object v2, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->awt:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    invoke-virtual {v3, v2}, Lcom/miui/antivirus/model/VirusModel;->arv(Lcom/miui/antivirus/AntiVirusManager$ScanItemType;)V

    invoke-interface {v7, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :try_start_3
    const-string/jumbo v2, "SystemCheckManager"

    const-string/jumbo v3, "getAllScanAppPaths Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_3
.end method

.method private static Fm(Landroid/content/Context;)Ljava/util/Map;
    .locals 8

    const/4 v1, 0x0

    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v2, "getRunningAppPaths start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/miui/common/h/b;->getInstance(Landroid/content/Context;)Lcom/miui/common/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/common/h/b;->aNn()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v2, v5

    if-ge v0, v2, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    aget-object v6, v5, v0

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v6, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    new-instance v6, Lcom/miui/antivirus/model/VirusModel;

    invoke-direct {v6}, Lcom/miui/antivirus/model/VirusModel;-><init>()V

    sget-object v7, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    invoke-virtual {v6, v7}, Lcom/miui/antivirus/model/VirusModel;->arv(Lcom/miui/antivirus/AntiVirusManager$ScanItemType;)V

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/miui/antivirus/model/VirusModel;->setPkgName(Ljava/lang/String;)V

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/miui/common/b/k;->aIo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/miui/antivirus/model/VirusModel;->setAppLabel(Ljava/lang/String;)V

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/miui/antivirus/model/VirusModel;->arx(Ljava/lang/String;)V

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-interface {v3, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "SystemCheckManager"

    const-string/jumbo v7, "getRunningAppPaths NameNotFoundException"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "SystemCheckManager"

    const-string/jumbo v1, "getRunningAppPaths end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method static synthetic Fn(Lcom/miui/securityscan/scanner/z;)Lcom/miui/common/f/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/z;->DM:Lcom/miui/common/f/a;

    return-object v0
.end method

.method static synthetic Fo(Lcom/miui/securityscan/scanner/z;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/z;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Fp(Landroid/content/Context;)Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/miui/securityscan/scanner/z;->Fl(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic Fq(Landroid/content/Context;)Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/miui/securityscan/scanner/z;->Fm(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/securityscan/scanner/z;
    .locals 3

    const-class v1, Lcom/miui/securityscan/scanner/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/securityscan/scanner/z;->DK:Lcom/miui/securityscan/scanner/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/scanner/z;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/securityscan/scanner/z;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/securityscan/scanner/z;->DK:Lcom/miui/securityscan/scanner/z;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/scanner/z;->DK:Lcom/miui/securityscan/scanner/z;
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
.method public Fh(Lcom/miui/securityscan/c/e;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/ad;

    invoke-direct {v0, p0, p1}, Lcom/miui/securityscan/scanner/ad;-><init>(Lcom/miui/securityscan/scanner/z;Lcom/miui/securityscan/c/e;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Fi(ZLcom/miui/securityscan/c/e;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/ae;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/securityscan/scanner/ae;-><init>(Lcom/miui/securityscan/scanner/z;Lcom/miui/securityscan/c/e;Z)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Fj(Ljava/util/List;Lcom/miui/securityscan/scanner/m;Lcom/miui/securityscan/c/f;)V
    .locals 1

    new-instance v0, Lcom/miui/securityscan/scanner/af;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/miui/securityscan/scanner/af;-><init>(Lcom/miui/securityscan/scanner/z;Ljava/util/List;Lcom/miui/securityscan/scanner/m;Lcom/miui/securityscan/c/f;)V

    invoke-static {v0}, Lcom/miui/common/b/s;->aJp(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Fk(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/model/VirusModel;

    iget-object v2, p0, Lcom/miui/securityscan/scanner/z;->DL:Lcom/miui/antivirus/g;

    invoke-virtual {v2, v0}, Lcom/miui/antivirus/g;->aDb(Lcom/miui/antivirus/model/VirusModel;)V

    goto :goto_0

    :cond_0
    return-void
.end method
