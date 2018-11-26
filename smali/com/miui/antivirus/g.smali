.class public Lcom/miui/antivirus/g;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static awl:Lcom/miui/antivirus/g;


# instance fields
.field private final awm:Landroid/content/pm/IPackageDeleteObserver$Stub;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/antivirus/r;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/r;-><init>(Lcom/miui/antivirus/g;)V

    iput-object v0, p0, Lcom/miui/antivirus/g;->awm:Landroid/content/pm/IPackageDeleteObserver$Stub;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/g;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/antivirus/g;
    .locals 2

    const-class v1, Lcom/miui/antivirus/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/antivirus/g;->awl:Lcom/miui/antivirus/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/antivirus/g;

    invoke-direct {v0, p0}, Lcom/miui/antivirus/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/antivirus/g;->awl:Lcom/miui/antivirus/g;

    :cond_0
    sget-object v0, Lcom/miui/antivirus/g;->awl:Lcom/miui/antivirus/g;
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
.method public aDb(Lcom/miui/antivirus/model/VirusModel;)V
    .locals 6

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->arr()Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/miui/antivirus/AntiVirusManager$ScanItemType;->aws:Lcom/miui/antivirus/AntiVirusManager$ScanItemType;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "getService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "package"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/c/a;->btx(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const-string/jumbo v1, "android.content.pm.IPackageManager$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "asInterface"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/miui/a/c/a;->btx(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/a/d/a/a;->btX(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/antivirus/g;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/common/b/k;->aIx(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x3e7

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/miui/a/d/a/a;->btY(Ljava/lang/Object;Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    :cond_0
    iget-object v0, p0, Lcom/miui/antivirus/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/g;->awm:Landroid/content/pm/IPackageDeleteObserver$Stub;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/miui/a/d/a/a;->btZ(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/miui/antivirus/model/VirusModel;->ars()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/common/b/r;->aJn(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public aDc()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/antivirus/g;->aDe()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "Enable"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public aDd()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/antivirus/g;->aDe()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "DescriptionName"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "Enable"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v4

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public aDe()Landroid/database/Cursor;
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "content://guard/engine_info_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/miui/antivirus/g;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v6
.end method

.method public aDf(I)Lcom/miui/antivirus/AntiVirusManager$ScanResultType;
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awo:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awp:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/miui/antivirus/AntiVirusManager$ScanResultType;->awn:Lcom/miui/antivirus/AntiVirusManager$ScanResultType;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public aDg()Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/antivirus/g;->aDe()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "Enable"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/miui/antivirus/g;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const v4, 0x7f0705c1

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/miui/antivirus/i;->aDv(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v1

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public aDh()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/miui/antivirus/g;->aDe()Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Name"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "Enable"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iget-object v5, p0, Lcom/miui/antivirus/g;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const v4, 0x7f0705c1

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_0

    invoke-static {v4}, Lcom/miui/antivirus/i;->aDv(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v4, v0}, Lcom/miui/common/persistence/a;->aMP(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method
