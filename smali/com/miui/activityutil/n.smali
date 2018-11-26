.class public final Lcom/miui/activityutil/n;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/activityutil/n;->a:Ljava/util/List;

    const-string/jumbo v1, "mione"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/activityutil/n;->a:Ljava/util/List;

    const-string/jumbo v1, "mione_plus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/activityutil/n;->a:Ljava/util/List;

    const-string/jumbo v1, "taurus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/activityutil/n;->a:Ljava/util/List;

    const-string/jumbo v1, "taurus_td"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/activityutil/n;->a:Ljava/util/List;

    const-string/jumbo v1, "pisces"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/activityutil/n;->a:Ljava/util/List;

    const-string/jumbo v1, "HM2013022"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/activityutil/n;->a:Ljava/util/List;

    const-string/jumbo v1, "HM2013023"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static a(J)J
    .locals 8

    const-wide/32 v6, 0x3b9aca00

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-long v0, p0, v6

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    mul-long/2addr v0, v6

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Lcom/miui/activityutil/p;
    .locals 10

    const/16 v1, 0x17

    const/4 v2, 0x0

    new-instance v3, Lcom/miui/activityutil/p;

    invoke-direct {v3}, Lcom/miui/activityutil/p;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v1, :cond_2

    invoke-static {p0}, Lcom/miui/activityutil/n;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v1, v0

    sget-object v0, Lcom/miui/activityutil/n;->a:Ljava/util/List;

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/activityutil/o;

    invoke-static {v0}, Lcom/miui/activityutil/n;->a(Lcom/miui/activityutil/o;)Lcom/miui/activityutil/p;

    move-result-object v4

    if-nez v4, :cond_8

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    invoke-static {p0}, Lcom/miui/activityutil/n;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/miui/activityutil/n;->c(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "ro.boot.sdcard.type"

    invoke-static {v0}, Lcom/miui/activityutil/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "mixed"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_4
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/activityutil/o;

    invoke-static {v0}, Lcom/miui/activityutil/n;->a(Lcom/miui/activityutil/o;)Lcom/miui/activityutil/p;

    move-result-object v4

    if-nez v4, :cond_7

    :goto_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_4

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/n;->a(Ljava/lang/String;)Lcom/miui/activityutil/p;

    move-result-object v0

    iget-wide v4, v3, Lcom/miui/activityutil/p;->a:J

    iget-wide v6, v0, Lcom/miui/activityutil/p;->a:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/activityutil/p;->a:J

    iget-wide v4, v3, Lcom/miui/activityutil/p;->b:J

    iget-wide v0, v0, Lcom/miui/activityutil/p;->b:J

    add-long/2addr v0, v4

    iput-wide v0, v3, Lcom/miui/activityutil/p;->b:J

    iget-wide v0, v3, Lcom/miui/activityutil/p;->a:J

    invoke-static {v0, v1}, Lcom/miui/activityutil/n;->a(J)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/miui/activityutil/p;->a:J

    :cond_6
    return-object v3

    :cond_7
    iget-boolean v0, v0, Lcom/miui/activityutil/o;->c:Z

    iget-wide v6, v3, Lcom/miui/activityutil/p;->b:J

    iget-wide v8, v4, Lcom/miui/activityutil/p;->b:J

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/miui/activityutil/p;->b:J

    iget-wide v6, v3, Lcom/miui/activityutil/p;->a:J

    iget-wide v4, v4, Lcom/miui/activityutil/p;->a:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/activityutil/p;->a:J

    goto :goto_4

    :cond_8
    iget-boolean v0, v0, Lcom/miui/activityutil/o;->c:Z

    if-nez v0, :cond_9

    iget-wide v6, v3, Lcom/miui/activityutil/p;->b:J

    iget-wide v8, v4, Lcom/miui/activityutil/p;->b:J

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/miui/activityutil/p;->b:J

    iget-wide v6, v3, Lcom/miui/activityutil/p;->a:J

    iget-wide v4, v4, Lcom/miui/activityutil/p;->a:J

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/activityutil/p;->a:J

    goto :goto_3

    :cond_9
    iget-wide v6, v3, Lcom/miui/activityutil/p;->b:J

    iget-wide v8, v4, Lcom/miui/activityutil/p;->b:J

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/miui/activityutil/p;->b:J

    iget-wide v6, v3, Lcom/miui/activityutil/p;->a:J

    iget-wide v4, v4, Lcom/miui/activityutil/p;->a:J

    invoke-static {v4, v5}, Lcom/miui/activityutil/n;->a(J)J

    move-result-wide v4

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/miui/activityutil/p;->a:J

    goto/16 :goto_3
.end method

.method private static a(Lcom/miui/activityutil/o;)Lcom/miui/activityutil/p;
    .locals 3

    if-nez p0, :cond_1

    :cond_0
    new-instance v0, Lcom/miui/activityutil/p;

    invoke-direct {v0}, Lcom/miui/activityutil/p;-><init>()V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/activityutil/o;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/activityutil/o;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/activityutil/o;->b:Ljava/lang/String;

    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/miui/activityutil/n;->a(Ljava/lang/String;)Lcom/miui/activityutil/p;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Lcom/miui/activityutil/p;

    invoke-direct {v0}, Lcom/miui/activityutil/p;-><init>()V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Lcom/miui/activityutil/p;
    .locals 8

    new-instance v0, Lcom/miui/activityutil/p;

    invoke-direct {v0}, Lcom/miui/activityutil/p;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/miui/activityutil/p;->a:J

    mul-long v2, v6, v4

    iput-wide v2, v0, Lcom/miui/activityutil/p;->b:J

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    if-eq v2, v1, :cond_1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/miui/activityutil/p;

    invoke-direct {v0}, Lcom/miui/activityutil/p;-><init>()V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/miui/activityutil/p;

    invoke-direct {v0}, Lcom/miui/activityutil/p;-><init>()V

    return-object v0

    :cond_1
    const-string/jumbo v1, "sys.memory.threshold.low"

    invoke-static {v1}, Lcom/miui/activityutil/r;->b(Ljava/lang/String;)J

    move-result-wide v2

    iget-wide v4, v0, Lcom/miui/activityutil/p;->b:J

    sub-long v2, v4, v2

    iput-wide v2, v0, Lcom/miui/activityutil/p;->b:J

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/util/List;
    .locals 12

    const/4 v2, 0x0

    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/storage/StorageManager;

    const-string/jumbo v4, "getVolumeList"

    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->trimToSize()V

    return-object v7

    :cond_1
    :try_start_1
    array-length v8, v1

    move v6, v2

    :goto_1
    if-ge v6, v8, :cond_0

    aget-object v5, v1, v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    const-string/jumbo v4, "getPath"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v3, v9

    const-class v4, Landroid/os/storage/StorageManager;

    const-string/jumbo v9, "getVolumeState"

    invoke-virtual {v4, v9, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v4, v9

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const-class v10, Landroid/content/Context;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "getDescription"

    invoke-virtual {v4, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p0, v9, v10

    invoke-virtual {v4, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    const-string/jumbo v11, "isPrimary"

    invoke-virtual {v9, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    new-instance v9, Lcom/miui/activityutil/o;

    invoke-direct {v9, v2, v4, v3}, Lcom/miui/activityutil/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, v9, Lcom/miui/activityutil/o;->c:Z

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageHelper"

    const-string/jumbo v2, "exception when listAvailableStorageCompat : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v9

    if-nez v9, :cond_4

    goto/16 :goto_2
.end method

.method private static c(Landroid/content/Context;)Ljava/util/List;
    .locals 13

    const/4 v12, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Landroid/os/storage/StorageManager;

    const-string/jumbo v6, "getVolumes"

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    return-object v4

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    const-string/jumbo v7, "getType"

    invoke-virtual {v0, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    const-string/jumbo v8, "getPath"

    invoke-virtual {v0, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-nez v6, :cond_5

    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    const-string/jumbo v9, "getState"

    invoke-virtual {v0, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string/jumbo v8, "android.os.storage.VolumeInfo"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-string/jumbo v10, "getEnvironmentForState"

    invoke-virtual {v8, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v9, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    const-string/jumbo v10, "getDescription"

    invoke-virtual {v8, v10, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v8, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Lcom/miui/activityutil/o;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7, v1, v0}, Lcom/miui/activityutil/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eq v6, v12, :cond_6

    move v0, v2

    :goto_2
    iput-boolean v0, v8, Lcom/miui/activityutil/o;->c:Z

    iget-boolean v0, v8, Lcom/miui/activityutil/o;->c:Z

    if-nez v0, :cond_7

    :cond_4
    :goto_3
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageHelper"

    const-string/jumbo v2, "exception when listAvailableStorageCompat23 : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_5
    if-eq v6, v12, :cond_3

    goto/16 :goto_1

    :cond_6
    move v0, v3

    goto :goto_2

    :cond_7
    :try_start_2
    invoke-virtual {v8}, Lcom/miui/activityutil/o;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/miui/activityutil/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iput-object v0, v8, Lcom/miui/activityutil/o;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private static d(Landroid/content/Context;)Ljava/util/List;
    .locals 8

    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "getStorageVolumes"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v1}, Lcom/miui/activityutil/m;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "getPathFile"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v0}, Lcom/miui/activityutil/m;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "getState"

    const/4 v6, 0x0

    invoke-static {v4, v1, v6, v0}, Lcom/miui/activityutil/m;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    const/4 v7, 0x0

    aput-object v6, v1, v7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const-string/jumbo v7, "getDescription"

    invoke-static {v4, v7, v1, v6}, Lcom/miui/activityutil/m;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v6, Lcom/miui/activityutil/o;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v1, v0}, Lcom/miui/activityutil/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "isPrimary"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5, v0}, Lcom/miui/activityutil/m;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v6, Lcom/miui/activityutil/o;->c:Z

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "StorageHelper"

    const-string/jumbo v3, "exception when listAvailableStorageCompat24 : "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    return-object v2
.end method
