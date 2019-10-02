.class public Lcom/xiaomi/miglobaladsdk/a/b;
.super Ljava/lang/Object;
.source "ConfigRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/miglobaladsdk/a/b$b;,
        Lcom/xiaomi/miglobaladsdk/a/b$a;
    }
.end annotation


# static fields
.field private static a:J = 0x6ddd00L

.field private static volatile d:Lcom/xiaomi/miglobaladsdk/a/b;

.field private static f:Lcom/xiaomi/utils/i;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private e:Z

.field private g:Z

.field private volatile h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaomi/miglobaladsdk/a/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaomi/miglobaladsdk/a/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z

.field private l:Lcom/xiaomi/miglobaladsdk/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/xiaomi/utils/i;

    sget-object v1, Lcom/xiaomi/utils/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaomi/utils/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaomi/miglobaladsdk/a/b;->f:Lcom/xiaomi/utils/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->e:Z

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->g:Z

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->i:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->j:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->k:Z

    return-void
.end method

.method public static a()Lcom/xiaomi/miglobaladsdk/a/b;
    .locals 2

    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/b;->d:Lcom/xiaomi/miglobaladsdk/a/b;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/miglobaladsdk/a/b;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/miglobaladsdk/a/b;->d:Lcom/xiaomi/miglobaladsdk/a/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/miglobaladsdk/a/b;

    invoke-direct {v1}, Lcom/xiaomi/miglobaladsdk/a/b;-><init>()V

    sput-object v1, Lcom/xiaomi/miglobaladsdk/a/b;->d:Lcom/xiaomi/miglobaladsdk/a/b;

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
    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/b;->d:Lcom/xiaomi/miglobaladsdk/a/b;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/b;Lcom/xiaomi/miglobaladsdk/a/e;)Lcom/xiaomi/miglobaladsdk/a/e;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b;->l:Lcom/xiaomi/miglobaladsdk/a/e;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b;->j:Ljava/util/Map;

    return-object p1
.end method

