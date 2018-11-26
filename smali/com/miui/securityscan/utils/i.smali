.class public Lcom/miui/securityscan/utils/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IY:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized Jb()Z
    .locals 8

    const-class v1, Lcom/miui/securityscan/utils/i;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/miui/securityscan/utils/i;->IY:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x1f4

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    sget-wide v4, Lcom/miui/securityscan/utils/i;->IY:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v4, v2, v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    sput-wide v2, Lcom/miui/securityscan/utils/i;->IY:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
