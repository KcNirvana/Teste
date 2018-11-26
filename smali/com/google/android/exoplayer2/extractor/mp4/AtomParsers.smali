.class final Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final MAX_GAPLESS_TRIM_SIZE_SAMPLES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AtomParsers"

.field private static final TYPE_clcp:I

.field private static final TYPE_meta:I

.field private static final TYPE_sbtl:I

.field private static final TYPE_soun:I

.field private static final TYPE_subt:I

.field private static final TYPE_text:I

.field private static final TYPE_vide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "vide"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    const-string/jumbo v0, "soun"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    const-string/jumbo v0, "text"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    const-string/jumbo v0, "sbtl"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    const-string/jumbo v0, "subt"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    const-string/jumbo v0, "clcp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    const-string/jumbo v0, "meta"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canApplyEditWithGaplessInfo([JJJJ)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x3

    invoke-static {v3, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v3

    array-length v4, p0

    add-int/lit8 v4, v4, -0x3

    invoke-static {v4, v1, v2}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    aget-wide v6, p0, v1

    cmp-long v2, v6, p3

    if-lez v2, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    aget-wide v2, p0, v3

    cmp-long v2, p3, v2

    if-ltz v2, :cond_1

    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    aget-wide v2, p0, v4

    cmp-long v2, v2, p5

    if-ltz v2, :cond_2

    move v2, v0

    :goto_2
    if-nez v2, :cond_4

    cmp-long v2, p5, p1

    if-lez v2, :cond_3

    move v2, v0

    :goto_3
    if-nez v2, :cond_4

    :goto_4
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4
.end method

.method private static findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v2, v0

    :goto_0
    sub-int v0, v2, p1

    if-lt v0, p2, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    if-gtz v3, :cond_1

    move v0, v1

    :goto_1
    const-string/jumbo v4, "childAtomSize should be positive"

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v0, v4, :cond_2

    add-int v0, v2, v3

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    return v2
.end method

.method private static parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 25

    add-int/lit8 v4, p2, 0x8

    add-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v4, 0x0

    if-nez p6, :cond_4

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v6, v4

    :goto_0
    if-nez v6, :cond_5

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v5

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedFixedPoint1616()I

    move-result v4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_6

    move v6, v5

    move v5, v4

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v15

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_8

    move-object/from16 v12, p7

    :goto_2
    const/4 v4, 0x0

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_b

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_c

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_d

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_e

    :cond_1
    const-string/jumbo v4, "audio/vnd.dts.hd"

    :cond_2
    :goto_3
    const/16 v18, 0x0

    move v10, v5

    move v9, v6

    move-object v5, v4

    :goto_4
    sub-int v4, v15, p2

    move/from16 v0, p3

    if-lt v4, v0, :cond_15

    move-object/from16 v0, p8

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v4, :cond_21

    :cond_3
    :goto_5
    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    const/4 v5, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v6, v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    if-eq v6, v4, :cond_0

    const/4 v4, 0x2

    if-eq v6, v4, :cond_7

    return-void

    :cond_6
    const/16 v6, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v6, v5

    move v5, v4

    goto :goto_1

    :cond_7
    const/16 v4, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    const/16 v6, 0x14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v6, v5

    move v5, v4

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v8

    if-nez v8, :cond_9

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v12, p7

    goto :goto_2

    :cond_9
    iget-object v4, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p7, :cond_a

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v4

    move-object v7, v4

    :goto_7
    move-object/from16 v0, p8

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v4, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v4, v9, p9

    move-object/from16 p7, v7

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    move-object v7, v4

    goto :goto_7

    :cond_b
    const-string/jumbo v4, "audio/ac3"

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v4, "audio/eac3"

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v4, "audio/vnd.dts"

    goto/16 :goto_3

    :cond_e
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_1

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_10

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_11

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_12

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_13

    :cond_f
    const-string/jumbo v4, "audio/raw"

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v4, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v4, "audio/3gpp"

    goto/16 :goto_3

    :cond_12
    const-string/jumbo v4, "audio/amr-wb"

    goto/16 :goto_3

    :cond_13
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_f

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    move/from16 v0, p1

    if-eq v0, v7, :cond_14

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    move/from16 v0, p1

    if-ne v0, v7, :cond_2

    const-string/jumbo v4, "audio/alac"

    goto/16 :goto_3

    :cond_14
    const-string/jumbo v4, "audio/mpeg"

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v16

    if-gtz v16, :cond_19

    const/4 v4, 0x0

    :goto_8
    const-string/jumbo v6, "childAtomSize should be positive"

    invoke-static {v4, v6}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-ne v4, v6, :cond_1a

    :cond_16
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v4, v6, :cond_1c

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v15, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->findEsdsPosition(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)I

    move-result v4

    :goto_9
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1d

    move-object v4, v5

    move-object/from16 v5, v18

    :cond_17
    :goto_a
    move-object/from16 v18, v5

    move-object v5, v4

    :cond_18
    :goto_b
    add-int v15, v15, v16

    goto/16 :goto_4

    :cond_19
    const/4 v4, 0x1

    goto :goto_8

    :cond_1a
    if-nez p6, :cond_1b

    :goto_c
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dac3:I

    if-eq v4, v6, :cond_1e

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dec3:I

    if-eq v4, v6, :cond_1f

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ddts:I

    if-eq v4, v6, :cond_20

    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-ne v4, v6, :cond_18

    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    goto :goto_b

    :cond_1b
    sget v6, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wave:I

    if-eq v4, v6, :cond_16

    goto :goto_c

    :cond_1c
    move v4, v15

    goto :goto_9

    :cond_1d
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v5

    iget-object v4, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [B

    const-string/jumbo v6, "audio/mp4a-latm"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/CodecSpecificDataUtil;->parseAacAudioSpecificConfig([B)Landroid/util/Pair;

    move-result-object v7

    iget-object v6, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v6, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_a

    :cond_1e
    add-int/lit8 v4, v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v12}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p8

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto :goto_b

    :cond_1f
    add-int/lit8 v4, v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-static {v0, v4, v1, v12}, Lcom/google/android/exoplayer2/audio/Ac3Util;->parseEAc3AnnexFFormat(Lcom/google/android/exoplayer2/util/ParsableByteArray;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p8

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_b

    :cond_20
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v13, 0x0

    move-object/from16 v14, p5

    invoke-static/range {v4 .. v14}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p8

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_b

    :cond_21
    if-eqz v5, :cond_3

    const-string/jumbo v4, "audio/raw"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/16 v20, -0x1

    :goto_d
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v16, -0x1

    const/16 v17, -0x1

    if-eqz v18, :cond_23

    invoke-static/range {v18 .. v18}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v21

    :goto_e
    const/16 v23, 0x0

    const/4 v15, 0x0

    move-object v14, v5

    move/from16 v18, v9

    move/from16 v19, v10

    move-object/from16 v22, v12

    move-object/from16 v24, p5

    invoke-static/range {v13 .. v24}, Lcom/google/android/exoplayer2/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/android/exoplayer2/drm/DrmInitData;ILjava/lang/String;)Lcom/google/android/exoplayer2/Format;

    move-result-object v4

    move-object/from16 v0, p8

    iput-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_5

    :cond_22
    const/16 v20, 0x2

    goto :goto_d

    :cond_23
    const/16 v21, 0x0

    goto :goto_e
.end method

.method static parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 13

    const/4 v12, 0x4

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    add-int/lit8 v5, p1, 0x8

    move-object v0, v8

    move-object v1, v8

    move v2, v6

    move v4, v9

    :goto_0
    sub-int v3, v5, p1

    if-lt v3, p2, :cond_1

    const-string/jumbo v3, "cenc"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    if-nez v0, :cond_6

    move v3, v6

    :goto_1
    const-string/jumbo v5, "frma atom is mandatory"

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    if-ne v4, v9, :cond_7

    move v3, v6

    :goto_2
    const-string/jumbo v5, "schi atom is mandatory"

    invoke-static {v3, v5}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p0, v4, v2, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_3
    const-string/jumbo v2, "tenc atom is mandatory"

    invoke-static {v6, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_frma:I

    if-eq v10, v11, :cond_2

    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schm:I

    if-eq v10, v11, :cond_3

    sget v11, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_schi:I

    if-eq v10, v11, :cond_4

    :goto_4
    add-int/2addr v5, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_4

    :cond_3
    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_4
    move v2, v3

    move v4, v5

    goto :goto_4

    :cond_5
    const-string/jumbo v3, "cbc1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "cens"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "cbcs"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v8

    :cond_6
    move v3, v7

    goto :goto_1

    :cond_7
    move v3, v7

    goto :goto_2

    :cond_8
    move v6, v7

    goto :goto_3
.end method

.method private static parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    invoke-static {v1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    sget v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_elst:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v5

    new-array v6, v5, [J

    new-array v7, v5, [J

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-lt v2, v5, :cond_2

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    if-eq v4, v8, :cond_3

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    :goto_1
    aput-wide v0, v6, v2

    if-eq v4, v8, :cond_4

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    int-to-long v0, v0

    :goto_2
    aput-wide v0, v7, v2

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readShort()S

    move-result v0

    if-ne v0, v8, :cond_5

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported media rate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_1

    :goto_0
    and-int/lit8 v1, v0, 0x40

    if-nez v1, :cond_2

    :goto_1
    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_3

    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/MimeTypes;->getMimeTypeFromMp4ObjectType(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "audio/mpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "audio/vnd.dts"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "audio/vnd.dts.hd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {p0, v2, v3, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static parseExpandableClassSize(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v0, v1, 0x7f

    :goto_0
    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    shl-int/lit8 v0, v0, 0x7

    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    goto :goto_0
.end method

.method private static parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 2

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_soun:I

    if-eq v0, v1, :cond_1

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_vide:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_text:I

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x3

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_sbtl:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_subt:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_clcp:I

    if-eq v0, v1, :cond_0

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->TYPE_meta:I

    if-eq v0, v1, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    const/4 v0, 0x4

    return v0
.end method

.method private static parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    if-lt v2, p1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    :cond_1
    return-object v0

    :cond_2
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/mp4/MetadataUtil;->parseIlstElement(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 6

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    shr-int/lit8 v2, v0, 0x5

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    goto :goto_1
.end method

.method private static parseMetaAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 4

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ilst:I

    if-eq v2, v3, :cond_1

    add-int/lit8 v0, v1, -0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseIlst(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method private static parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method private static parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F
    .locals 2

    add-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private static parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-lt v1, p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_proj:I

    if-eq v2, v3, :cond_1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int/2addr v1, v0

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v2, v0

    :goto_0
    sub-int v0, v2, p1

    if-lt v0, p2, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    if-gtz v3, :cond_2

    move v0, v1

    :goto_1
    const-string/jumbo v4, "childAtomSize should be positive"

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sinf:I

    if-eq v0, v4, :cond_3

    :cond_1
    add-int v0, v2, v3

    move v2, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p0, v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseCommonEncryptionSinfFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0
.end method

.method private static parseSchiFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;)Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    add-int/lit8 v2, p1, 0x8

    :goto_0
    sub-int v3, v2, p1

    if-lt v3, p2, :cond_0

    return-object v7

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tenc:I

    if-eq v4, v5, :cond_1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v3, v2, 0xf0

    shr-int/lit8 v5, v3, 0x4

    and-int/lit8 v6, v2, 0xf

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    if-eq v2, v1, :cond_2

    move v1, v0

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v2, 0x10

    new-array v4, v2, [B

    array-length v2, v4

    invoke-virtual {p0, v4, v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-nez v1, :cond_5

    :cond_3
    :goto_2
    new-instance v0, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    return-object v0

    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    move v6, v0

    move v5, v0

    goto :goto_1

    :cond_5
    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    new-array v7, v2, [B

    invoke-virtual {p0, v7, v0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    goto :goto_2
.end method

.method public static parseStbl(Lcom/google/android/exoplayer2/extractor/mp4/Track;Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;)Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;
    .locals 37

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsz:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    if-nez v5, :cond_2

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stz2:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$Stz2SampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    :goto_0
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->getSampleCount()I

    move-result v28

    if-eqz v28, :cond_4

    const/4 v6, 0x0

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stco:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    if-eqz v5, :cond_5

    :goto_1
    iget-object v8, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsc:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    iget-object v9, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    iget-object v0, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    move-object/from16 v29, v0

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stss:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    :goto_2
    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ctts:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v7

    if-nez v7, :cond_7

    const/4 v7, 0x0

    :goto_3
    new-instance v30, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;

    move-object/from16 v0, v30

    invoke-direct {v0, v9, v8, v6}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;-><init>(Lcom/google/android/exoplayer2/util/ParsableByteArray;Lcom/google/android/exoplayer2/util/ParsableByteArray;Z)V

    const/16 v6, 0xc

    move-object/from16 v0, v29

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    add-int/lit8 v25, v6, -0x1

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v24

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v23

    const/16 v22, 0x0

    const/4 v6, 0x0

    const/4 v15, 0x0

    if-nez v7, :cond_8

    :goto_4
    const/4 v9, -0x1

    const/4 v8, 0x0

    if-nez v5, :cond_9

    move/from16 v36, v8

    move v8, v9

    move-object v9, v5

    move/from16 v5, v36

    :goto_5
    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->isFixedSampleSize()Z

    move-result v10

    if-nez v10, :cond_b

    :cond_0
    const/4 v10, 0x0

    :goto_6
    const/4 v14, 0x0

    const-wide/16 v12, 0x0

    if-eqz v10, :cond_c

    move-object/from16 v0, v30

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v4, v4, [J

    move-object/from16 v0, v30

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->length:I

    new-array v5, v5, [I

    :goto_7
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v6

    if-nez v6, :cond_1c

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v7, v7, Lcom/google/android/exoplayer2/Format;->channelCount:I

    invoke-static {v6, v7}, Lcom/google/android/exoplayer2/util/Util;->getPcmFrameSize(II)I

    move-result v6

    move/from16 v0, v23

    int-to-long v8, v0

    invoke-static {v6, v4, v5, v8, v9}, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker;->rechunk(I[J[IJ)Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;

    move-result-object v4

    iget-object v9, v4, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->offsets:[J

    iget-object v8, v4, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->sizes:[I

    iget v10, v4, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->maximumSize:I

    iget-object v7, v4, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->timestamps:[J

    iget-object v6, v4, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->flags:[I

    iget-wide v4, v4, Lcom/google/android/exoplayer2/extractor/mp4/FixedSampleSizeRechunker$Results;->duration:J

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    move/from16 v24, v10

    :goto_8
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    if-nez v6, :cond_1d

    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v6, 0xf4240

    move-object/from16 v0, v21

    invoke-static {v0, v6, v7, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v5, v23

    move-object/from16 v6, v22

    move/from16 v7, v24

    move-object/from16 v8, v21

    move-object/from16 v9, v20

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v4

    :cond_2
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StszSampleSizeBox;-><init>(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;)V

    goto/16 :goto_0

    :cond_3
    new-instance v4, Lcom/google/android/exoplayer2/ParserException;

    const-string/jumbo v5, "Track has no sample table size information"

    invoke-direct {v4, v5}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    const/4 v5, 0x0

    new-array v5, v5, [J

    const/4 v6, 0x0

    new-array v6, v6, [I

    const/4 v7, 0x0

    new-array v8, v7, [J

    const/4 v7, 0x0

    new-array v9, v7, [I

    const/4 v7, 0x0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v4

    :cond_5
    const/4 v6, 0x1

    sget v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_co64:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v5

    goto/16 :goto_1

    :cond_6
    iget-object v5, v5, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto/16 :goto_2

    :cond_7
    iget-object v7, v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    goto/16 :goto_3

    :cond_8
    const/16 v6, 0xc

    invoke-virtual {v7, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v6

    goto/16 :goto_4

    :cond_9
    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    if-gtz v8, :cond_a

    const/4 v5, 0x0

    move/from16 v36, v8

    move v8, v9

    move-object v9, v5

    move/from16 v5, v36

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move/from16 v36, v8

    move v8, v9

    move-object v9, v5

    move/from16 v5, v36

    goto/16 :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget-object v10, v10, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string/jumbo v11, "audio/raw"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    if-nez v25, :cond_0

    if-nez v6, :cond_0

    if-nez v5, :cond_0

    const/4 v10, 0x1

    goto/16 :goto_6

    :cond_c
    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v21, v0

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v20, v0

    move/from16 v0, v28

    new-array v0, v0, [J

    move-object/from16 v19, v0

    move/from16 v0, v28

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const-wide/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-wide/from16 v26, v12

    move v12, v5

    move v13, v8

    move v5, v15

    move/from16 v8, v22

    move/from16 v15, v25

    move/from16 v25, v24

    move/from16 v24, v10

    move v10, v14

    move/from16 v14, v23

    :goto_9
    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_39

    int-to-long v4, v5

    add-long v16, v26, v4

    if-eqz v8, :cond_18

    const/4 v4, 0x0

    :goto_a
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    :goto_b
    if-gtz v6, :cond_19

    if-eqz v12, :cond_1b

    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Inconsistent stbl box for track "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": remainingSynchronizationSamples "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", remainingSamplesInChunk "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", remainingTimestampDeltaChanges "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "AtomParsers"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move-wide/from16 v4, v16

    move-object/from16 v22, v20

    move-object/from16 v23, v21

    move/from16 v24, v10

    move-object/from16 v21, v19

    move-object/from16 v20, v18

    goto/16 :goto_8

    :cond_e
    invoke-virtual/range {v30 .. v30}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->moveNext()Z

    move-result v11

    invoke-static {v11}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    move-object/from16 v0, v30

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v30

    iget v11, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    move-wide/from16 v22, v16

    move/from16 v16, v11

    :goto_d
    if-eqz v16, :cond_e

    if-nez v7, :cond_11

    :goto_e
    aput-wide v22, v21, v24

    invoke-interface {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$SampleSizeBox;->readNextSampleSize()I

    move-result v11

    aput v11, v20, v24

    aget v11, v20, v24

    if-gt v11, v10, :cond_13

    :goto_f
    int-to-long v0, v5

    move-wide/from16 v32, v0

    add-long v32, v32, v26

    aput-wide v32, v19, v24

    if-eqz v9, :cond_14

    const/4 v11, 0x0

    :goto_10
    aput v11, v18, v24

    move/from16 v0, v24

    if-eq v0, v13, :cond_15

    move v11, v12

    move v12, v13

    :goto_11
    int-to-long v0, v14

    move-wide/from16 v32, v0

    add-long v26, v26, v32

    add-int/lit8 v13, v25, -0x1

    if-eqz v13, :cond_17

    :cond_f
    move/from16 v36, v14

    move v14, v13

    move/from16 v13, v36

    :goto_12
    aget v17, v20, v24

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v32, v0

    add-long v22, v22, v32

    add-int/lit8 v17, v16, -0x1

    add-int/lit8 v16, v24, 0x1

    move/from16 v24, v16

    move/from16 v25, v14

    move v14, v13

    move v13, v12

    move v12, v11

    move/from16 v11, v17

    move-wide/from16 v16, v22

    goto/16 :goto_9

    :cond_10
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v8

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v5

    add-int/lit8 v6, v6, -0x1

    :cond_11
    if-eqz v8, :cond_12

    :goto_13
    add-int/lit8 v8, v8, -0x1

    goto :goto_e

    :cond_12
    if-gtz v6, :cond_10

    goto :goto_13

    :cond_13
    aget v10, v20, v24

    goto :goto_f

    :cond_14
    const/4 v11, 0x1

    goto :goto_10

    :cond_15
    const/4 v11, 0x1

    aput v11, v18, v24

    add-int/lit8 v11, v12, -0x1

    if-gtz v11, :cond_16

    move v12, v13

    goto :goto_11

    :cond_16
    invoke-virtual {v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    goto :goto_11

    :cond_17
    if-lez v15, :cond_f

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v14

    invoke-virtual/range {v29 .. v29}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v13

    add-int/lit8 v15, v15, -0x1

    goto :goto_12

    :cond_18
    const/4 v4, 0x1

    goto/16 :goto_a

    :cond_19
    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x0

    :goto_14
    invoke-static {v4}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    invoke-virtual {v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_b

    :cond_1a
    const/4 v4, 0x1

    goto :goto_14

    :cond_1b
    if-nez v25, :cond_d

    if-nez v11, :cond_d

    if-nez v15, :cond_d

    goto/16 :goto_c

    :cond_1c
    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v30

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->offset:J

    aput-wide v8, v4, v6

    move-object/from16 v0, v30

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->index:I

    move-object/from16 v0, v30

    iget v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$ChunkIterator;->numSamples:I

    aput v7, v5, v6

    goto/16 :goto_7

    :cond_1d
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result v6

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v6, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_21

    :cond_1e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v6, v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_25

    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    const/4 v4, 0x0

    move/from16 v25, v4

    :goto_15
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    :goto_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    if-lt v12, v4, :cond_28

    move/from16 v0, v28

    if-ne v15, v0, :cond_2b

    const/4 v4, 0x0

    :goto_17
    or-int v30, v13, v4

    if-nez v30, :cond_2c

    move-object/from16 v26, v23

    :goto_18
    if-nez v30, :cond_2d

    move-object/from16 v27, v22

    :goto_19
    if-nez v30, :cond_2e

    move/from16 v4, v24

    :goto_1a
    if-nez v30, :cond_2f

    move-object/from16 v28, v20

    :goto_1b
    new-array v0, v15, [J

    move-object/from16 v31, v0

    const-wide/16 v12, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    move/from16 v29, v5

    move v14, v6

    move/from16 v18, v4

    :goto_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    array-length v4, v4

    move/from16 v0, v29

    if-lt v0, v4, :cond_30

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v0

    const-wide/32 v14, 0xf4240

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v12

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_1d
    move-object/from16 v0, v28

    array-length v6, v0

    if-lt v4, v6, :cond_36

    :cond_20
    if-eqz v5, :cond_38

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v5, v26

    move-object/from16 v6, v27

    move/from16 v7, v18

    move-object/from16 v8, v31

    move-object/from16 v9, v28

    move-wide v10, v12

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v4

    :cond_21
    move-object/from16 v0, p0

    iget v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1e

    move-object/from16 v0, v21

    array-length v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1e

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v9, 0x0

    aget-wide v12, v8, v9

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    add-long v18, v6, v8

    move-object/from16 v13, v21

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-static/range {v13 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->canApplyEditWithGaplessInfo([JJJJ)Z

    move-result v8

    if-eqz v8, :cond_1e

    sub-long v8, v4, v18

    const/4 v12, 0x0

    aget-wide v12, v21, v12

    sub-long v12, v6, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v14, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v0

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->format:Lcom/google/android/exoplayer2/Format;

    iget v6, v6, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v14, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v16, v0

    move-wide v12, v8

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v8

    const-wide/16 v6, 0x0

    cmp-long v6, v18, v6

    if-nez v6, :cond_22

    const-wide/16 v6, 0x0

    cmp-long v6, v8, v6

    if-eqz v6, :cond_1e

    :cond_22
    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v18, v6

    if-lez v6, :cond_23

    const/4 v6, 0x1

    :goto_1e
    if-nez v6, :cond_1e

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v8, v6

    if-lez v6, :cond_24

    const/4 v6, 0x1

    :goto_1f
    if-nez v6, :cond_1e

    move-wide/from16 v0, v18

    long-to-int v4, v0

    move-object/from16 v0, p2

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderDelay:I

    long-to-int v4, v8

    move-object/from16 v0, p2

    iput v4, v0, Lcom/google/android/exoplayer2/extractor/GaplessInfoHolder;->encoderPadding:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v6, 0xf4240

    move-object/from16 v0, v21

    invoke-static {v0, v6, v7, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v5, v23

    move-object/from16 v6, v22

    move/from16 v7, v24

    move-object/from16 v8, v21

    move-object/from16 v9, v20

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v4

    :cond_23
    const/4 v6, 0x0

    goto :goto_1e

    :cond_24
    const/4 v6, 0x0

    goto :goto_1f

    :cond_25
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    const/4 v7, 0x0

    aget-wide v14, v6, v7

    const/4 v6, 0x0

    move v12, v6

    :goto_20
    move-object/from16 v0, v21

    array-length v6, v0

    if-lt v12, v6, :cond_26

    sub-long/2addr v4, v14

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v6, 0xf4240

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v10

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v5, v23

    move-object/from16 v6, v22

    move/from16 v7, v24

    move-object/from16 v8, v21

    move-object/from16 v9, v20

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v4

    :cond_26
    aget-wide v6, v21, v12

    sub-long/2addr v6, v14

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    aput-wide v6, v21, v12

    add-int/lit8 v6, v12, 0x1

    move v12, v6

    goto :goto_20

    :cond_27
    const/4 v4, 0x1

    move/from16 v25, v4

    goto/16 :goto_15

    :cond_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v16, v4, v12

    const-wide/16 v4, -0x1

    cmp-long v4, v16, v4

    if-eqz v4, :cond_29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v4, v4, v12

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2, v6, v7}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v8

    add-long v4, v4, v16

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v4, v5, v1, v6}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v6

    sub-int v4, v6, v8

    add-int v7, v15, v4

    if-ne v14, v8, :cond_2a

    const/4 v4, 0x0

    :goto_21
    or-int v5, v13, v4

    :goto_22
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    goto/16 :goto_16

    :cond_29
    move v5, v13

    move v6, v14

    move v7, v15

    goto :goto_22

    :cond_2a
    const/4 v4, 0x1

    goto :goto_21

    :cond_2b
    const/4 v4, 0x1

    goto/16 :goto_17

    :cond_2c
    new-array v4, v15, [J

    move-object/from16 v26, v4

    goto/16 :goto_18

    :cond_2d
    new-array v4, v15, [I

    move-object/from16 v27, v4

    goto/16 :goto_19

    :cond_2e
    const/4 v4, 0x0

    goto/16 :goto_1a

    :cond_2f
    new-array v5, v15, [I

    move-object/from16 v28, v5

    goto/16 :goto_1b

    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListMediaTimes:[J

    aget-wide v32, v4, v29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->editListDurations:[J

    aget-wide v4, v4, v29

    const-wide/16 v6, -0x1

    cmp-long v6, v32, v6

    if-eqz v6, :cond_31

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    invoke-static/range {v4 .. v9}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    add-long v8, v32, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v21

    move-wide/from16 v1, v32

    invoke-static {v0, v1, v2, v6, v7}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-static {v0, v8, v9, v1, v7}, Lcom/google/android/exoplayer2/util/Util;->binarySearchCeil([JJZZ)I

    move-result v9

    if-nez v30, :cond_32

    :goto_23
    move v8, v6

    move v7, v14

    move/from16 v6, v18

    :goto_24
    if-lt v8, v9, :cond_33

    move/from16 v36, v7

    move v7, v6

    move/from16 v6, v36

    :goto_25
    add-long/2addr v12, v4

    add-int/lit8 v4, v29, 0x1

    move/from16 v29, v4

    move v14, v6

    move/from16 v18, v7

    goto/16 :goto_1c

    :cond_31
    move v6, v14

    move/from16 v7, v18

    goto :goto_25

    :cond_32
    sub-int v7, v9, v6

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v6, v1, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-static {v0, v6, v1, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v6, v1, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_23

    :cond_33
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->movieTimescale:J

    move-wide/from16 v16, v0

    const-wide/32 v14, 0xf4240

    invoke-static/range {v12 .. v17}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v34

    aget-wide v14, v21, v8

    sub-long v14, v14, v32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    move-wide/from16 v18, v0

    const-wide/32 v16, 0xf4240

    invoke-static/range {v14 .. v19}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v14

    add-long v14, v14, v34

    aput-wide v14, v31, v7

    if-nez v30, :cond_35

    :cond_34
    :goto_26
    add-int/lit8 v14, v7, 0x1

    add-int/lit8 v7, v8, 0x1

    move v8, v7

    move v7, v14

    goto :goto_24

    :cond_35
    aget v14, v27, v7

    if-le v14, v6, :cond_34

    aget v6, v22, v8

    goto :goto_26

    :cond_36
    if-nez v5, :cond_20

    aget v6, v28, v4

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_37

    const/4 v6, 0x0

    :goto_27
    or-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    :cond_37
    const/4 v6, 0x1

    goto :goto_27

    :cond_38
    const-string/jumbo v4, "AtomParsers"

    const-string/jumbo v5, "Ignoring edit list: Edited sample sequence does not contain a sync sample."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Track;->timescale:J

    const-wide/32 v6, 0xf4240

    move-object/from16 v0, v21

    invoke-static {v0, v6, v7, v4, v5}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestampsInPlace([JJJ)V

    new-instance v4, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;

    move-object/from16 v5, v23

    move-object/from16 v6, v22

    move/from16 v7, v24

    move-object/from16 v8, v21

    move-object/from16 v9, v20

    invoke-direct/range {v4 .. v11}, Lcom/google/android/exoplayer2/extractor/mp4/TrackSampleTable;-><init>([J[II[J[IJ)V

    return-object v4

    :cond_39
    move-wide/from16 v22, v16

    move/from16 v16, v11

    goto/16 :goto_d
.end method

.method private static parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;
    .locals 21

    const/16 v1, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v20

    new-instance v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move/from16 v0, v20

    invoke-direct {v8, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;-><init>(I)V

    const/4 v9, 0x0

    :goto_0
    move/from16 v0, v20

    if-lt v9, v0, :cond_0

    return-object v8

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v4

    if-gtz v4, :cond_3

    const/4 v1, 0x0

    :goto_1
    const-string/jumbo v2, "childAtomSize should be positive"

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc1:I

    if-ne v2, v1, :cond_4

    :cond_1
    move-object/from16 v1, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p4

    invoke-static/range {v1 .. v9}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    :cond_2
    :goto_2
    add-int v1, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avc3:I

    if-eq v2, v1, :cond_1

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    if-eq v2, v1, :cond_1

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4v:I

    if-eq v2, v1, :cond_1

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvc1:I

    if-eq v2, v1, :cond_1

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hev1:I

    if-eq v2, v1, :cond_1

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_s263:I

    if-eq v2, v1, :cond_1

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    if-eq v2, v1, :cond_1

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp09:I

    if-eq v2, v1, :cond_1

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mp4a:I

    if-ne v2, v1, :cond_6

    :cond_5
    move-object/from16 v10, p0

    move v11, v2

    move v12, v3

    move v13, v4

    move/from16 v14, p1

    move-object/from16 v15, p3

    move/from16 v16, p5

    move-object/from16 v17, p4

    move-object/from16 v18, v8

    move/from16 v19, v9

    invoke-static/range {v10 .. v19}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseAudioSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;ZLcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V

    goto :goto_2

    :cond_6
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_enca:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ac_3:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_ec_3:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsc:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtse:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsh:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_dtsl:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_samr:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sawb:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_lpcm:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sowt:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE__mp3:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_alac:I

    if-eq v2, v1, :cond_5

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-ne v2, v1, :cond_8

    :cond_7
    move-object/from16 v1, p0

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V

    goto/16 :goto_2

    :cond_8
    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-eq v2, v1, :cond_7

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-eq v2, v1, :cond_7

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-eq v2, v1, :cond_7

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-eq v2, v1, :cond_7

    sget v1, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_camm:I

    if-ne v2, v1, :cond_2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/x-camera-motion"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-static {v1, v2, v5, v7, v6}, Lcom/google/android/exoplayer2/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v1

    iput-object v1, v8, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    goto/16 :goto_2
.end method

.method private static parseTextSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIILjava/lang/String;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;)V
    .locals 13

    add-int/lit8 v2, p2, 0x8

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v12, 0x0

    const-wide v10, 0x7fffffffffffffffL

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_TTML:I

    if-eq p1, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tx3g:I

    if-eq p1, v2, :cond_1

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_wvtt:I

    if-eq p1, v2, :cond_2

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stpp:I

    if-eq p1, v2, :cond_3

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_c608:I

    if-eq p1, v2, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    :cond_0
    const-string/jumbo v3, "application/ttml+xml"

    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v12}, Lcom/google/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILcom/google/android/exoplayer2/drm/DrmInitData;JLjava/util/List;)Lcom/google/android/exoplayer2/Format;

    move-result-object v2

    move-object/from16 v0, p6

    iput-object v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    :cond_1
    const-string/jumbo v3, "application/x-quicktime-tx3g"

    add-int/lit8 v2, p3, -0x8

    add-int/lit8 v2, v2, -0x8

    new-array v4, v2, [B

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "application/x-mp4-vtt"

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "application/ttml+xml"

    const-wide/16 v10, 0x0

    goto :goto_0

    :cond_4
    const-string/jumbo v3, "application/x-mp4-cea-608"

    const/4 v2, 0x1

    move-object/from16 v0, p6

    iput v2, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    goto :goto_0
.end method

.method private static parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;
    .locals 12

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/high16 v11, 0x10000

    const/4 v6, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->parseFullAtomVersion(I)I

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v7

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    if-eqz v5, :cond_5

    :goto_1
    move v4, v6

    :goto_2
    if-lt v4, v2, :cond_6

    :goto_3
    if-nez v0, :cond_8

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedLongToLong()J

    move-result-wide v4

    :goto_4
    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-nez v0, :cond_0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :cond_0
    :goto_5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    if-eqz v0, :cond_a

    :cond_1
    if-eqz v0, :cond_b

    :cond_2
    neg-int v8, v11

    if-eq v0, v8, :cond_c

    :cond_3
    move v0, v6

    :goto_6
    new-instance v1, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    invoke-direct {v1, v7, v4, v5, v0}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;-><init>(IJI)V

    return-object v1

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v2, v3

    goto :goto_1

    :cond_6
    iget-object v9, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    add-int v10, v8, v4

    aget-byte v9, v9, v10

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    move v0, v6

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    goto :goto_4

    :cond_a
    if-ne v1, v11, :cond_1

    neg-int v8, v11

    if-ne v2, v8, :cond_1

    if-nez v3, :cond_1

    const/16 v0, 0x5a

    goto :goto_6

    :cond_b
    neg-int v8, v11

    if-ne v1, v8, :cond_2

    if-ne v2, v11, :cond_2

    if-nez v3, :cond_2

    const/16 v0, 0x10e

    goto :goto_6

    :cond_c
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    neg-int v0, v11

    if-ne v3, v0, :cond_3

    const/16 v0, 0xb4

    goto :goto_6
.end method

.method public static parseTrak(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;JLcom/google/android/exoplayer2/drm/DrmInitData;ZZ)Lcom/google/android/exoplayer2/extractor/mp4/Track;
    .locals 24

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdia:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v8

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hdlr:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseHdlr(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v14

    const/4 v2, -0x1

    if-eq v14, v2, :cond_0

    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_tkhd:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseTkhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;

    move-result-object v15

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$000(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)J

    move-result-wide v2

    :goto_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMvhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)J

    move-result-wide v6

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_minf:I

    invoke-virtual {v8, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stbl:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_mdhd:I

    invoke-virtual {v8, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMdhd(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v4

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_stsd:I

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getLeafAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;

    move-result-object v2

    iget-object v8, v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v9

    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$200(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v10

    iget-object v11, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    move-object/from16 v12, p4

    move/from16 v13, p6

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseStsd(Lcom/google/android/exoplayer2/util/ParsableByteArray;IILjava/lang/String;Lcom/google/android/exoplayer2/drm/DrmInitData;Z)Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;

    move-result-object v5

    const/16 v22, 0x0

    const/16 v23, 0x0

    if-eqz p5, :cond_3

    :goto_2
    iget-object v2, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_4

    new-instance v9, Lcom/google/android/exoplayer2/extractor/mp4/Track;

    invoke-static {v15}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;->access$100(Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$TkhdData;)I

    move-result v10

    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v0, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    move-object/from16 v18, v0

    iget v0, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->requiredSampleTransformation:I

    move/from16 v19, v0

    iget-object v0, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move/from16 v21, v0

    move v11, v14

    move-wide v14, v6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/exoplayer2/extractor/mp4/Track;-><init>(IIJJJLcom/google/android/exoplayer2/Format;I[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;I[J[J)V

    :goto_3
    return-object v9

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    move-wide/from16 v2, p2

    goto :goto_0

    :cond_2
    const-wide/32 v4, 0xf4240

    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v16

    goto :goto_1

    :cond_3
    sget v2, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_edts:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;->getContainerAtomOfType(I)Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEdts(Lcom/google/android/exoplayer2/extractor/mp4/Atom$ContainerAtom;)Landroid/util/Pair;

    move-result-object v3

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [J

    move-object/from16 v23, v3

    move-object/from16 v22, v2

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3
.end method

.method public static parseUdta(Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;Z)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/mp4/Atom$LeafAtom;->data:Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-ge v1, v5, :cond_1

    return-object v6

    :cond_0
    return-object v6

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    sget v4, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_meta:I

    if-eq v3, v4, :cond_2

    add-int/lit8 v1, v2, -0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseMetaAtom(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method private static parseVideoSampleEntry(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIIIILcom/google/android/exoplayer2/drm/DrmInitData;Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;I)V
    .locals 19

    add-int/lit8 v3, p2, 0x8

    add-int/lit8 v3, v3, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/16 v3, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    const/4 v6, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v3, 0x32

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_encv:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_1

    move-object/from16 v17, p6

    :goto_0
    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    move/from16 v18, v5

    move v5, v6

    move/from16 v6, v18

    :goto_1
    sub-int v3, v6, p2

    move/from16 v0, p3

    if-lt v3, v0, :cond_4

    :cond_0
    if-eqz v4, :cond_17

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    move/from16 v12, p5

    invoke-static/range {v3 .. v17}, Lcom/google/android/exoplayer2/Format;->createVideoSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IF[BILcom/google/android/exoplayer2/video/ColorInfo;Lcom/google/android/exoplayer2/drm/DrmInitData;)Lcom/google/android/exoplayer2/Format;

    move-result-object v3

    move-object/from16 v0, p7

    iput-object v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->format:Lcom/google/android/exoplayer2/Format;

    return-void

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseSampleEntryEncryptionData(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Landroid/util/Pair;

    move-result-object v7

    if-nez v7, :cond_2

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    move-object/from16 v17, p6

    goto :goto_0

    :cond_2
    iget-object v3, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p6, :cond_3

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v3, v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;->schemeType:Ljava/lang/String;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/drm/DrmInitData;->copyWithSchemeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/drm/DrmInitData;

    move-result-object v3

    move-object v4, v3

    :goto_3
    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    iget-object v3, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    aput-object v3, v10, p8

    move-object/from16 p6, v4

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    move-object v4, v3

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v10

    if-eqz v10, :cond_5

    :goto_4
    if-gtz v10, :cond_6

    const/4 v3, 0x0

    :goto_5
    const-string/jumbo v12, "childAtomSize should be positive"

    invoke-static {v3, v12}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_avcC:I

    if-eq v3, v12, :cond_7

    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_hvcC:I

    if-eq v3, v12, :cond_a

    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vpcC:I

    if-eq v3, v12, :cond_c

    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_d263:I

    if-eq v3, v12, :cond_f

    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_esds:I

    if-eq v3, v12, :cond_11

    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_pasp:I

    if-eq v3, v12, :cond_13

    sget v12, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_sv3d:I

    if-eq v3, v12, :cond_14

    sget v7, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_st3d:I

    if-eq v3, v7, :cond_15

    move v3, v5

    :goto_6
    add-int v5, v6, v10

    move v6, v5

    move v5, v3

    goto/16 :goto_1

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v3

    sub-int v3, v3, p2

    move/from16 v0, p3

    if-eq v3, v0, :cond_0

    goto :goto_4

    :cond_6
    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    if-eqz v4, :cond_8

    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-string/jumbo v4, "video/avc"

    add-int/lit8 v3, v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/AvcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/AvcConfig;

    move-result-object v3

    iget-object v11, v3, Lcom/google/android/exoplayer2/video/AvcConfig;->initializationData:Ljava/util/List;

    iget v7, v3, Lcom/google/android/exoplayer2/video/AvcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v7, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    if-eqz v5, :cond_9

    :goto_8
    move v3, v5

    goto :goto_6

    :cond_8
    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    iget v13, v3, Lcom/google/android/exoplayer2/video/AvcConfig;->pixelWidthAspectRatio:F

    goto :goto_8

    :cond_a
    if-eqz v4, :cond_b

    const/4 v3, 0x0

    :goto_9
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-string/jumbo v4, "video/hevc"

    add-int/lit8 v3, v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplayer2/video/HevcConfig;->parse(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/video/HevcConfig;

    move-result-object v3

    iget-object v11, v3, Lcom/google/android/exoplayer2/video/HevcConfig;->initializationData:Ljava/util/List;

    iget v3, v3, Lcom/google/android/exoplayer2/video/HevcConfig;->nalUnitLengthFieldLength:I

    move-object/from16 v0, p7

    iput v3, v0, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers$StsdData;->nalUnitLengthFieldLength:I

    move v3, v5

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    goto :goto_9

    :cond_c
    if-eqz v4, :cond_d

    const/4 v3, 0x0

    :goto_a
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    sget v3, Lcom/google/android/exoplayer2/extractor/mp4/Atom;->TYPE_vp08:I

    move/from16 v0, p1

    if-eq v0, v3, :cond_e

    const-string/jumbo v3, "video/x-vnd.on2.vp9"

    :goto_b
    move-object v4, v3

    move v3, v5

    goto :goto_6

    :cond_d
    const/4 v3, 0x1

    goto :goto_a

    :cond_e
    const-string/jumbo v3, "video/x-vnd.on2.vp8"

    goto :goto_b

    :cond_f
    if-eqz v4, :cond_10

    const/4 v3, 0x0

    :goto_c
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    const-string/jumbo v4, "video/3gpp"

    move v3, v5

    goto :goto_6

    :cond_10
    const/4 v3, 0x1

    goto :goto_c

    :cond_11
    if-eqz v4, :cond_12

    const/4 v3, 0x0

    :goto_d
    invoke-static {v3}, Lcom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseEsdsFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Landroid/util/Pair;

    move-result-object v4

    iget-object v3, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    move-object v4, v3

    move v3, v5

    goto/16 :goto_6

    :cond_12
    const/4 v3, 0x1

    goto :goto_d

    :cond_13
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parsePaspFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)F

    move-result v13

    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    invoke-static {v0, v7, v10}, Lcom/google/android/exoplayer2/extractor/mp4/AtomParsers;->parseProjFromParent(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)[B

    move-result-object v14

    move v3, v5

    goto/16 :goto_6

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/4 v7, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    if-eqz v3, :cond_16

    move v3, v5

    goto/16 :goto_6

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v3, v5

    goto/16 :goto_6

    :pswitch_0
    const/4 v15, 0x0

    move v3, v5

    goto/16 :goto_6

    :pswitch_1
    const/4 v15, 0x1

    move v3, v5

    goto/16 :goto_6

    :pswitch_2
    const/4 v15, 0x2

    move v3, v5

    goto/16 :goto_6

    :pswitch_3
    const/4 v15, 0x3

    move v3, v5

    goto/16 :goto_6

    :cond_17
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
