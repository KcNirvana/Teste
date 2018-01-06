.class Lcom/xiaomi/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/a/a/j$a;
    }
.end annotation


# static fields
.field private static final a:J

.field private static volatile b:Lcom/xiaomi/a/a/j;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Lcom/xiaomi/a/a/j$a;

.field private i:Ljava/lang/Runnable;

.field private j:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/xiaomi/a/a/a/n;->c:I

    int-to-long v0, v0

    sput-wide v0, Lcom/xiaomi/a/a/j;->a:J

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/a/a/j;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/a/a/j;->e:Ljava/lang/String;

    new-instance v0, Lcom/xiaomi/a/a/k;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/k;-><init>(Lcom/xiaomi/a/a/j;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/j;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/xiaomi/a/a/l;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/l;-><init>(Lcom/xiaomi/a/a/j;)V

    iput-object v0, p0, Lcom/xiaomi/a/a/j;->j:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/xiaomi/a/a/a/b;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/a/a/j;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/a/a/j;I)I
    .locals 0

    iput p1, p0, Lcom/xiaomi/a/a/j;->g:I

    return p1
.end method

.method static synthetic a(Lcom/xiaomi/a/a/j;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/j;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/xiaomi/a/a/j;
    .locals 2

    const-class v1, Lcom/xiaomi/a/a/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/a/a/j;->b:Lcom/xiaomi/a/a/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/a/a/j;

    invoke-direct {v0, p0}, Lcom/xiaomi/a/a/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/a/a/j;->b:Lcom/xiaomi/a/a/j;

    :cond_0
    sget-object v0, Lcom/xiaomi/a/a/j;->b:Lcom/xiaomi/a/a/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/a/a/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/j;->e:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a(J)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/a/a/j;->c:Landroid/content/Context;

    const-string v1, "analytics_updater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "updateTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/xiaomi/a/a/j;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/a/a/j;->a(J)V

    return-void
.end method

.method private declared-synchronized b()J
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/a/a/j;->c:Landroid/content/Context;

    const-string v1, "analytics_updater"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "updateTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b(Ljava/lang/String;)J
    .locals 2

    :try_start_0
    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xiaomi/a/a/j;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/xiaomi/a/a/j;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/xiaomi/a/a/j;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/j;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/xiaomi/a/a/j;Ljava/lang/String;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/xiaomi/a/a/j;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/xiaomi/a/a/j;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/j;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    :try_start_0
    iget-object v1, p0, Lcom/xiaomi/a/a/j;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/a/a/a/o;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/xiaomi/a/a/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/xiaomi/a/a/j;->h:Lcom/xiaomi/a/a/j$a;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/a/a/j;->h:Lcom/xiaomi/a/a/j$a;

    iget-object v2, p0, Lcom/xiaomi/a/a/j;->f:Ljava/lang/String;

    iget v3, p0, Lcom/xiaomi/a/a/j;->g:I

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/xiaomi/a/a/j$a;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/xiaomi/a/a/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/j;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/xiaomi/a/a/j;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/a/a/j;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xiaomi/a/a/j;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/a/a/j;->d()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xiaomi/a/a/j$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/a/a/j;->h:Lcom/xiaomi/a/a/j$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/xiaomi/a/a/a/h;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "UpdateManager"

    const-string v1, "checkUpdate "

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/a/a/j;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/a/a/j;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaomi/a/a/a/m;->a(Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/a/a/j;->a(J)V

    goto :goto_0
.end method

.method public a()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/xiaomi/a/a/a/h;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/xiaomi/a/d;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/xiaomi/a/a/j;->b()J

    move-result-wide v2

    const-string v1, "UpdateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "last update check time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/xiaomi/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    sget-wide v4, Lcom/xiaomi/a/a/j;->a:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
