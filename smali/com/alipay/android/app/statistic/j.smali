.class final Lcom/alipay/android/app/statistic/j;
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
    .locals 5

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/statistic/h;->h()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/statistic/d/b;

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/d/b;->f()V

    invoke-static {v0}, Lcom/alipay/android/app/statistic/h;->a(Lcom/alipay/android/app/statistic/d/b;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/d/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->i()V

    const/4 v2, 0x4

    const-string/jumbo v3, "phonecashiermsp#log"

    const-string/jumbo v4, "StatisticManager.static.UploadThread.run"

    invoke-static {v2, v3, v4, v1}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/statistic/d/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/android/app/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/statistic/d/b;->a(Z)V

    invoke-static {}, Lcom/alipay/android/app/statistic/h;->j()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
