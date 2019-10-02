.class public Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;
.super Ljava/lang/Object;
.source "PersistentCookieJar.java"

# interfaces
.implements Lcom/miui/video/base/common/net/cookie/ClearableCookieJar;


# instance fields
.field private cache:Lcom/miui/video/base/common/net/cookie/cache/CookieCache;

.field private persistor:Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;


# direct methods
.method public constructor <init>(Lcom/miui/video/base/common/net/cookie/cache/CookieCache;Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->cache:Lcom/miui/video/base/common/net/cookie/cache/CookieCache;

    iput-object p2, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->persistor:Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;

    iget-object p1, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->cache:Lcom/miui/video/base/common/net/cookie/cache/CookieCache;

    invoke-interface {p2}, Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;->loadAll()Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/base/common/net/cookie/cache/CookieCache;->addAll(Ljava/util/Collection;)V

    return-void
.end method

.method private static filterPersistentCookies(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/Cookie;

    invoke-virtual {v1}, Lokhttp3/Cookie;->persistent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static isCookieExpired(Lokhttp3/Cookie;)Z
    .locals 4

    invoke-virtual {p0}, Lokhttp3/Cookie;->expiresAt()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->cache:Lcom/miui/video/base/common/net/cookie/cache/CookieCache;

    invoke-interface {v0}, Lcom/miui/video/base/common/net/cookie/cache/CookieCache;->clear()V

    iget-object v0, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->persistor:Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;

    invoke-interface {v0}, Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearSession()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->cache:Lcom/miui/video/base/common/net/cookie/cache/CookieCache;

    invoke-interface {v0}, Lcom/miui/video/base/common/net/cookie/cache/CookieCache;->clear()V

    iget-object v0, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->cache:Lcom/miui/video/base/common/net/cookie/cache/CookieCache;

    iget-object v1, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->persistor:Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;

    invoke-interface {v1}, Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;->loadAll()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/video/base/common/net/cookie/cache/CookieCache;->addAll(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadForRequest(Lokhttp3/HttpUrl;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->cache:Lcom/miui/video/base/common/net/cookie/cache/CookieCache;

    invoke-interface {v2}, Lcom/miui/video/base/common/net/cookie/cache/CookieCache;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/Cookie;

    invoke-static {v3}, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->isCookieExpired(Lokhttp3/Cookie;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, p1}, Lokhttp3/Cookie;->matches(Lokhttp3/HttpUrl;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->persistor:Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;

    invoke-interface {p1, v0}, Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;->removeAll(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized saveFromResponse(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->cache:Lcom/miui/video/base/common/net/cookie/cache/CookieCache;

    invoke-interface {p1, p2}, Lcom/miui/video/base/common/net/cookie/cache/CookieCache;->addAll(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->persistor:Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;

    invoke-static {p2}, Lcom/miui/video/base/common/net/cookie/PersistentCookieJar;->filterPersistentCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/miui/video/base/common/net/cookie/persistence/CookiePersistor;->saveAll(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
