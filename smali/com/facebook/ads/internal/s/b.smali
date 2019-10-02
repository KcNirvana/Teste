.class public Lcom/facebook/ads/internal/s/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/s/b$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b"


# instance fields
.field private final b:Lcom/facebook/ads/internal/s/b$a;

.field private final c:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final d:Landroid/net/ConnectivityManager;

.field private final e:Lcom/facebook/ads/internal/v/a/a;

.field private final f:Landroid/os/Handler;

.field private final g:J

.field private final h:J

.field private final i:Landroid/content/Context;

.field private final j:Ljava/lang/Runnable;

.field private final k:Ljava/lang/Runnable;

.field private volatile l:Z

.field private m:I

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/facebook/ads/internal/s/b$a;)V
    .locals 8
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/facebook/ads/internal/s/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/s/b$1;-><init>(Lcom/facebook/ads/internal/s/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/s/b;->j:Ljava/lang/Runnable;

    new-instance v0, Lcom/facebook/ads/internal/s/b$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/s/b$2;-><init>(Lcom/facebook/ads/internal/s/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/s/b;->k:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/facebook/ads/internal/s/b;->b:Lcom/facebook/ads/internal/s/b$a;

    iput-object p1, p0, Lcom/facebook/ads/internal/s/b;->i:Landroid/content/Context;

    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/s/b;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/facebook/ads/internal/s/b;->d:Landroid/net/ConnectivityManager;

    invoke-static {p1}, Lcom/facebook/ads/internal/w/e/d;->b(Landroid/content/Context;)Lcom/facebook/ads/internal/v/a/a;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/ads/internal/s/b;->e:Lcom/facebook/ads/internal/v/a/a;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/s/b;->f:Landroid/os/Handler;

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->v(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/internal/s/b;->g:J

    invoke-static {p1}, Lcom/facebook/ads/internal/r/a;->w(Landroid/content/Context;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/ads/internal/s/b;->h:J

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/s/b;)I
    .locals 1

    iget v0, p0, Lcom/facebook/ads/internal/s/b;->m:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/ads/internal/s/b;->m:I

    return v0
.end method

.method private a(J)V
    .locals 2

    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/s/b;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/s/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/facebook/ads/internal/s/b;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/s/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/facebook/ads/internal/s/b;->n:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/s/b;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/s/b;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object p0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/s/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/facebook/ads/internal/s/b;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method private d()V
    .locals 4

    iget v0, p0, Lcom/facebook/ads/internal/s/b;->m:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/internal/s/b;->e()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/s/b;->b()V

    return-void

    :cond_0
    iget v0, p0, Lcom/facebook/ads/internal/s/b;->m:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x7d0

    :goto_0
    iput-wide v0, p0, Lcom/facebook/ads/internal/s/b;->n:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lcom/facebook/ads/internal/s/b;->n:J

    const-wide/16 v2, 0x2

    mul-long v0, v0, v2

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/s/b;->a()V

    return-void
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/internal/s/b;->m:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/internal/s/b;->n:J

    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->b:Lcom/facebook/ads/internal/s/b$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/s/b$a;->b()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/s/b;->l:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/s/b;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/facebook/ads/internal/s/b;->g:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/s/b;->a(J)V

    return-void
.end method

.method b()V
    .locals 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/s/b;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/internal/s/b;->l:Z

    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/ads/internal/s/b;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide v0, p0, Lcom/facebook/ads/internal/s/b;->h:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/s/b;->a(J)V

    return-void
.end method

.method c()V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->b:Lcom/facebook/ads/internal/s/b$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/s/b$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/internal/s/b;->e()V

    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "attempt"

    iget v3, p0, Lcom/facebook/ads/internal/s/b;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lcom/facebook/ads/internal/v/a/p;

    invoke-direct {v1}, Lcom/facebook/ads/internal/v/a/p;-><init>()V

    const-string v2, "payload"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/ads/internal/v/a/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/s/b;->e:Lcom/facebook/ads/internal/v/a/a;

    iget-object v3, p0, Lcom/facebook/ads/internal/s/b;->i:Landroid/content/Context;

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v4, "https://www.facebook.com/adnw_logging/"

    goto :goto_0

    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "https://www.%s.facebook.com/adnw_logging/"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v3}, Lcom/facebook/ads/internal/r/a;->M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "www"

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4, v1}, Lcom/facebook/ads/internal/v/a/a;->b(Ljava/lang/String;Lcom/facebook/ads/internal/v/a/p;)Lcom/facebook/ads/internal/v/a/n;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/facebook/ads/internal/v/a/n;->e()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "events"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/s/b;->b:Lcom/facebook/ads/internal/s/b$a;

    const-string v2, "events"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    :goto_3
    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/s/b$a;->b(Lorg/json/JSONArray;)V

    :cond_5
    :goto_4
    invoke-direct {p0}, Lcom/facebook/ads/internal/s/b;->d()V

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Lcom/facebook/ads/internal/v/a/n;->a()I

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_9

    invoke-virtual {v1}, Lcom/facebook/ads/internal/v/a/n;->a()I

    move-result v1

    const/16 v2, 0x19d

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/facebook/ads/internal/s/b;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/ads/internal/r/a;->J(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->b:Lcom/facebook/ads/internal/s/b$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/s/b$a;->c()V

    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/internal/s/b;->e()V

    goto :goto_6

    :cond_8
    const-string v1, "events"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/facebook/ads/internal/s/b;->b:Lcom/facebook/ads/internal/s/b$a;

    const-string v2, "events"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->b:Lcom/facebook/ads/internal/s/b$a;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/s/b$a;->a(Lorg/json/JSONArray;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/facebook/ads/internal/s/b;->b:Lcom/facebook/ads/internal/s/b$a;

    invoke-interface {v0}, Lcom/facebook/ads/internal/s/b$a;->d()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_b
    :goto_5
    iget-wide v0, p0, Lcom/facebook/ads/internal/s/b;->h:J

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/internal/s/b;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/s/b;->d()V

    :goto_6
    return-void
.end method
