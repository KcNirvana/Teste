.class Lcom/xiaomi/miglobaladsdk/a/a/a;
.super Ljava/util/Observable;
.source "BlackListCacheManager.java"


# instance fields
.field private a:Lcom/xiaomi/miglobaladsdk/a/a/d;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-direct {v0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return p2
.end method

.method private a(Ljava/lang/String;J)J
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide p2

    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    return-wide p2
.end method

.method private b(Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "status"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/a/a;->a(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "message"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "keywords"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "version"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-wide/16 v4, -0x1

    invoke-direct {p0, p1, v4, v5}, Lcom/xiaomi/miglobaladsdk/a/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v4

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-virtual {p1}, Lcom/xiaomi/miglobaladsdk/a/a/d;->a()J

    move-result-wide v6

    if-nez v1, :cond_1

    const-string p1, "updated"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method private d()V
    .locals 2

    const-string v0, "MiAdBlacklistConfig"

    const-string v1, "notifyAllObservers"

    invoke-static {v0, v1}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/a/a/a;->setChanged()V

    invoke-virtual {p0}, Lcom/xiaomi/miglobaladsdk/a/a/a;->notifyObservers()V

    return-void
.end method


# virtual methods
.method a()Lcom/xiaomi/miglobaladsdk/a/a/e;
    .locals 3

    new-instance v0, Lcom/xiaomi/miglobaladsdk/a/a/e;

    invoke-direct {v0}, Lcom/xiaomi/miglobaladsdk/a/a/e;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-virtual {v1}, Lcom/xiaomi/miglobaladsdk/a/a/d;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/a/e;->a(J)V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-virtual {v1}, Lcom/xiaomi/miglobaladsdk/a/a/d;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/a/e;->c(J)V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-virtual {v1}, Lcom/xiaomi/miglobaladsdk/a/a/d;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/a/e;->b(J)V

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-virtual {v1}, Lcom/xiaomi/miglobaladsdk/a/a/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/miglobaladsdk/a/a/e;->a(Ljava/lang/String;)V

    const-string v1, "MiAdBlacklistConfig"

    const-string v2, "syncLoadConfig"

    invoke-static {v1, v2}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/a/d;->b(J)V

    invoke-direct {p0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/a;->b(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "MiAdBlacklistConfig"

    const-string v0, "updateAdConfig : remote data is invalid"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    const-string v1, "version"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaomi/miglobaladsdk/a/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/a/d;->a(J)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    const-string v1, "cacheTime"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/xiaomi/miglobaladsdk/a/a/d;->a:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/xiaomi/miglobaladsdk/a/a/a;->a(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/miglobaladsdk/a/a/d;->c(J)V

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    const-string v1, "keywords"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/xiaomi/miglobaladsdk/a/a/d;->a(Ljava/lang/String;)V

    const-string p1, "MiAdBlacklistConfig"

    const-string v0, "updateAdConfig"

    invoke-static {p1, v0}, Lcom/miui/zeus/logger/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xiaomi/miglobaladsdk/a/a/a;->d()V

    return-void
.end method

.method b()Z
    .locals 8

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->b()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-virtual {v2}, Lcom/xiaomi/miglobaladsdk/a/a/d;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    const/4 v7, 0x1

    if-eqz v6, :cond_2

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_2
    :goto_1
    return v7
.end method

.method protected c()J
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/a/a/a;->a:Lcom/xiaomi/miglobaladsdk/a/a/d;

    invoke-virtual {v0}, Lcom/xiaomi/miglobaladsdk/a/a/d;->a()J

    move-result-wide v0

    return-wide v0
.end method
