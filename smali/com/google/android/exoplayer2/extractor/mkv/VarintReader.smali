.class final Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final STATE_BEGIN_READING:I = 0x0

.field private static final STATE_READ_CONTENTS:I = 0x1

.field private static final VARINT_LENGTH_MASKS:[J


# instance fields
.field private length:I

.field private final scratch:[B

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [J

    const-wide/16 v2, 0x80

    const/4 v1, 0x0

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x40

    const/4 v1, 0x1

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x20

    const/4 v1, 0x2

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x10

    const/4 v1, 0x3

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x8

    const/4 v1, 0x4

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x4

    const/4 v1, 0x5

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x2

    const/4 v1, 0x6

    aput-wide v2, v0, v1

    const-wide/16 v2, 0x1

    const/4 v1, 0x7

    aput-wide v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    return-void
.end method

.method public static assembleVarint([BIZ)J
    .locals 9

    const-wide/16 v6, 0xff

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    if-nez p2, :cond_0

    :goto_0
    const/4 v2, 0x1

    move v8, v2

    move-wide v2, v0

    move v0, v8

    :goto_1
    if-lt v0, p1, :cond_1

    return-wide v2

    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    add-int/lit8 v3, p1, -0x1

    aget-wide v2, v2, v3

    const-wide/16 v4, -0x1

    xor-long/2addr v2, v4

    and-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    shl-long/2addr v2, v1

    aget-byte v1, p0, v0

    int-to-long v4, v1

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static parseUnsignedVarintLength(I)I
    .locals 6

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    array-length v2, v2

    if-lt v0, v2, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    sget-object v2, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->VARINT_LENGTH_MASKS:[J

    aget-wide v2, v2, v0

    int-to-long v4, p0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLastLength()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    return v0
.end method

.method public readUnsignedVarint(Lcom/google/android/exoplayer2/extractor/ExtractorInput;ZZI)J
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    if-eqz v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    if-gt v0, p4, :cond_3

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    if-ne v0, v3, :cond_4

    :goto_1
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    invoke-static {v0, v1, p3}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->assembleVarint([BIZ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    invoke-interface {p1, v0, v2, v3, p2}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BIIZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->parseUnsignedVarintLength(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    iget v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iput v3, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    goto :goto_0

    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v2, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    const-wide/16 v0, -0x2

    return-wide v0

    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->scratch:[B

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v0, v3, v1}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->readFully([BII)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->state:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/mkv/VarintReader;->length:I

    return-void
.end method
