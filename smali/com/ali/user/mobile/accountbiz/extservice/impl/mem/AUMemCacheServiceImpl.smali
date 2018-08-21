.class public Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;
.super Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;
.source "AUMemCacheServiceImpl.java"


# static fields
.field private static mMemCacheService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;


# instance fields
.field private mLruMemCache:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;-><init>()V

    invoke-static {}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->getInstance()Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->mLruMemCache:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    return-void
.end method

.method public static getInstance()Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;
    .locals 2

    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->mMemCacheService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    if-nez v0, :cond_1

    const-class v1, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->mMemCacheService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;

    invoke-direct {v0}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->mMemCacheService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->mMemCacheService:Lcom/ali/user/mobile/accountbiz/extservice/AUMemCacheService;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->mLruMemCache:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    invoke-virtual {v0, p1, p2}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->mLruMemCache:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->mLruMemCache:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeByGroup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/AUMemCacheServiceImpl;->mLruMemCache:Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/accountbiz/extservice/impl/mem/LruMemCache;->removeByGroup(Ljava/lang/String;)V

    return-void
.end method
