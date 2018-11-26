.class public Lcom/miui/gamebooster/a/u;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile eL:Lcom/miui/gamebooster/a/u;


# instance fields
.field private eJ:Ljava/util/concurrent/ConcurrentHashMap;

.field private eK:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/a/u;->eJ:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/a/u;->eK:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/miui/gamebooster/a/u;
    .locals 2

    sget-object v0, Lcom/miui/gamebooster/a/u;->eL:Lcom/miui/gamebooster/a/u;

    if-nez v0, :cond_1

    const-class v1, Lcom/miui/gamebooster/a/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gamebooster/a/u;->eL:Lcom/miui/gamebooster/a/u;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/a/u;

    invoke-direct {v0}, Lcom/miui/gamebooster/a/u;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/a/u;->eL:Lcom/miui/gamebooster/a/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/miui/gamebooster/a/u;->eL:Lcom/miui/gamebooster/a/u;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public hx(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/miui/gamebooster/a/g;->fx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v0, p0, Lcom/miui/gamebooster/a/u;->eK:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/miui/gamebooster/a/v;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, p4, v1}, Lcom/miui/gamebooster/a/v;-><init>(Ljava/lang/String;IZLcom/miui/gamebooster/a/v;)V

    iget-object v1, p0, Lcom/miui/gamebooster/a/u;->eJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
