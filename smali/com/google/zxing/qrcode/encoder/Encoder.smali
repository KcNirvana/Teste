.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode:[I = null

.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static synthetic $SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode()[I
    .locals 3

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->$SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Mode;->values()[Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->$SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/16 v0, 0x60

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    aput v3, v0, v4

    aput v3, v0, v5

    aput v3, v0, v6

    aput v3, v0, v7

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v3, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v3, v0, v1

    const/16 v1, 0x10

    aput v3, v0, v1

    const/16 v1, 0x11

    aput v3, v0, v1

    const/16 v1, 0x12

    aput v3, v0, v1

    const/16 v1, 0x13

    aput v3, v0, v1

    const/16 v1, 0x14

    aput v3, v0, v1

    const/16 v1, 0x15

    aput v3, v0, v1

    const/16 v1, 0x16

    aput v3, v0, v1

    const/16 v1, 0x17

    aput v3, v0, v1

    const/16 v1, 0x18

    aput v3, v0, v1

    const/16 v1, 0x19

    aput v3, v0, v1

    const/16 v1, 0x1a

    aput v3, v0, v1

    const/16 v1, 0x1b

    aput v3, v0, v1

    const/16 v1, 0x1c

    aput v3, v0, v1

    const/16 v1, 0x1d

    aput v3, v0, v1

    const/16 v1, 0x1e

    aput v3, v0, v1

    const/16 v1, 0x1f

    aput v3, v0, v1

    const/16 v1, 0x20

    const/16 v2, 0x24

    aput v2, v0, v1

    const/16 v1, 0x21

    aput v3, v0, v1

    const/16 v1, 0x22

    aput v3, v0, v1

    const/16 v1, 0x23

    aput v3, v0, v1

    const/16 v1, 0x24

    const/16 v2, 0x25

    aput v2, v0, v1

    const/16 v1, 0x25

    const/16 v2, 0x26

    aput v2, v0, v1

    const/16 v1, 0x26

    aput v3, v0, v1

    const/16 v1, 0x27

    aput v3, v0, v1

    const/16 v1, 0x28

    aput v3, v0, v1

    const/16 v1, 0x29

    aput v3, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0x27

    aput v2, v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0x2c

    aput v3, v0, v1

    const/16 v1, 0x2d

    const/16 v2, 0x29

    aput v2, v0, v1

    const/16 v1, 0x2e

    const/16 v2, 0x2a

    aput v2, v0, v1

    const/16 v1, 0x2f

    const/16 v2, 0x2b

    aput v2, v0, v1

    const/16 v1, 0x31

    aput v4, v0, v1

    const/16 v1, 0x32

    aput v5, v0, v1

    const/16 v1, 0x33

    aput v6, v0, v1

    const/16 v1, 0x34

    aput v7, v0, v1

    const/16 v1, 0x35

    const/4 v2, 0x5

    aput v2, v0, v1

    const/16 v1, 0x36

    const/4 v2, 0x6

    aput v2, v0, v1

    const/16 v1, 0x37

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x8

    aput v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x3a

    const/16 v2, 0x2c

    aput v2, v0, v1

    const/16 v1, 0x3b

    aput v3, v0, v1

    const/16 v1, 0x3c

    aput v3, v0, v1

    const/16 v1, 0x3d

    aput v3, v0, v1

    const/16 v1, 0x3e

    aput v3, v0, v1

    const/16 v1, 0x3f

    aput v3, v0, v1

    const/16 v1, 0x40

    aput v3, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0xa

    aput v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0xb

    aput v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0xc

    aput v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0xd

    aput v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0xe

    aput v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0xf

    aput v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x10

    aput v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x11

    aput v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x12

    aput v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x13

    aput v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x14

    aput v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x15

    aput v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0x16

    aput v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0x17

    aput v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0x18

    aput v2, v0, v1

    const/16 v1, 0x50

    const/16 v2, 0x19

    aput v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x1a

    aput v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x1b

    aput v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x1c

    aput v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x1d

    aput v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x1e

    aput v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x1f

    aput v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x20

    aput v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x21

    aput v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x22

    aput v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x23

    aput v2, v0, v1

    const/16 v1, 0x5b

    aput v3, v0, v1

    const/16 v1, 0x5c

    aput v3, v0, v1

    const/16 v1, 0x5d

    aput v3, v0, v1

    const/16 v1, 0x5e

    aput v3, v0, v1

    const/16 v1, 0x5f

    aput v3, v0, v1

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    array-length v4, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Lcom/google/zxing/WriterException;

    invoke-direct {v3, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    aget-byte v0, v1, v3

    const/16 v5, 0x8

    invoke-virtual {p1, v0, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v6, -0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v0

    if-ne v0, v6, :cond_1

    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    :cond_1
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v3, :cond_3

    add-int/lit8 v4, v2, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v1

    if-ne v1, v6, :cond_2

    new-instance v4, Lcom/google/zxing/WriterException;

    invoke-direct {v4}, Lcom/google/zxing/WriterException;-><init>()V

    throw v4

    :cond_2
    mul-int/lit8 v4, v0, 0x2d

    add-int/2addr v4, v1

    const/16 v5, 0xb

    invoke-virtual {p1, v4, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    const/4 v4, 0x6

    invoke-virtual {p1, v0, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-static {}, Lcom/google/zxing/qrcode/encoder/Encoder;->$SWITCH_TABLE$com$google$zxing$qrcode$decoder$Mode()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/google/zxing/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    :goto_0
    return-void

    :pswitch_2
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p0, p2, p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-static {p0, p2}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .locals 2

    sget-object v0, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    invoke-virtual {p0}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const v11, 0x8140

    :try_start_0
    const-string/jumbo v9, "Shift_JIS"

    invoke-virtual {p0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    return-void

    :catch_0
    move-exception v8

    new-instance v9, Lcom/google/zxing/WriterException;

    invoke-direct {v9, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    :cond_0
    aget-byte v9, v2, v5

    and-int/lit16 v0, v9, 0xff

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, v2, v9

    and-int/lit16 v1, v9, 0xff

    shl-int/lit8 v9, v0, 0x8

    or-int v3, v9, v1

    const/4 v7, -0x1

    if-lt v3, v11, :cond_2

    const v9, 0x9ffc

    if-gt v3, v9, :cond_2

    sub-int v7, v3, v11

    :cond_1
    :goto_1
    const/4 v9, -0x1

    if-ne v7, v9, :cond_3

    new-instance v9, Lcom/google/zxing/WriterException;

    const-string/jumbo v10, "Invalid byte sequence"

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    const v9, 0xe040

    if-lt v3, v9, :cond_1

    const v9, 0xebbf

    if-gt v3, v9, :cond_1

    const v9, 0xc140

    sub-int v7, v3, v9

    goto :goto_1

    :cond_3
    shr-int/lit8 v9, v7, 0x8

    mul-int/lit16 v9, v9, 0xc0

    and-int/lit16 v10, v7, 0xff

    add-int v4, v9, v10

    const/16 v9, 0xd

    invoke-virtual {p1, v4, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_0
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p2, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v0

    shl-int v1, v4, v0

    if-lt p0, v1, :cond_0

    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " is bigger than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shl-int v3, v4, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p3, p0, v0}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    return-void
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v2, v5, -0x30

    add-int/lit8 v5, v0, 0x2

    if-ge v5, v1, :cond_1

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    add-int/lit8 v5, v0, 0x2

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v4, v5, -0x30

    mul-int/lit8 v5, v2, 0x64

    mul-int/lit8 v6, v3, 0xa

    add-int/2addr v5, v6

    add-int/2addr v5, v4

    const/16 v6, 0xa

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v0, 0x1

    if-ge v5, v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    add-int/lit8 v3, v5, -0x30

    mul-int/lit8 v5, v2, 0xa

    add-int/2addr v5, v3

    const/4 v6, 0x7

    invoke-virtual {p1, v5, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 2

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v0

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const v2, 0x7fffffff

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x8

    if-lt v1, v4, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p1, p2, v1, p3}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    invoke-static {p3}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v3

    if-ge v3, v2, :cond_1

    move v2, v3

    move v0, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v0

    return-object v0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 6

    const-string/jumbo v4, "Shift_JIS"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p0}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_0
    return-object v4

    :cond_0
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_2

    if-eqz v1, :cond_5

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_3

    const/16 v4, 0x39

    if-gt v0, v4, :cond_3

    const/4 v2, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v6, 0x1

    :goto_0
    const/16 v7, 0x28

    if-le v6, v7, :cond_0

    new-instance v7, Lcom/google/zxing/WriterException;

    const-string/jumbo v8, "Data too big"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-static {v6}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v1

    invoke-virtual {v5, p1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v3

    sub-int v2, v1, v3

    add-int/lit8 v7, p0, 0x7

    div-int/lit8 v4, v7, 0x8

    if-lt v2, v4, :cond_1

    return-object v5

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    if-nez p2, :cond_2

    const/4 v7, 0x0

    :goto_0
    if-nez v7, :cond_0

    const-string/jumbo v7, "ISO-8859-1"

    :cond_0
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v13

    new-instance v10, Lcom/google/zxing/common/BitArray;

    invoke-direct {v10}, Lcom/google/zxing/common/BitArray;-><init>()V

    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_1

    const-string/jumbo v20, "ISO-8859-1"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-static {v7}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    :cond_1
    invoke-static {v13, v10}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    new-instance v3, Lcom/google/zxing/common/BitArray;

    invoke-direct {v3}, Lcom/google/zxing/common/BitArray;-><init>()V

    move-object/from16 v0, p0

    invoke-static {v0, v13, v3, v7}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v20

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    add-int v16, v20, v21

    move/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v20

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v21

    add-int v20, v20, v21

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v21

    add-int v2, v20, v21

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v19

    new-instance v9, Lcom/google/zxing/common/BitArray;

    invoke-direct {v9}, Lcom/google/zxing/common/BitArray;-><init>()V

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    sget-object v20, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v20

    if-ne v13, v0, :cond_3

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v15

    :goto_1
    move-object/from16 v0, v19

    invoke-static {v15, v0, v13, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    invoke-virtual {v9, v3}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v21

    sub-int v14, v20, v21

    invoke-static {v14, v9}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v20

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v9, v0, v14, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v8

    new-instance v18, Lcom/google/zxing/qrcode/encoder/QRCode;

    invoke-direct/range {v18 .. v18}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    new-instance v12, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-direct {v12, v4, v4}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v12}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v11

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v8, v0, v1, v11, v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    return-object v18

    :cond_2
    sget-object v20, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v7, v20

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v15

    goto :goto_1
.end method

.method static generateECBytes([BI)[B
    .locals 6

    array-length v2, p0

    add-int v4, v2, p1

    new-array v3, v4, [I

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    new-instance v4, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    sget-object v5, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v4, v5}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    invoke-virtual {v4, v3, p1}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_1
    if-lt v1, p1, :cond_1

    return-object v0

    :cond_0
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int v4, v2, v1

    aget v4, v3, v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method static getAlphanumericCode(I)I
    .locals 1

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    if-lt p3, p2, :cond_0

    new-instance v8, Lcom/google/zxing/WriterException;

    const-string/jumbo v9, "Block ID too large"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    rem-int v5, p0, p2

    sub-int v4, p2, v5

    div-int v6, p0, p2

    add-int/lit8 v7, v6, 0x1

    div-int v0, p1, p2

    add-int/lit8 v1, v0, 0x1

    sub-int v2, v6, v0

    sub-int v3, v7, v1

    if-eq v2, v3, :cond_1

    new-instance v8, Lcom/google/zxing/WriterException;

    const-string/jumbo v9, "EC bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    add-int v8, v4, v5

    if-eq p2, v8, :cond_2

    new-instance v8, Lcom/google/zxing/WriterException;

    const-string/jumbo v9, "RS blocks mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    add-int v8, v0, v2

    mul-int/2addr v8, v4

    add-int v9, v1, v3

    mul-int/2addr v9, v5

    add-int/2addr v8, v9

    if-eq p0, v8, :cond_3

    new-instance v8, Lcom/google/zxing/WriterException;

    const-string/jumbo v9, "Total bytes mismatch"

    invoke-direct {v8, v9}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    if-ge p3, v4, :cond_4

    const/4 v8, 0x0

    aput v0, p4, v8

    const/4 v8, 0x0

    aput v2, p5, v8

    :goto_0
    return-void

    :cond_4
    const/4 v8, 0x0

    aput v1, p4, v8

    const/4 v8, 0x0

    aput v3, p5, v8

    goto :goto_0
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p2

    if-eq v1, v0, :cond_0

    new-instance v1, Lcom/google/zxing/WriterException;

    const-string/jumbo v2, "Number of bits and data bytes does not match"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v8, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p3

    if-lt v4, v0, :cond_1

    move/from16 v0, p2

    if-eq v0, v10, :cond_2

    new-instance v1, Lcom/google/zxing/WriterException;

    const-string/jumbo v2, "Data bytes does not match offset"

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v1, 0x1

    new-array v5, v1, [I

    const/4 v1, 0x1

    new-array v6, v1, [I

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    const/4 v1, 0x0

    aget v15, v5, v1

    new-array v9, v15, [B

    mul-int/lit8 v1, v10, 0x8

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9, v2, v15}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    const/4 v1, 0x0

    aget v1, v6, v1

    invoke-static {v9, v1}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v11

    new-instance v1, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-direct {v1, v9, v11}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v8, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    array-length v1, v11

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    const/4 v1, 0x0

    aget v1, v5, v1

    add-int/2addr v10, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v14, Lcom/google/zxing/common/BitArray;

    invoke-direct {v14}, Lcom/google/zxing/common/BitArray;-><init>()V

    const/4 v4, 0x0

    :goto_1
    if-lt v4, v12, :cond_3

    const/4 v4, 0x0

    :goto_2
    if-lt v4, v13, :cond_6

    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v1

    move/from16 v0, p1

    if-eq v0, v1, :cond_9

    new-instance v1, Lcom/google/zxing/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Interleaving error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " differ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v9

    array-length v2, v9

    if-ge v4, v2, :cond_4

    aget-byte v2, v9, v4

    const/16 v3, 0x8

    invoke-virtual {v14, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_3

    :cond_6
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/qrcode/encoder/BlockPair;

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v11

    array-length v2, v11

    if-ge v4, v2, :cond_7

    aget-byte v2, v11, v4

    const/16 v3, 0x8

    invoke-virtual {v14, v2, v3}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    goto :goto_4

    :cond_9
    return-object v14
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 7

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "Shift_JIS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    array-length v4, v1

    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :catch_0
    move-exception v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    aget-byte v6, v1, v2

    and-int/lit16 v0, v6, 0xff

    const/16 v6, 0x81

    if-lt v0, v6, :cond_3

    const/16 v6, 0x9f

    if-le v0, v6, :cond_4

    :cond_3
    const/16 v6, 0xe0

    if-lt v0, v6, :cond_0

    const/16 v6, 0xeb

    if-gt v0, v6, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v5, 0x0

    mul-int/lit8 v0, p0, 0x8

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-le v4, v0, :cond_0

    new-instance v4, Lcom/google/zxing/WriterException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "data bits cannot fit in the QR Code"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-lt v4, v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    and-int/lit8 v2, v4, 0x7

    if-lez v2, :cond_2

    move v1, v2

    :goto_1
    if-lt v1, v6, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v4

    sub-int v3, p0, v4

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v3, :cond_5

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    if-eq v4, v0, :cond_7

    new-instance v4, Lcom/google/zxing/WriterException;

    const-string/jumbo v5, "Bits size does not equal capacity"

    invoke-direct {v4, v5}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_6

    const/16 v4, 0xec

    :goto_3
    invoke-virtual {p1, v4, v6}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    const/16 v4, 0x11

    goto :goto_3

    :cond_7
    return-void
.end method
