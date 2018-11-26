.class final Lcom/google/android/exoplayer2/text/dvb/DvbParser;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DATA_TYPE_24_TABLE_DATA:I = 0x20

.field private static final DATA_TYPE_28_TABLE_DATA:I = 0x21

.field private static final DATA_TYPE_2BP_CODE_STRING:I = 0x10

.field private static final DATA_TYPE_48_TABLE_DATA:I = 0x22

.field private static final DATA_TYPE_4BP_CODE_STRING:I = 0x11

.field private static final DATA_TYPE_8BP_CODE_STRING:I = 0x12

.field private static final DATA_TYPE_END_LINE:I = 0xf0

.field private static final OBJECT_CODING_PIXELS:I = 0x0

.field private static final OBJECT_CODING_STRING:I = 0x1

.field private static final PAGE_STATE_NORMAL:I = 0x0

.field private static final REGION_DEPTH_4_BIT:I = 0x2

.field private static final REGION_DEPTH_8_BIT:I = 0x3

.field private static final SEGMENT_TYPE_CLUT_DEFINITION:I = 0x12

.field private static final SEGMENT_TYPE_DISPLAY_DEFINITION:I = 0x14

.field private static final SEGMENT_TYPE_OBJECT_DATA:I = 0x13

.field private static final SEGMENT_TYPE_PAGE_COMPOSITION:I = 0x10

.field private static final SEGMENT_TYPE_REGION_COMPOSITION:I = 0x11

.field private static final TAG:Ljava/lang/String; = "DvbParser"

