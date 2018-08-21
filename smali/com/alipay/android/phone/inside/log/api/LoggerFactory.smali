.class public Lcom/alipay/android/phone/inside/log/api/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field public static final TAG_INSIDE:Ljava/lang/String; = "inside"

.field private static behaviorLogger:Lcom/alipay/android/phone/inside/log/api/behavior/b;

.field private static countLogger:Lcom/alipay/android/phone/inside/log/api/a/a;

.field private static exceptionLogger:Lcom/alipay/android/phone/inside/log/api/ex/a;

.field private static perfLogger:Lcom/alipay/android/phone/inside/log/api/b/a;

.field private static traceLogger:Lcom/alipay/android/phone/inside/log/api/c/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getBehaviorLogger()Lcom/alipay/android/phone/inside/log/api/behavior/b;
    .locals 2

    const-class v1, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->behaviorLogger:Lcom/alipay/android/phone/inside/log/api/behavior/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/a/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/a/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->behaviorLogger:Lcom/alipay/android/phone/inside/log/api/behavior/b;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->behaviorLogger:Lcom/alipay/android/phone/inside/log/api/behavior/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getCountLogger()Lcom/alipay/android/phone/inside/log/api/a/a;
    .locals 2

    const-class v1, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->countLogger:Lcom/alipay/android/phone/inside/log/api/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/d/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/d/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->countLogger:Lcom/alipay/android/phone/inside/log/api/a/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->countLogger:Lcom/alipay/android/phone/inside/log/api/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getExceptionLogger()Lcom/alipay/android/phone/inside/log/api/ex/a;
    .locals 2

    const-class v1, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->exceptionLogger:Lcom/alipay/android/phone/inside/log/api/ex/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/e/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/e/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->exceptionLogger:Lcom/alipay/android/phone/inside/log/api/ex/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->exceptionLogger:Lcom/alipay/android/phone/inside/log/api/ex/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPerfLogger()Lcom/alipay/android/phone/inside/log/api/b/a;
    .locals 2

    const-class v1, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->perfLogger:Lcom/alipay/android/phone/inside/log/api/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/h/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/h/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->perfLogger:Lcom/alipay/android/phone/inside/log/api/b/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->perfLogger:Lcom/alipay/android/phone/inside/log/api/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;
    .locals 2

    const-class v1, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->traceLogger:Lcom/alipay/android/phone/inside/log/api/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/phone/inside/log/i/a;

    invoke-direct {v0}, Lcom/alipay/android/phone/inside/log/i/a;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->traceLogger:Lcom/alipay/android/phone/inside/log/api/c/a;

    :cond_0
    sget-object v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->traceLogger:Lcom/alipay/android/phone/inside/log/api/c/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/log/b;->b()V

    return-void
.end method

.method public static declared-synchronized init(Lcom/alipay/android/phone/inside/log/api/a;)V
    .locals 2

    const-class v0, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/phone/inside/log/b/a;->a(Lcom/alipay/android/phone/inside/log/api/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static sumit()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/phone/inside/log/b;->a()Lcom/alipay/android/phone/inside/log/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/inside/log/b;->c()V

    return-void
.end method
