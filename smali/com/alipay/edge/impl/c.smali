.class public Lcom/alipay/edge/impl/c;
.super Ljava/lang/Object;
.source "EdgeSwitchManager.java"


# static fields
.field private static c:Lcom/alipay/edge/impl/c;

.field private static d:I

.field private static e:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/edge/impl/c;->c:Lcom/alipay/edge/impl/c;

    const/4 v0, 0x0

    sput v0, Lcom/alipay/edge/impl/c;->d:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/edge/impl/c;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/edge/impl/c;->b:Landroid/content/Context;

    iput-object p1, p0, Lcom/alipay/edge/impl/c;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/edge/impl/c;
    .locals 3

    sget-object v0, Lcom/alipay/edge/impl/c;->c:Lcom/alipay/edge/impl/c;

    if-nez v0, :cond_2

    const-class v1, Lcom/alipay/edge/impl/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/edge/impl/c;->c:Lcom/alipay/edge/impl/c;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/edge/impl/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/edge/impl/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/edge/impl/c;->c:Lcom/alipay/edge/impl/c;

    sget-object v0, Lcom/alipay/edge/impl/c;->c:Lcom/alipay/edge/impl/c;

    invoke-direct {v0}, Lcom/alipay/edge/impl/c;->j()V

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    sget-object v0, Lcom/alipay/edge/impl/c;->c:Lcom/alipay/edge/impl/c;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/edge/impl/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/edge/impl/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/edge/impl/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/edge/impl/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/edge/impl/c;->b:Landroid/content/Context;

    const-string/jumbo v1, "sdk_monitor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/edge/impl/c;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget v0, Lcom/alipay/edge/impl/c;->d:I

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    sget-object v1, Lcom/alipay/edge/impl/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/edge/impl/c;->e:Ljava/lang/String;

    :cond_0
    sget v0, Lcom/alipay/edge/impl/c;->d:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/edge/impl/c;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "edge_crash_1.1"

    invoke-direct {p0, v0, p1}, Lcom/alipay/edge/impl/c;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/alipay/edge/impl/c;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "edge_switch"

    invoke-direct {p0, v0, p1}, Lcom/alipay/edge/impl/c;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/edge/impl/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized c(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "edge_switch_report"

    invoke-direct {p0, v0, p1}, Lcom/alipay/edge/impl/c;->a(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/edge/impl/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized e()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "edge_crash_1.1"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/edge/impl/c;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "edge_switch"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/alipay/edge/impl/c;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "edge_switch_report"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/edge/impl/c;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "edge_clear_cache"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/edge/impl/c;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "edge_self_safe"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/edge/impl/c;->b(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
