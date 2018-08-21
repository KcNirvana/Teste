.class public Lcom/alipay/android/app/ctemplate/log/LogTracer;
.super Ljava/lang/Object;
.source "LogTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/ctemplate/log/LogTracer$b;,
        Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;,
        Lcom/alipay/android/app/ctemplate/log/LogTracer$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alipay/android/app/ctemplate/log/LogTracer;


# instance fields
.field private b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/alipay/android/app/ctemplate/log/LogTracer$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/alipay/android/app/ctemplate/log/LogTracer$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/ctemplate/log/LogTracer;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a:Lcom/alipay/android/app/ctemplate/log/LogTracer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/ctemplate/log/LogTracer;

    invoke-direct {v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;-><init>()V

    sput-object v0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a:Lcom/alipay/android/app/ctemplate/log/LogTracer;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a:Lcom/alipay/android/app/ctemplate/log/LogTracer;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/alipay/android/app/ctemplate/log/LogTracer$a;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x4

    const-string/jumbo v1, ""

    invoke-static {v0, v1, p1, p2}, Lcom/alipay/android/app/g/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 7

    iget-object v6, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;

    sget-object v2, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->PERF:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;-><init>(Lcom/alipay/android/app/ctemplate/log/LogTracer;Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;

    sget-object v2, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->EX:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;-><init>(Lcom/alipay/android/app/ctemplate/log/LogTracer;Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {p3}, Lcom/alipay/android/app/statistic/logfield/e;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/app/ctemplate/log/LogTracer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p1}, Lcom/alipay/android/app/g/g;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/statistic/logfield/a;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;

    iget-object v3, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->a:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    sget-object v4, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->EX:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    if-ne v3, v4, :cond_1

    new-instance v3, Lcom/alipay/android/app/statistic/logfield/e;

    iget-object v4, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/alipay/android/app/statistic/logfield/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->a:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    sget-object v4, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->COUNT:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    if-ne v3, v4, :cond_2

    new-instance v3, Lcom/alipay/android/app/statistic/logfield/c;

    iget-object v4, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/alipay/android/app/statistic/logfield/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v3, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->a:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    sget-object v4, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->PERF:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/alipay/android/app/statistic/logfield/g;

    iget-object v4, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->b:Ljava/lang/String;

    iget-object v5, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->c:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;->d:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcom/alipay/android/app/statistic/logfield/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;

    move-object v6, v0

    new-instance v1, Lcom/alipay/android/app/statistic/logfield/l;

    iget-object v2, v6, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;->a:Ljava/lang/String;

    iget-object v3, v6, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;->b:Ljava/lang/String;

    iget-object v4, v6, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;->c:Ljava/lang/String;

    iget-object v5, v6, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;->d:Ljava/lang/String;

    iget-object v6, v6, Lcom/alipay/android/app/ctemplate/log/LogTracer$a;->e:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/b;->a()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v1 .. v7}, Lcom/alipay/android/app/statistic/logfield/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v8
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v6, p0, Lcom/alipay/android/app/ctemplate/log/LogTracer;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;

    sget-object v2, Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;->COUNT:Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/ctemplate/log/LogTracer$b;-><init>(Lcom/alipay/android/app/ctemplate/log/LogTracer;Lcom/alipay/android/app/ctemplate/log/LogTracer$TracerType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
