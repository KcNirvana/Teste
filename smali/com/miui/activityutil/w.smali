.class public Lcom/miui/activityutil/w;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/util/Set;

.field private static g:Lcom/miui/activityutil/w;


# instance fields
.field private h:Landroid/content/Context;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/miui/activityutil/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/activityutil/w;->a:Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/miui/activityutil/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "aHR0cHM6Ly9mbGFzaC5zZWMubWl1aS5jb20vZGF0YS9zZWM="

    :goto_0
    invoke-static {v0}, Lcom/miui/activityutil/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    sput-object v1, Lcom/miui/activityutil/w;->b:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {}, Lcom/miui/activityutil/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "aHR0cHM6Ly9mbGFzaC5zZWMubWl1aS5jb20vZGF0YS9zdGF0dXM="

    :goto_1
    invoke-static {v0}, Lcom/miui/activityutil/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    sput-object v1, Lcom/miui/activityutil/w;->c:[Ljava/lang/String;

    const-string/jumbo v0, "Y3J1c2FkZQ=="

    invoke-static {v0}, Lcom/miui/activityutil/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/activityutil/w;->d:Ljava/lang/String;

    const-string/jumbo v0, "c2VjX3Vfcg=="

    invoke-static {v0}, Lcom/miui/activityutil/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/activityutil/w;->e:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "AT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "BE"

    aput-object v2, v1, v4

    const-string/jumbo v2, "BG"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "CY"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "CZ"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const/4 v2, 0x5

    const-string/jumbo v3, "DE"

    aput-object v3, v1, v2

    const-string/jumbo v2, "DK"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "EE"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "ES"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "FI"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const/16 v2, 0xa

    const-string/jumbo v3, "FR"

    aput-object v3, v1, v2

    const-string/jumbo v2, "GB"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "GR"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "HR"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string/jumbo v2, "HU"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const/16 v2, 0xf

    const-string/jumbo v3, "IE"

    aput-object v3, v1, v2

    const-string/jumbo v2, "IT"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    const-string/jumbo v2, "LT"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    const-string/jumbo v2, "LU"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    const-string/jumbo v2, "LV"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    const/16 v2, 0x14

    const-string/jumbo v3, "MT"

    aput-object v3, v1, v2

    const-string/jumbo v2, "NL"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    const-string/jumbo v2, "PL"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    const-string/jumbo v2, "PT"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    const-string/jumbo v2, "RO"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    const/16 v2, 0x19

    const-string/jumbo v3, "SE"

    aput-object v3, v1, v2

    const-string/jumbo v2, "SI"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    const-string/jumbo v2, "SK"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/miui/activityutil/w;->f:Ljava/util/Set;

    return-void

    :cond_0
    const-string/jumbo v0, "aHR0cHM6Ly9mbGFzaC5zZWMuaW50bC5taXVpLmNvbS9kYXRhL3NlYw=="

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v0, " aHR0cHM6Ly9mbGFzaC5zZWMuaW50bC5taXVpLmNvbS9kYXRhL3N0YXR1cw=="

    goto/16 :goto_1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/activityutil/w;->l:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    return-void

    :cond_0
    iput-object v0, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/activityutil/w;[B)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/activityutil/w;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/activityutil/l;->b([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/activityutil/d;

    iget-object v3, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/miui/activityutil/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/activityutil/d;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/activityutil/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "source"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/miui/activityutil/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "fetched"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/miui/activityutil/w;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/activityutil/w;
    .locals 2

    const-class v1, Lcom/miui/activityutil/w;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/activityutil/w;->g:Lcom/miui/activityutil/w;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/miui/activityutil/w;->g:Lcom/miui/activityutil/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/miui/activityutil/w;

    invoke-direct {v0, p0}, Lcom/miui/activityutil/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/activityutil/w;->g:Lcom/miui/activityutil/w;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/activityutil/w;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/activityutil/w;I)V
    .locals 0

    iput p1, p0, Lcom/miui/activityutil/w;->i:I

    return-void
.end method

.method static synthetic a(Lcom/miui/activityutil/w;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/activityutil/w;->b([B)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/miui/activityutil/w;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/activityutil/w;->a([B)I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/miui/activityutil/w;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/activityutil/w;->j:Z

    return-void
.end method

.method static synthetic b(Lcom/miui/activityutil/w;I)V
    .locals 1

    new-instance v0, Lcom/miui/activityutil/x;

    invoke-direct {v0, p0, p1}, Lcom/miui/activityutil/x;-><init>(Lcom/miui/activityutil/w;I)V

    invoke-static {v0}, Lcom/miui/activityutil/af;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b([B)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/activityutil/l;->b([B)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/miui/activityutil/d;

    iget-object v3, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/miui/activityutil/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/activityutil/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/activityutil/d;->e()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/activityutil/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    const-string/jumbo v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-static {v5, v4}, Lcom/miui/activityutil/w;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_0
    :goto_1
    return v0

    :cond_1
    return v0

    :cond_2
    return v0

    :cond_3
    const-string/jumbo v4, "ota"

    invoke-static {v4}, Lcom/miui/activityutil/d;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "id"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/activityutil/w;->a(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/activityutil/w;->b:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/activityutil/w;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/activityutil/w;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/activityutil/w;->g()V

    return-void
.end method

.method static synthetic d(Lcom/miui/activityutil/w;)Z
    .locals 12

    const-wide/16 v8, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    const-string/jumbo v3, "com.miui.activityutil_data"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "last_upload_time"

    invoke-interface {v2, v3, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v2, v4, v8

    if-eqz v2, :cond_1

    sub-long v2, v6, v4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x3

    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v2, v2, v8

    if-gtz v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    cmp-long v2, v4, v6

    if-gtz v2, :cond_3

    :goto_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/activityutil/w;->g()V

    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/activityutil/w;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/miui/activityutil/w;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/miui/activityutil/w;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    sget-object v1, Lcom/miui/activityutil/w;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/activityutil/af;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/activityutil/d;->a(Ljava/io/File;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/activityutil/w;->b([B)Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/miui/activityutil/w;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/miui/activityutil/w;->l:Landroid/os/Handler;

    return-object v0
.end method

.method private f()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.miui.securitycenter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/miui/activityutil/w;->k:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/activityutil/w;->a:Ljava/lang/String;

    const-string/jumbo v2, "isAllowNetworking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    const-string/jumbo v1, "com.miui.activityutil_data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "last_upload_time"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    iget-object v0, p0, Lcom/miui/activityutil/w;->l:Landroid/os/Handler;

    new-instance v1, Lcom/miui/activityutil/ad;

    invoke-direct {v1, p0}, Lcom/miui/activityutil/ad;-><init>(Lcom/miui/activityutil/w;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/miui/activityutil/w;->j:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/activityutil/w;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/activityutil/w;->h:Landroid/content/Context;

    const-string/jumbo v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    const-string/jumbo v0, "ro.miui.region"

    const-string/jumbo v3, "unknown"

    invoke-static {v0, v3}, Lcom/miui/activityutil/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/miui/activityutil/w;->j:Z

    new-instance v0, Lcom/miui/activityutil/z;

    invoke-direct {v0, p0, p0}, Lcom/miui/activityutil/z;-><init>(Lcom/miui/activityutil/w;Lcom/miui/activityutil/w;)V

    iget v3, p0, Lcom/miui/activityutil/w;->i:I

    if-eq v3, v4, :cond_6

    new-instance v1, Lcom/miui/activityutil/ab;

    invoke-direct {v1, p0, v0}, Lcom/miui/activityutil/ab;-><init>(Lcom/miui/activityutil/w;Lcom/miui/activityutil/ae;)V

    invoke-static {v1}, Lcom/miui/activityutil/af;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "unknown"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/miui/activityutil/w;->f:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4, v2, v1}, Lcom/miui/activityutil/ae;->a(IIZ)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/activityutil/w;->k:Z

    return-void
.end method
