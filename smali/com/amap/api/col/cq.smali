.class public final Lcom/amap/api/col/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/b/g/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/b/e/f$a;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cq;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/col/cn;->a()Lcom/amap/api/col/cn;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/cq;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/cq;)Lcom/amap/api/b/e/f$a;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cq;->b:Lcom/amap/api/b/e/f$a;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/col/cq;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/cq;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private c(Lcom/amap/api/b/e/i;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/b/e/i;->a()Lcom/amap/api/b/c/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/b/e/i;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/amap/api/b/e/i;)Lcom/amap/api/b/e/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/b/c/a;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/cq;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/ck;->a(Landroid/content/Context;)Lcom/amap/api/col/ck;

    invoke-direct {p0, p1}, Lcom/amap/api/col/cq;->c(Lcom/amap/api/b/e/i;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/b/c/a;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/b/c/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/b/c/a; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "GeocodeSearch"

    const-string v2, "getFromLocationAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/col/co;

    iget-object v1, p0, Lcom/amap/api/col/cq;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/col/co;-><init>(Landroid/content/Context;Lcom/amap/api/b/e/i;)V

    invoke-virtual {v0}, Lcom/amap/api/col/co;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/b/e/g;
    :try_end_1
    .catch Lcom/amap/api/b/c/a; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public a(Lcom/amap/api/b/e/f$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/cq;->b:Lcom/amap/api/b/e/f$a;

    return-void
.end method

.method public b(Lcom/amap/api/b/e/i;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/col/cs;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/col/cs;-><init>(Lcom/amap/api/col/cq;Lcom/amap/api/b/e/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "GeocodeSearch"

    const-string v2, "getFromLocationAsyn_threadcreate"

    invoke-static {v0, v1, v2}, Lcom/amap/api/col/ci;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
