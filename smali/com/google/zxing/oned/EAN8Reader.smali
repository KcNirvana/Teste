.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget-object v2, p0, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    aput v8, v2, v8

    aput v8, v2, v10

    const/4 v7, 0x2

    aput v8, v2, v7

    const/4 v7, 0x3

    aput v8, v2, v7

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    aget v5, p2, v10

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v11, :cond_0

    if-lt v5, v3, :cond_2

    :cond_0
    sget-object v7, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static {p1, v5, v10, v7}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v4

    aget v5, v4, v10

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v11, :cond_1

    if-lt v5, v3, :cond_4

    :cond_1
    return v5

    :cond_2
    sget-object v7, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v5, v7}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v9, v2

    move v7, v8

    :goto_2
    if-lt v7, v9, :cond_3

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    aget v1, v2, v7

    add-int/2addr v5, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    sget-object v7, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static {p1, v2, v5, v7}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v0

    add-int/lit8 v7, v0, 0x30

    int-to-char v7, v7

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v9, v2

    move v7, v8

    :goto_3
    if-lt v7, v9, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    aget v1, v2, v7

    add-int/2addr v5, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
