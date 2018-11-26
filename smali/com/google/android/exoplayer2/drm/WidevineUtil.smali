.class public final Lcom/google/android/exoplayer2/drm/WidevineUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PROPERTY_LICENSE_DURATION_REMAINING:Ljava/lang/String; = "LicenseDurationRemaining"

.field public static final PROPERTY_PLAYBACK_DURATION_REMAINING:Ljava/lang/String; = "PlaybackDurationRemaining"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDurationRemainingSec(Ljava/util/Map;Ljava/lang/String;)J
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_1
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getLicenseDurationRemainingSec(Lcom/google/android/exoplayer2/drm/DrmSession;)Landroid/util/Pair;
    .locals 6

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/drm/DrmSession;->queryKeyStatus()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/Pair;

    const-string/jumbo v2, "LicenseDurationRemaining"

    invoke-static {v0, v2}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getDurationRemainingSec(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "PlaybackDurationRemaining"

    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/drm/WidevineUtil;->getDurationRemainingSec(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    return-object v1
.end method
