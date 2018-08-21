.class public final Lcom/alipay/android/phone/mrpc/core/c/a;
.super Ljava/lang/Object;
.source "GtsUtils.java"


# static fields
.field private static a:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/android/phone/mrpc/core/c/a;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/alipay/android/phone/mrpc/core/c/a;->a:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sput-wide v0, Lcom/alipay/android/phone/mrpc/core/c/a;->a:J

    sget-wide v0, Lcom/alipay/android/phone/mrpc/core/c/a;->a:J

    :goto_0
    return-wide v0

    :cond_0
    const-class v2, Lcom/alipay/android/phone/mrpc/core/c/a;

    monitor-enter v2

    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mrpc/core/c/a;->a:J

    sget-wide v0, Lcom/alipay/android/phone/mrpc/core/c/a;->a:J

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/phone/inside/log/api/LoggerFactory;->getTraceLogger()Lcom/alipay/android/phone/inside/log/api/c/a;

    move-result-object v1

    const-string/jumbo v3, "GtsUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/android/phone/inside/log/api/c/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static final b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/android/phone/mrpc/core/c/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/android/phone/mrpc/core/c/b;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
