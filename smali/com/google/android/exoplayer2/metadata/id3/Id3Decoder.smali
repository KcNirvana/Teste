.class public final Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/exoplayer2/metadata/MetadataDecoder;


# static fields
.field private static final FRAME_FLAG_V3_HAS_GROUP_IDENTIFIER:I = 0x20

.field private static final FRAME_FLAG_V3_IS_COMPRESSED:I = 0x80

.field private static final FRAME_FLAG_V3_IS_ENCRYPTED:I = 0x40

.field private static final FRAME_FLAG_V4_HAS_DATA_LENGTH:I = 0x1

.field private static final FRAME_FLAG_V4_HAS_GROUP_IDENTIFIER:I = 0x40

.field private static final FRAME_FLAG_V4_IS_COMPRESSED:I = 0x8

.field private static final FRAME_FLAG_V4_IS_ENCRYPTED:I = 0x4

.field private static final FRAME_FLAG_V4_IS_UNSYNCHRONIZED:I = 0x2

.field public static final ID3_HEADER_LENGTH:I = 0xa

.field public static final ID3_TAG:I

.field private static final ID3_TEXT_ENCODING_ISO_8859_1:I = 0x0

.field private static final ID3_TEXT_ENCODING_UTF_16:I = 0x1

.field private static final ID3_TEXT_ENCODING_UTF_16BE:I = 0x2

.field private static final ID3_TEXT_ENCODING_UTF_8:I = 0x3

.field public static final NO_FRAMES_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

.field private static final TAG:Ljava/lang/String; = "Id3Decoder"


