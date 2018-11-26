.class public Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/source/SequenceableLoader;


# instance fields
.field protected final loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplayer2/source/SequenceableLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 17

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v6

    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v3, v6, v8

    if-nez v3, :cond_1

    :cond_0
    return v2

    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v9, v8

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-lt v5, v9, :cond_2

    or-int/2addr v2, v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    aget-object v10, v8, v5

    invoke-interface {v10}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v12

    const-wide/high16 v14, -0x8000000000000000L

    cmp-long v3, v12, v14

    if-eqz v3, :cond_4

    cmp-long v3, v12, p1

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    cmp-long v11, v12, v6

    if-eqz v11, :cond_5

    if-nez v3, :cond_5

    move v3, v4

    :goto_4
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    move-wide/from16 v0, p1

    invoke-interface {v10, v0, v1}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->continueLoading(J)Z

    move-result v3

    or-int/2addr v3, v4

    goto :goto_4
.end method

.method public final getBufferedPositionUs()J
    .locals 12

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-lt v4, v8, :cond_1

    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0

    :cond_1
    aget-object v9, v5, v4

    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getBufferedPositionUs()J

    move-result-wide v10

    cmp-long v9, v10, v2

    if-eqz v9, :cond_2

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public final getNextLoadPositionUs()J
    .locals 12

    const-wide v6, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v8, v5

    const/4 v0, 0x0

    move v4, v0

    move-wide v0, v6

    :goto_0
    if-lt v4, v8, :cond_1

    cmp-long v4, v0, v6

    if-nez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0

    :cond_1
    aget-object v9, v5, v4

    invoke-interface {v9}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->getNextLoadPositionUs()J

    move-result-wide v10

    cmp-long v9, v10, v2

    if-eqz v9, :cond_2

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public final reevaluateBuffer(J)V
    .locals 5

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/CompositeSequenceableLoader;->loaders:[Lcom/google/android/exoplayer2/source/SequenceableLoader;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, v1, v0

    invoke-interface {v3, p1, p2}, Lcom/google/android/exoplayer2/source/SequenceableLoader;->reevaluateBuffer(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
