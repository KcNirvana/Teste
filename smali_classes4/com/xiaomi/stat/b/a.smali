.class public Lcom/xiaomi/stat/b/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ConfigManager"

.field private static final b:Ljava/lang/String; = "-"

.field private static c:I = 0x0

.field private static d:I = 0x1

.field private static e:I = 0x2

.field private static final f:Ljava/lang/String; = "config_request_count"

.field private static final g:Ljava/lang/String; = "config_request_time"

.field private static final h:Ljava/lang/String; = "config_success_requested"

.field private static final i:I = 0x1

.field private static final j:I = 0x2

.field private static final k:I = 0x0

.field private static final l:I = -0x1

.field private static final m:I = 0x0

.field private static final n:I = 0xc

.field private static final o:Ljava/lang/String; = "t"

.field private static final p:I

.field private static volatile q:Lcom/xiaomi/stat/b/a;


# instance fields
.field private r:I

.field private s:Landroid/content/Context;

.field private t:Ljava/lang/String;

.field private u:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/stat/b/a;->r:I

    new-instance v0, Lcom/xiaomi/stat/b/b;

    invoke-direct {v0, p0}, Lcom/xiaomi/stat/b/b;-><init>(Lcom/xiaomi/stat/b/a;)V

    iput-object v0, p0, Lcom/xiaomi/stat/b/a;->u:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/xiaomi/stat/ak;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/a;->s:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/stat/b/a;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/stat/b/a;->r:I

    return p0
.end method

.method public static a()Lcom/xiaomi/stat/b/a;
    .locals 2

    sget-object v0, Lcom/xiaomi/stat/b/a;->q:Lcom/xiaomi/stat/b/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/stat/b/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/stat/b/a;->q:Lcom/xiaomi/stat/b/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/stat/b/a;

    invoke-direct {v1}, Lcom/xiaomi/stat/b/a;-><init>()V

    sput-object v1, Lcom/xiaomi/stat/b/a;->q:Lcom/xiaomi/stat/b/a;

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
    sget-object v0, Lcom/xiaomi/stat/b/a;->q:Lcom/xiaomi/stat/b/a;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    if-lez p1, :cond_0

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/xiaomi/stat/b/a;->b()Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    const-string v0, "ConfigManager"

    const-string v1, "config result:%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/stat/b/a;->d()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errorCode"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "time"

    const-wide/16 v5, 0x0

    invoke-virtual {v0, p1, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object p1

    const-string v1, "config_success_requested"

    invoke-virtual {p1, v1, v5, v6}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    const-string p1, "configDelay"

    const-string v1, "0-0"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaomi/stat/b;->c(Ljava/lang/String;)V

    const-string p1, "configNetwork"

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/stat/b;->c(I)V

    const-string p1, "uploadInterval"

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    div-int/lit16 p1, p1, 0x3e8

    invoke-static {p1}, Lcom/xiaomi/stat/b;->d(I)V

    const-string p1, "enableSample"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/xiaomi/stat/b;->h(Z)V

    invoke-static {v5, v6}, Lcom/xiaomi/stat/d/r;->a(J)V

    invoke-static {}, Lcom/xiaomi/stat/b/f;->a()Lcom/xiaomi/stat/b/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaomi/stat/b/f;->a(Lorg/json/JSONObject;)V

    iget p1, p0, Lcom/xiaomi/stat/b/a;->r:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/xiaomi/stat/b/a;->s:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/stat/b/a;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 p1, 0x2

    iput p1, p0, Lcom/xiaomi/stat/b/a;->r:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ConfigManager"

    const-string v1, "processResult exception"

    invoke-static {v0, v1, p1}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/stat/b/a;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/stat/b/a;->u:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .locals 5

    const-string v0, "ConfigManager"

    const-string v1, "requestConfigInner"

    invoke-static {v0, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/b/f;->a()Lcom/xiaomi/stat/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/stat/b/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/stat/b/a;->t:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "t"

    sget v3, Lcom/xiaomi/stat/b/a;->e:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ai"

    invoke-static {}, Lcom/xiaomi/stat/ak;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rc"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "rg"

    invoke-static {}, Lcom/xiaomi/stat/d/m;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "m"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sv"

    const-string v3, "3.0.11"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "av"

    invoke-static {}, Lcom/xiaomi/stat/d/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/stat/b/a;->t:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/xiaomi/stat/c/c;->a(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0, v1}, Lcom/xiaomi/stat/b/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    const-string v2, "ConfigManager"

    const-string v3, "requestConfigInner exception "

    invoke-static {v2, v3, v1}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private c()Z
    .locals 8

    invoke-static {}, Lcom/xiaomi/stat/d/r;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v4

    const-string v5, "config_request_time"

    invoke-virtual {v4, v5}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-string v4, "config_request_time"

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v4, v6, v7}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "config_request_time"

    invoke-virtual {v2, v4, v0, v1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    const-string v0, "config_request_count"

    invoke-virtual {v2, v0, v3}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v0, "config_request_count"

    invoke-virtual {v2, v0, v3}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const-string v4, "config_request_time"

    invoke-virtual {v2, v4, v0, v1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;J)V

    const-string v0, "config_request_count"

    invoke-virtual {v2, v0, v5}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "isRequestCountReachMax exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return v3
.end method

.method private d()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v1, "config_request_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "config_request_count"

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/stat/ab;->b(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "addRequestCount exception"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(ZZ)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/xiaomi/stat/b;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/xiaomi/stat/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/xiaomi/stat/d/l;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string p1, "ConfigManager"

    const-string p2, "network is not connected!"

    invoke-static {p1, p2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/xiaomi/stat/b/a;->r:I

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/xiaomi/stat/b/a;->s:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/stat/b/a;->u:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "ConfigManager"

    const-string v2, "updateConfig"

    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_3

    const-string v0, "MI_STAT_TEST"

    const-string v2, "updateConfig-InToday"

    invoke-static {v0, v2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/stat/ab;->a()Lcom/xiaomi/stat/ab;

    move-result-object v0

    const-string v2, "config_success_requested"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/xiaomi/stat/ab;->a(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/xiaomi/stat/d/r;->b(J)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ConfigManager"

    const-string p2, "Today has successfully requested key."

    invoke-static {p1, p2}, Lcom/xiaomi/stat/d/k;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/xiaomi/stat/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ConfigManager"

    const-string p2, "config request to max count skip.."

    invoke-static {p1, p2}, Lcom/xiaomi/stat/d/k;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    :try_start_3
    invoke-static {}, Lcom/xiaomi/stat/b;->k()Ljava/lang/String;

    move-result-object p1

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    if-le p2, v1, :cond_5

    aget-object p2, p1, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-le p1, p2, :cond_5

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int/2addr p1, p2

    invoke-virtual {v0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int v0, p1, p2

    :cond_5
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/a;->a(I)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-direct {p0, v0}, Lcom/xiaomi/stat/b/a;->a(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_7
    :goto_2
    :try_start_4
    const-string p1, "ConfigManager"

    const-string p2, "update abort: statistic or network is not enabled"

    invoke-static {p1, p2}, Lcom/xiaomi/stat/d/k;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
