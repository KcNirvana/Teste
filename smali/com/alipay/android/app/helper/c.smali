.class public Lcom/alipay/android/app/helper/c;
.super Ljava/lang/Object;
.source "TidHelper.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/helper/c;->a:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 6

    const/4 v5, 0x2

    const-string/jumbo v0, "phonecashier"

    const-string/jumbo v1, "TidHelper.loadTID"

    const-string/jumbo v2, "has been executed"

    invoke-static {v5, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/android/app/helper/c;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/android/app/helper/c;->a(Landroid/content/Context;Lcom/alipay/android/app/f/c;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "phonecashier"

    const-string/jumbo v2, "TidHelper.loadTID"

    const-string/jumbo v3, "TidHelper:::loadTID > null"

    invoke-static {v5, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "phonecashier"

    const-string/jumbo v2, "TidHelper.loadTID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TidHelper:::loadTID > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v1, v2, v3}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lcom/alipay/android/app/f/c;)Lcom/alipay/android/app/helper/Tid;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/app/f/c;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alipay/android/app/helper/Tid;

    invoke-direct {v0}, Lcom/alipay/android/app/helper/Tid;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/android/app/f/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/f/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/android/app/f/c;->j()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;)Lcom/alipay/android/app/helper/Tid;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/statistic/logfield/a;",
            ">;)",
            "Lcom/alipay/android/app/helper/Tid;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/alipay/android/app/helper/c;->b(Landroid/content/Context;Ljava/util/List;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/f/c;->h()V

    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 8

    const-class v2, Lcom/alipay/android/app/helper/c;

    monitor-enter v2

    const/4 v0, 0x2

    :try_start_0
    const-string/jumbo v1, "phonecashier"

    const-string/jumbo v3, "TidHelper.loadOrCreateTID"

    const-string/jumbo v4, "start"

    invoke-static {v0, v1, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/android/app/helper/c;->h(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/android/app/helper/c;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/c;

    const-string/jumbo v4, "tid"

    const-string/jumbo v5, "TidLoadToCreate"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v4, v5, v6}, Lcom/alipay/android/app/statistic/logfield/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_2

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashier"

    const-string/jumbo v3, "TidHelper.loadOrCreateTID"

    const-string/jumbo v4, "in mainLooper"

    invoke-static {v0, v1, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    monitor-exit v2

    return-object v0

    :cond_2
    :try_start_1
    invoke-static {p0, v3}, Lcom/alipay/android/app/helper/c;->a(Landroid/content/Context;Ljava/util/List;)Lcom/alipay/android/app/helper/Tid;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_1
    const/4 v0, 0x0

    :try_start_2
    new-array v0, v0, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a([Lcom/alipay/android/app/statistic/logfield/a;)V

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v4, Lcom/alipay/android/app/statistic/logfield/e;

    const-string/jumbo v5, "tid"

    const-string/jumbo v6, "TidLoadToRequestEx"

    const-string/jumbo v7, ""

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/alipay/android/app/statistic/logfield/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/List;)Lcom/alipay/android/app/helper/Tid;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/statistic/logfield/a;",
            ">;)",
            "Lcom/alipay/android/app/helper/Tid;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "TidHelper::requestTidByRpc"

    const-string/jumbo v2, "start"

    invoke-static {v8, v0, v1, v2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/trans/config/a;

    sget-object v1, Lcom/alipay/android/app/trans/config/RequestChannel;->PB_V2_CASHIER:Lcom/alipay/android/app/trans/config/RequestChannel;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/trans/config/a;-><init>(Lcom/alipay/android/app/trans/config/RequestChannel;)V

    const-string/jumbo v1, "cashier"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/trans/config/a;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "gentid"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/trans/config/a;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/logic/a/j;

    invoke-direct {v1}, Lcom/alipay/android/app/logic/a/j;-><init>()V

    const-string/jumbo v2, ""

    const/16 v3, 0x7d1

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/alipay/android/app/logic/a/j;->a(Lcom/alipay/android/app/trans/config/a;Ljava/lang/String;II)Lcom/alipay/android/app/logic/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/logic/b/a/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/plugin/a/b;->f()Lcom/alipay/android/app/plugin/c;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/app/trans/a;

    invoke-direct {v3, v1}, Lcom/alipay/android/app/trans/a;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3, v0}, Lcom/alipay/android/app/plugin/c;->requestByPbv2(Lcom/alipay/android/app/trans/a;Lcom/alipay/android/app/trans/config/a;)Lcom/alipay/android/app/trans/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/trans/b;->a()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v0, "tid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "client_key"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alipay/android/app/f/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/app/f/c;->a()Lcom/alipay/android/app/f/c;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/alipay/android/app/helper/c;->a(Landroid/content/Context;Lcom/alipay/android/app/f/c;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v2

    if-eqz p1, :cond_0

    new-instance v3, Lcom/alipay/android/app/statistic/logfield/c;

    const-string/jumbo v4, "tid"

    const-string/jumbo v5, "TidRpcSave"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v6, ",clientKey="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/alipay/android/app/statistic/logfield/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v0, v2

    :goto_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, "TidHelper::requestTidByRpc"

    if-nez v0, :cond_1

    const-string/jumbo v1, "null"

    :goto_1
    invoke-static {v8, v2, v3, v1}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x2

    const-string/jumbo v1, "phonecashier"

    const-string/jumbo v3, "TidHelper.resetTID"

    const-string/jumbo v4, "resetTID"

    invoke-static {v0, v1, v3, v4}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u4e0d\u80fd\u5728\u4e3b\u7ebf\u7a0b\u4e2d\u8c03\u7528\u6b64\u65b9\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Lcom/alipay/android/app/helper/c;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/helper/c;->a()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/app/statistic/logfield/c;

    const-string/jumbo v1, "tid"

    const-string/jumbo v4, "TidResetToCreate"

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v4, v5}, Lcom/alipay/android/app/statistic/logfield/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v3}, Lcom/alipay/android/app/helper/c;->a(Landroid/content/Context;Ljava/util/List;)Lcom/alipay/android/app/helper/Tid;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-array v0, v2, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/android/app/statistic/logfield/a;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a([Lcom/alipay/android/app/statistic/logfield/a;)V

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    :goto_1
    return v0

    :catch_0
    move-exception v1

    new-instance v4, Lcom/alipay/android/app/statistic/logfield/e;

    const-string/jumbo v5, "tid"

    const-string/jumbo v6, "TidResetToRequestEx"

    const-string/jumbo v7, ""

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/alipay/android/app/statistic/logfield/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/android/app/helper/c;->h(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/android/app/sys/a;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/a;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/android/app/helper/c;->h(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/android/app/sys/a;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/android/app/helper/c;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/android/app/helper/c;->h(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/a;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/alipay/android/app/helper/c;->a:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/helper/c;->a:Z

    invoke-static {}, Lcom/alipay/android/app/sys/b;->a()Lcom/alipay/android/app/sys/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/a;->k()Lcom/alipay/android/app/helper/a;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/sys/b;->a(Landroid/content/Context;Lcom/alipay/android/app/k;)V

    invoke-static {}, Lcom/alipay/android/app/plugin/a/a;->a()Lcom/alipay/android/app/plugin/b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/android/app/plugin/b;->loadProperties(Landroid/content/Context;)V

    goto :goto_0
.end method
