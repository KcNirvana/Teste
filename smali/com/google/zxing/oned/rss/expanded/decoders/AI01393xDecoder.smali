.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01393xDecoder.java"


# static fields
.field private static final FIRST_THREE_DIGITS_SIZE:I = 0xa

.field private static final HEADER_SIZE:I = 0x8

.field private static final LAST_DIGIT_SIZE:I = 0x2


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v7, 0x30

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->getInformation()Lcom/google/zxing/common/BitArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-ge v4, v7, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x8

    invoke-virtual {p0, v0, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v7, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v3

    const-string/jumbo v4, "(393"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v4

    const/16 v5, 0x32

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v1

    div-int/lit8 v4, v1, 0x64

    if-nez v4, :cond_1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    div-int/lit8 v4, v1, 0xa

    if-nez v4, :cond_2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v4

    const/16 v5, 0x3c

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
