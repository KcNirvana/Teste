.class public final Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private clock:Lcom/google/android/exoplayer2/util/Clock;

.field private eventHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private eventListener:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private initialBitrateEstimate:J

.field private slidingWindowMaxWeight:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimate:J

    const/16 v0, 0x7d0

    iput v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    sget-object v0, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    iput-object v0, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;
    .locals 9

    new-instance v1, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;

    iget-object v2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventListener:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimate:J

    iget v6, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    iget-object v7, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;JILcom/google/android/exoplayer2/util/Clock;Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$1;)V

    return-object v1
.end method

.method public setClock(Lcom/google/android/exoplayer2/util/Clock;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->clock:Lcom/google/android/exoplayer2/util/Clock;

    return-object p0
.end method

.method public setEventListener(Landroid/os/Handler;Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->eventListener:Lcom/google/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    return-object p0

    :cond_1
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setInitialBitrateEstimate(J)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->initialBitrateEstimate:J

    return-object p0
.end method

.method public setSlidingWindowMaxWeight(I)Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/upstream/DefaultBandwidthMeter$Builder;->slidingWindowMaxWeight:I

    return-object p0
.end method
