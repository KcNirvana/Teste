.class public final Lcom/google/android/exoplayer2/text/cea/CeaUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COUNTRY_CODE:I = 0xb5

.field private static final PAYLOAD_TYPE_CC:I = 0x4

.field private static final PROVIDER_CODE_ATSC:I = 0x31

.field private static final PROVIDER_CODE_DIRECTV:I = 0x2f

.field private static final TAG:Ljava/lang/String; = "CeaUtil"

.field private static final USER_DATA_TYPE_CODE:I = 0x3

.field private static final USER_ID_DTG1:I

.field private static final USER_ID_GA94:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "GA94"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_ID_GA94:I

    const-string/jumbo v0, "DTG1"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_ID_DTG1:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consume(JLcom/google/android/exoplayer2/util/ParsableByteArray;[Lcom/google/android/exoplayer2/extractor/TrackOutput;)V
    .locals 12

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v0

    invoke-static {p2}, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v2

    add-int v8, v2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    :cond_1
    const-string/jumbo v0, "CeaUtil"

    const-string/jumbo v1, "Skipping remainder of malformed SEI NAL unit."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->limit()I

    move-result v0

    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    :cond_3
    move v0, v8

    goto :goto_1

    :cond_4
    const/16 v0, 0x8

    if-lt v1, v0, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedShort()I

    move-result v2

    const/4 v0, 0x0

    const/16 v3, 0x31

    if-eq v2, v3, :cond_6

    :goto_2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v3

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_7

    :goto_3
    const/16 v4, 0xb5

    if-eq v1, v4, :cond_8

    :cond_5
    :goto_4
    const/4 v1, 0x0

    :goto_5
    const/16 v3, 0x31

    if-eq v2, v3, :cond_b

    :goto_6
    if-nez v1, :cond_e

    move v0, v8

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readInt()I

    move-result v0

    goto :goto_2

    :cond_7
    const/4 v4, 0x1

    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_3

    :cond_8
    const/16 v1, 0x31

    if-ne v2, v1, :cond_a

    :cond_9
    const/4 v1, 0x3

    if-ne v3, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_a
    const/16 v1, 0x2f

    if-eq v2, v1, :cond_9

    goto :goto_4

    :cond_b
    sget v2, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_ID_GA94:I

    if-ne v0, v2, :cond_d

    :cond_c
    const/4 v0, 0x1

    :goto_7
    and-int/2addr v1, v0

    goto :goto_6

    :cond_d
    sget v2, Lcom/google/android/exoplayer2/text/cea/CeaUtil;->USER_ID_DTG1:I

    if-eq v0, v2, :cond_c

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->skipBytes(I)V

    mul-int/lit8 v5, v0, 0x3

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->getPosition()I

    move-result v9

    array-length v10, p3

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v10, :cond_f

    move v0, v8

    goto :goto_1

    :cond_f
    aget-object v1, p3, v0

    invoke-virtual {p2, v9}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->setPosition(I)V

    invoke-interface {v1, p2, v5}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplayer2/util/ParsableByteArray;I)V

    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-wide v2, p0

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplayer2/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method private static readNon255TerminatedValue(Lcom/google/android/exoplayer2/util/ParsableByteArray;)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method