.field private static final defaultMap2To4:[B

.field private static final defaultMap2To8:[B

.field private static final defaultMap4To8:[B


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final canvas:Landroid/graphics/Canvas;

.field private final defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

.field private final defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

.field private final defaultPaint:Landroid/graphics/Paint;

.field private final fillRegionPaint:Landroid/graphics/Paint;

.field private final subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v6, [B

    aput-byte v2, v0, v2

    const/4 v1, 0x7

    aput-byte v1, v0, v3

    const/16 v1, 0x8

    aput-byte v1, v0, v4

    const/16 v1, 0xf

    aput-byte v1, v0, v5

    sput-object v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    new-array v0, v6, [B

    aput-byte v2, v0, v2

    const/16 v1, 0x77

    aput-byte v1, v0, v3

    const/16 v1, -0x78

    aput-byte v1, v0, v4

    const/4 v1, -0x1

    aput-byte v1, v0, v5

    sput-object v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v2, v0, v2

    const/16 v1, 0x11

    aput-byte v1, v0, v3

    const/16 v1, 0x22

    aput-byte v1, v0, v4

    const/16 v1, 0x33

    aput-byte v1, v0, v5

    const/16 v1, 0x44

    aput-byte v1, v0, v6

    const/16 v1, 0x55

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    const/16 v1, 0x66

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/16 v1, 0x77

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    const/16 v1, -0x78

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    const/16 v1, -0x67

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    const/16 v1, -0x56

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    const/16 v1, -0x45

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    const/16 v1, -0x34

    const/16 v2, 0xc

    aput-byte v1, v0, v2

    const/16 v1, -0x23

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    const/16 v1, -0x12

    const/16 v2, 0xe

    aput-byte v1, v0, v2

    const/4 v1, -0x1

    const/16 v2, 0xf

    aput-byte v1, v0, v2

    sput-object v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    const/4 v6, 0x0

    const/16 v1, 0x2cf

    const/16 v2, 0x23f

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move v4, v1

    move v5, v3

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v1

    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v2

    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v4

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    return-void
.end method

.method private static buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B
    .locals 3

    new-array v1, p0, [B

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static generateDefault2BitClutEntries()[I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v1, v0, v1

    const/4 v1, -0x1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/high16 v1, -0x1000000

    const/4 v2, 0x2

    aput v1, v0, v2

    const v1, -0x808081

    const/4 v2, 0x3

    aput v1, v0, v2

    return-object v0
.end method

.method private static generateDefault4BitClutEntries()[I
    .locals 8

    const/16 v4, 0x7f

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/16 v0, 0x10

    new-array v7, v0, [I

    aput v2, v7, v2

    const/4 v0, 0x1

    :goto_0
    array-length v1, v7

    if-lt v0, v1, :cond_0

    return-object v7

    :cond_0
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_5

    move v6, v2

    :goto_1
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_6

    move v5, v2

    :goto_2
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_7

    move v1, v2

    :goto_3
    invoke-static {v3, v6, v5, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v1

    aput v1, v7, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    move v6, v2

    :goto_5
    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_3

    move v5, v2

    :goto_6
    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_4

    move v1, v2

    :goto_7
    invoke-static {v3, v6, v5, v1}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v1

    aput v1, v7, v0

    goto :goto_4

    :cond_2
    move v6, v3

    goto :goto_5

    :cond_3
    move v5, v3

    goto :goto_6

    :cond_4
    move v1, v3

    goto :goto_7

    :cond_5
    move v6, v4

    goto :goto_1

    :cond_6
    move v5, v4

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_3
.end method

.method private static generateDefault8BitClutEntries()[I
    .locals 12

    const/16 v3, 0xff

    const/16 v4, 0xaa

    const/16 v7, 0x2b

    const/16 v5, 0x55

    const/4 v1, 0x0

    const/16 v0, 0x100

    new-array v9, v0, [I

    aput v1, v9, v1

    move v0, v1

    :goto_0
    array-length v2, v9

    if-lt v0, v2, :cond_0

    return-object v9

    :cond_0
    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    and-int/lit16 v2, v0, 0x88

    sparse-switch v2, :sswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x1

    const/16 v10, 0x3f

    if-nez v2, :cond_2

    move v8, v1

    :goto_2
    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_3

    move v6, v1

    :goto_3
    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_4

    move v2, v1

    :goto_4
    invoke-static {v10, v8, v6, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v9, v0

    goto :goto_1

    :cond_2
    move v8, v3

    goto :goto_2

    :cond_3
    move v6, v3

    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_4

    :sswitch_0
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_5

    move v6, v1

    :goto_5
    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_6

    move v2, v1

    :goto_6
    add-int v8, v6, v2

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_7

    move v6, v1

    :goto_7
    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_8

    move v2, v1

    :goto_8
    add-int v10, v6, v2

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_9

    move v6, v1

    :goto_9
    and-int/lit8 v2, v0, 0x40

    if-nez v2, :cond_a

    move v2, v1

    :goto_a
    add-int/2addr v2, v6

    invoke-static {v3, v8, v10, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v9, v0

    goto :goto_1

    :cond_5
    move v6, v5

    goto :goto_5

    :cond_6
    move v2, v4

    goto :goto_6

    :cond_7
    move v6, v5

    goto :goto_7

    :cond_8
    move v2, v4

    goto :goto_8

    :cond_9
    move v6, v5

    goto :goto_9

    :cond_a
    move v2, v4

    goto :goto_a

    :sswitch_1
    and-int/lit8 v2, v0, 0x1

    const/16 v8, 0x7f

    if-nez v2, :cond_b

    move v6, v1

    :goto_b
    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_c

    move v2, v1

    :goto_c
    add-int v10, v6, v2

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_d

    move v6, v1

    :goto_d
    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_e

    move v2, v1

    :goto_e
    add-int v11, v6, v2

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_f

    move v6, v1

    :goto_f
    and-int/lit8 v2, v0, 0x40

    if-nez v2, :cond_10

    move v2, v1

    :goto_10
    add-int/2addr v2, v6

    invoke-static {v8, v10, v11, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v9, v0

    goto/16 :goto_1

    :cond_b
    move v6, v5

    goto :goto_b

    :cond_c
    move v2, v4

    goto :goto_c

    :cond_d
    move v6, v5

    goto :goto_d

    :cond_e
    move v2, v4

    goto :goto_e

    :cond_f
    move v6, v5

    goto :goto_f

    :cond_10
    move v2, v4

    goto :goto_10

    :sswitch_2
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_11

    move v2, v1

    :goto_11
    add-int/lit8 v6, v2, 0x7f

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_12

    move v2, v1

    :goto_12
    add-int/2addr v6, v2

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_13

    move v2, v1

    :goto_13
    add-int/lit8 v8, v2, 0x7f

    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_14

    move v2, v1

    :goto_14
    add-int/2addr v8, v2

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_15

    move v2, v1

    :goto_15
    add-int/lit8 v10, v2, 0x7f

    and-int/lit8 v2, v0, 0x40

    if-nez v2, :cond_16

    move v2, v1

    :goto_16
    add-int/2addr v2, v10

    invoke-static {v3, v6, v8, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v9, v0

    goto/16 :goto_1

    :cond_11
    move v2, v7

    goto :goto_11

    :cond_12
    move v2, v5

    goto :goto_12

    :cond_13
    move v2, v7

    goto :goto_13

    :cond_14
    move v2, v5

    goto :goto_14

    :cond_15
    move v2, v7

    goto :goto_15

    :cond_16
    move v2, v5

    goto :goto_16

    :sswitch_3
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_17

    move v6, v1

    :goto_17
    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_18

    move v2, v1

    :goto_18
    add-int v8, v6, v2

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_19

    move v6, v1

    :goto_19
    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_1a

    move v2, v1

    :goto_1a
    add-int v10, v6, v2

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_1b

    move v6, v1

    :goto_1b
    and-int/lit8 v2, v0, 0x40

    if-nez v2, :cond_1c

    move v2, v1

    :goto_1c
    add-int/2addr v2, v6

    invoke-static {v3, v8, v10, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v9, v0

    goto/16 :goto_1

    :cond_17
    move v6, v7

    goto :goto_17

    :cond_18
    move v2, v5

    goto :goto_18

    :cond_19
    move v6, v7

    goto :goto_19

    :cond_1a
    move v2, v5

    goto :goto_1a

    :cond_1b
    move v6, v7

    goto :goto_1b

    :cond_1c
    move v2, v5

    goto :goto_1c

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x80 -> :sswitch_2
        0x88 -> :sswitch_3
    .end sparse-switch
.end method

.method private static getColor(IIII)I
    .locals 2

    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method private static paint2BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v7, v3

    move v6, v0

    move v0, v1

    :goto_1
    if-nez v7, :cond_4

    :cond_0
    :goto_2
    add-int/2addr p3, v7

    if-nez v6, :cond_6

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    move v7, v1

    move v6, v0

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x3

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    move v7, v3

    move v6, v0

    move v0, v1

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x2

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v2, v1, 0xc

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x1d

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_0

    if-nez p2, :cond_5

    :goto_3
    aget v0, p1, v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v7

    int-to-float v3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v4, v0

    move-object v0, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    aget-byte v0, p2, v0

    goto :goto_3

    :cond_6
    return p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static paint4BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v7, v3

    move v6, v0

    move v0, v1

    :goto_1
    if-nez v7, :cond_5

    :cond_0
    :goto_2
    add-int/2addr p3, v7

    if-nez v6, :cond_7

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    move v7, v1

    move v6, v0

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    move v7, v3

    move v6, v0

    move v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x2

    const/4 v1, 0x0

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x4

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x1

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :pswitch_1
    const/4 v2, 0x2

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :pswitch_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x9

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :pswitch_3
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    add-int/lit8 v2, v1, 0x19

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :cond_5
    if-eqz p5, :cond_0

    if-nez p2, :cond_6

    :goto_3
    aget v0, p1, v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v7

    int-to-float v3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v4, v0

    move-object v0, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_6
    aget-byte v0, p2, v0

    goto :goto_3

    :cond_7
    return p3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static paint8BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    move v7, v2

    move v6, v0

    move v0, v1

    :goto_1
    if-nez v7, :cond_4

    :cond_0
    :goto_2
    add-int/2addr p3, v7

    if-nez v6, :cond_6

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    move v7, v1

    move v6, v0

    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    move v7, v3

    move v6, v0

    move v0, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    move v7, v2

    move v6, v0

    move v0, v1

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_0

    if-nez p2, :cond_5

    :goto_3
    aget v0, p1, v0

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, p3

    int-to-float v2, p4

    add-int v0, p3, v7

    int-to-float v3, v0

    add-int/lit8 v0, p4, 0x1

    int-to-float v4, v0

    move-object v0, p6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    aget-byte v0, p2, v0

    goto :goto_3

    :cond_6
    return p3
.end method

.method private static paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 10

    new-instance v0, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([B)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x0

    move-object v7, v1

    move-object v8, v2

    move v4, p4

    move v3, p3

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    move-object v1, v7

    move-object v2, v8

    :goto_1
    move-object v7, v1

    move-object v8, v2

    goto :goto_0

    :sswitch_0
    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    const/4 v1, 0x0

    move-object v2, v1

    :goto_2
    move-object v1, p1

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint2BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    move-object v1, v7

    move-object v2, v8

    goto :goto_1

    :cond_1
    if-eqz v7, :cond_2

    move-object v1, v7

    :goto_3
    move-object v2, v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To8:[B

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_4

    move-object v1, v8

    :goto_4
    move-object v2, v1

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap2To4:[B

    goto :goto_4

    :sswitch_1
    const/4 v1, 0x3

    if-eq p2, v1, :cond_5

    const/4 v2, 0x0

    :goto_5
    move-object v1, p1

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint4BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->byteAlign()V

    move-object v1, v7

    move-object v2, v8

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    if-eqz v1, :cond_6

    move-object v1, v9

    :goto_6
    move-object v2, v1

    goto :goto_5

    :cond_6
    sget-object v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultMap4To8:[B

    goto :goto_6

    :sswitch_2
    const/4 v2, 0x0

    move-object v1, p1

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paint8BitPixelCodeString(Lcom/google/android/exoplayer2/util/ParsableBitArray;[I[BIILandroid/graphics/Paint;Landroid/graphics/Canvas;)I

    move-result v3

    move-object v1, v7

    move-object v2, v8

    goto :goto_1

    :sswitch_3
    const/4 v1, 0x4

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v8

    move-object v1, v7

    move-object v2, v8

    goto :goto_1

    :sswitch_4
    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v7

    move-object v1, v7

    move-object v2, v8

    goto :goto_1

    :sswitch_5
    const/16 v1, 0x10

    const/16 v2, 0x8

    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->buildClutMapTable(IILcom/google/android/exoplayer2/util/ParsableBitArray;)[B

    move-result-object v7

    move-object v1, v7

    move-object v2, v8

    goto :goto_1

    :sswitch_6
    add-int/lit8 v4, v4, 0x2

    move-object v1, v7

    move-object v2, v8

    move v3, p3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_3
        0x21 -> :sswitch_4
        0x22 -> :sswitch_5
        0xf0 -> :sswitch_6
    .end sparse-switch
.end method

.method private static paintPixelDataSubBlocks(Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    iget-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->topFieldData:[B

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->bottomFieldData:[B

    add-int/lit8 v4, p4, 0x1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlock([B[IIIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    goto :goto_0
.end method

.method private static parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;
    .locals 20

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v6, p1, -0x2

    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault2BitClutEntries()[I

    move-result-object v10

    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault4BitClutEntries()[I

    move-result-object v9

    invoke-static {}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->generateDefault8BitClutEntries()[I

    move-result-object v8

    :goto_0
    if-gtz v6, :cond_0

    new-instance v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    invoke-direct {v2, v11, v10, v9, v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;-><init>(I[I[I[I)V

    return-object v2

    :cond_0
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v12

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v6, v6, -0x2

    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_1

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_2

    move-object v7, v8

    :goto_1
    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_3

    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/lit8 v5, v2, 0x2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/lit8 v4, v2, 0x4

    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/lit8 v3, v2, 0x4

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x6

    add-int/lit8 v6, v6, -0x2

    :goto_2
    if-eqz v5, :cond_4

    :goto_3
    and-int/lit16 v2, v2, 0xff

    rsub-int v2, v2, 0xff

    int-to-byte v2, v2

    int-to-double v14, v5

    add-int/lit8 v13, v4, -0x80

    int-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v13, v14

    int-to-double v14, v5

    add-int/lit8 v16, v3, -0x80

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3fd60663c74fb54aL    # 0.34414

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    add-int/lit8 v4, v4, -0x80

    int-to-double v0, v4

    move-wide/from16 v16, v0

    const-wide v18, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    double-to-int v4, v14

    int-to-double v14, v5

    add-int/lit8 v3, v3, -0x80

    int-to-double v0, v3

    move-wide/from16 v16, v0

    const-wide v18, 0x3ffc5a1cac083127L    # 1.772

    mul-double v16, v16, v18

    add-double v14, v14, v16

    double-to-int v3, v14

    const/4 v5, 0x0

    const/16 v14, 0xff

    invoke-static {v13, v5, v14}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v5

    const/4 v13, 0x0

    const/16 v14, 0xff

    invoke-static {v4, v13, v14}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    const/4 v13, 0x0

    const/16 v14, 0xff

    invoke-static {v3, v13, v14}, Lcom/google/android/exoplayer2/util/Util;->constrainValue(III)I

    move-result v3

    invoke-static {v2, v5, v4, v3}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->getColor(IIII)I

    move-result v2

    aput v2, v7, v12

    goto/16 :goto_0

    :cond_1
    move-object v7, v10

    goto/16 :goto_1

    :cond_2
    move-object v7, v9

    goto/16 :goto_1

    :cond_3
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    add-int/lit8 v6, v6, -0x4

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0xff

    goto/16 :goto_3
.end method

.method private static parseDisplayDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;
    .locals 7

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    if-nez v0, :cond_0

    move v6, v2

    move v4, v1

    move v3, v5

    :goto_0
    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;-><init>(IIIIII)V

    return-object v0

    :cond_0
    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    goto :goto_0
.end method

.method private static parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;
    .locals 8

    const/4 v0, 0x0

    const/4 v6, 0x1

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v3

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    if-eq v1, v6, :cond_0

    if-eqz v1, :cond_1

    :goto_0
    move-object v1, v0

    :goto_1
    new-instance v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    invoke-direct {v4, v2, v3, v1, v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;-><init>(IZ[B[B)V

    return-object v4

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    if-gtz v1, :cond_2

    :goto_2
    if-gtz v4, :cond_3

    move-object v1, v0

    goto :goto_1

    :cond_2
    new-array v0, v1, [B

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    goto :goto_2

    :cond_3
    new-array v1, v4, [B

    invoke-virtual {p0, v1, v5, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBytes([BII)V

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_1
.end method

.method private static parsePageComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;
    .locals 11

    const/16 v10, 0x10

    const/4 v4, 0x2

    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    invoke-virtual {p0, v4}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v0, p1, -0x2

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    if-gtz v0, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;-><init>(IIILandroid/util/SparseArray;)V

    return-object v0

    :cond_0
    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    invoke-virtual {p0, v10}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v0, v0, -0x6

    new-instance v8, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    invoke-direct {v8, v6, v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;-><init>(II)V

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private static parseRegionComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;
    .locals 21

    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v14

    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBit()Z

    move-result v15

    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v1, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v16

    const/16 v1, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v17

    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v18

    const/4 v1, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v19

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v8

    const/16 v1, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v9

    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v10

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v11

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    add-int/lit8 v13, p1, -0xa

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    :goto_0
    if-gtz v13, :cond_0

    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;-><init>(IZIIIIIIIILandroid/util/SparseArray;)V

    return-object v1

    :cond_0
    const/16 v1, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v20

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    const/4 v1, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v1, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v4

    const/4 v1, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    const/16 v1, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v5

    add-int/lit8 v1, v13, -0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x1

    if-ne v2, v13, :cond_2

    :cond_1
    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v6

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v7

    add-int/lit8 v1, v1, -0x2

    move v13, v1

    :goto_1
    new-instance v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;-><init>(IIIIII)V

    move/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v13, 0x2

    if-eq v2, v13, :cond_1

    move v13, v1

    goto :goto_1
.end method

.method private static parseSubtitlingSegment(Lcom/google/android/exoplayer2/util/ParsableBitArray;Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;)V
    .locals 6

    const/16 v2, 0x10

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v1

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/lit8 v4, v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v5

    if-gt v4, v5, :cond_1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->getBytePosition()I

    move-result v0

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBytes(I)V

    return-void

    :cond_1
    const-string/jumbo v0, "DvbParser"

    const-string/jumbo v1, "Data field length exceeds limit"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->skipBits(I)V

    return-void

    :pswitch_0
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v1, v0, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseDisplayDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-result-object v0

    iput-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    goto :goto_0

    :pswitch_1
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v1, v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parsePageComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    move-result-object v1

    iget v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-nez v2, :cond_2

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    iget v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->version:I

    if-eq v0, v2, :cond_0

    iput-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    goto :goto_0

    :cond_2
    iput-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    iget v4, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-ne v1, v4, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseRegionComposition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    move-result-object v1

    iget v0, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->state:I

    if-eqz v0, :cond_3

    :goto_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    iget v2, v1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->id:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->mergeFrom(Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;)V

    goto :goto_1

    :pswitch_3
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-eq v1, v0, :cond_4

    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v1, v0, :cond_0

    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p0, v2}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseClutDefinition(Lcom/google/android/exoplayer2/util/ParsableBitArray;I)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_4
    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->subtitlePageId:I

    if-eq v1, v0, :cond_5

    iget v0, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryPageId:I

    if-ne v1, v0, :cond_0

    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseObjectData(Lcom/google/android/exoplayer2/util/ParsableBitArray;)Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->id:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public decode([BI)Ljava/util/List;
    .locals 18

    new-instance v2, Lcom/google/android/exoplayer2/util/ParsableBitArray;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v2, v0, v1}, Lcom/google/android/exoplayer2/util/ParsableBitArray;-><init>([BI)V

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->bitsLeft()I

    move-result v3

    const/16 v4, 0x30

    if-ge v3, v4, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultDisplayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-object v10, v2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_5

    :cond_1
    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v2, v2, 0x1

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->pageComposition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;

    iget-object v14, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageComposition;->regions:Landroid/util/SparseArray;

    const/4 v2, 0x0

    move v11, v2

    :goto_3
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v11, v2, :cond_6

    return-object v13

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/ParsableBitArray;->readBits(I)I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->parseSubtitlingSegment(Lcom/google/android/exoplayer2/util/ParsableBitArray;Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->displayDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;

    move-object v10, v2

    goto :goto_1

    :cond_5
    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    iget v2, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_1

    goto :goto_2

    :cond_6
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;

    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v4, v4, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->regions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;

    iget v3, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->horizontalAddress:I

    iget v4, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMinimum:I

    add-int v15, v3, v4

    iget v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$PageRegion;->verticalAddress:I

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMinimum:I

    add-int v16, v2, v3

    iget v2, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v2, v15

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->horizontalPositionMaximum:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v2, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int v2, v2, v16

    iget v3, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->verticalPositionMaximum:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v5

    int-to-float v6, v6

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->cluts:Landroid/util/SparseArray;

    iget v3, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    if-eqz v2, :cond_7

    move-object v3, v2

    :goto_4
    iget-object v0, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->regionObjects:Landroid/util/SparseArray;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    move v12, v2

    :goto_5
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lt v12, v2, :cond_9

    iget-boolean v2, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->fillFlag:Z

    if-nez v2, :cond_d

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->bitmap:Landroid/graphics/Bitmap;

    iget v3, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    iget v4, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    move/from16 v0, v16

    invoke-static {v2, v15, v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v2, Lcom/google/android/exoplayer2/text/Cue;

    int-to-float v4, v15

    iget v5, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move/from16 v0, v16

    int-to-float v5, v0

    iget v6, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v6, v6

    div-float v6, v5, v6

    iget v5, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    int-to-float v5, v5

    iget v7, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->width:I

    int-to-float v7, v7

    div-float v8, v5, v7

    iget v5, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    int-to-float v5, v5

    iget v7, v10, Lcom/google/android/exoplayer2/text/dvb/DvbParser$DisplayDefinition;->height:I

    int-to-float v7, v7

    div-float v9, v5, v7

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/google/android/exoplayer2/text/Cue;-><init>(Landroid/graphics/Bitmap;FIFIFF)V

    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryCluts:Landroid/util/SparseArray;

    iget v3, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->clutId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    if-eqz v2, :cond_8

    move-object v3, v2

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultClutDefinition:Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;

    move-object v3, v2

    goto :goto_4

    :cond_9
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->objects:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    if-eqz v2, :cond_a

    :goto_7
    if-nez v2, :cond_b

    :goto_8
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto/16 :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    iget-object v2, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->ancillaryObjects:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;

    goto :goto_7

    :cond_b
    iget-boolean v4, v2, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;->nonModifyingColorFlag:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->defaultPaint:Landroid/graphics/Paint;

    :goto_9
    iget v4, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    iget v5, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->horizontalPosition:I

    add-int/2addr v5, v15

    iget v6, v6, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionObject;->verticalPosition:I

    add-int v6, v6, v16

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->paintPixelDataSubBlocks(Lcom/google/android/exoplayer2/text/dvb/DvbParser$ObjectData;Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;IIILandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_8

    :cond_c
    const/4 v7, 0x0

    goto :goto_9

    :cond_d
    iget v2, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_e

    iget v2, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->depth:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_f

    iget-object v2, v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries2Bit:[I

    iget v3, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode2Bit:I

    aget v2, v2, v3

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->canvas:Landroid/graphics/Canvas;

    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    iget v5, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->width:I

    add-int/2addr v5, v15

    int-to-float v5, v5

    iget v6, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->height:I

    add-int v6, v6, v16

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->fillRegionPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_e
    iget-object v2, v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries8Bit:[I

    iget v3, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode8Bit:I

    aget v2, v2, v3

    goto :goto_a

    :cond_f
    iget-object v2, v3, Lcom/google/android/exoplayer2/text/dvb/DvbParser$ClutDefinition;->clutEntries4Bit:[I

    iget v3, v9, Lcom/google/android/exoplayer2/text/dvb/DvbParser$RegionComposition;->pixelCode4Bit:I

    aget v2, v2, v3

    goto :goto_a
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/text/dvb/DvbParser;->subtitleService:Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/text/dvb/DvbParser$SubtitleService;->reset()V

    return-void
.end method
