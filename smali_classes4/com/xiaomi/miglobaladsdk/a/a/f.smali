.class public Lcom/xiaomi/miglobaladsdk/a/a/f;
.super Ljava/lang/Object;
.source "MiConfigLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/a/a/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Long;

.field private static b:J

.field private static c:J

.field private static d:I

.field private static e:J

.field private static volatile f:Lcom/xiaomi/miglobaladsdk/a/a/f;


# instance fields
.field private final g:Ljava/lang/Object;

.field private h:Lcom/xiaomi/miglobaladsdk/a/a/a;

.field private i:Lcom/xiaomi/miglobaladsdk/a/a/b;

.field private j:Landroid/content/Context;

.field private k:I

.field private l:J

.field private m:J

.field private n:Z

.field private o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/miglobaladsdk/a/a/f;->a:Ljava/lang/Long;

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/xiaomi/miglobaladsdk/a/a/f;->b:J

    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/xiaomi/miglobaladsdk/a/a/f;->c:J

    const/4 v0, 0x3

    sput v0, Lcom/xiaomi/miglobaladsdk/a/a/f;->d:I

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/xiaomi/miglobaladsdk/a/a/f;->e:J

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->g:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/a/f;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->k:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/a/f;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->m:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/a/f;)Lcom/xiaomi/miglobaladsdk/a/a/a;
    .locals 0

    iget-object p0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->h:Lcom/xiaomi/miglobaladsdk/a/a/a;

    return-object p0
.end method

