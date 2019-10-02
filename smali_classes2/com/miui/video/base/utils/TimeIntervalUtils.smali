.class public Lcom/miui/video/base/utils/TimeIntervalUtils;
.super Ljava/lang/Object;
.source "TimeIntervalUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/base/utils/TimeIntervalUtils$KEYS;
    }
.end annotation


# static fields
.field private static final MIVIDEO_TIME_INTERVAL:Ljava/lang/String; = "mivideo_time_interval"

.field public static final ONE_DAY_MILLIS:J = 0x5265c00L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastTimeMillis(Landroid/content/Context;Ljava/lang/String;)J
    .locals 1

    const-string v0, "mivideo_time_interval"

    invoke-static {p0, v0, p1}, Lcom/miui/video/base/utils/SharePreferenceManager;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static updateTimeMillis(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const-string v0, "mivideo_time_interval"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/miui/video/base/utils/SharePreferenceManager;->saveLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
