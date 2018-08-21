.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;
.super Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;
.source "LruMemCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;-><init>()V

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache$1;

    const/16 v1, 0xa

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache$1;-><init>(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;IFZ)V

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->mMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->mGroup:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;
    .locals 2

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->INSTANCE:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    invoke-direct {v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->INSTANCE:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    :cond_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->INSTANCE:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;
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
.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected makeEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;

    invoke-direct {v0, p1, p2, p3}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected recordPut(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected recordRemove(Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/Entity",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/MemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
