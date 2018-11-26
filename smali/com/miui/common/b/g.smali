.class public Lcom/miui/common/b/g;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aIi(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDayInterval(JJLjava/util/TimeZone;)I
    .locals 4

    invoke-virtual {p4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {p0, p1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    int-to-long v2, v0

    invoke-static {p2, p3, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public static getFromNowDayInterval(J)I
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v0, v1, p0, p1, v2}, Lcom/miui/common/b/g;->getDayInterval(JJLjava/util/TimeZone;)I

    move-result v0

    return v0
.end method
