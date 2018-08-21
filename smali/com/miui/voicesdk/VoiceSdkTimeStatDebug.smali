.class public Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;
.super Ljava/lang/Object;
.source "VoiceSdkTimeStatDebug.java"


# static fields
.field private static volatile statTotalDelayCnt:I

.field private static volatile statTotalDelayTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayCnt:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatSleepTimeForDebug()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/Pair;

    sget v1, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayCnt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-wide v2, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static statIncreaseSleepTime(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    sget v0, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayCnt:I

    sget-wide v0, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayTime:J

    add-long/2addr v0, p0

    sput-wide v0, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayTime:J

    :cond_0
    return-void
.end method

.method public static statSleepTimeForDebug()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayCnt:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/voicesdk/VoiceSdkTimeStatDebug;->statTotalDelayTime:J

    return-void
.end method