.method private a(J)V
    .locals 2

    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/b;->f:Lcom/xiaomi/utils/i;

    const-string v1, "miadksdk_config_loaded_time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaomi/utils/i;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->g()V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/b;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/a/b;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/a/b;->b(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/d;
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->i(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/d;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V
    .locals 3

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->g:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/a/b;->c(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->e()V

    const-string v0, "ConfigRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add callback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->i:Ljava/util/List;

    new-instance v1, Lcom/xiaomi/miglobaladsdk/a/b$b;

    invoke-direct {v1, p1, p2}, Lcom/xiaomi/miglobaladsdk/a/b$b;-><init>(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/b;->f:Lcom/xiaomi/utils/i;

    const-string v1, "miadsdk_default_config"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/utils/i;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic c(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->j(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V
    .locals 5

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/b;->j:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/a/d$a;

    const-string v2, "ConfigRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBeansSync=>adPos= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/xiaomi/miglobaladsdk/a/d$a;->j:Ljava/util/List;

    :cond_0
    invoke-interface {p2, p1, v0}, Lcom/xiaomi/miglobaladsdk/a/b$a;->a(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/a/b;->l:Lcom/xiaomi/miglobaladsdk/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/xiaomi/miglobaladsdk/a/e;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private d()Z
    .locals 6

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->i()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/xiaomi/miglobaladsdk/a/b;->a:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const-string v0, "ConfigRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "should request config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/xiaomi/miglobaladsdk/a/b;->a()Lcom/xiaomi/miglobaladsdk/a/b;

    move-result-object v0

    iget-object v0, v0, Lcom/xiaomi/miglobaladsdk/a/b;->l:Lcom/xiaomi/miglobaladsdk/a/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/xiaomi/miglobaladsdk/a/e;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private e()V
    .locals 2

    const-string v0, "ConfigRequest"

    const-string v1, "to load from local"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->h:Z

    if-eqz v0, :cond_0

    const-string v0, "ConfigRequest"

    const-string v1, "loading from local"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->h:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaomi/miglobaladsdk/a/b;->h(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/b;->f:Lcom/xiaomi/utils/i;

    const-string v1, "miadsdk_config_cache"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/utils/i;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private f()V
    .locals 5

    const-string v0, "ConfigRequest"

    const-string v1, "to load from network"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->h:Z

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->b:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/miglobaladsdk/Const;->CONFIG_TYPE_DSP:[Ljava/lang/String;

    const-string v2, "overseaSdkAd"

    new-instance v3, Lcom/xiaomi/miglobaladsdk/a/b$2;

    invoke-direct {v3, p0}, Lcom/xiaomi/miglobaladsdk/a/b$2;-><init>(Lcom/xiaomi/miglobaladsdk/a/b;)V

    const v4, 0x1d524

    invoke-static {v0, v4, v1, v2, v3}, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->getCloudConfig(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;)V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->h:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->g:Z

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->h()V

    return-void
.end method

.method private declared-synchronized g(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/b;->f:Lcom/xiaomi/utils/i;

    const-string v1, "miadsdk_config_cache"

    invoke-virtual {v0, v1, p1}, Lcom/xiaomi/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private h()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/a/b$b;

    iget-object v2, v1, Lcom/xiaomi/miglobaladsdk/a/b$b;->b:Lcom/xiaomi/miglobaladsdk/a/b$a;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/xiaomi/miglobaladsdk/a/b$b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/xiaomi/miglobaladsdk/a/b$b;->b:Lcom/xiaomi/miglobaladsdk/a/b$a;

    invoke-direct {p0, v2, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->c(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ConfigRequest"

    const-string v1, "async update config to local sp"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/b$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/a/b$3;-><init>(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()J
    .locals 4

    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/b;->f:Lcom/xiaomi/utils/i;

    const-string v1, "miadksdk_config_loaded_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/utils/i;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private i(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/d;
    .locals 4

    const-string v0, "ConfigRequest"

    const-string v1, "updateToLocal"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ConfigRequest"

    const-string v0, "use last local config"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->j()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/xiaomi/miglobaladsdk/a/b;->b(Z)V

    const-string p1, "ConfigRequest"

    const-string v0, "use default config"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b;->c:Ljava/lang/String;

    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "ConfigRequest"

    const-string v0, "request server config and default config failed, update config failed"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_3
    const-string v0, "ConfigRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save config to sp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/b;->g(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaomi/miglobaladsdk/a/d;->c(Ljava/lang/String;)Lcom/xiaomi/miglobaladsdk/a/d;

    move-result-object p1

    const-string v0, "ConfigRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config response create success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private j(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ConfigRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update report config to local: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/b$5;

    invoke-direct {v0, p0, p1}, Lcom/xiaomi/miglobaladsdk/a/b$5;-><init>(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaomi/utils/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private j()Z
    .locals 3

    sget-object v0, Lcom/xiaomi/miglobaladsdk/a/b;->f:Lcom/xiaomi/utils/i;

    const-string v1, "miadsdk_default_config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/utils/i;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private k()V
    .locals 5

    const-string v0, "ConfigRequest"

    const-string v1, "request report config"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->b:Landroid/content/Context;

    sget-object v1, Lcom/xiaomi/miglobaladsdk/Const;->CONFIG_TYPE_REPORT:[Ljava/lang/String;

    const-string v2, "overseaSdkAd"

    new-instance v3, Lcom/xiaomi/miglobaladsdk/a/b$4;

    invoke-direct {v3, p0}, Lcom/xiaomi/miglobaladsdk/a/b$4;-><init>(Lcom/xiaomi/miglobaladsdk/a/b;)V

    const v4, 0x1d524

    invoke-static {v0, v4, v1, v2, v3}, Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk;->getCloudConfig(Landroid/content/Context;I[Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/ad/mediationconfig/MediationConfigProxySdk$OnConfigListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "ConfigRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtraInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/a/d$a;

    iget-object p1, p1, Lcom/xiaomi/miglobaladsdk/a/d$a;->c:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b;->b:Landroid/content/Context;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V
    .locals 1

    invoke-static {}, Lcom/xiaomi/utils/j;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/a/b;->b(Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/b$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaomi/miglobaladsdk/a/b$1;-><init>(Lcom/xiaomi/miglobaladsdk/a/b;Ljava/lang/String;Lcom/xiaomi/miglobaladsdk/a/b$a;)V

    invoke-static {v0}, Lcom/xiaomi/utils/j;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "force is true, default config cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/b;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/xiaomi/miglobaladsdk/a/b;->e:Z

    return-void
.end method

.method public a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaomi/utils/Commons;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->k:Z

    if-eqz v0, :cond_1

    const-string p1, "ConfigRequest"

    const-string v0, "this process is not main process"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->k()V

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->e:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->g:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->e()V

    :cond_3
    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/b;->f()V

    :cond_5
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->k:Z

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "ConfigRequest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBid->placeId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaomi/miglobaladsdk/a/d$a;

    iget-boolean p1, p1, Lcom/xiaomi/miglobaladsdk/a/d$a;->i:Z

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->k:Z

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->i:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/b;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaomi/miglobaladsdk/a/b$b;

    iget-object v1, v1, Lcom/xiaomi/miglobaladsdk/a/b$b;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConfigRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find and remove callback"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method
