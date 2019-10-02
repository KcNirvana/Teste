.class public Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;
.super Ljava/lang/Object;
.source "StatisticsManagerPlusUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "StatisticsManagerPlusUtils"

.field public static sImei:Ljava/lang/String; = ""

.field public static sMediaDuration:J = 0x0L

.field public static sPlayContinueTime:J = 0x0L

.field public static sPlayDuration:J = 0x0L

.field public static sPlayEndTime:J = 0x0L

.field public static sPlayFrom:Ljava/lang/String; = ""

.field public static sPlayID:Ljava/lang/String; = ""

.field public static sPlayPauseTime:J = 0x0L

.field public static sPlayStartTime:J = 0x0L

.field public static sPlayStepDurationTime:J = 0x0L

.field public static sPlayType:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPlayDurationTime()Ljava/lang/String;
    .locals 6

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayEndTime:J

    sget-wide v4, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayStartTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayDuration:J

    sget-wide v4, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sMediaDuration:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayDuration:J

    sget-wide v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sMediaDuration:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sMediaDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v1, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public static setContinuePlayTime(J)V
    .locals 0

    sput-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayContinueTime:J

    return-void
.end method

.method public static setEndTime(J)V
    .locals 3

    sput-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayEndTime:J

    const-string v0, "StatisticsManagerPlusUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " endTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayContinueTime:J

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayPauseTime:J

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    sget-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayEndTime:J

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayContinueTime:J

    sub-long/2addr p0, v0

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayStepDurationTime:J

    add-long/2addr p0, v0

    sput-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayDuration:J

    goto :goto_0

    :cond_0
    sget-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayStepDurationTime:J

    sput-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayDuration:J

    :goto_0
    return-void
.end method

.method public static setMediaDuration(J)V
    .locals 0

    sput-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sMediaDuration:J

    return-void
.end method

.method public static setPauseTime(J)V
    .locals 4

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayPauseTime:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayPauseTime:J

    sget-wide v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayContinueTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    sput-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayPauseTime:J

    sget-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayStepDurationTime:J

    sget-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayPauseTime:J

    sget-wide v2, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayContinueTime:J

    sub-long/2addr v0, v2

    add-long/2addr p0, v0

    sput-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayStepDurationTime:J

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static setPlayFrom(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayFrom:Ljava/lang/String;

    sget-object p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayFrom:Ljava/lang/String;

    sput-object p0, Lcom/miui/video/base/statistics/StatisticsConstant;->sPlayFrom:Ljava/lang/String;

    return-void
.end method

.method public static setPlayType(I)V
    .locals 2

    int-to-long v0, p0

    sput-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayType:J

    return-void
.end method

.method public static setStartTime(J)V
    .locals 3

    const-string v0, "StatisticsManagerPlusUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market/sdk/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayStartTime:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayPauseTime:J

    sput-wide p0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayContinueTime:J

    sput-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayStepDurationTime:J

    sput-wide v0, Lcom/miui/video/biz/videoplus/app/utils/StatisticsManagerPlusUtils;->sPlayDuration:J

    return-void
.end method
