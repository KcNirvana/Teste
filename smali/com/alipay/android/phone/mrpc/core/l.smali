.class Lcom/alipay/android/phone/mrpc/core/l;
.super Ljava/util/concurrent/FutureTask;
.source "HttpManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Lcom/alipay/android/phone/mrpc/core/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mrpc/core/p;

.field final synthetic b:Lcom/alipay/android/phone/mrpc/core/k;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mrpc/core/k;Ljava/util/concurrent/Callable;Lcom/alipay/android/phone/mrpc/core/p;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/mrpc/core/l;->b:Lcom/alipay/android/phone/mrpc/core/k;

    iput-object p3, p0, Lcom/alipay/android/phone/mrpc/core/l;->a:Lcom/alipay/android/phone/mrpc/core/p;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/phone/mrpc/core/l;->a:Lcom/alipay/android/phone/mrpc/core/p;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/p;->f()Lcom/alipay/android/phone/mrpc/core/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/r;->f()Lcom/alipay/android/phone/mrpc/core/ad;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-super {p0}, Ljava/util/concurrent/FutureTask;->done()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/l;->get()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/l;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/r;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/r;->g()V

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/l;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/alipay/android/phone/mrpc/core/l;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/mrpc/core/l;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_1
    move-exception v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/alipay/android/phone/mrpc/core/HttpException;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mrpc/core/HttpException;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getCode()I

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/HttpException;->getMsg()Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v0}, Lcom/alipay/android/phone/mrpc/core/r;->g()V

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while executing http request"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
