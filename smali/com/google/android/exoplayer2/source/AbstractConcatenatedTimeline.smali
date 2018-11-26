.class abstract Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;
.super Lcom/google/android/exoplayer2/Timeline;
.source ""


# instance fields
.field private final childCount:I

.field private final isAtomic:Z

.field private final shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;


# direct methods
.method public constructor <init>(ZLcom/google/android/exoplayer2/source/ShuffleOrder;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/Timeline;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    return-void
.end method

.method private getNextChildIndex(IZ)I
    .locals 1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getNextIndex(I)I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private getPreviousChildIndex(IZ)I
    .locals 1

    if-nez p2, :cond_0

    if-gtz p1, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getPreviousIndex(I)I

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method


# virtual methods
.method protected abstract getChildIndexByChildUid(Ljava/lang/Object;)I
.end method

.method protected abstract getChildIndexByPeriodIndex(I)I
.end method

.method protected abstract getChildIndexByWindowIndex(I)I
.end method

.method protected abstract getChildUidByChildIndex(I)Ljava/lang/Object;
.end method

.method protected abstract getFirstPeriodIndexByChildIndex(I)I
.end method

.method public getFirstWindowIndex(Z)I
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    if-nez v1, :cond_2

    :goto_0
    if-nez p1, :cond_3

    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_1
    return v2

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getFirstIndex()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2
.end method

.method protected abstract getFirstWindowIndexByChildIndex(I)I
.end method

.method public final getIndexOfPeriod(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, -0x1

    instance-of v1, p1, Landroid/util/Pair;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/util/Pair;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByChildUid(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/exoplayer2/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v0

    add-int/2addr v0, v2

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method public getLastWindowIndex(Z)I
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    if-nez v1, :cond_2

    :goto_0
    if-nez p1, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->childCount:I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v0

    add-int/2addr v0, v1

    return v0

    :cond_1
    return v2

    :cond_2
    move p1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->shuffleOrder:Lcom/google/android/exoplayer2/source/ShuffleOrder;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/ShuffleOrder;->getLastIndex()I

    move-result v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2
.end method

.method public getNextWindowIndex(IIZ)I
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    sub-int v5, p1, v3

    if-eq p2, v0, :cond_0

    move v1, p2

    :cond_0
    invoke-virtual {v4, v5, v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-direct {p0, v2, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v1

    :goto_1
    if-ne v1, v6, :cond_5

    :cond_1
    if-ne v1, v6, :cond_6

    if-eq p2, v0, :cond_7

    return v6

    :cond_2
    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    :goto_2
    move p3, v1

    goto :goto_0

    :cond_3
    move p2, v0

    goto :goto_2

    :cond_4
    add-int v0, v3, v1

    return v0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getNextChildIndex(IZ)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getFirstWindowIndex(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_7
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndex(Z)I

    move-result v0

    return v0
.end method

.method public final getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByPeriodIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v2

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v3

    sub-int v2, p1, v2

    invoke-virtual {v3, v2, p2, p3}, Lcom/google/android/exoplayer2/Timeline;->getPeriod(ILcom/google/android/exoplayer2/Timeline$Period;Z)Lcom/google/android/exoplayer2/Timeline$Period;

    iget v2, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    add-int/2addr v1, v2

    iput v1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->windowIndex:I

    if-nez p3, :cond_0

    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildUidByChildIndex(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p2, Lcom/google/android/exoplayer2/Timeline$Period;->uid:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v6, -0x1

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->isAtomic:Z

    if-nez v2, :cond_2

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v4

    sub-int v5, p1, v3

    if-eq p2, v0, :cond_0

    move v1, p2

    :cond_0
    invoke-virtual {v4, v5, v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-direct {p0, v2, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v1

    :goto_1
    if-ne v1, v6, :cond_5

    :cond_1
    if-ne v1, v6, :cond_6

    if-eq p2, v0, :cond_7

    return v6

    :cond_2
    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    :goto_2
    move p3, v1

    goto :goto_0

    :cond_3
    move p2, v0

    goto :goto_2

    :cond_4
    add-int v0, v3, v1

    return v0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getPreviousChildIndex(IZ)I

    move-result v1

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/exoplayer2/Timeline;->getLastWindowIndex(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_7
    invoke-virtual {p0, p3}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getLastWindowIndex(Z)I

    move-result v0

    return v0
.end method

.method protected abstract getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;
.end method

.method public final getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;
    .locals 8

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getChildIndexByWindowIndex(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstWindowIndexByChildIndex(I)I

    move-result v1

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getFirstPeriodIndexByChildIndex(I)I

    move-result v6

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/AbstractConcatenatedTimeline;->getTimelineByChildIndex(I)Lcom/google/android/exoplayer2/Timeline;

    move-result-object v0

    sub-int v1, p1, v1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/Timeline;->getWindow(ILcom/google/android/exoplayer2/Timeline$Window;ZJ)Lcom/google/android/exoplayer2/Timeline$Window;

    iget v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->firstPeriodIndex:I

    iget v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    add-int/2addr v0, v6

    iput v0, p2, Lcom/google/android/exoplayer2/Timeline$Window;->lastPeriodIndex:I

    return-object p2
.end method
