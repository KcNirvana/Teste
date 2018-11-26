.class public final Lcom/google/android/exoplayer2/source/SampleQueue;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/TrackOutput;


# static fields
.field public static final ADVANCE_FAILED:I = -0x1

.field private static final INITIAL_SCRATCH_SIZE:I = 0x20


# instance fields
.field private final allocationLength:I

.field private final allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

.field private downstreamFormat:Lcom/google/android/exoplayer2/Format;

.field private final extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

.field private firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

.field private lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

.field private final metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

.field private pendingFormatAdjustment:Z

.field private pendingSplice:Z

.field private readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

.field private sampleOffsetUs:J

.field private final scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

.field private totalBytesWritten:J

.field private upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

.field private writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/Allocator;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/upstream/Allocator;->getIndividualAllocationLength()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    new-instance v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    new-instance v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    return-void
.end method

.method private advanceReadTo(J)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    iget-wide v4, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    div-int/2addr v2, v3

    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/exoplayer2/upstream/Allocation;

    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->release([Lcom/google/android/exoplayer2/upstream/Allocation;)V

    return-void

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private discardDownstreamTo(J)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    move v2, v0

    :goto_1
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v3, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/upstream/Allocator;->release(Lcom/google/android/exoplayer2/upstream/Allocation;)V

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->clear()Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v4, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    :goto_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method private static getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/Format;->copyWithSubsampleOffsetUs(J)Lcom/google/android/exoplayer2/Format;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    return-object v0
.end method

.method private postAppend(I)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :cond_0
    return-void
.end method

.method private preAppend(I)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->wasInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/Allocator;->allocate()Lcom/google/android/exoplayer2/upstream/Allocation;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v3, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->initialize(Lcom/google/android/exoplayer2/upstream/Allocation;Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    goto :goto_0
.end method

.method private readData(JLjava/nio/ByteBuffer;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceReadTo(J)V

    :cond_0
    :goto_0
    if-gtz p4, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0
.end method

.method private readData(J[BI)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->advanceReadTo(J)V

    move v0, p4

    :cond_0
    :goto_0
    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    sub-long/2addr v2, p1

    long-to-int v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v2, v2, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-virtual {v3, p1, p2}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v2, v1

    add-long/2addr p1, v2

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0
.end method

.method private readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)V
    .locals 12

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    aget-byte v5, v0, v4

    and-int/lit16 v0, v5, 0x80

    if-nez v0, :cond_2

    move v0, v4

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    iget-object v6, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    if-eqz v6, :cond_3

    :goto_1
    iget-object v6, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v6, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    invoke-direct {p0, v2, v3, v6, v5}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    int-to-long v6, v5

    add-long/2addr v2, v6

    if-nez v0, :cond_4

    move-wide v6, v2

    :goto_2
    iget-object v2, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v2, v2, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    if-nez v2, :cond_5

    :cond_0
    new-array v2, v1, [I

    :goto_3
    iget-object v3, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v3, v3, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    if-nez v3, :cond_6

    :cond_1
    new-array v3, v1, [I

    :goto_4
    if-nez v0, :cond_7

    aput v4, v2, v4

    iget v0, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    iget-wide v8, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long v8, v6, v8

    long-to-int v5, v8

    sub-int/2addr v0, v5

    aput v0, v3, v4

    move-wide v10, v6

    :goto_5
    iget-object v8, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->cryptoData:Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;

    iget-object v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v4, v8, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptionKey:[B

    iget-object v5, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    iget-object v5, v5, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget v6, v8, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->cryptoMode:I

    iget v7, v8, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->encryptedBlocks:I

    iget v8, v8, Lcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;->clearBlocks:I

    invoke-virtual/range {v0 .. v8}, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->set(I[I[I[B[BIII)V

    iget-wide v0, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    sub-long v0, v10, v0

    long-to-int v0, v0

    iget-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    iget v1, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    sub-int v0, v1, v0

    iput v0, p2, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v6, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->cryptoInfo:Lcom/google/android/exoplayer2/decoder/CryptoInfo;

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v6, Lcom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v2, v3, v1, v8}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    const-wide/16 v6, 0x2

    add-long/2addr v2, v6

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    move-wide v6, v2

    goto :goto_2

    :cond_5
    array-length v3, v2

    if-lt v3, v1, :cond_0

    goto :goto_3

    :cond_6
    array-length v5, v3

    if-lt v5, v1, :cond_1

    goto :goto_4

    :cond_7
    mul-int/lit8 v0, v1, 0x6

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v5, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    iget-object v5, v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-direct {p0, v6, v7, v5, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(J[BI)V

    int-to-long v8, v0

    add-long/2addr v6, v8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_6
    if-lt v4, v1, :cond_8

    move-wide v10, v6

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    aput v0, v2, v4

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->scratch:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    aput v0, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6
.end method


# virtual methods
.method public advanceTo(JZZ)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->advanceTo(JZZ)I

    move-result v0

    return v0
.end method

.method public advanceToEnd()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->advanceToEnd()I

    move-result v0

    return v0
.end method

.method public discardTo(JZZ)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardTo(JZZ)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public discardToEnd()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardToEnd()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public discardToRead()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardToRead()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->discardDownstreamTo(J)V

    return-void
.end method

.method public discardUpstreamSamples(I)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->discardUpstreamSamples(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->startPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :goto_1
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_4

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-direct {p0, v2}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    new-instance v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    iget v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-wide v6, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->endPosition:J

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    :goto_3
    iput-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->next:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    goto :goto_0

    :cond_5
    move-object v1, v0

    goto :goto_3
.end method

.method public format(Lcom/google/android/exoplayer2/Format;)V
    .locals 3

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/source/SampleQueue;->getAdjustedSampleFormat(Lcom/google/android/exoplayer2/Format;J)Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->format(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;->onUpstreamFormatChanged(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0
.end method

.method public getFirstIndex()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getFirstIndex()I

    move-result v0

    return v0
.end method

.method public getFirstTimestampUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getFirstTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLargestQueuedTimestampUs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getLargestQueuedTimestampUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getReadIndex()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getReadIndex()I

    move-result v0

    return v0
.end method

.method public getUpstreamFormat()Lcom/google/android/exoplayer2/Format;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getUpstreamFormat()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    return-object v0
.end method

.method public getWriteIndex()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->getWriteIndex()I

    move-result v0

    return v0
.end method

.method public hasNextSample()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->hasNextSample()Z

    move-result v0

    return v0
.end method

.method public peekSourceId()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->peekSourceId()I

    move-result v0

    return v0
.end method

.method public read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZJ)I
    .locals 9

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    iget-object v5, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    iget-object v6, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->read(Lcom/google/android/exoplayer2/FormatHolder;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;ZZLcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p1, Lcom/google/android/exoplayer2/FormatHolder;->format:Lcom/google/android/exoplayer2/Format;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->downstreamFormat:Lcom/google/android/exoplayer2/Format;

    const/4 v0, -0x5

    return v0

    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    const/4 v0, -0x4

    return v0

    :cond_0
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    cmp-long v0, v0, p5

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    const/high16 v0, -0x80000000

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->addFlag(I)V

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEncrypted()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget v0, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->ensureSpaceForWrite(I)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->offset:J

    iget-object v2, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    iget v3, v3, Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;->size:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/source/SampleQueue;->readData(JLjava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->extrasHolder:Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;

    invoke-direct {p0, p2, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->readEncryptionData(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Lcom/google/android/exoplayer2/source/SampleMetadataQueue$SampleExtrasHolder;)V

    goto :goto_2

    :pswitch_2
    const/4 v0, -0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->reset(Z)V

    return-void
.end method

.method public reset(Z)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->reset(Z)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->clearAllocationNodes(Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;)V

    new-instance v0, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocationLength:I

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;-><init>(JI)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-wide v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->allocator:Lcom/google/android/exoplayer2/upstream/Allocator;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/upstream/Allocator;->trim()V

    return-void
.end method

.method public rewind()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->rewind()V

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->firstAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iput-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->readAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplayer2/extractor/ExtractorInput;IZ)I
    .locals 6

    const/4 v3, -0x1

    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->preAppend(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    invoke-interface {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->read([BII)I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->postAppend(I)V

    return v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    return v3
.end method

.method public sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V
    .locals 6

    :goto_0
    if-gtz p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/exoplayer2/source/SampleQueue;->preAppend(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->allocation:Lcom/google/android/exoplayer2/upstream/Allocation;

    iget-object v1, v1, Lcom/google/android/exoplayer2/upstream/Allocation;->data:[B

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->writeAllocationNode:Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    invoke-virtual {v2, v4, v5}, Lcom/google/android/exoplayer2/source/SampleQueue$AllocationNode;->translateOffset(J)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    sub-int/2addr p2, v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->postAppend(I)V

    goto :goto_0
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V
    .locals 9

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    if-nez v0, :cond_1

    :goto_1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    add-long v1, p1, v0

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->totalBytesWritten:J

    int-to-long v6, p4

    sub-long/2addr v4, v6

    int-to-long v6, p5

    sub-long/2addr v4, v6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    move v3, p3

    move v6, p4

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->commitSample(JIJILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->lastUnadjustedFormat:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/source/SampleQueue;->format(Lcom/google/android/exoplayer2/Format;)V

    goto :goto_0

    :cond_1
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->attemptSplice(J)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    goto :goto_1
.end method

.method public setReadPosition(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->setReadPosition(I)Z

    move-result v0

    return v0
.end method

.method public setSampleOffsetUs(J)V
    .locals 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->sampleOffsetUs:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingFormatAdjustment:Z

    :cond_0
    return-void
.end method

.method public setUpstreamFormatChangeListener(Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->upstreamFormatChangeListener:Lcom/google/android/exoplayer2/source/SampleQueue$UpstreamFormatChangedListener;

    return-void
.end method

.method public sourceId(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->metadataQueue:Lcom/google/android/exoplayer2/source/SampleMetadataQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/source/SampleMetadataQueue;->sourceId(I)V

    return-void
.end method

.method public splice()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/SampleQueue;->pendingSplice:Z

    return-void
.end method
