.class Lcom/miui/securitycenter/dynamic/EventTrack;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "dynamic"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static sLastTrackTime:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "dynamic"

    invoke-static {v0, p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static recordCountEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    const-string/jumbo v0, "dynamic"

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "dynamic"

    invoke-static {v0, p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static track(Ljava/lang/Throwable;)V
    .locals 6

    sget-wide v0, Lcom/miui/securitycenter/dynamic/EventTrack;->sLastTrackTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/securitycenter/dynamic/EventTrack;->sLastTrackTime:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/securitycenter/dynamic/EventTrack;->sLastTrackTime:J

    invoke-static {p0}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static trackVersion(I)V
    .locals 4

    const-string/jumbo v0, "dynamic"

    const-string/jumbo v1, "version"

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordNumericPropertyEvent(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
