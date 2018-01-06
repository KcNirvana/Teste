.class public Lcom/xiaomi/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/a/a/d$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static volatile b:Lcom/xiaomi/a/a/d;

.field private static c:Ljava/lang/Object;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/xiaomi/a/a/b/a;

.field private f:Lcom/xiaomi/a/k;

.field private g:Lcom/xiaomi/a/a/b/c;

.field private h:Lcom/xiaomi/a/a/d$a;

.field private i:J

.field private volatile j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private n:Landroid/os/Handler;

.field private o:Landroid/os/HandlerThread;

.field private p:Lcom/xiaomi/a/a/b/a;

.field private q:Ljava/lang/Runnable;

.field private r:Ljava/lang/Runnable;

.field private s:Lcom/xiaomi/a/a/j$a;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/xiaomi/a/a/a/n;->f:I

    mul-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/xiaomi/a/a/d;->a:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/xiaomi/a/a/d;->f:Lcom/xiaomi/a/k;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/a/a/d;->i:J

    iput-boolean v2, p0, Lcom/xiaomi/a/a/d;->j:Z

    iput-boolean v2, p0, Lcom/xiaomi/a/a/d;->k:Z

    iput-object v3, p0, Lcom/xiaomi/a/a/d;->p:Lcom/xiaomi/a/a/b/a;

    new-instance v0, Lcom/xiaomi/a/a/e;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/e;-><init>(Lcom/xiaomi/a/a/d;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->q:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/a/a/f;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/f;-><init>(Lcom/xiaomi/a/a/d;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->r:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/a/a/g;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/g;-><init>(Lcom/xiaomi/a/a/d;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->s:Lcom/xiaomi/a/a/j$a;

    new-instance v0, Lcom/xiaomi/a/a/h;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/h;-><init>(Lcom/xiaomi/a/a/d;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->t:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/xiaomi/a/a/i;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/i;-><init>(Lcom/xiaomi/a/a/d;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->u:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/a/a/a/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    const-string v0, "connectivity"

    sput-object v0, Lcom/xiaomi/a/a/d;->c:Ljava/lang/Object;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "api-sdkmgr"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->o:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->o:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->o:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->n:Landroid/os/Handler;

    new-instance v0, Lcom/xiaomi/a/a/b/c;

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaomi/a/a/b/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->g:Lcom/xiaomi/a/a/b/c;

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/a/a/j;->a(Landroid/content/Context;)Lcom/xiaomi/a/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->s:Lcom/xiaomi/a/a/j$a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/a/j;->a(Lcom/xiaomi/a/a/j$a;)V

    sget-object v0, Lcom/xiaomi/a/a/a/m;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->r:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/a/a/d;J)J
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/a/a/d;->m:J

    return-wide p1
.end method

.method static synthetic a(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->e:Lcom/xiaomi/a/a/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/a/a/d;Lcom/xiaomi/a/a/b/a;)Lcom/xiaomi/a/a/b/a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/d;->p:Lcom/xiaomi/a/a/b/a;

    return-object p1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xiaomi/a/a/d;
    .locals 2

    const-class v1, Lcom/xiaomi/a/a/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/a/a/d;->b:Lcom/xiaomi/a/a/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/a/a/d;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/a/a/d;->b:Lcom/xiaomi/a/a/d;

    :cond_0
    sget-object v0, Lcom/xiaomi/a/a/d;->b:Lcom/xiaomi/a/a/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "SdkManager"

    const-string v1, "post dex init task"

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/xiaomi/a/a/b/a;)V
    .locals 3

    iput-object p1, p0, Lcom/xiaomi/a/a/d;->e:Lcom/xiaomi/a/a/b/a;

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->e:Lcom/xiaomi/a/a/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->h:Lcom/xiaomi/a/a/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->e:Lcom/xiaomi/a/a/b/a;

    sget-boolean v1, Lcom/xiaomi/a/a/a/a;->a:Z

    invoke-interface {v0, v1}, Lcom/xiaomi/a/a/b/a;->a(Z)V

    const-string v0, "SdkManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Analytics module loaded, version is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/a/a/d;->e:Lcom/xiaomi/a/a/b/a;

    invoke-interface {v2}, Lcom/xiaomi/a/a/b/a;->a()Lcom/xiaomi/a/a/m;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->h:Lcom/xiaomi/a/a/d$a;

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->e:Lcom/xiaomi/a/a/b/a;

    invoke-interface {v0, v1}, Lcom/xiaomi/a/a/d$a;->a(Lcom/xiaomi/a/a/b/a;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/a/d;->f:Lcom/xiaomi/a/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->f:Lcom/xiaomi/a/k;

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->e:Lcom/xiaomi/a/a/b/a;

    invoke-virtual {v0, v1}, Lcom/xiaomi/a/k;->a(Lcom/xiaomi/a/a/b/a;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/xiaomi/a/a/d;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/a/a/d;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    const-string v1, "analytics_api"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pld"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "savePreviousLoadDex exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/a/a/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/a/a/d;Lcom/xiaomi/a/a/b/a;)Lcom/xiaomi/a/a/b/a;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/d;->e:Lcom/xiaomi/a/a/b/a;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaomi/a/a/d;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/a/a/d;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/a/a/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/a/a/d;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/xiaomi/a/a/d;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/xiaomi/a/a/d;Lcom/xiaomi/a/a/b/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/a/a/d;->a(Lcom/xiaomi/a/a/b/a;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/a/a/d;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/xiaomi/a/a/d;->l:Z

    return p1
.end method

.method static synthetic d()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/xiaomi/a/a/d;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic d(Lcom/xiaomi/a/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->k()V

    return-void
.end method

.method static synthetic e()Lcom/xiaomi/a/a/d;
    .locals 1

    sget-object v0, Lcom/xiaomi/a/a/d;->b:Lcom/xiaomi/a/a/d;

    return-object v0
.end method

.method static synthetic e(Lcom/xiaomi/a/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/a/a/d;->k:Z

    return v0
.end method

.method static synthetic f(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->m()Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    const-string v1, "analytics"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/c;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->g:Lcom/xiaomi/a/a/b/c;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "analytics.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->n()Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "analytics_asset.apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->o()Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/asset_lib/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/xiaomi/a/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->p()V

    return-void
.end method

.method private k()V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->i()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :goto_1
    return-void

    :cond_0
    invoke-static {v0}, Lcom/xiaomi/a/a/a/f;->b(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/xiaomi/a/a/a/f;->b(Ljava/io/File;)V

    goto :goto_1
.end method

.method static synthetic k(Lcom/xiaomi/a/a/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->l()V

    return-void
.end method

.method static synthetic l(Lcom/xiaomi/a/a/d;)Lcom/xiaomi/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->p:Lcom/xiaomi/a/a/b/a;

    return-object v0
.end method

.method private declared-synchronized l()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/xiaomi/a/a/a/n;->d:I

    int-to-long v0, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaomi/a/a/d;->i:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/a/a/d;->i:J

    sget-object v0, Lcom/xiaomi/a/a/a/m;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->q:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic m(Lcom/xiaomi/a/a/d;)I
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->t()I

    move-result v0

    return v0
.end method

.method private m()Lcom/xiaomi/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->g:Lcom/xiaomi/a/a/b/c;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/b/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->g:Lcom/xiaomi/a/a/b/c;

    invoke-virtual {v0}, Lcom/xiaomi/a/a/b/c;->d()V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/a/a/d;->g:Lcom/xiaomi/a/a/b/c;

    return-object v0
.end method

.method static synthetic n(Lcom/xiaomi/a/a/d;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->t:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method private n()Lcom/xiaomi/a/a/b/a;
    .locals 6

    :try_start_0
    const-string v1, "analytics_core"

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, v2, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    aget-object v4, v2, v0

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/xiaomi/a/a/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->h()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/a/a/b/b;

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/a/a/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadAssetAnalytics exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private o()Lcom/xiaomi/a/a/b/a;
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->g()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/xiaomi/a/a/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/a/a/b/b;

    iget-object v2, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/xiaomi/a/a/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SdkManager"

    invoke-static {v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "loadLocalAnalytics exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic o(Lcom/xiaomi/a/a/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/a/a/d;->l:Z

    return v0
.end method

.method private p()V
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->q()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/a/a/d;->p:Lcom/xiaomi/a/a/b/a;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->r()V

    goto :goto_0
.end method

.method static synthetic p(Lcom/xiaomi/a/a/d;)Z
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->s()Z

    move-result v0

    return v0
.end method

.method private q()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    const-string v2, "analytics_api"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pld"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "SdkManager"

    invoke-static {v2}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPreviousLoadDex exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private r()V
    .locals 3

    const-string v0, "SdkManager"

    const-string v1, "register screen receiver"

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xiaomi/a/a/d;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaomi/a/a/d;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private s()Z
    .locals 4

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->t()I

    move-result v0

    iget-boolean v1, p0, Lcom/xiaomi/a/a/d;->l:Z

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/a/a/d;->m:J

    int-to-long v0, v0

    invoke-static {v2, v3, v0, v1}, Lcom/xiaomi/a/a/a/n;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()I
    .locals 1

    sget-boolean v0, Lcom/xiaomi/a/a/a/a;->a:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/xiaomi/a/a/d;->a:I

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/xiaomi/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/d;->e:Lcom/xiaomi/a/a/b/a;

    return-object v0
.end method

.method public a(Lcom/xiaomi/a/a/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/d;->h:Lcom/xiaomi/a/a/d$a;

    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/xiaomi/a/a/d;->j:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/a/a/d;->l()V

    :cond_0
    return-void
.end method

.method public c()Lcom/xiaomi/a/a/m;
    .locals 2

    invoke-virtual {p0}, Lcom/xiaomi/a/a/d;->a()Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaomi/a/a/d;->a()Lcom/xiaomi/a/a/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaomi/a/a/b/a;->a()Lcom/xiaomi/a/a/m;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/xiaomi/a/a/m;

    const-string v1, "0.0.0"

    invoke-direct {v0, v1}, Lcom/xiaomi/a/a/m;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
