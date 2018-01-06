.class public Lcom/xiaomi/metoknlp/c/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final e:Ljava/lang/Object;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/net/ConnectivityManager;

.field private d:Lcom/xiaomi/metoknlp/c/p;

.field private f:Lcom/xiaomi/metoknlp/c/c;

.field private g:Landroid/os/HandlerThread;

.field private h:Lcom/xiaomi/metoknlp/c/o;

.field private i:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x7530

    :goto_0
    sput-wide v0, Lcom/xiaomi/metoknlp/c/g;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/metoknlp/c/g;->e:Ljava/lang/Object;

    return-void

    :cond_0
    const-wide/32 v0, 0x1b7740

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/xiaomi/metoknlp/c/l;

    invoke-direct {v0, p0}, Lcom/xiaomi/metoknlp/c/l;-><init>(Lcom/xiaomi/metoknlp/c/g;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->i:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/c/g;)Lcom/xiaomi/metoknlp/c/o;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/metoknlp/c/g;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/c/g;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    iget-object v3, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->c:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v5, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/xiaomi/metoknlp/c/j;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/c/c;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/c/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v1, v0}, Lcom/xiaomi/metoknlp/c/c;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-virtual {v0, v4}, Lcom/xiaomi/metoknlp/c/o;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-virtual {v0, v4}, Lcom/xiaomi/metoknlp/c/o;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-virtual {v0, v4}, Lcom/xiaomi/metoknlp/c/o;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget-wide v2, Lcom/xiaomi/metoknlp/c/g;->a:J

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-virtual {v1, v0}, Lcom/xiaomi/metoknlp/c/o;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-virtual {v1, v0, v2, v3}, Lcom/xiaomi/metoknlp/c/o;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/c;->h()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/metoknlp/c/g;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/metoknlp/c/g;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/b;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/g;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/g;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/g;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/g;->h()V

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/c;->g()V

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/c;->i()V

    :cond_1
    return-void
.end method

.method private e()Z
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/c;->c()J

    move-result-wide v6

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/b;->j()J

    move-result-wide v0

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v8, v0, v8

    if-nez v8, :cond_0

    sget-wide v0, Lcom/xiaomi/metoknlp/c/g;->a:J

    :cond_0
    iget-object v8, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v8}, Lcom/xiaomi/metoknlp/c/c;->b()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    iget-object v9, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    invoke-static {v9, v2}, Lcom/xiaomi/metoknlp/c/j;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    sub-long/2addr v4, v6

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method private f()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/b;->i()J

    move-result-wide v0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    :goto_0
    iget-object v4, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v4}, Lcom/xiaomi/metoknlp/c/c;->f()V

    iget-object v4, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v4}, Lcom/xiaomi/metoknlp/c/c;->d()J

    move-result-wide v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    move v0, v2

    :goto_1
    return v0

    :cond_0
    const-wide/32 v0, 0xa4cb800

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private g()Z
    .locals 10

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/c;->e()J

    move-result-wide v6

    const-wide/32 v2, 0xa4cb800

    invoke-static {}, Lcom/xiaomi/metoknlp/b;->a()Lcom/xiaomi/metoknlp/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/b;->g()J

    move-result-wide v0

    const-wide v8, 0x7fffffffffffffffL

    cmp-long v5, v0, v8

    if-eqz v5, :cond_1

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private h()V
    .locals 6

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->d:Lcom/xiaomi/metoknlp/c/p;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v1}, Lcom/xiaomi/metoknlp/c/c;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v2}, Lcom/xiaomi/metoknlp/c/c;->c()J

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v4}, Lcom/xiaomi/metoknlp/c/c;->d()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/xiaomi/metoknlp/c/p;->a(Ljava/lang/String;JJ)V

    return-void
.end method

.method private i()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    check-cast v0, Lcom/xiaomi/metoknlp/a;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/a;->b()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/metoknlp/c/g;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private k()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/c/o;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-virtual {v0, v1}, Lcom/xiaomi/metoknlp/c/o;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/c/o;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-virtual {v0, v2}, Lcom/xiaomi/metoknlp/c/o;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaomi/metoknlp/c/g;->a(Z)V

    return-void
.end method

.method public a(Lcom/xiaomi/metoknlp/c/p;)V
    .locals 2

    sget-object v1, Lcom/xiaomi/metoknlp/c/g;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/xiaomi/metoknlp/c/g;->d:Lcom/xiaomi/metoknlp/c/p;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    new-instance v0, Lcom/xiaomi/metoknlp/c/c;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/metoknlp/c/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->b:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->c:Landroid/net/ConnectivityManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiCampStatics"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->g:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/xiaomi/metoknlp/c/o;

    iget-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/metoknlp/c/o;-><init>(Lcom/xiaomi/metoknlp/c/g;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->h:Lcom/xiaomi/metoknlp/c/o;

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/g;->i()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/g;->j()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/g;->i()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/metoknlp/c/g;->k()V

    :cond_0
    iput-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->c:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->f:Lcom/xiaomi/metoknlp/c/c;

    invoke-virtual {v0}, Lcom/xiaomi/metoknlp/c/c;->a()V

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/xiaomi/metoknlp/c/g;->g:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    sget-object v1, Lcom/xiaomi/metoknlp/c/g;->e:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/xiaomi/metoknlp/c/g;->d:Lcom/xiaomi/metoknlp/c/p;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
