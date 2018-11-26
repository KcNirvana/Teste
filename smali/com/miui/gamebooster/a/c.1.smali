.class public Lcom/miui/gamebooster/a/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ev:Lcom/miui/gamebooster/a/c;


# instance fields
.field private eu:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/gamebooster/a/c;->eu:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/miui/gamebooster/a/c;
    .locals 2

    const-class v1, Lcom/miui/gamebooster/a/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/gamebooster/a/c;->ev:Lcom/miui/gamebooster/a/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gamebooster/a/c;

    invoke-direct {v0}, Lcom/miui/gamebooster/a/c;-><init>()V

    sput-object v0, Lcom/miui/gamebooster/a/c;->ev:Lcom/miui/gamebooster/a/c;

    :cond_0
    sget-object v0, Lcom/miui/gamebooster/a/c;->ev:Lcom/miui/gamebooster/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public fb(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/a/c;->eu:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/a/c;->eu:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/miui/gamebooster/model/c;

    invoke-direct {v1}, Lcom/miui/gamebooster/model/c;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public fc(Ljava/lang/String;)Lcom/miui/gamebooster/model/c;
    .locals 2

    iget-object v0, p0, Lcom/miui/gamebooster/a/c;->eu:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/a/c;->eu:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/miui/gamebooster/model/c;

    invoke-direct {v1}, Lcom/miui/gamebooster/model/c;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/a/c;->eu:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/model/c;

    return-object v0
.end method

.method public fd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/a/c;->eu:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public fe(Ljava/lang/String;Lcom/miui/gamebooster/model/c;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/a/c;->eu:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
