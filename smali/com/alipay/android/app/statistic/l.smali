.class final Lcom/alipay/android/app/statistic/l;
.super Ljava/lang/Object;
.source "StatisticManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/statistic/h;->n()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/statistic/h;->n()Ljava/lang/Object;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a(Lcom/alipay/android/app/statistic/logfield/a;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/statistic/h;->a:Lcom/alipay/android/app/statistic/logfield/LogFieldEvent;

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/statistic/h;->h()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->o()Lcom/alipay/android/app/statistic/d/b;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