# instance fields
.field private final framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$1;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$1;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->NO_FRAMES_PREDICATE:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    const-string/jumbo v0, "ID3"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;-><init>(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    return-void
.end method

.method private static copyOfRangeIfValid([BII)[B
    .locals 1

    if-le p2, p1, :cond_0

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method private static decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .locals 9

    const/4 v1, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, p1, -0x1

    new-array v4, v0, [B

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v4, v8, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    if-eq p2, v1, :cond_1

    invoke-static {v4, v8}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v1

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v0, v4, v8, v1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    :cond_0
    :goto_0
    add-int/lit8 v5, v1, 0x1

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v1, v1, 0x2

    invoke-static {v4, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    new-instance v7, Ljava/lang/String;

    sub-int v8, v6, v1

    invoke-direct {v7, v4, v1, v8, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v1

    add-int/2addr v1, v6

    array-length v2, v4

    invoke-static {v4, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    invoke-direct {v2, v0, v7, v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "image/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v5, Ljava/lang/String;

    const-string/jumbo v6, "ISO-8859-1"

    const/4 v7, 0x3

    invoke-direct {v5, v4, v8, v7, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/exoplayer2/util/Util;->toLowerInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "image/jpg"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v0, "image/jpeg"

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "image/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;

    invoke-direct {v1, p2, v0}, Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeChapterFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v2

    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v4, v2, v0

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v1, v3, v0, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    const-wide/16 v4, -0x1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v6

    const-wide v8, 0xffffffffL

    cmp-long v8, v6, v8

    if-nez v8, :cond_1

    const-wide/16 v6, -0x1

    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    add-int/2addr v0, p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v8

    if-lt v8, v0, :cond_3

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v8, v0, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    invoke-direct/range {v0 .. v8}, Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;-><init>(Ljava/lang/String;IIJJ[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v0

    :cond_3
    invoke-static {p2, p0, p3, p4, p5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static decodeChapterTOCFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v5, v10}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v5

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v8, v5, v10

    const-string/jumbo v9, "ISO-8859-1"

    invoke-direct {v6, v7, v10, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    and-int/lit8 v7, v5, 0x2

    if-nez v7, :cond_1

    const/4 v7, 0x0

    :goto_0
    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    const/4 v8, 0x0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v11

    new-array v9, v11, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_2
    if-lt v5, v11, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    add-int v10, v10, p1

    :cond_0
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v11

    if-lt v11, v10, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;)V

    return-object v5

    :cond_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-static {v13, v12}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v13

    new-instance v14, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    sub-int v16, v13, v12

    const-string/jumbo v17, "ISO-8859-1"

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v15, v12, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v14, v9, v5

    add-int/lit8 v12, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move/from16 v0, p2

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private static decodeCommentFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .locals 7

    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [B

    invoke-virtual {p0, v2, v6, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v6, v4}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 v2, p1, -0x4

    new-array v2, v2, [B

    add-int/lit8 v4, p1, -0x4

    invoke-virtual {p0, v2, v6, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v6, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2, v6, v4, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v0

    invoke-static {v2, v4, v0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    invoke-direct {v1, v3, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 14

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    const/4 v0, 0x3

    if-ge p0, v0, :cond_4

    const/4 v5, 0x0

    :goto_0
    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v9

    :cond_0
    :goto_1
    const/4 v0, 0x3

    if-ge p0, v0, :cond_7

    const/4 v0, 0x0

    move v6, v0

    :goto_2
    if-eqz v2, :cond_8

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    add-int v12, v0, v9

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    if-gt v12, v0, :cond_9

    if-nez p4, :cond_a

    :cond_2
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v11, 0x3

    if-eq p0, v11, :cond_b

    const/4 v11, 0x4

    if-eq p0, v11, :cond_f

    move v6, v1

    move v1, v10

    :goto_3
    if-eqz v1, :cond_15

    :cond_3
    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Skipping unsupported compressed or encrypted frame"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    if-nez p2, :cond_0

    and-int/lit16 v0, v9, 0xff

    shr-int/lit8 v1, v9, 0x8

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x10

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    shr-int/lit8 v1, v9, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int v9, v0, v1

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v9

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    move v6, v0

    goto :goto_2

    :cond_8
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v9, :cond_1

    if-nez v6, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_9
    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Frame size exceeds remaining tag data"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_a
    move-object/from16 v0, p4

    move v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;->evaluate(IIIII)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    return-object v0

    :cond_b
    and-int/lit16 v0, v6, 0x80

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_4
    and-int/lit8 v1, v6, 0x40

    if-nez v1, :cond_d

    const/4 v1, 0x0

    :goto_5
    and-int/lit8 v6, v6, 0x20

    if-nez v6, :cond_e

    const/4 v6, 0x0

    :goto_6
    move v7, v1

    move v1, v0

    move v13, v6

    move v6, v0

    move v0, v13

    goto/16 :goto_3

    :cond_c
    const/4 v0, 0x1

    goto :goto_4

    :cond_d
    const/4 v1, 0x1

    goto :goto_5

    :cond_e
    const/4 v6, 0x1

    goto :goto_6

    :cond_f
    and-int/lit8 v0, v6, 0x40

    if-nez v0, :cond_10

    const/4 v0, 0x0

    :goto_7
    and-int/lit8 v1, v6, 0x8

    if-nez v1, :cond_11

    const/4 v1, 0x0

    :goto_8
    and-int/lit8 v7, v6, 0x4

    if-nez v7, :cond_12

    const/4 v7, 0x0

    :goto_9
    and-int/lit8 v8, v6, 0x2

    if-nez v8, :cond_13

    const/4 v8, 0x0

    :goto_a
    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_14

    const/4 v6, 0x0

    goto/16 :goto_3

    :cond_10
    const/4 v0, 0x1

    goto :goto_7

    :cond_11
    const/4 v1, 0x1

    goto :goto_8

    :cond_12
    const/4 v7, 0x1

    goto :goto_9

    :cond_13
    const/4 v8, 0x1

    goto :goto_a

    :cond_14
    const/4 v6, 0x1

    goto/16 :goto_3

    :cond_15
    if-nez v7, :cond_3

    if-nez v0, :cond_1e

    move v7, v9

    :goto_b
    if-nez v6, :cond_1f

    :goto_c
    if-nez v8, :cond_20

    :goto_d
    const/16 v0, 0x54

    if-eq v2, v0, :cond_21

    :cond_16
    :goto_e
    const/16 v0, 0x54

    if-eq v2, v0, :cond_24

    const/16 v0, 0x57

    if-eq v2, v0, :cond_25

    :cond_17
    :goto_f
    const/16 v0, 0x57

    if-eq v2, v0, :cond_28

    const/16 v0, 0x50

    if-eq v2, v0, :cond_29

    :cond_18
    const/16 v0, 0x47

    if-eq v2, v0, :cond_2a

    :cond_19
    :goto_10
    const/4 v0, 0x2

    if-eq p0, v0, :cond_2d

    const/16 v0, 0x41

    if-eq v2, v0, :cond_2f

    :cond_1a
    :goto_11
    const/16 v0, 0x43

    if-eq v2, v0, :cond_30

    :cond_1b
    :goto_12
    const/16 v0, 0x43

    if-eq v2, v0, :cond_33

    :cond_1c
    const/16 v0, 0x43

    if-eq v2, v0, :cond_34

    :cond_1d
    :try_start_0
    invoke-static {p0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v7, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeBinaryFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/BinaryFrame;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_13
    if-eqz v0, :cond_35

    :goto_14
    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :cond_1e
    add-int/lit8 v7, v9, -0x1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_b

    :cond_1f
    add-int/lit8 v7, v7, -0x4

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_c

    :cond_20
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v7

    goto :goto_d

    :cond_21
    const/16 v0, 0x58

    if-ne v3, v0, :cond_16

    const/16 v0, 0x58

    if-ne v4, v0, :cond_16

    const/4 v0, 0x2

    if-ne p0, v0, :cond_23

    :cond_22
    :try_start_1
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v0

    goto :goto_13

    :cond_23
    const/16 v0, 0x58

    if-eq v5, v0, :cond_22

    goto :goto_e

    :cond_24
    invoke-static {p0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v7, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    move-result-object v0

    goto :goto_13

    :cond_25
    const/16 v0, 0x58

    if-ne v3, v0, :cond_17

    const/16 v0, 0x58

    if-ne v4, v0, :cond_17

    const/4 v0, 0x2

    if-ne p0, v0, :cond_27

    :cond_26
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeWxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v0

    goto :goto_13

    :cond_27
    const/16 v0, 0x58

    if-eq v5, v0, :cond_26

    goto :goto_f

    :cond_28
    invoke-static {p0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v7, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeUrlLinkFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    move-result-object v0

    goto :goto_13

    :cond_29
    const/16 v0, 0x52

    if-ne v3, v0, :cond_18

    const/16 v0, 0x49

    if-ne v4, v0, :cond_18

    const/16 v0, 0x56

    if-ne v5, v0, :cond_18

    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    move-result-object v0

    goto :goto_13

    :cond_2a
    const/16 v0, 0x45

    if-ne v3, v0, :cond_19

    const/16 v0, 0x4f

    if-ne v4, v0, :cond_19

    const/16 v0, 0x42

    if-ne v5, v0, :cond_2c

    :cond_2b
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    move-result-object v0

    goto :goto_13

    :cond_2c
    const/4 v0, 0x2

    if-eq p0, v0, :cond_2b

    goto/16 :goto_10

    :cond_2d
    const/16 v0, 0x50

    if-ne v2, v0, :cond_1a

    const/16 v0, 0x49

    if-ne v3, v0, :cond_1a

    const/16 v0, 0x43

    if-ne v4, v0, :cond_1a

    :cond_2e
    invoke-static {p1, v7, p0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeApicFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;II)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    move-result-object v0

    goto/16 :goto_13

    :cond_2f
    const/16 v0, 0x50

    if-ne v3, v0, :cond_1a

    const/16 v0, 0x49

    if-ne v4, v0, :cond_1a

    const/16 v0, 0x43

    if-eq v5, v0, :cond_2e

    goto/16 :goto_11

    :cond_30
    const/16 v0, 0x4f

    if-ne v3, v0, :cond_1b

    const/16 v0, 0x4d

    if-ne v4, v0, :cond_1b

    const/16 v0, 0x4d

    if-ne v5, v0, :cond_32

    :cond_31
    invoke-static {p1, v7}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeCommentFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    move-result-object v0

    goto/16 :goto_13

    :cond_32
    const/4 v0, 0x2

    if-eq p0, v0, :cond_31

    goto/16 :goto_12

    :cond_33
    const/16 v0, 0x48

    if-ne v3, v0, :cond_1c

    const/16 v0, 0x41

    if-ne v4, v0, :cond_1c

    const/16 v0, 0x50

    if-ne v5, v0, :cond_1c

    move-object v6, p1

    move v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterFrame;

    move-result-object v0

    goto/16 :goto_13

    :cond_34
    const/16 v0, 0x54

    if-ne v3, v0, :cond_1d

    const/16 v0, 0x4f

    if-ne v4, v0, :cond_1d

    const/16 v0, 0x43

    if-ne v5, v0, :cond_1d

    move-object v6, p1

    move v8, p0

    move/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v6 .. v11}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeChapterTOCFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/ChapterTocFrame;

    move-result-object v0

    goto/16 :goto_13

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to decode frame: id="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "Id3Decoder"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getFrameId(IIIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", frameSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Unsupported character encoding"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v12}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v0
.end method

.method private static decodeGeobFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v6, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "ISO-8859-1"

    invoke-direct {v4, v2, v6, v3, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v5

    invoke-static {v2, v3, v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v6

    invoke-static {v2, v5, v6, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v0

    add-int/2addr v0, v6

    array-length v5, v2

    invoke-static {v2, v0, v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v0

    new-instance v2, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;

    invoke-direct {v2, v4, v3, v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/GeobFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object v2
.end method

.method private static decodeHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/16 v3, 0xa

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v0

    sget v3, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->ID3_TAG:I

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v3

    const/4 v0, 0x2

    if-eq v4, v0, :cond_2

    const/4 v0, 0x3

    if-eq v4, v0, :cond_6

    if-eq v4, v7, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Id3Decoder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Data too short to be an ID3 tag"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Id3Decoder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    and-int/lit8 v0, v5, 0x40

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    if-nez v0, :cond_5

    move v0, v3

    :goto_1
    if-lt v4, v7, :cond_e

    :goto_2
    move v2, v1

    :cond_3
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;-><init>(IZI)V

    return-object v1

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "Id3Decoder"

    const-string/jumbo v1, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_6
    and-int/lit8 v0, v5, 0x40

    if-nez v0, :cond_7

    move v0, v1

    :goto_3
    if-nez v0, :cond_8

    move v0, v3

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, 0x4

    sub-int v0, v3, v0

    goto :goto_1

    :cond_9
    and-int/lit8 v0, v5, 0x40

    if-nez v0, :cond_a

    move v0, v1

    :goto_4
    if-nez v0, :cond_b

    :goto_5
    and-int/lit8 v0, v5, 0x10

    if-nez v0, :cond_c

    move v0, v1

    :goto_6
    if-nez v0, :cond_d

    move v0, v3

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readSynchSafeInt()I

    move-result v0

    add-int/lit8 v6, v0, -0x4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v3, v0

    goto :goto_5

    :cond_c
    move v0, v2

    goto :goto_6

    :cond_d
    add-int/lit8 v0, v3, -0xa

    goto :goto_1

    :cond_e
    and-int/lit16 v3, v5, 0x80

    if-nez v3, :cond_3

    goto :goto_2
.end method

.method private static decodePrivFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;
    .locals 5

    const/4 v4, 0x0

    new-array v0, p1, [B

    invoke-virtual {p0, v0, v4, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    array-length v3, v0

    invoke-static {v0, v1, v3}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->copyOfRangeIfValid([BII)[B

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/metadata/id3/PrivFrame;-><init>(Ljava/lang/String;[B)V

    return-object v1
.end method

.method private static decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;
    .locals 2

    if-gt p2, p1, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    array-length v0, p0

    if-gt p2, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1, p3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method private static decodeTextInformationFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v4, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v4, v0, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p2, v5, v3}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    return-object v5
.end method

.method private static decodeTxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v2, v3, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v0

    invoke-static {v2, v3, v0, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string/jumbo v2, "TXXX"

    invoke-direct {v1, v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static decodeUrlLinkFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;ILjava/lang/String;)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 5

    const/4 v4, 0x0

    new-array v0, p1, [B

    invoke-virtual {p0, v0, v4, p1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v0, v4}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, v0, v4, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static decodeWxxxFrame(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->getCharsetName(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    new-array v2, v2, [B

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v2, v5, v3}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readBytes([BII)V

    invoke-static {v2, v5, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfEos([BII)I

    move-result v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2, v5, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->delimiterLength(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v1

    const-string/jumbo v3, "ISO-8859-1"

    invoke-static {v2, v0, v1, v3}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeStringIfValid([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;

    const-string/jumbo v2, "WXXX"

    invoke-direct {v1, v2, v4, v0}, Lcom/google/android/exoplayer2/metadata/id3/UrlLinkFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static delimiterLength(I)I
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getCharsetName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "ISO-8859-1"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ISO-8859-1"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "UTF-16"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "UTF-16BE"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "UTF-8"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFrameId(IIIII)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    if-eq p0, v4, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "%c%c%c%c"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string/jumbo v2, "%c%c%c"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static indexOfEos([BII)I
    .locals 2

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    if-nez p2, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    :goto_0
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    array-length v0, p0

    return v0

    :cond_2
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->indexOfZeroByte([BI)I

    move-result v0

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p0, v1

    if-nez v1, :cond_3

    return v0
.end method

.method private static indexOfZeroByte([BI)I
    .locals 1

    :goto_0
    array-length v0, p0

    if-lt p1, v0, :cond_0

    array-length v0, p0

    return v0

    :cond_0
    aget-byte v0, p0, p1

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I
    .locals 6

    iget-object v2, p0, Lcom/google/android/exoplayer2/util/ParsableByteArray;->data:[B

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v0

    move v1, v0

    move v0, p1

    :goto_0
    add-int/lit8 v3, v1, 0x1

    if-lt v3, v0, :cond_0

    return v0

    :cond_0
    aget-byte v3, v2, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xff

    if-eq v3, v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v1, 0x1

    aget-byte v3, v2, v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x2

    invoke-static {v2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private static validateFrames(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZ)Z
    .locals 12

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v5

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt24()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-long v2, v0

    const/4 v0, 0x0

    move v4, v0

    move-wide v10, v2

    move v2, v1

    move-wide v0, v10

    :goto_1
    if-eqz v2, :cond_4

    :cond_1
    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    :cond_2
    :goto_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x4

    if-eq p1, v6, :cond_7

    const/4 v6, 0x3

    if-eq p1, v6, :cond_a

    :goto_3
    const/4 v4, 0x0

    if-nez v2, :cond_d

    move v2, v4

    :goto_4
    if-nez v3, :cond_e

    :goto_5
    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_f

    const/4 v2, 0x1

    :goto_6
    if-nez v2, :cond_10

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    return v0

    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    move v4, v0

    move-wide v10, v2

    move v2, v1

    move-wide v0, v10

    goto :goto_1

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x1

    return v0

    :cond_5
    if-nez p3, :cond_2

    const-wide/32 v2, 0x808080

    and-long/2addr v2, v0

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_6

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    return v0

    :cond_6
    const-wide/16 v2, 0xff

    and-long/2addr v2, v0

    const/16 v6, 0x8

    shr-long v6, v0, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const/16 v6, 0x10

    shr-long v6, v0, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0xe

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const/16 v6, 0x18

    shr-long/2addr v0, v6

    const-wide/16 v6, 0xff

    and-long/2addr v0, v6

    const/16 v6, 0x15

    shl-long/2addr v0, v6

    or-long/2addr v0, v2

    goto :goto_2

    :cond_7
    and-int/lit8 v2, v4, 0x40

    if-nez v2, :cond_8

    const/4 v2, 0x0

    :goto_7
    and-int/lit8 v3, v4, 0x1

    if-nez v3, :cond_9

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    const/4 v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x1

    goto :goto_3

    :cond_a
    and-int/lit8 v2, v4, 0x20

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_8
    and-int/lit16 v3, v4, 0x80

    if-nez v3, :cond_c

    const/4 v3, 0x0

    goto :goto_3

    :cond_b
    const/4 v2, 0x1

    goto :goto_8

    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_d
    const/4 v2, 0x1

    goto/16 :goto_4

    :cond_e
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_5

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    :cond_10
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-ltz v2, :cond_11

    const/4 v2, 0x1

    :goto_9
    if-nez v2, :cond_12

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    const/4 v0, 0x0

    return v0

    :cond_11
    const/4 v2, 0x0

    goto :goto_9

    :cond_12
    long-to-int v0, v0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    throw v0
.end method


# virtual methods
.method public decode(Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 2

    iget-object v0, p1, Lcom/google/android/exoplayer2/metadata/MetadataInputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v0

    return-object v0
.end method

.method public decode([BI)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 11

    const/4 v10, 0x4

    const/4 v3, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/google/android/exoplayer2/util/ParsableByteArray;

    invoke-direct {v5, p1, p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;-><init>([BI)V

    invoke-static {v5}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeHeader(Lcom/google/android/exoplayer2/util/ParsableByteArray;)Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v7

    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v0, 0xa

    :goto_0
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v1

    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$200(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)Z

    move-result v8

    if-nez v8, :cond_3

    :goto_1
    add-int/2addr v1, v7

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setLimit(I)V

    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v1

    invoke-static {v5, v1, v0, v2}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :cond_0
    :goto_2
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-ge v2, v0, :cond_7

    new-instance v0, Lcom/google/android/exoplayer2/metadata/Metadata;

    invoke-direct {v0, v4}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>(Ljava/util/List;)V

    return-object v0

    :cond_1
    return-object v9

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$100(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v1

    invoke-static {v5, v1}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->removeUnsynchronization(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)I

    move-result v1

    goto :goto_1

    :cond_4
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v1

    if-eq v1, v10, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Id3Decoder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_6
    invoke-static {v5, v10, v0, v3}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->validateFrames(Lcom/google/android/exoplayer2/util/ParsableByteArray;IIZ)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v3

    goto :goto_2

    :cond_7
    invoke-static {v6}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;->access$000(Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$Id3Header;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->framePredicate:Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;

    invoke-static {v2, v5, v1, v0, v3}, Lcom/google/android/exoplayer2/metadata/id3/Id3Decoder;->decodeFrame(ILcom/google/android/exoplayer2/util/ParsableByteArray;ZILcom/google/android/exoplayer2/metadata/id3/Id3Decoder$FramePredicate;)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method
