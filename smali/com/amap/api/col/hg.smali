.class public Lcom/amap/api/col/hg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/hg$a;
    }
.end annotation


# static fields
.field private static f:Lcom/amap/api/col/hg;


# instance fields
.field a:Lcom/amap/api/col/fl;

.field b:Z

.field volatile c:I

.field public d:Ljava/lang/String;

.field e:Z

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:I

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/col/hg;->f:Lcom/amap/api/col/hg;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/hg;->a:Lcom/amap/api/col/fl;

    iput-object v2, p0, Lcom/amap/api/col/hg;->g:Ljava/lang/Object;

    const-string v0, "apilocatesrc.amap.com"

    iput-object v0, p0, Lcom/amap/api/col/hg;->h:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/amap/api/col/hg;->b:Z

    iput-object v2, p0, Lcom/amap/api/col/hg;->i:Landroid/content/Context;

    iput v1, p0, Lcom/amap/api/col/hg;->c:I

    const-string v0, "com.autonavi.httpdns.HttpDnsManager"

    iput-object v0, p0, Lcom/amap/api/col/hg;->d:Ljava/lang/String;

    iput v1, p0, Lcom/amap/api/col/hg;->j:I

    iput-object v2, p0, Lcom/amap/api/col/hg;->k:Ljava/util/concurrent/ExecutorService;

    sget v0, Lcom/amap/api/col/dh;->c:I

    iput v0, p0, Lcom/amap/api/col/hg;->l:I

    iput-boolean v1, p0, Lcom/amap/api/col/hg;->e:Z

    iput-object p1, p0, Lcom/amap/api/col/hg;->i:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/amap/api/col/hg;->c(Landroid/content/Context;)V

    invoke-static {}, Lcom/amap/api/col/fl;->a()Lcom/amap/api/col/fl;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/hg;->a:Lcom/amap/api/col/fl;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Lcom/amap/api/col/hg;
    .locals 1

    sget-object v0, Lcom/amap/api/col/hg;->f:Lcom/amap/api/col/hg;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/hg;

    invoke-direct {v0, p0}, Lcom/amap/api/col/hg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/col/hg;->f:Lcom/amap/api/col/hg;

    :cond_0
    sget-object v0, Lcom/amap/api/col/hg;->f:Lcom/amap/api/col/hg;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/col/hg;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hg;->g:Ljava/lang/Object;

    const-string v1, "getIpByHostAsync"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/hn;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "HttpDns"

    invoke-static {p1, v0, v4}, Lcom/amap/api/col/hp;->b(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x0

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-lt v0, v5, :cond_0

    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    if-eqz v1, :cond_3

    if-eq v0, v4, :cond_3

    move v0, v2

    :goto_3
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    const-string v0, "-1"

    goto :goto_1

    :cond_2
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move v0, v4

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3
.end method

.method private b(Lcom/amap/api/col/hh;)V
    .locals 2

    :try_start_0
    iget v0, p0, Lcom/amap/api/col/hg;->c:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hg;->k:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amap/api/col/dq;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/hg;->k:Ljava/util/concurrent/ExecutorService;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/hg;->k:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/hg;->k:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/col/hg$a;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/hg$a;-><init>(Lcom/amap/api/col/hg;Lcom/amap/api/col/hh;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "pref"

    const-string v1, "dns_faile_count_total"

    const-wide/16 v2, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amap/api/col/hs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hg;->g:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/col/hg;->e:Z

    if-nez v0, :cond_0

    const-string v0, "HttpDNS"

    const-string v1, "1.0.0"

    invoke-static {v0, v1}, Lcom/amap/api/col/dh;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/amap/api/col/de;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;Lcom/amap/api/col/de;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/col/hg;->e:Z

    iget-boolean v0, p0, Lcom/amap/api/col/hg;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/hg;->d:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/col/eq;->a(Landroid/content/Context;Lcom/amap/api/col/de;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/hg;->g:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/hg;->g:Ljava/lang/Object;

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    const-string v1, "HttpDns"

    invoke-static {p1, v1, v0}, Lcom/amap/api/col/hp;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/hg;->e:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "APS"

    const-string v2, "initHttpDns"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method private d(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/hg;->g:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amap/api/col/hg;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/amap/api/col/hg;->j:I

    return v0
.end method

.method public a(Landroid/content/Context;Lorg/json/JSONObject;[BLjava/lang/String;Z)Lcom/amap/api/col/fv;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "httptimeout"

    invoke-static {p2, v0}, Lcom/amap/api/col/hu;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "httptimeout"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/hg;->l:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/amap/api/col/hu;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :cond_1
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "LocNetManager"

    const-string v2, "req"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/amap/api/col/hh;

    const-string v0, "loc"

    invoke-static {v0}, Lcom/amap/api/col/dh;->a(Ljava/lang/String;)Lcom/amap/api/col/de;

    move-result-object v0

    invoke-direct {v2, p1, v0}, Lcom/amap/api/col/hh;-><init>(Landroid/content/Context;Lcom/amap/api/col/de;)V

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-string v0, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "gzipped"

    const-string v3, "1"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Connection"

    const-string v3, "Keep-Alive"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "User-Agent"

    const-string v3, "AMAP_Location_SDK_Android 3.3.0"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KEY"

    invoke-static {p1}, Lcom/amap/api/col/cu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "enginever"

    const-string v3, "4.7"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/cx;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/amap/api/col/cu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/amap/api/col/cx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "scode"

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "loc"

    if-nez p5, :cond_3

    const-string v0, "locf"

    :cond_3
    const-string v3, "encr"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p5}, Lcom/amap/api/col/hh;->a(Z)V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "3.3.0"

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    const/4 v0, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/amap/api/col/hh;->b(Ljava/util/Map;)V

    invoke-virtual {v2, p4}, Lcom/amap/api/col/hh;->b(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/amap/api/col/hu;->a([B)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->c([B)V

    invoke-static {p1}, Lcom/amap/api/col/dc;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->a(Ljava/net/Proxy;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "output"

    const-string v3, "bin"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "policy"

    const-string v3, "3103"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->a(Ljava/util/Map;)V

    iget v0, p0, Lcom/amap/api/col/hg;->l:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->a(I)V

    iget v0, p0, Lcom/amap/api/col/hg;->l:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->b(I)V

    iput-boolean v7, p0, Lcom/amap/api/col/hg;->b:Z

    const-string v0, "locationProtocol"

    invoke-virtual {p2, v0, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lcom/amap/api/col/hh;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "http"

    const-string v4, "https"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->b(Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v4

    :try_start_1
    iget-object v0, p0, Lcom/amap/api/col/hg;->a:Lcom/amap/api/col/fl;

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/col/fl;->a(Lcom/amap/api/col/ft;Z)Lcom/amap/api/col/fv;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    invoke-static {}, Lcom/amap/api/col/hu;->b()J

    move-result-wide v2

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/hg;->j:I

    iget-boolean v1, p0, Lcom/amap/api/col/hg;->b:Z

    if-eqz v1, :cond_1

    const-string v1, "pref"

    const-string v2, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {p1, v1, v2, v4, v5}, Lcom/amap/api/col/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lcom/amap/api/col/hg;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/amap/api/col/hg;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "http://abroad.apilocate.amap.com/mobile/binary"

    invoke-virtual {v2}, Lcom/amap/api/col/hh;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/hg;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/hg;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p5, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v0, "ip"

    const-string v3, "last_ip"

    const-string v4, ""

    invoke-static {p1, v0, v3, v4}, Lcom/amap/api/col/hs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-boolean v8, p0, Lcom/amap/api/col/hg;->b:Z

    const-string v3, "ip"

    const-string v4, "last_ip"

    invoke-static {p1, v3, v4, v0}, Lcom/amap/api/col/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/col/dh;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "apilocatesrc.amap.com"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amap/api/col/hh;->e()Ljava/util/Map;

    move-result-object v0

    const-string v3, "host"

    const-string v4, "apilocatesrc.amap.com"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_1
    move-exception v0

    iget-boolean v1, p0, Lcom/amap/api/col/hg;->b:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, v2}, Lcom/amap/api/col/hg;->b(Lcom/amap/api/col/hh;)V

    :cond_7
    throw v0
.end method

.method public a([BLandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/amap/api/col/hu;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/amap/api/col/hf;

    invoke-direct {v2}, Lcom/amap/api/col/hf;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hf;->a(Ljava/util/Map;)V

    invoke-virtual {v2, p3}, Lcom/amap/api/col/hf;->a(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lcom/amap/api/col/hf;->a([B)V

    invoke-static {p2}, Lcom/amap/api/col/dc;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hf;->a(Ljava/net/Proxy;)V

    sget v0, Lcom/amap/api/col/dh;->c:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hf;->a(I)V

    sget v0, Lcom/amap/api/col/dh;->c:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hf;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hg;->a:Lcom/amap/api/col/fl;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/fl;->b(Lcom/amap/api/col/ft;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocNetManager"

    const-string v3, "post"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public a([BLandroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    invoke-static {p2}, Lcom/amap/api/col/hu;->c(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/hu;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/amap/api/col/hh;

    const-string v3, "loc"

    invoke-static {v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/String;)Lcom/amap/api/col/de;

    move-result-object v3

    invoke-direct {v2, p2, v3}, Lcom/amap/api/col/hh;-><init>(Landroid/content/Context;Lcom/amap/api/col/de;)V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v3, "Content-Type"

    const-string v4, "application/x-www-form-urlencoded"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Connection"

    const-string v4, "Keep-Alive"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_1

    const-string v3, "User-Agent"

    const-string v4, "AMAP_Location_SDK_Android 3.3.0"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "custom"

    const-string v5, "26260A1F00020002"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "key"

    invoke-static {p2}, Lcom/amap/api/col/cu;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/col/cx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/amap/api/col/dg;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/amap/api/col/cx;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ts"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "scode"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1}, Lcom/amap/api/col/hh;->b([B)V

    invoke-virtual {v2, v9}, Lcom/amap/api/col/hh;->a(Z)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "3.3.0"

    aput-object v8, v6, v7

    const-string v7, "loc"

    aput-object v7, v6, v9

    const/4 v7, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/col/hh;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/amap/api/col/hh;->a(Ljava/util/Map;)V

    :cond_1
    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->b(Ljava/util/Map;)V

    invoke-virtual {v2, p3}, Lcom/amap/api/col/hh;->b(Ljava/lang/String;)V

    if-nez p4, :cond_2

    invoke-virtual {v2, p1}, Lcom/amap/api/col/hh;->c([B)V

    :cond_2
    invoke-static {p2}, Lcom/amap/api/col/dc;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->a(Ljava/net/Proxy;)V

    sget v0, Lcom/amap/api/col/dh;->c:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->a(I)V

    sget v0, Lcom/amap/api/col/dh;->c:I

    invoke-virtual {v2, v0}, Lcom/amap/api/col/hh;->b(I)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/hg;->a:Lcom/amap/api/col/fl;

    invoke-virtual {v0, v2}, Lcom/amap/api/col/fl;->b(Lcom/amap/api/col/ft;)[B

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v2, "LocNetManager"

    const-string v3, "post"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/dh;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method declared-synchronized a(Lcom/amap/api/col/hh;)V
    .locals 8

    const-wide/16 v6, 0x2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/dh;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/col/hh;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/col/hg;->i:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/hs;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    cmp-long v2, v0, v6

    if-ltz v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/col/hg;->a:Lcom/amap/api/col/fl;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/amap/api/col/fl;->a(Lcom/amap/api/col/ft;Z)Lcom/amap/api/col/fv;

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    cmp-long v2, v0, v6

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/hg;->i:Landroid/content/Context;

    const-string v3, "HttpDNS"

    const-string v4, "dns faile too much"

    invoke-static {v2, v3, v4}, Lcom/amap/api/col/hr;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/hg;->i:Landroid/content/Context;

    const-string v3, "pref"

    const-string v4, "dns_faile_count_total"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/amap/api/col/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, Lcom/amap/api/col/hg;->i:Landroid/content/Context;

    const-string v1, "pref"

    const-string v2, "dns_faile_count_total"

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/amap/api/col/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
