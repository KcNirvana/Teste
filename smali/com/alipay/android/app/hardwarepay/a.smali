.class public Lcom/alipay/android/app/hardwarepay/a;
.super Ljava/lang/Object;
.source "HardwarePayLog.java"


# direct methods
.method public static a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/statistic/logfield/a;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/alipay/android/app/hardwarepay/b;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/b;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/app/d/b/c;->a(Lcom/alipay/android/app/d/b/c$a;)Ljava/util/concurrent/Future;

    move-result-object v0

    const-wide/16 v2, 0x2

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    const-string/jumbo v2, "fp"

    const-string/jumbo v3, "FpCollectLogTimeoutEx"

    invoke-static {v2, v3, v0}, Lcom/alipay/android/app/statistic/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/hardwarepay/a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/statistic/logfield/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