.method public static a()Lcom/xiaomi/miglobaladsdk/a/a/f;
    .locals 2

    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/a/f;->f:Lcom/xiaomi/miglobaladsdk/a/a/f;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/miglobaladsdk/a/a/f;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miglobaladsdk/a/a/f;->f:Lcom/xiaomi/miglobaladsdk/a/a/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/miglobaladsdk/a/a/f;

    invoke-direct {v1}, Lcom/xiaomi/miglobaladsdk/a/a/f;-><init>()V

    sput-object v1, Lcom/xiaomi/miglobaladsdk/a/a/f;->f:Lcom/xiaomi/miglobaladsdk/a/a/f;

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
    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/a/f;->f:Lcom/xiaomi/miglobaladsdk/a/a/f;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/a/f;Ljava/util/Map;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-nez v1, :cond_0

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-static {v1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a(Lcom/xiaomi/miglobaladsdk/a/a/c;Lcom/xiaomi/miglobaladsdk/a/a/e;)V
    .locals 2

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    const-string p2, "MiAdBlacklistConfig"

    const-string v0, "onCallback failed"

    invoke-static {p2, v0}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x271c

    invoke-interface {p1, p2}, Lcom/xiaomi/miglobaladsdk/a/a/c;->a(I)V

    goto :goto_0

    :cond_0
    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "onCallback success"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/xiaomi/miglobaladsdk/a/a/c;->a(Lcom/xiaomi/miglobaladsdk/a/a/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/a/f;Lcom/xiaomi/miglobaladsdk/a/a/c;Lcom/xiaomi/miglobaladsdk/a/a/e;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Lcom/xiaomi/miglobaladsdk/a/a/c;Lcom/xiaomi/miglobaladsdk/a/a/e;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/a/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/a/f$4;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/f$4;-><init>(Lcom/xiaomi/miglobaladsdk/a/a/f;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/a/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/a/a/f;J)J
    .locals 0

    iput-wide p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->l:J

    return-wide p1
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/a/a/f;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "handleResponse"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->j()V

    return-void

    :cond_0
    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "request retry : success reset times"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->k:I

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->i:Lcom/xiaomi/miglobaladsdk/a/a/b;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/f;->b(Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "response parsed success"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->h:Lcom/xiaomi/miglobaladsdk/a/a/a;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/a;->a(Ljava/util/Map;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/a/a/f;)Z
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/xiaomi/miglobaladsdk/a/a/f;->d:I

    return v0
.end method

.method static synthetic c(Lcom/xiaomi/miglobaladsdk/a/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->h()V

    return-void
.end method

.method static synthetic d()J
    .locals 2

    sget-wide v0, Lcom/xiaomi/miglobaladsdk/a/a/f;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/xiaomi/miglobaladsdk/a/a/f;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->i()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcom/xiaomi/miglobaladsdk/a/a/f;)I
    .locals 0

    iget p0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->k:I

    return p0
.end method

.method private e()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->j:Landroid/content/Context;

    new-instance v2, Lcom/xiaomi/miglobaladsdk/a/a/f$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/xiaomi/miglobaladsdk/a/a/f$a;-><init>(Lcom/xiaomi/miglobaladsdk/a/a/f;Lcom/xiaomi/miglobaladsdk/a/a/f$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic f(Lcom/xiaomi/miglobaladsdk/a/a/f;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->l:J

    return-wide v0
.end method

.method private f()Z
    .locals 9

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "last http url is loading"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->m:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    iget-wide v5, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->m:J

    sget-wide v7, Lcom/xiaomi/miglobaladsdk/a/a/f;->e:J

    add-long/2addr v5, v7

    cmp-long v0, v5, v0

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const-string v1, "MiAdBlacklistConfig"

    const-string v2, "must be out of interval"

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-boolean v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->n:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->h:Lcom/xiaomi/miglobaladsdk/a/a/a;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/a/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method static synthetic g(Lcom/xiaomi/miglobaladsdk/a/a/f;)I
    .locals 2

    iget v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->k:I

    return v0
.end method

.method private g()Z
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->j:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/utils/h;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private h()V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/a/f$3;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/a/a/f$3;-><init>(Lcom/xiaomi/miglobaladsdk/a/a/f;)V

    invoke-static {v0}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->h:Lcom/xiaomi/miglobaladsdk/a/a/a;

    invoke-virtual {v1}, Lcom/xiaomi/miglobaladsdk/a/a/a;->c()J

    move-result-wide v1

    const-string v3, "clientInfo"

    const-string v4, "alpha"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "appKey"

    const-string v4, "MiAdSdk_i18n"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_0

    sget-object v1, Lcom/xiaomi/miglobaladsdk/a/a/f;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :cond_0
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private j()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/xiaomi/miglobaladsdk/a/a/f$5;

    invoke-direct {v1, p0}, Lcom/xiaomi/miglobaladsdk/a/a/f$5;-><init>(Lcom/xiaomi/miglobaladsdk/a/a/f;)V

    sget-wide v2, Lcom/xiaomi/miglobaladsdk/a/a/f;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MiAdBlacklistConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request retry exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MiAdBlacklistConfig"

    const-string v2, "MiConfigLoader init"

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "MiAdBlacklistConfig"

    const-string v1, "MiConfigLoader has been inited"

    invoke-static {p1, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->j:Landroid/content/Context;

    new-instance p1, Lcom/xiaomi/miglobaladsdk/a/a/a;

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->j:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/xiaomi/miglobaladsdk/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->h:Lcom/xiaomi/miglobaladsdk/a/a/a;

    new-instance p1, Lcom/xiaomi/miglobaladsdk/a/a/b;

    invoke-direct {p1}, Lcom/xiaomi/miglobaladsdk/a/a/b;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->i:Lcom/xiaomi/miglobaladsdk/a/a/b;

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/f;->e()V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/xiaomi/miglobaladsdk/a/a/c;)V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/a/f$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/f$1;-><init>(Lcom/xiaomi/miglobaladsdk/a/a/f;Lcom/xiaomi/miglobaladsdk/a/a/c;)V

    invoke-static {v0}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/Observer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MiAdBlacklistConfig"

    const-string v2, "add observer"

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/f;->h:Lcom/xiaomi/miglobaladsdk/a/a/a;

    invoke-virtual {v1, p1}, Lcom/xiaomi/miglobaladsdk/a/a/a;->addObserver(Ljava/util/Observer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 1

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/a/f$2;

    invoke-direct {v0, p0}, Lcom/xiaomi/miglobaladsdk/a/a/f$2;-><init>(Lcom/xiaomi/miglobaladsdk/a/a/f;)V

    invoke-static {v0}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method
