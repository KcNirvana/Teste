.class public Lcom/xiaomi/stat/b/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/String; = " http://data.mistat.xiaomi.com/idservice/deviceid_get"

.field private static final c:Ljava/lang/String; = "DeviceIdManager"

.field private static final d:Ljava/lang/String; = "ia"

.field private static final e:Ljava/lang/String; = "ib"

.field private static final f:Ljava/lang/String; = "md"

.field private static final g:Ljava/lang/String; = "mm"

.field private static final h:Ljava/lang/String; = "bm"

.field private static final i:Ljava/lang/String; = "aa"

.field private static final j:Ljava/lang/String; = "ai"

.field private static final k:I = 0x0

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:I = 0x3

.field private static final o:I = 0x4

.field private static final p:I = 0x5

.field private static final q:I = 0x6

.field private static final r:I = 0x1

.field private static final s:Ljava/lang/String; = "pref_key_device_id"

.field private static final t:Ljava/lang/String; = "pref_key_restore_ts"

.field private static u:Lcom/xiaomi/stat/b/d;


# instance fields
.field private v:Ljava/lang/String;

.field private w:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/stat/b/d;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_key_device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    return-void
.end method

.method public static a()Lcom/xiaomi/stat/b/d;
    .locals 2

    sget-object v0, Lcom/xiaomi/stat/b/d;->u:Lcom/xiaomi/stat/b/d;

    if-nez v0, :cond_1

    sget-object v0, Lcom/xiaomi/stat/b/d;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/b/d;->u:Lcom/xiaomi/stat/b/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/stat/b/d;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/d;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/d;->u:Lcom/xiaomi/stat/b/d;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/stat/b/d;->u:Lcom/xiaomi/stat/b/d;

    return-object v0
.end method

.method private e()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_3

    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    if-ne v1, v0, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "DeviceIdManager"

    const-string v1, "network is not connected!"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    :goto_3
    const-string v0, "DeviceIdManager"

    const-string v1, "request abort: statistic or network is not enabled"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private f()Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    const-string v1, " http://data.mistat.xiaomi.com/idservice/deviceid_get"

    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->h()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceIdManager"

    invoke-static {v2, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "timestamp"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v1, "code"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v5, "device_id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne v1, v0, :cond_1

    iput-object v2, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v1

    iget-object v5, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "pref_key_device_id"

    invoke-virtual {v1, v5, v2}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pref_key_restore_ts"

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    :cond_0
    invoke-static {v3, v4}, Lcom/xiaomi/stat/d/r;->a(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v1

    const-string v2, "DeviceIdManager"

    const-string v3, "[getDeviceIdLocal JSONException]:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "DeviceIdManager"

    const-string v3, "[getDeviceIdLocal IOException]:"

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return v0
.end method

.method private g()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->w:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/stat/d/e;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    return-object v0
.end method

.method private h()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->g()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "ia"

    aget-object v6, v1, v4

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ib"

    aget-object v6, v1, v3

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "md"

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "mm"

    const/4 v6, 0x3

    aget-object v6, v1, v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "bm"

    const/4 v6, 0x4

    aget-object v6, v1, v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "aa"

    const/4 v6, 0x5

    aget-object v6, v1, v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "ai"

    const/4 v6, 0x6

    aget-object v1, v1, v6

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    const-string v1, "DeviceIdManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[pay-load]:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-array v1, v4, [B

    :try_start_1
    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v4

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "utf-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/xiaomi/stat/b/h;->a([B)[B

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, v3}, Lcom/xiaomi/stat/d/g;->a([BZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/stat/d/d;->a([B)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v1, "sv"

    const-string v3, "3.0.11"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "p"

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ai"

    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "gzip"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fc"

    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/stat/b/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sid"

    invoke-static {}, Lcom/xiaomi/stat/b/h;->a()Lcom/xiaomi/stat/b/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaomi/stat/b/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/stat/d/e;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public declared-synchronized b()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/stat/b/d;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/stat/b/d;->e()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/e;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 3

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "pref_key_device_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/stat/b/d;->v:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
