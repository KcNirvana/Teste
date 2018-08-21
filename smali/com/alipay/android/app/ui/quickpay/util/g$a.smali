.class Lcom/alipay/android/app/ui/quickpay/util/g$a;
.super Ljava/lang/Thread;
.source "MiniSmsReaderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/util/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/ui/quickpay/util/g;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/ui/quickpay/util/g;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->a(Lcom/alipay/android/app/ui/quickpay/util/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->a(Lcom/alipay/android/app/ui/quickpay/util/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->b(Lcom/alipay/android/app/ui/quickpay/util/g;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->c(Lcom/alipay/android/app/ui/quickpay/util/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->c(Lcom/alipay/android/app/ui/quickpay/util/g;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->b(Lcom/alipay/android/app/ui/quickpay/util/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->d(Lcom/alipay/android/app/ui/quickpay/util/g;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->e(Lcom/alipay/android/app/ui/quickpay/util/g;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/util/e;

    :try_start_3
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/util/g$a;->a:Lcom/alipay/android/app/ui/quickpay/util/g;

    invoke-static {v1, v0}, Lcom/alipay/android/app/ui/quickpay/util/g;->a(Lcom/alipay/android/app/ui/quickpay/util/g;Lcom/alipay/android/app/ui/quickpay/util/e;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_0
.end method
