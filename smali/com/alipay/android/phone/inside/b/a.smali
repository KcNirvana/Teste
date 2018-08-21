.class public Lcom/alipay/android/phone/inside/b/a;
.super Ljava/lang/Object;
.source "InsideExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static b:Lcom/alipay/android/phone/inside/b/a;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/inside/b/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/android/phone/inside/b/a;
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/inside/b/a;->b:Lcom/alipay/android/phone/inside/b/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/alipay/android/phone/inside/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/inside/b/a;->b:Lcom/alipay/android/phone/inside/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/b/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/inside/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/inside/b/a;->b:Lcom/alipay/android/phone/inside/b/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/alipay/android/phone/inside/b/a;->b:Lcom/alipay/android/phone/inside/b/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/phone/inside/b/b;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/inside/b/b;-><init>(Lcom/alipay/android/phone/inside/b/a;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 7

    const/4 v6, 0x1

    check-cast p1, Lcom/alipay/android/phone/mrpc/core/RpcException;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getCode()I

    move-result v1

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v2

    const-string/jumbo v3, "rpcExceptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/android/phone/inside/log/api/c/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "dev"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/b/a;->a()Lcom/alipay/mobile/common/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/b/a;->b()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "rc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getOperationType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] ErrorCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    sparse-switch v1, :sswitch_data_0

    const/16 v2, 0x190

    if-lt v1, v2, :cond_4

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    sget v3, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_error_check_network:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/phone/inside/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    sget v3, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_slow:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/phone/inside/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    sget v3, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_error_wait_retry:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/phone/inside/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    sget v3, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_error_retry:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/phone/inside/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    sget v1, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_error_check_network:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/phone/inside/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/android/phone/mrpc/core/RpcException;->getMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/phone/inside/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    sget v3, Lcom/alipay/android/phone/inside/main/R$string;->exception_too_many_people_wait_retry:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/phone/inside/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/phone/inside/b/a;->a:Landroid/content/Context;

    sget v3, Lcom/alipay/android/phone/inside/main/R$string;->exception_network_error_wait_retry:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v6}, Lcom/alipay/android/phone/inside/b/a;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_3
        0x7 -> :sswitch_3
        0x8 -> :sswitch_3
        0x9 -> :sswitch_3
        0xa -> :sswitch_3
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_3
        0xf -> :sswitch_4
        0x10 -> :sswitch_2
        0x3ea -> :sswitch_5
        0xbb8 -> :sswitch_0
        0xbb9 -> :sswitch_6
        0xfa1 -> :sswitch_6
        0xfa2 -> :sswitch_6
        0xfa3 -> :sswitch_6
        0x1770 -> :sswitch_0
        0x1771 -> :sswitch_0
        0x1a0a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public a()V
    .locals 0

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v0

    const-string/jumbo v1, "inside_uncaught"

    invoke-interface {v0, v1, p2}, Lcom/alipay/android/phone/inside/log/api/c/a;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    instance-of v0, p2, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/android/phone/mrpc/core/RpcException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    :cond_0
    instance-of v0, p2, Lcom/alipay/android/phone/mrpc/core/RpcException;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "main"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/inside/b/a;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;->CRASH:Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;

    const-string/jumbo v2, "crash"

    const-string/jumbo v3, "UncaughtException"

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/alipay/android/phone/inside/log/api/ex/a;->a(Lcom/alipay/android/phone/inside/log/api/ex/ExceptionEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
