.class public Lcom/miui/securityscan/g/b;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Li:Lcom/miui/securityscan/g/b;


# instance fields
.field private Lj:Lcom/miui/securityscan/g/a;

.field private Lk:Ljava/util/List;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/g/b;->Lk:Ljava/util/List;

    new-instance v0, Lcom/miui/securityscan/g/a;

    invoke-direct {v0, p1}, Lcom/miui/securityscan/g/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/securityscan/g/b;->Lj:Lcom/miui/securityscan/g/a;

    iput-object p1, p0, Lcom/miui/securityscan/g/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static Mr(Landroid/content/Context;)Lcom/miui/securityscan/g/b;
    .locals 2

    sget-object v0, Lcom/miui/securityscan/g/b;->Li:Lcom/miui/securityscan/g/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/securityscan/g/b;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/securityscan/g/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/securityscan/g/b;->Li:Lcom/miui/securityscan/g/b;

    :cond_0
    sget-object v0, Lcom/miui/securityscan/g/b;->Li:Lcom/miui/securityscan/g/b;

    return-object v0
.end method

.method static synthetic Mx(Lcom/miui/securityscan/g/b;)Lcom/miui/securityscan/g/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/g/b;->Lj:Lcom/miui/securityscan/g/a;

    return-object v0
.end method

.method static synthetic My(Lcom/miui/securityscan/g/b;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/g/b;->Lk:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public Ms()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/g/b;->Lk:Ljava/util/List;

    return-object v0
.end method

.method public Mt()Lcom/miui/securityscan/g/a;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/g/b;->Lj:Lcom/miui/securityscan/g/a;

    return-object v0
.end method

.method public Mu(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/g/b;->Lj:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v0, "pkg_name = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string/jumbo v3, "no_kill_pkg"

    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public Mv(Ljava/lang/String;)J
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/miui/securityscan/g/b;->Lj:Lcom/miui/securityscan/g/a;

    invoke-virtual {v0}, Lcom/miui/securityscan/g/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "no_kill_pkg"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-wide v2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public Mw()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Lcom/miui/securityscan/g/c;

    invoke-direct {v1, p0, v0}, Lcom/miui/securityscan/g/c;-><init>(Lcom/miui/securityscan/g/b;Ljava/util/HashSet;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/miui/securityscan/g/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public init()V
    .locals 7

    iget-object v0, p0, Lcom/miui/securityscan/g/b;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4037000000000000L    # 23.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xb

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v2, p0, Lcom/miui/securityscan/g/b;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/miui/securityscan/g/b;->mContext:Landroid/content/Context;

    const-class v5, Lcom/miui/securitycenter/service/CloudDataUpdateService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v4, 0x2715

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const/4 v1, 0x1

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method
