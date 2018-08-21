.class public Lcom/alipay/android/app/sys/b;
.super Ljava/lang/Object;
.source "GlobalContext.java"


# static fields
.field private static a:Lcom/alipay/android/app/sys/b;

.field private static b:Landroid/content/Context;

.field private static g:Ljava/lang/Boolean;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static p:Ljava/lang/String;


# instance fields
.field private c:Lcom/alipay/android/app/k;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private k:Z

.field private l:J

.field private m:J

.field private n:Z

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/sys/b;->g:Ljava/lang/Boolean;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/sys/b;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/sys/b;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/alipay/android/app/sys/b;->k:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/app/sys/b;->l:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/app/sys/b;->m:J

    iput-boolean v2, p0, Lcom/alipay/android/app/sys/b;->n:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/sys/b;->o:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/sys/b;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/b;->a:Lcom/alipay/android/app/sys/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/sys/b;

    invoke-direct {v0}, Lcom/alipay/android/app/sys/b;-><init>()V

    sput-object v0, Lcom/alipay/android/app/sys/b;->a:Lcom/alipay/android/app/sys/b;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/sys/b;->a:Lcom/alipay/android/app/sys/b;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/sys/b;->p:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/alipay/android/app/sys/b;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method public static e()Z
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/b;->g:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/sys/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/b;->g:Ljava/lang/Boolean;

    :try_start_0
    const-string/jumbo v0, "su"

    invoke-static {v0}, Lcom/alipay/android/app/sys/b;->e(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/b;->g:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/alipay/android/app/sys/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const-string/jumbo v2, "/sbin/"

    aput-object v2, v3, v1

    const-string/jumbo v2, "/system/bin/"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string/jumbo v4, "/system/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string/jumbo v4, "/data/local/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string/jumbo v4, "/data/local/bin/"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string/jumbo v4, "/system/sd/xbin/"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string/jumbo v4, "/system/bin/failsafe/"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string/jumbo v4, "/data/local/"

    aput-object v4, v3, v2

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private f(Ljava/lang/String;)Z
    .locals 10

    const/4 v2, 0x0

    const/16 v0, 0x41

    new-array v4, v0, [C

    fill-array-data v4, :array_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    array-length v6, v5

    move v3, v2

    move v0, v2

    :goto_0
    if-ge v3, v6, :cond_2

    aget-char v7, v5, v3

    array-length v8, v4

    move v1, v2

    move v0, v2

    :goto_1
    if-ge v1, v8, :cond_1

    aget-char v9, v4, v1

    if-ne v7, v9, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x5cs
        0x3ds
    .end array-data
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/alipay/android/app/g/a;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/b;->i:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/sys/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "unknown"

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/app/sys/b;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alipay/android/app/sys/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/b;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/app/sys/b;->j:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/android/app/sys/b;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "-1.-1"

    :goto_1
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/app/sys/b;->j:Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/b;->p:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/android/app/sys/b;->d:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/alipay/android/app/sys/b;->m:J

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/alipay/android/app/k;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/app/sys/b;->c:Lcom/alipay/android/app/k;

    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/d/f/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/sys/b;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/alipay/android/app/sys/b;->k:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/app/sys/b;->l:J

    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/sys/b;->o:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/sys/b;->n:Z

    return-void
.end method

.method public c()Lcom/alipay/android/app/k;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/sys/b;->c:Lcom/alipay/android/app/k;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/sys/b;->c:Lcom/alipay/android/app/k;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/sys/b;->c:Lcom/alipay/android/app/k;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/sys/b;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/sys/b;->o:Ljava/lang/String;

    return-object v0
.end method

.method public f()F
    .locals 6

    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/g/a;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x1

    const-string/jumbo v2, "GlobalContext"

    const-string/jumbo v3, "getDensity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "density:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/sys/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/sys/b;->h:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ta/utdid2/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/sys/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/alipay/android/app/sys/b;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/sys/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public m()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/app/sys/b;->l:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1770

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/sys/b;->k:Z

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/app/sys/b;->k:Z

    return v0
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/android/app/sys/b;->m:J

    return-wide v0
.end method
