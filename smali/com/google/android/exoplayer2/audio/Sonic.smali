.class final Lcom/google/android/exoplayer2/audio/Sonic;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AMDF_FREQUENCY:I = 0xfa0

.field private static final MAXIMUM_PITCH:I = 0x190

.field private static final MINIMUM_PITCH:I = 0x41


# instance fields
.field private final channelCount:I

.field private final downSampleBuffer:[S

.field private inputBuffer:[S

.field private inputFrameCount:I

.field private final inputSampleRateHz:I

.field private maxDiff:I

.field private final maxPeriod:I

.field private final maxRequiredFrameCount:I

.field private minDiff:I

.field private final minPeriod:I

.field private newRatePosition:I

.field private oldRatePosition:I

.field private outputBuffer:[S

.field private outputFrameCount:I

.field private final pitch:F

.field private pitchBuffer:[S

.field private pitchFrameCount:I

.field private prevMinDiff:I

.field private prevPeriod:I

.field private final rate:F

.field private remainingInputToCopyFrameCount:I

.field private final speed:F


# direct methods
.method public constructor <init>(IIFFI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    iput p2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    iput p3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iput p4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    int-to-float v0, p1

    int-to-float v1, p5

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    div-int/lit16 v0, p1, 0x190

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    div-int/lit8 v0, p1, 0x41

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/2addr v0, p2

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    return-void
.end method

.method private adjustRate(FI)V
    .locals 10

    const/16 v6, 0x4000

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    if-eq v0, p2, :cond_1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v2, v0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    move v4, v0

    move v5, v2

    :goto_0
    if-le v5, v6, :cond_2

    :cond_0
    div-int/lit8 v2, v5, 0x2

    div-int/lit8 v0, v4, 0x2

    move v4, v0

    move v5, v2

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    if-gt v4, v6, :cond_0

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/audio/Sonic;->moveNewSamplesToPitchBuffer(I)V

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_4

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->removePitchFrames(I)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v2, v6, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    move v2, v1

    :goto_2
    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    if-lt v2, v6, :cond_5

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    :cond_4
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v5

    iget v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int/2addr v6, v4

    if-gt v2, v6, :cond_3

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    if-eq v2, v4, :cond_6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v7, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v2

    iget-object v8, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v9, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v9, v0

    add-int/2addr v9, v2

    invoke-direct {p0, v8, v9, v4, v5}, Lcom/google/android/exoplayer2/audio/Sonic;->interpolate([SIII)S

    move-result v8

    int-to-short v8, v8

    aput-short v8, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    if-eq v2, v5, :cond_7

    move v2, v1

    :goto_4
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method private changeSpeed(F)V
    .locals 8

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    :cond_0
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriod([SI)I

    move-result v2

    float-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->skipPitchPeriod([SIFI)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    add-int/2addr v2, v0

    if-le v2, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->removeProcessedInputFrames(I)V

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->copyInputToOutput(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->insertPitchPeriod([SIFI)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method private copyInputToOutput(I)I
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    return v0
.end method

.method private copyToOutput([SII)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v0, v1, p3}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v0, p2

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v3, p3

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    return-void
.end method

.method private downSampleInput([SII)V
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    div-int v4, v0, p3

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v5, v0, p3

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v6, p2, v0

    move v3, v1

    :goto_0
    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    if-lt v0, v5, :cond_1

    div-int v0, v2, v5

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    int-to-short v0, v0

    int-to-short v0, v0

    aput-short v0, v2, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    mul-int v7, v3, v5

    add-int/2addr v7, v6

    add-int/2addr v7, v0

    aget-short v7, p1, v7

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private ensureSpaceForAdditionalFrames([SII)[S
    .locals 2

    array-length v0, p1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    add-int v1, p2, p3

    if-le v1, v0, :cond_0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    return-object v0

    :cond_0
    return-object p1
.end method

.method private findPitchPeriod([SI)I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    const/16 v2, 0xfa0

    if-gt v0, v2, :cond_1

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    if-eq v2, v1, :cond_2

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    div-int/2addr v3, v0

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    div-int/2addr v4, v0

    invoke-direct {p0, v2, v5, v3, v4}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v2

    if-ne v0, v1, :cond_3

    move v0, v2

    :goto_1
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->previousPeriodBetter(II)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v0

    :goto_2
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iput v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputSampleRateHz:I

    div-int/lit16 v0, v0, 0xfa0

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v0

    goto :goto_1

    :cond_3
    mul-int v3, v2, v0

    mul-int/lit8 v2, v0, 0x4

    sub-int v2, v3, v2

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v3, v0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    if-lt v2, v0, :cond_4

    move v0, v2

    :goto_3
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    if-gt v3, v2, :cond_5

    move v2, v3

    :goto_4
    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    if-eq v3, v1, :cond_6

    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleInput([SII)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->downSampleBuffer:[S

    invoke-direct {p0, v1, v5, v0, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minPeriod:I

    goto :goto_3

    :cond_5
    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxPeriod:I

    goto :goto_4

    :cond_6
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->findPitchPeriodInRange([SIII)I

    move-result v0

    goto :goto_1

    :cond_7
    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    goto :goto_2
.end method

.method private findPitchPeriodInRange([SIII)I
    .locals 11

    const/4 v7, 0x0

    const/16 v2, 0xff

    const/4 v4, 0x1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int v9, p2, v0

    move v3, p3

    move v0, v7

    move v5, v7

    :goto_0
    if-le v3, p4, :cond_0

    div-int v1, v4, v5

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    return v5

    :cond_0
    move v6, v7

    move v1, v7

    :goto_1
    if-lt v6, v3, :cond_1

    mul-int v6, v1, v5

    mul-int v8, v4, v3

    if-lt v6, v8, :cond_2

    :goto_2
    mul-int v6, v1, v2

    mul-int v8, v0, v3

    if-gt v6, v8, :cond_3

    move v1, v2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int v8, v9, v6

    aget-short v8, p1, v8

    add-int v10, v9, v3

    add-int/2addr v10, v6

    aget-short v10, p1, v10

    sub-int/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v8, v1

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v8

    goto :goto_1

    :cond_2
    move v4, v1

    move v5, v3

    goto :goto_2

    :cond_3
    move v0, v1

    move v1, v3

    goto :goto_3
.end method

.method private insertPitchPeriod([SIFI)I
    .locals 8

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p3, v0

    if-gez v0, :cond_0

    int-to-float v0, p4

    mul-float/2addr v0, p3

    sub-float v1, v2, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int v3, p4, v0

    invoke-direct {p0, v1, v2, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v1, p2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v4, p4

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int/2addr v3, p4

    add-int v5, p2, p4

    move-object v4, p1

    move-object v6, p1

    move v7, p2

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int v2, p4, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    return v0

    :cond_0
    int-to-float v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p3

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    sub-float v1, v2, p3

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    move v0, p4

    goto :goto_0
.end method

.method private interpolate([SIII)S
    .locals 5

    aget-short v0, p1, p2

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    add-int/2addr v1, p2

    aget-short v1, p1, v1

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    mul-int/2addr v2, p3

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    mul-int/2addr v3, p4

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v4, p4

    sub-int v2, v4, v2

    sub-int v3, v4, v3

    mul-int/2addr v0, v2

    sub-int v2, v3, v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    div-int/2addr v0, v3

    int-to-short v0, v0

    return v0
.end method

.method private moveNewSamplesToPitchBuffer(I)V
    .locals 6

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v0

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    return-void
.end method

.method private static overlapAdd(II[SI[SI[SI)V
    .locals 8

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-lt v5, p1, :cond_0

    return-void

    :cond_0
    mul-int v0, p3, p1

    add-int v3, v0, v5

    mul-int v0, p7, p1

    add-int v2, v0, v5

    mul-int v0, p5, p1

    add-int/2addr v0, v5

    move v4, v3

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_1
    if-lt v0, p0, :cond_1

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    aget-short v6, p4, v2

    sub-int v7, p0, v0

    mul-int/2addr v6, v7

    aget-short v7, p6, v3

    mul-int/2addr v7, v0

    add-int/2addr v6, v7

    div-int/2addr v6, p0

    int-to-short v6, v6

    int-to-short v6, v6

    aput-short v6, p2, v4

    add-int/2addr v4, p1

    add-int/2addr v2, p1

    add-int/2addr v3, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private previousPeriodBetter(II)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    if-eqz v0, :cond_0

    mul-int/lit8 v0, p1, 0x3

    if-gt p2, v0, :cond_2

    mul-int/lit8 v0, p1, 0x2

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    mul-int/lit8 v1, v1, 0x3

    if-le v0, v1, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_2
    return v2

    :cond_3
    return v2
.end method

.method private processStreamInput()V
    .locals 10

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float v3, v0, v3

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    mul-float/2addr v4, v0

    float-to-double v6, v3

    const-wide v8, 0x3ff0000a7c5ac472L    # 1.00001

    cmpl-double v0, v6, v8

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_0

    float-to-double v6, v3

    const-wide v8, 0x3fefffeb074a771dL    # 0.99999

    cmpg-double v0, v6, v8

    if-gez v0, :cond_3

    :cond_0
    invoke-direct {p0, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->changeSpeed(F)V

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v4, v2}, Lcom/google/android/exoplayer2/audio/Sonic;->adjustRate(FI)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/exoplayer2/audio/Sonic;->copyToOutput([SII)V

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    goto :goto_1
.end method

.method private removePitchFrames(I)V
    .locals 6

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v3, p1

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    invoke-static {v0, v1, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    return-void

    :cond_0
    return-void
.end method

.method private removeProcessedInputFrames(I)V
    .locals 6

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    sub-int/2addr v0, p1

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v2, p1

    iget-object v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v4, v0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    return-void
.end method

.method private skipPitchPeriod([SIFI)I
    .locals 8

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, p3, v1

    if-ltz v0, :cond_0

    int-to-float v0, p4

    sub-float v1, p3, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int v7, p2, p4

    move-object v4, p1

    move v5, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/Sonic;->overlapAdd(II[SI[SI[SI)V

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    return v0

    :cond_0
    int-to-float v0, p4

    sub-float/2addr v1, p3

    mul-float/2addr v0, v1

    sub-float v1, p3, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    move v0, p4

    goto :goto_0
.end method


# virtual methods
.method public flush()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->oldRatePosition:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->newRatePosition:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevPeriod:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->prevMinDiff:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->minDiff:I

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxDiff:I

    return-void
.end method

.method public getFramesAvailable()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    return v0
.end method

.method public getOutput(Ljava/nio/ShortBuffer;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v2, v0

    invoke-virtual {p1, v1, v5, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    invoke-static {v1, v0, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public queueEndOfStream()V
    .locals 6

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->speed:F

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    div-float/2addr v0, v3

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->rate:F

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitch:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    int-to-float v5, v2

    div-float v0, v5, v0

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int v3, v4, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    invoke-direct {p0, v0, v4, v5}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v4, v5

    if-lt v0, v4, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->maxRequiredFrameCount:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    iget v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    if-gt v0, v3, :cond_1

    :goto_1
    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->remainingInputToCopyFrameCount:I

    iput v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->pitchFrameCount:I

    return-void

    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v5, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    aput-short v1, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->outputFrameCount:I

    goto :goto_1
.end method

.method public queueInput(Ljava/nio/ShortBuffer;)V
    .locals 5

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/exoplayer2/audio/Sonic;->ensureSpaceForAdditionalFrames([SII)[S

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputBuffer:[S

    iget v3, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    iget v4, p0, Lcom/google/android/exoplayer2/audio/Sonic;->channelCount:I

    mul-int/2addr v3, v4

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ShortBuffer;->get([SII)Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/audio/Sonic;->inputFrameCount:I

    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/Sonic;->processStreamInput()V

    return-void
.end method
