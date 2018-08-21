.class public Lcom/miui/personalassistant/express/util/PinyinUtil;
.super Ljava/lang/Object;
.source "PinyinUtil.java"


# static fields
.field private static final FIRST_LETTER:[C

.field private static final GB_SP_DIFF:I = 0xa0

.field private static final SEC_POS_VALUE_LIST:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/personalassistant/express/util/PinyinUtil;->SEC_POS_VALUE_LIST:[I

    const/16 v0, 0x18

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/miui/personalassistant/express/util/PinyinUtil;->FIRST_LETTER:[C

    return-void

    nop

    :array_0
    .array-data 4
        0x641
        0x665
        0x729
        0x81e
        0x8e2
        0x8fe
        0x981
        0xa22
        0xae3
        0xc22
        0xc8c
        0xd90
        0xe33
        0xe8a
        0xe92
        0xf12
        0xfbb
        0xff6
        0x1126
        0x11ce
        0x124c
        0x133d
        0x1481
        0x15e0
        0x1d1a
    .end array-data

    :array_1
    .array-data 2
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x77s
        0x78s
        0x79s
        0x7as
        0x63s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convert([B)C
    .locals 5

    const/16 v1, 0x2d

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    add-int/lit16 v3, v3, -0xa0

    int-to-byte v3, v3

    aput-byte v3, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    aget-byte v3, p0, v3

    mul-int/lit8 v3, v3, 0x64

    const/4 v4, 0x1

    aget-byte v4, p0, v4

    add-int v2, v3, v4

    const/4 v0, 0x0

    :goto_1
    sget-object v3, Lcom/miui/personalassistant/express/util/PinyinUtil;->SEC_POS_VALUE_LIST:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/miui/personalassistant/express/util/PinyinUtil;->SEC_POS_VALUE_LIST:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_2

    sget-object v3, Lcom/miui/personalassistant/express/util/PinyinUtil;->SEC_POS_VALUE_LIST:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/miui/personalassistant/express/util/PinyinUtil;->FIRST_LETTER:[C

    aget-char v1, v3, v0

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getFirstLetter(C)Ljava/lang/Character;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "GBK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    if-lez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/miui/personalassistant/express/util/PinyinUtil;->convert([B)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    goto :goto_0
.end method

.method public static getFirstLetterIgnoreCase(C)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/miui/personalassistant/express/util/PinyinUtil;->getFirstLetter(C)Ljava/lang/Character;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSpells(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shr-int/lit8 v4, v1, 0x7

    if-nez v4, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/miui/personalassistant/express/util/PinyinUtil;->getFirstLetter(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
