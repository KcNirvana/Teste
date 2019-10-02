.class public Lcom/miui/video/framework/utils/EventUtils;
.super Ljava/lang/Object;
.source "EventUtils.java"


# static fields
.field public static final INTERVAL_1000MS:J = 0x3e8L

.field public static final INTERVAL_100MS:J = 0x64L

.field public static final INTERVAL_200MS:J = 0xc8L

.field public static final INTERVAL_2500MS:J = 0x9c4L

.field public static final INTERVAL_400MS:J = 0x190L

.field public static final INTERVAL_600MS:J = 0x258L

.field public static final INTERVAL_800MS:J = 0x320L

.field private static mTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isClickTimeInterval()Z
    .locals 2

    const-wide/16 v0, 0x258

    invoke-static {v0, v1}, Lcom/miui/video/framework/utils/EventUtils;->isTimeInterval(J)Z

    move-result v0

    return v0
.end method

.method public static isTimeInterval(J)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/video/framework/utils/EventUtils;->mTime:J

    sub-long p0, v0, p0

    cmp-long p0, v2, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sput-wide v0, Lcom/miui/video/framework/utils/EventUtils;->mTime:J

    const/4 p0, 0x0

    return p0
.end method

.method public static setTimeInterval()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/video/framework/utils/EventUtils;->mTime:J

    return-void
.end method
