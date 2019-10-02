.class public final Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;
.super Ljava/lang/Object;
.source "AdaptiveTrackSelection.java"

# interfaces
.implements Lcom/google/android/exoplayer2/trackselection/TrackSelection$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kaltura/playkit/player/AdaptiveTrackSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final bandwidthFraction:F

.field private final bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

.field private final bufferedFractionToLiveEdgeForQualityIncrease:F

.field private final clock:Lcom/google/android/exoplayer2/util/Clock;

.field private final maxDurationForQualityDecreaseMs:I

.field private maxVideoBitrate:I

.field private final minDurationForQualityIncreaseMs:I

.field private final minDurationToRetainAfterDiscardMs:I

.field private final minTimeBetweenBufferReevaluationMs:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;)V
    .locals 10

    sget-object v9, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/16 v2, 0x2710

    const/16 v3, 0x61a8

    const/16 v4, 0x61a8

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIFFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIF)V
    .locals 10

    sget-object v9, Lcom/google/android/exoplayer2/util/Clock;->DEFAULT:Lcom/google/android/exoplayer2/util/Clock;

    const/high16 v6, 0x3f400000    # 0.75f

    const-wide/16 v7, 0x7d0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v9}, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;-><init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIFFJLcom/google/android/exoplayer2/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/BandwidthMeter;IIIFFJLcom/google/android/exoplayer2/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iput p2, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    iput p3, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    iput p4, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    iput p5, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iput p6, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iput-wide p7, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->minTimeBetweenBufferReevaluationMs:J

    iput-object p9, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    const p1, 0x203230

    iput p1, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->maxVideoBitrate:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/google/android/exoplayer2/trackselection/TrackSelection;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/kaltura/playkit/player/AdaptiveTrackSelection;

    move-result-object p1

    return-object p1
.end method

.method public varargs createTrackSelection(Lcom/google/android/exoplayer2/source/TrackGroup;[I)Lcom/kaltura/playkit/player/AdaptiveTrackSelection;
    .locals 18

    move-object/from16 v0, p0

    new-instance v17, Lcom/kaltura/playkit/player/AdaptiveTrackSelection;

    iget-object v4, v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->bandwidthMeter:Lcom/google/android/exoplayer2/upstream/BandwidthMeter;

    iget v1, v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->minDurationForQualityIncreaseMs:I

    int-to-long v5, v1

    iget v1, v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->maxDurationForQualityDecreaseMs:I

    int-to-long v7, v1

    iget v1, v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->minDurationToRetainAfterDiscardMs:I

    int-to-long v9, v1

    iget v11, v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->bandwidthFraction:F

    iget v12, v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->bufferedFractionToLiveEdgeForQualityIncrease:F

    iget-wide v13, v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->minTimeBetweenBufferReevaluationMs:J

    iget-object v15, v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->clock:Lcom/google/android/exoplayer2/util/Clock;

    iget v3, v0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->maxVideoBitrate:I

    move-object/from16 v1, v17

    move-object/from16 v2, p1

    move/from16 v16, v3

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v16}, Lcom/kaltura/playkit/player/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplayer2/source/TrackGroup;[ILcom/google/android/exoplayer2/upstream/BandwidthMeter;JJJFFJLcom/google/android/exoplayer2/util/Clock;I)V

    return-object v17
.end method

.method public setMaxVideoBitrate(I)V
    .locals 0

    iput p1, p0, Lcom/kaltura/playkit/player/AdaptiveTrackSelection$Factory;->maxVideoBitrate:I

    return-void
.end method
