.class final Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COMPATIBLE_BRANDS:[I

.field private static final SEARCH_LENGTH:I = 0x1000


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [I

    const/4 v1, 0x0

    const-string/jumbo v2, "isom"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "iso2"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "iso3"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "iso4"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "iso5"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "iso6"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "avc1"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "hvc1"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "hev1"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "mp41"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "mp42"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "3g2a"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "3g2b"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "3gr6"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "3gs6"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "3ge6"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "3gg6"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "M4V "

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "M4A "

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "f4v "

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "kddi"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "M4VP"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "qt  "

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "MSNV"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isCompatibleBrand(I)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    ushr-int/lit8 v0, p0, 0x8

    const-string/jumbo v2, "3gp"

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->COMPATIBLE_BRANDS:[I

    array-length v3, v2

    move v0, v1

    :goto_0
    if-lt v0, v3, :cond_1

    return v1

    :cond_0
    return v5

    :cond_1
    aget v4, v2, v0

    if-eq v4, p0, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v5
.end method

.method public static sniffFragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method

.method private static sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z
    .locals 18

    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x1000

    cmp-long v4, v2, v4

    if-gtz v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_1

    :cond_0
    const-wide/16 v2, 0x1000

    :cond_1
    long-to-int v9, v2

    new-instance v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v2, 0x40

    invoke-direct {v10, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>(I)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v8, v4

    :cond_2
    :goto_1
    if-lt v8, v9, :cond_6

    :cond_3
    :goto_2
    if-nez v2, :cond_16

    :cond_4
    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    :cond_6
    const/16 v6, 0x8

    const/16 v4, 0x8

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v4, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v5, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v7, v5}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v11

    const-wide/16 v12, 0x1

    cmp-long v7, v4, v12

    if-nez v7, :cond_7

    const/16 v6, 0x10

    iget-object v4, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/16 v5, 0x8

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-interface {v0, v4, v5, v7}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    const/16 v4, 0x10

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    move-wide/from16 v16, v4

    move v5, v6

    move-wide/from16 v6, v16

    :goto_4
    int-to-long v12, v5

    cmp-long v4, v6, v12

    if-ltz v4, :cond_a

    const/4 v4, 0x1

    :goto_5
    if-nez v4, :cond_b

    const/4 v2, 0x0

    return v2

    :cond_7
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-nez v7, :cond_8

    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    const-wide/16 v14, -0x1

    cmp-long v7, v12, v14

    if-eqz v7, :cond_9

    invoke-interface/range {p0 .. p0}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long v4, v12, v4

    const-wide/16 v12, 0x8

    add-long/2addr v4, v12

    move-wide/from16 v16, v4

    move v5, v6

    move-wide/from16 v6, v16

    goto :goto_4

    :cond_8
    move-wide/from16 v16, v4

    move v5, v6

    move-wide/from16 v6, v16

    goto :goto_4

    :cond_9
    move-wide/from16 v16, v4

    move v5, v6

    move-wide/from16 v6, v16

    goto :goto_4

    :cond_a
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    add-int/2addr v8, v5

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moov:I

    if-eq v11, v4, :cond_2

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_moof:I

    if-ne v11, v4, :cond_d

    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_d
    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mvex:I

    if-eq v11, v4, :cond_c

    int-to-long v12, v8

    add-long/2addr v12, v6

    int-to-long v14, v5

    sub-long/2addr v12, v14

    int-to-long v14, v9

    cmp-long v4, v12, v14

    if-gez v4, :cond_f

    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_3

    int-to-long v4, v5

    sub-long v4, v6, v4

    long-to-int v4, v4

    add-int v5, v8, v4

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ftyp:I

    if-eq v11, v6, :cond_10

    if-nez v4, :cond_15

    :cond_e
    :goto_7
    move v8, v5

    goto/16 :goto_1

    :cond_f
    const/4 v4, 0x0

    goto :goto_6

    :cond_10
    const/16 v6, 0x8

    if-lt v4, v6, :cond_11

    invoke-virtual {v10, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->reset(I)V

    iget-object v6, v10, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v6, v7, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->peekFully([BII)V

    div-int/lit8 v6, v4, 0x4

    const/4 v4, 0x0

    :goto_8
    if-lt v4, v6, :cond_12

    :goto_9
    if-nez v2, :cond_e

    const/4 v2, 0x0

    return v2

    :cond_11
    const/4 v2, 0x0

    return v2

    :cond_12
    const/4 v7, 0x1

    if-eq v4, v7, :cond_13

    invoke-virtual {v10}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->isCompatibleBrand(I)Z

    move-result v7

    if-nez v7, :cond_14

    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_13
    const/4 v7, 0x4

    invoke-virtual {v10, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_a

    :cond_14
    const/4 v2, 0x1

    goto :goto_9

    :cond_15
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/extractor/ExtractorInput;->advancePeekPosition(I)V

    goto :goto_7

    :cond_16
    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    const/4 v2, 0x1

    goto/16 :goto_3
.end method

.method public static sniffUnfragmented(Lcom/google/android/exoplayer2/extractor/ExtractorInput;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Sniffer;->sniffInternal(Lcom/google/android/exoplayer2/extractor/ExtractorInput;Z)Z

    move-result v0

    return v0
.end method
