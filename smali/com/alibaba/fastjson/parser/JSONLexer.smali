.class public final Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final CA:[C

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field static final IA:[I

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final UNKNOWN:I = 0x0

.field private static V6:Z = false

.field public static final VALUE:I = 0x3

.field protected static final digits:[I

.field public static final firstIdentifierFlags:[Z

.field public static final identifierFlags:[Z

.field private static final sbufLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[C>;"
        }
    .end annotation
.end field


# instance fields
.field protected bp:I

.field public calendar:Ljava/util/Calendar;

.field protected ch:C

.field public disableCircularReferenceDetect:Z

.field protected eofPos:I

.field protected exp:Z

.field public features:I

.field protected fieldHash:J

.field protected hasSpecial:Z

.field protected isDouble:Z

.field protected final len:I

.field public locale:Ljava/util/Locale;

.field public matchStat:I

.field protected np:I

.field protected pos:I

.field protected sbuf:[C

.field protected sp:I

.field protected stringDefaultValue:Ljava/lang/String;

.field protected final text:Ljava/lang/String;

.field public timeZone:Ljava/util/TimeZone;

.field protected token:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0x41

    const/16 v11, 0x39

    const/4 v8, 0x0

    const/16 v10, 0x100

    const/4 v7, 0x1

    const/4 v5, -0x1

    :try_start_0
    const-string/jumbo v6, "android.os.Build$VERSION"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v6, "SDK_INT"

    invoke-virtual {v1, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    :goto_0
    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    move v6, v7

    :goto_1
    sput-boolean v6, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    new-instance v6, Ljava/lang/ThreadLocal;

    invoke-direct {v6}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    const/16 v6, 0x67

    new-array v6, v6, [I

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    const/16 v3, 0x30

    :goto_2
    if-gt v3, v11, :cond_1

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v3, -0x30

    aput v9, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    move v6, v8

    goto :goto_1

    :cond_1
    const/16 v3, 0x61

    :goto_3
    const/16 v6, 0x66

    if-gt v3, v6, :cond_2

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v3, -0x61

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    const/16 v3, 0x41

    :goto_4
    const/16 v6, 0x46

    if-gt v3, v6, :cond_3

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v9, v3, -0x41

    add-int/lit8 v9, v9, 0xa

    aput v9, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    const-string/jumbo v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    new-array v6, v10, [I

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/4 v9, -0x1

    invoke-static {v6, v9}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    array-length v4, v6

    :goto_5
    if-ge v3, v4, :cond_4

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    sget-object v9, Lcom/alibaba/fastjson/parser/JSONLexer;->CA:[C

    aget-char v9, v9, v3

    aput v3, v6, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    const/16 v9, 0x3d

    aput v8, v6, v9

    new-array v6, v10, [Z

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    const/4 v0, 0x0

    :goto_6
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v6, v6

    if-ge v0, v6, :cond_8

    if-lt v0, v12, :cond_6

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_6

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    :cond_5
    :goto_7
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_6

    :cond_6
    const/16 v6, 0x61

    if-lt v0, v6, :cond_7

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_7

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    :cond_7
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_5

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_7

    :cond_8
    new-array v6, v10, [Z

    sput-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    const/4 v0, 0x0

    :goto_8
    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v6, v6

    if-ge v0, v6, :cond_d

    if-lt v0, v12, :cond_a

    const/16 v6, 0x5a

    if-gt v0, v6, :cond_a

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    :cond_9
    :goto_9
    add-int/lit8 v6, v0, 0x1

    int-to-char v0, v6

    goto :goto_8

    :cond_a
    const/16 v6, 0x61

    if-lt v0, v6, :cond_b

    const/16 v6, 0x7a

    if-gt v0, v6, :cond_b

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    :cond_b
    const/16 v6, 0x5f

    if-ne v0, v6, :cond_c

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    :cond_c
    const/16 v6, 0x30

    if-lt v0, v6, :cond_9

    if-gt v0, v11, :cond_9

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aput-boolean v7, v6, v0

    goto :goto_9

    :cond_d
    return-void

    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    iput-boolean v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    sget-object v1, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    sget-object v1, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    if-nez v1, :cond_0

    const/16 v1, 0x200

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    :cond_0
    iput p2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_2

    const/16 v1, 0x1a

    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const v4, 0xfeff

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :cond_1
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_3

    const-string/jumbo v1, ""

    :goto_1
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v1, p2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2
.end method

.method public constructor <init>([CI)V
    .locals 1

    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/JSONLexer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static checkDate(CCCCCCII)Z
    .locals 6

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x31

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-lt p0, v3, :cond_0

    const/16 v1, 0x33

    if-le p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-lt p1, v2, :cond_0

    if-gt p1, v4, :cond_0

    if-lt p2, v2, :cond_0

    if-gt p2, v4, :cond_0

    if-lt p3, v2, :cond_0

    if-gt p3, v4, :cond_0

    if-ne p4, v2, :cond_4

    if-lt p5, v3, :cond_0

    if-gt p5, v4, :cond_0

    :cond_2
    if-ne p6, v2, :cond_5

    if-lt p7, v3, :cond_0

    if-gt p7, v4, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-ne p4, v3, :cond_0

    if-eq p5, v2, :cond_2

    if-eq p5, v3, :cond_2

    if-eq p5, v5, :cond_2

    goto :goto_0

    :cond_5
    if-eq p6, v3, :cond_6

    if-ne p6, v5, :cond_7

    :cond_6
    if-lt p7, v2, :cond_0

    if-le p7, v4, :cond_3

    goto :goto_0

    :cond_7
    const/16 v1, 0x33

    if-ne p6, v1, :cond_0

    if-eq p7, v2, :cond_3

    if-eq p7, v3, :cond_3

    goto :goto_0
.end method

.method static checkTime(CCCCCC)Z
    .locals 6

    const/16 v5, 0x36

    const/16 v4, 0x35

    const/16 v3, 0x39

    const/16 v2, 0x30

    const/4 v0, 0x0

    if-ne p0, v2, :cond_1

    if-lt p1, v2, :cond_0

    if-le p1, v3, :cond_2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x31

    if-ne p0, v1, :cond_5

    if-lt p1, v2, :cond_0

    if-gt p1, v3, :cond_0

    :cond_2
    if-lt p2, v2, :cond_6

    if-gt p2, v4, :cond_6

    if-lt p3, v2, :cond_0

    if-gt p3, v3, :cond_0

    :cond_3
    if-lt p4, v2, :cond_7

    if-gt p4, v4, :cond_7

    if-lt p5, v2, :cond_0

    if-gt p5, v3, :cond_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/16 v1, 0x32

    if-ne p0, v1, :cond_0

    if-lt p1, v2, :cond_0

    const/16 v1, 0x34

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_6
    if-ne p2, v5, :cond_0

    if-eq p3, v2, :cond_3

    goto :goto_0

    :cond_7
    if-ne p4, v5, :cond_0

    if-eq p5, v2, :cond_4

    goto :goto_0
.end method

.method public static final decodeFast(Ljava/lang/String;II)[B
    .locals 20

    if-nez p2, :cond_0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v2, v0, [B

    :goto_0
    return-object v2

    :cond_0
    move/from16 v14, p1

    add-int v17, p1, p2

    add-int/lit8 v7, v17, -0x1

    :goto_1
    if-ge v14, v7, :cond_1

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-lez v7, :cond_2

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    if-gez v17, :cond_2

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    add-int/lit8 v17, v7, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x3d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v12, 0x2

    :goto_3
    sub-int v17, v7, v14

    add-int/lit8 v3, v17, 0x1

    const/16 v17, 0x4c

    move/from16 v0, p2

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    const/16 v17, 0x4c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    div-int/lit8 v17, v3, 0x4e

    :goto_4
    shl-int/lit8 v16, v17, 0x1

    :goto_5
    sub-int v17, v3, v16

    mul-int/lit8 v17, v17, 0x6

    shr-int/lit8 v17, v17, 0x3

    sub-int v11, v17, v12

    new-array v2, v11, [B

    const/4 v5, 0x0

    const/4 v4, 0x0

    div-int/lit8 v17, v11, 0x3

    mul-int/lit8 v8, v17, 0x3

    move v6, v5

    move v15, v14

    :goto_6
    if-ge v6, v8, :cond_7

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    shl-int/lit8 v17, v17, 0x12

    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0xc

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    shl-int/lit8 v18, v18, 0x6

    or-int v17, v17, v18

    sget-object v18, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v19

    aget v18, v18, v19

    or-int v9, v17, v18

    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v17, v9, 0x10

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v17, v9, 0x8

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v5

    add-int/lit8 v5, v6, 0x1

    int-to-byte v0, v9

    move/from16 v17, v0

    aput-byte v17, v2, v6

    if-lez v16, :cond_a

    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x13

    move/from16 v0, v17

    if-ne v4, v0, :cond_a

    add-int/lit8 v14, v15, 0x2

    const/4 v4, 0x0

    :goto_7
    move v6, v5

    move v15, v14

    goto :goto_6

    :cond_3
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_3

    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_4

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_7
    if-ge v6, v11, :cond_9

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_8
    sub-int v17, v7, v12

    move/from16 v0, v17

    if-gt v15, v0, :cond_8

    sget-object v17, Lcom/alibaba/fastjson/parser/JSONLexer;->IA:[I

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v18

    aget v17, v17, v18

    mul-int/lit8 v18, v10, 0x6

    rsub-int/lit8 v18, v18, 0x12

    shl-int v17, v17, v18

    or-int v9, v9, v17

    add-int/lit8 v10, v10, 0x1

    move v15, v14

    goto :goto_8

    :cond_8
    const/16 v13, 0x10

    :goto_9
    if-ge v6, v11, :cond_9

    add-int/lit8 v5, v6, 0x1

    shr-int v17, v9, v13

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v2, v6

    add-int/lit8 v13, v13, -0x8

    move v6, v5

    goto :goto_9

    :cond_9
    move v5, v6

    move v14, v15

    goto/16 :goto_0

    :cond_a
    move v14, v15

    goto :goto_7
.end method

.method private matchFieldHash(J)I
    .locals 13

    const/4 v8, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, 0x1

    move v9, v8

    :goto_0
    const/16 v10, 0x22

    if-ne v3, v10, :cond_1

    :cond_0
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v5, v10, v9

    :goto_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v10, :cond_c

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int v10, v5, v10

    sub-int/2addr v10, v9

    add-int v8, v9, v10

    :goto_2
    cmp-long v10, v6, p1

    if-eqz v10, :cond_6

    iput-wide v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v10, 0x0

    :goto_3
    return v10

    :cond_1
    const/16 v10, 0x27

    if-eq v3, v10, :cond_0

    const/16 v10, 0x20

    if-eq v3, v10, :cond_2

    const/16 v10, 0xa

    if-eq v3, v10, :cond_2

    const/16 v10, 0xd

    if-eq v3, v10, :cond_2

    const/16 v10, 0x9

    if-eq v3, v10, :cond_2

    const/16 v10, 0xc

    if-eq v3, v10, :cond_2

    const/16 v10, 0x8

    if-ne v3, v10, :cond_4

    :cond_2
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int v2, v10, v9

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_3

    const/16 v3, 0x1a

    :goto_4
    move v9, v8

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_4

    :cond_4
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v8, 0x0

    move v10, v8

    move v8, v9

    goto :goto_3

    :cond_5
    int-to-long v10, v0

    xor-long/2addr v6, v10

    const-wide v10, 0x100000001b3L

    mul-long/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    add-int v2, v10, v8

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_7

    const/16 v1, 0x1a

    :goto_5
    move v9, v8

    :goto_6
    const/16 v10, 0x3a

    if-ne v1, v10, :cond_8

    add-int/lit8 v8, v9, 0x1

    move v10, v8

    goto :goto_3

    :cond_7
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    :cond_8
    const/16 v10, 0x20

    if-gt v1, v10, :cond_b

    const/16 v10, 0x20

    if-eq v1, v10, :cond_9

    const/16 v10, 0xa

    if-eq v1, v10, :cond_9

    const/16 v10, 0xd

    if-eq v1, v10, :cond_9

    const/16 v10, 0x9

    if-eq v1, v10, :cond_9

    const/16 v10, 0xc

    if-eq v1, v10, :cond_9

    const/16 v10, 0x8

    if-ne v1, v10, :cond_b

    :cond_9
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int v2, v10, v9

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_a

    const/16 v1, 0x1a

    :goto_7
    move v9, v8

    goto :goto_6

    :cond_a
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    :cond_b
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v11, "match feild error expect \':\'"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_c
    move v8, v9

    goto/16 :goto_2
.end method

.method private static readString([CI)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-array v4, p1, [C

    const/4 v2, 0x0

    const/4 v1, 0x0

    move v3, v2

    :goto_0
    if-ge v1, p1, :cond_1

    aget-char v0, p0, v1

    const/16 v5, 0x5c

    if-eq v0, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    aput-char v0, v4, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    aget-char v0, p0, v1

    sparse-switch v0, :sswitch_data_0

    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "unclosed.str.lit"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_0
    add-int/lit8 v2, v3, 0x1

    aput-char v8, v4, v3

    goto :goto_1

    :sswitch_1
    add-int/lit8 v2, v3, 0x1

    aput-char v9, v4, v3

    goto :goto_1

    :sswitch_2
    add-int/lit8 v2, v3, 0x1

    aput-char v10, v4, v3

    goto :goto_1

    :sswitch_3
    add-int/lit8 v2, v3, 0x1

    aput-char v11, v4, v3

    goto :goto_1

    :sswitch_4
    add-int/lit8 v2, v3, 0x1

    aput-char v12, v4, v3

    goto :goto_1

    :sswitch_5
    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x5

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_6
    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x6

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_7
    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x7

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_8
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x8

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_9
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x9

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_a
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0xa

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_b
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0xb

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_c
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0xc

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_d
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0xd

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_e
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x22

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_f
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x27

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_10
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x2f

    aput-char v5, v4, v3

    goto :goto_1

    :sswitch_11
    add-int/lit8 v2, v3, 0x1

    const/16 v5, 0x5c

    aput-char v5, v4, v3

    goto/16 :goto_1

    :sswitch_12
    add-int/lit8 v2, v3, 0x1

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v6, p0, v1

    aget v5, v5, v6

    mul-int/lit8 v5, v5, 0x10

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->digits:[I

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aget v6, v6, v7

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    :sswitch_13
    add-int/lit8 v2, v3, 0x1

    new-instance v5, Ljava/lang/String;

    new-array v6, v12, [C

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v8

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v9

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v10

    add-int/lit8 v1, v1, 0x1

    aget-char v7, p0, v1

    aput-char v7, v6, v11

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v5, v5

    aput-char v5, v4, v3

    goto/16 :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v8, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v5

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_e
        0x27 -> :sswitch_f
        0x2f -> :sswitch_10
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x32 -> :sswitch_2
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x46 -> :sswitch_c
        0x5c -> :sswitch_11
        0x62 -> :sswitch_8
        0x66 -> :sswitch_c
        0x6e -> :sswitch_a
        0x72 -> :sswitch_d
        0x74 -> :sswitch_9
        0x75 -> :sswitch_13
        0x76 -> :sswitch_b
        0x78 -> :sswitch_12
    .end sparse-switch
.end method

.method private scanIdent()V
    .locals 2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x6

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x9

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "undefined"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x17

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "Set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x15

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "TreeSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x16

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    :cond_7
    const/16 v1, 0x12

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0
.end method

.method private setCalendar(CCCCCCCC)V
    .locals 5

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    invoke-static {v3, v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    add-int/lit8 v3, p1, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    add-int/lit8 v4, p2, -0x30

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    add-int/lit8 v4, p3, -0x30

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/lit8 v4, p4, -0x30

    add-int v2, v3, v4

    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    add-int/lit8 v3, p7, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p8, -0x30

    add-int v0, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private final subString(II)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v1, v2, v4, p2}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    return-object v1

    :cond_0
    new-array v0, p2, [C

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method public bytesValue()[B
    .locals 3

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->decodeFast(Ljava/lang/String;II)[B

    move-result-object v0

    return-object v0
.end method

.method protected charAt(I)C
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1a

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v0, v0

    const/16 v1, 0x2004

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbufLocal:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    return-void
.end method

.method public final config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 2

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    :goto_0
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_2

    const-string/jumbo v0, ""

    :goto_1
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    iget v1, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->disableCircularReferenceDetect:Z

    return-void

    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final decimalValue(Z)Ljava/lang/Number;
    .locals 30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int/lit8 v8, v25, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-lt v8, v0, :cond_0

    const/16 v7, 0x1a

    :goto_0
    const/16 v25, 0x46

    move/from16 v0, v25

    if-ne v7, v0, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    :goto_1
    return-object v25

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_0

    :cond_1
    const/16 v25, 0x44

    move/from16 v0, v25

    if-ne v7, v0, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue()Ljava/math/BigDecimal;

    move-result-object v25

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v26, v0

    add-int v25, v25, v26

    add-int/lit8 v17, v25, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move/from16 v23, v0

    const/16 v25, 0x4c

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x53

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x42

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x46

    move/from16 v0, v25

    if-eq v7, v0, :cond_4

    const/16 v25, 0x44

    move/from16 v0, v25

    if-ne v7, v0, :cond_5

    :cond_4
    add-int/lit8 v23, v23, -0x1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v21, v0

    move/from16 v10, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    add-int v26, v21, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v26

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    :goto_2
    const/16 v25, 0x9

    move/from16 v0, v25

    if-gt v10, v0, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    move/from16 v25, v0

    if-nez v25, :cond_d

    const/16 v19, 0x0

    const/4 v15, 0x0

    add-int/lit8 v16, v15, 0x1

    aget-char v6, v9, v15

    const/16 v25, 0x2d

    move/from16 v0, v25

    if-ne v6, v0, :cond_8

    const/16 v19, 0x1

    add-int/lit8 v15, v16, 0x1

    aget-char v6, v9, v16

    const/16 v20, 0x1

    :goto_3
    add-int/lit8 v18, v6, -0x30

    const/16 v22, 0x0

    :goto_4
    if-ge v15, v10, :cond_b

    aget-char v6, v9, v15

    const/16 v25, 0x2e

    move/from16 v0, v25

    if-ne v6, v0, :cond_a

    const/16 v22, 0x1

    :cond_6
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_7
    new-array v9, v10, [C

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v25, v0

    add-int v26, v21, v10

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v9, v3}, Ljava/lang/String;->getChars(II[CI)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v14

    new-instance v25, Lcom/alibaba/fastjson/JSONException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ", "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v25

    :cond_8
    const/16 v25, 0x2b

    move/from16 v0, v25

    if-ne v6, v0, :cond_9

    add-int/lit8 v15, v16, 0x1

    :try_start_2
    aget-char v6, v9, v16

    const/16 v20, 0x1

    goto :goto_3

    :cond_9
    const/16 v20, 0x0

    move/from16 v15, v16

    goto :goto_3

    :cond_a
    add-int/lit8 v11, v6, -0x30

    mul-int/lit8 v25, v18, 0xa

    add-int v18, v25, v11

    if-eqz v22, :cond_6

    mul-int/lit8 v22, v22, 0xa

    goto :goto_5

    :cond_b
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v12, v26, v28

    if-eqz v19, :cond_c

    neg-double v12, v12

    :cond_c
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto/16 :goto_1

    :cond_d
    new-instance v24, Ljava/lang/String;

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v0, v9, v1, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v25

    goto/16 :goto_1
.end method

.method public final decimalValue()Ljava/math/BigDecimal;
    .locals 10

    const/4 v9, 0x0

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v6, v7

    add-int/lit8 v3, v6, -0x1

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v6, 0x4c

    if-eq v0, v6, :cond_0

    const/16 v6, 0x53

    if-eq v0, v6, :cond_0

    const/16 v6, 0x42

    if-eq v0, v6, :cond_0

    const/16 v6, 0x46

    if-eq v0, v6, :cond_0

    const/16 v6, 0x44

    if-ne v0, v6, :cond_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    :cond_1
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move v2, v5

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v6, v6

    if-ge v2, v6, :cond_2

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v7, v4, v2

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v6, v4, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v6, Ljava/math/BigDecimal;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-direct {v6, v7, v9, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    :goto_0
    return-object v6

    :cond_2
    new-array v1, v2, [C

    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v7, v4, v2

    invoke-virtual {v6, v4, v7, v1, v9}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v6, Ljava/math/BigDecimal;

    invoke-direct {v6, v1}, Ljava/math/BigDecimal;-><init>([C)V

    goto :goto_0
.end method

.method public info()Ljava/lang/String;
    .locals 4

    const/high16 v3, 0x10000

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pos "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", json : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v0, v3, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final intValue()I
    .locals 14

    const/16 v11, 0x1a

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v7, v12, v13

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_2

    move v1, v11

    :goto_0
    const/16 v12, 0x2d

    if-ne v1, v12, :cond_3

    const/4 v9, 0x1

    const/high16 v6, -0x80000000

    add-int/lit8 v4, v4, 0x1

    move v5, v4

    :goto_1
    const v8, -0xccccccc

    if-ge v5, v7, :cond_0

    add-int/lit8 v4, v5, 0x1

    move v2, v5

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v12, :cond_4

    move v1, v11

    :goto_2
    add-int/lit8 v3, v1, -0x30

    neg-int v10, v3

    move v5, v4

    :cond_0
    :goto_3
    if-ge v5, v7, :cond_b

    add-int/lit8 v4, v5, 0x1

    move v2, v5

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v12, :cond_5

    move v0, v11

    :goto_4
    const/16 v12, 0x4c

    if-eq v0, v12, :cond_1

    const/16 v12, 0x53

    if-eq v0, v12, :cond_1

    const/16 v12, 0x42

    if-ne v0, v12, :cond_6

    :cond_1
    :goto_5
    if-eqz v9, :cond_a

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v11, v11, 0x1

    if-le v4, v11, :cond_9

    :goto_6
    return v10

    :cond_2
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_3
    const v6, -0x7fffffff

    move v5, v4

    goto :goto_1

    :cond_4
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    :cond_5
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v0, -0x30

    const v12, -0xccccccc

    if-ge v10, v12, :cond_7

    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_7
    mul-int/lit8 v10, v10, 0xa

    add-int v12, v6, v3

    if-ge v10, v12, :cond_8

    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_8
    sub-int/2addr v10, v3

    move v5, v4

    goto :goto_3

    :cond_9
    new-instance v11, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_a
    neg-int v10, v10

    goto :goto_6

    :cond_b
    move v4, v5

    goto :goto_5
.end method

.method public final integerValue()Ljava/lang/Number;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v5, v12, v13

    const/16 v9, 0x20

    add-int/lit8 v1, v5, -0x1

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v12, :cond_1

    const/16 v0, 0x1a

    :goto_0
    sparse-switch v0, :sswitch_data_0

    :goto_1
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v12, v13, :cond_2

    const/16 v0, 0x1a

    :goto_2
    const/16 v12, 0x2d

    if-ne v0, v12, :cond_3

    const/4 v8, 0x1

    const-wide/high16 v6, -0x8000000000000000L

    add-int/lit8 v3, v3, 0x1

    move v4, v3

    :goto_3
    if-ge v4, v5, :cond_0

    add-int/lit8 v3, v4, 0x1

    move v1, v4

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v12, :cond_4

    const/16 v0, 0x1a

    :goto_4
    add-int/lit8 v2, v0, -0x30

    neg-int v12, v2

    int-to-long v10, v12

    move v4, v3

    :cond_0
    :goto_5
    if-ge v4, v5, :cond_8

    add-int/lit8 v3, v4, 0x1

    move v1, v4

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v12, :cond_5

    const/16 v0, 0x1a

    :goto_6
    add-int/lit8 v2, v0, -0x30

    const-wide v12, -0xcccccccccccccccL

    cmp-long v12, v10, v12

    if-gez v12, :cond_6

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :goto_7
    return-object v12

    :cond_1
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    :sswitch_0
    add-int/lit8 v5, v5, -0x1

    const/16 v9, 0x4c

    goto :goto_1

    :sswitch_1
    add-int/lit8 v5, v5, -0x1

    const/16 v9, 0x53

    goto :goto_1

    :sswitch_2
    add-int/lit8 v5, v5, -0x1

    const/16 v9, 0x42

    goto :goto_1

    :cond_2
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v13, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_3
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move v4, v3

    goto :goto_3

    :cond_4
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_5
    iget-object v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    :cond_6
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    int-to-long v12, v2

    add-long/2addr v12, v6

    cmp-long v12, v10, v12

    if-gez v12, :cond_7

    new-instance v12, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    int-to-long v12, v2

    sub-long/2addr v10, v12

    move v4, v3

    goto :goto_5

    :cond_8
    if-eqz v8, :cond_d

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v12, v12, 0x1

    if-le v4, v12, :cond_c

    const-wide/32 v12, -0x80000000

    cmp-long v12, v10, v12

    if-ltz v12, :cond_b

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_b

    const/16 v12, 0x53

    if-ne v9, v12, :cond_9

    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    goto :goto_7

    :cond_9
    const/16 v12, 0x42

    if-ne v9, v12, :cond_a

    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    goto :goto_7

    :cond_a
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    goto :goto_7

    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    goto/16 :goto_7

    :cond_c
    new-instance v12, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_d
    neg-long v10, v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v12, v10, v12

    if-gtz v12, :cond_10

    const/16 v12, 0x4c

    if-eq v9, v12, :cond_10

    const/16 v12, 0x53

    if-ne v9, v12, :cond_e

    long-to-int v12, v10

    int-to-short v12, v12

    invoke-static {v12}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v12

    move v3, v4

    goto/16 :goto_7

    :cond_e
    const/16 v12, 0x42

    if-ne v9, v12, :cond_f

    long-to-int v12, v10

    int-to-byte v12, v12

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    move v3, v4

    goto/16 :goto_7

    :cond_f
    long-to-int v12, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move v3, v4

    goto/16 :goto_7

    :cond_10
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move v3, v4

    goto/16 :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_2
        0x4c -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final isBlankInput()Z
    .locals 7

    const/16 v6, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v5, 0x1a

    if-ne v0, v5, :cond_0

    :goto_1
    return v3

    :cond_0
    if-gt v0, v6, :cond_2

    if-eq v0, v6, :cond_1

    const/16 v5, 0xa

    if-eq v0, v5, :cond_1

    const/16 v5, 0xd

    if-eq v0, v5, :cond_1

    const/16 v5, 0x9

    if-eq v0, v5, :cond_1

    const/16 v5, 0xc

    if-eq v0, v5, :cond_1

    const/16 v5, 0x8

    if-ne v0, v5, :cond_2

    :cond_1
    move v2, v3

    :goto_2
    if-nez v2, :cond_3

    move v3, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    iget v1, p1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final longValue()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int v5, v9, v12

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {p0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    const/16 v12, 0x2d

    if-ne v9, v12, :cond_2

    const/4 v8, 0x1

    const-wide/high16 v6, -0x8000000000000000L

    add-int/lit8 v2, v2, 0x1

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_0

    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    add-int/lit8 v1, v9, -0x30

    neg-int v9, v1

    int-to-long v10, v9

    move v3, v2

    :cond_0
    :goto_1
    if-ge v3, v5, :cond_9

    add-int/lit8 v2, v3, 0x1

    move v4, v3

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v9, :cond_3

    const/16 v0, 0x1a

    :goto_2
    const/16 v9, 0x4c

    if-eq v0, v9, :cond_1

    const/16 v9, 0x53

    if-eq v0, v9, :cond_1

    const/16 v9, 0x42

    if-ne v0, v9, :cond_4

    :cond_1
    :goto_3
    if-eqz v8, :cond_8

    iget v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v9, v9, 0x1

    if-le v2, v9, :cond_7

    :goto_4
    return-wide v10

    :cond_2
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move v3, v2

    goto :goto_0

    :cond_3
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v0, -0x30

    const-wide v12, -0xcccccccccccccccL

    cmp-long v9, v10, v12

    if-gez v9, :cond_5

    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_5
    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    int-to-long v12, v1

    add-long/2addr v12, v6

    cmp-long v9, v10, v12

    if-gez v9, :cond_6

    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    int-to-long v12, v1

    sub-long/2addr v10, v12

    move v3, v2

    goto :goto_1

    :cond_7
    new-instance v9, Ljava/lang/NumberFormatException;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->numberString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    neg-long v10, v10

    goto :goto_4

    :cond_9
    move v2, v3

    goto :goto_3
.end method

.method public matchField(J)Z
    .locals 13

    const/4 v8, 0x1

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v10, 0x1

    move v9, v8

    :goto_0
    const/16 v10, 0x22

    if-ne v3, v10, :cond_2

    :cond_0
    const-wide v6, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    move v5, v4

    :goto_1
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ge v5, v10, :cond_1

    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_6

    sub-int v10, v5, v4

    add-int/lit8 v10, v10, 0x1

    add-int v8, v9, v10

    move v9, v8

    :cond_1
    cmp-long v10, v6, p1

    if-eqz v10, :cond_7

    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    iput-wide v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    const/4 v10, 0x0

    move v8, v9

    :goto_2
    return v10

    :cond_2
    const/16 v10, 0x27

    if-eq v3, v10, :cond_0

    const/16 v10, 0x20

    if-gt v3, v10, :cond_5

    const/16 v10, 0x20

    if-eq v3, v10, :cond_3

    const/16 v10, 0xa

    if-eq v3, v10, :cond_3

    const/16 v10, 0xd

    if-eq v3, v10, :cond_3

    const/16 v10, 0x9

    if-eq v3, v10, :cond_3

    const/16 v10, 0xc

    if-eq v3, v10, :cond_3

    const/16 v10, 0x8

    if-ne v3, v10, :cond_5

    :cond_3
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int v2, v10, v9

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_4

    const/16 v3, 0x1a

    :goto_3
    move v9, v8

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    :cond_5
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->fieldHash:J

    const/4 v10, -0x2

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v10, 0x0

    move v8, v9

    goto :goto_2

    :cond_6
    int-to-long v10, v0

    xor-long/2addr v6, v10

    const-wide v10, 0x100000001b3L

    mul-long/2addr v6, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int v2, v10, v9

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_8

    const/16 v1, 0x1a

    :goto_4
    move v9, v8

    :goto_5
    const/16 v10, 0x3a

    if-ne v1, v10, :cond_a

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int v2, v10, v9

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_9

    const/16 v1, 0x1a

    :goto_6
    const/16 v10, 0x7b

    if-ne v1, v10, :cond_f

    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_e

    const/16 v10, 0x1a

    :goto_7
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v10, 0xc

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_8
    const/4 v10, 0x1

    goto :goto_2

    :cond_8
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    :cond_a
    const/16 v10, 0x20

    if-gt v1, v10, :cond_d

    const/16 v10, 0x20

    if-eq v1, v10, :cond_b

    const/16 v10, 0xa

    if-eq v1, v10, :cond_b

    const/16 v10, 0xd

    if-eq v1, v10, :cond_b

    const/16 v10, 0x9

    if-eq v1, v10, :cond_b

    const/16 v10, 0xc

    if-eq v1, v10, :cond_b

    const/16 v10, 0x8

    if-ne v1, v10, :cond_d

    :cond_b
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int v2, v10, v9

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v10, :cond_c

    const/16 v1, 0x1a

    :goto_9
    move v9, v8

    goto :goto_5

    :cond_c
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    :cond_d
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v11, "match feild error expect \':\'"

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_e
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_7

    :cond_f
    const/16 v10, 0x5b

    if-ne v1, v10, :cond_11

    add-int/lit8 v10, v2, 0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_10

    const/16 v10, 0x1a

    :goto_a
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v10, 0xe

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_8

    :cond_10
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_a

    :cond_11
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v10, v11, :cond_12

    const/16 v10, 0x1a

    :goto_b
    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_8

    :cond_12
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v11, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_b
.end method

.method public next()C
    .locals 2

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return v1

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0
.end method

.method public final nextIdent()V
    .locals 4

    const/16 v3, 0x20

    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v3, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_2
.end method

.method public final nextToken()V
    .locals 11

    const/16 v10, 0x2c

    const/16 v9, 0xd

    const/16 v8, 0xc

    const/16 v7, 0xa

    const/16 v3, 0x1a

    const/4 v4, 0x0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_0
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    :cond_0
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x22

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    :goto_1
    return-void

    :cond_1
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x30

    if-lt v4, v5, :cond_2

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x39

    if-le v4, v5, :cond_3

    :cond_2
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto :goto_1

    :cond_4
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v10, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v3, 0x10

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_5
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    sparse-switch v4, :sswitch_data_0

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-eq v4, v5, :cond_6

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v4, v3, :cond_12

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-ne v4, v5, :cond_12

    :cond_6
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_14

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v4, 0x14

    if-ne v3, v4, :cond_13

    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "EOF error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :sswitch_2
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v5, "true"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v10, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v7, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v9, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_7

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v3, :cond_7

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v8, :cond_7

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_8

    :cond_7
    const/4 v3, 0x6

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :cond_8
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "scan true error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_3
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanIdent()V

    goto/16 :goto_1

    :sswitch_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v5, "false"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x5

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v10, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v7, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v9, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_9

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v3, :cond_9

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v8, :cond_9

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x8

    if-eq v3, v4, :cond_9

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x3a

    if-ne v3, v4, :cond_a

    :cond_9
    const/4 v3, 0x7

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :cond_a
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "scan false error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_5
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v5, "null"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v2, 0x8

    :cond_b
    :goto_3
    if-eqz v2, :cond_e

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x20

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v10, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v7, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v9, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x9

    if-eq v4, v5, :cond_c

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v4, v3, :cond_c

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v3, v8, :cond_c

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x8

    if-ne v3, v4, :cond_e

    :cond_c
    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :cond_d
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v5, "new"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v2, 0x9

    goto :goto_3

    :cond_e
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v4, "scan null/new error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_6
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v3, 0xb

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :sswitch_8
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_f

    :goto_4
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0xe

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :cond_f
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_4

    :sswitch_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v3, 0xf

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :sswitch_a
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_10

    :goto_5
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :cond_10
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    :sswitch_b
    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v4, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v4, :cond_11

    :goto_6
    iput-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput v9, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :cond_11
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_6

    :sswitch_c
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v3, 0x11

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_1

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_13
    const/16 v3, 0x14

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->eofPos:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    goto/16 :goto_1

    :cond_14
    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x1f

    if-le v4, v5, :cond_15

    iget-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v5, 0x7f

    if-ne v4, v5, :cond_16

    :cond_15
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_0

    :cond_16
    const/4 v3, 0x1

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x27 -> :sswitch_0
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x3a -> :sswitch_c
        0x53 -> :sswitch_3
        0x54 -> :sswitch_3
        0x5b -> :sswitch_8
        0x5d -> :sswitch_9
        0x66 -> :sswitch_4
        0x6e -> :sswitch_5
        0x74 -> :sswitch_2
        0x75 -> :sswitch_3
        0x7b -> :sswitch_a
        0x7d -> :sswitch_b
    .end sparse-switch
.end method

.method public final nextToken(I)V
    .locals 8

    const/16 v7, 0x5b

    const/16 v6, 0xe

    const/16 v5, 0x7b

    const/16 v4, 0xc

    const/16 v1, 0x1a

    const/4 v2, 0x0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_0
    packed-switch p1, :pswitch_data_0

    :cond_0
    :pswitch_0
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x20

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0xd

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v2, v4, :cond_1

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x8

    if-ne v2, v3, :cond_13

    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :pswitch_1
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_3

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_2

    :goto_1
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_2
    return-void

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v7, :cond_0

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_4

    :goto_3
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    :pswitch_2
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_6

    const/16 v2, 0x10

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_5

    :goto_4
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_4

    :cond_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x7d

    if-ne v2, v3, :cond_8

    const/16 v2, 0xd

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_7

    :goto_5
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    :cond_8
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_a

    const/16 v2, 0xf

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_9

    :goto_6
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_6

    :cond_a
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v1, :cond_0

    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_2

    :pswitch_3
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_b

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_b

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_2

    :cond_b
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_c

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_2

    :cond_c
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v7, :cond_d

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    :cond_d
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    :pswitch_4
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x22

    if-ne v2, v3, :cond_e

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    goto/16 :goto_2

    :cond_e
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x30

    if-lt v2, v3, :cond_f

    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x39

    if-gt v2, v3, :cond_f

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->pos:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    goto/16 :goto_2

    :cond_f
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v2, :cond_10

    :goto_7
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    :pswitch_5
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v7, :cond_11

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    :cond_11
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v5, :cond_0

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    :pswitch_6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x5d

    if-ne v2, v3, :cond_12

    const/16 v1, 0xf

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto/16 :goto_2

    :cond_12
    :pswitch_7
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v2, v1, :cond_0

    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextIdent()V

    goto/16 :goto_2

    :cond_13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public final nextTokenWithChar(C)V
    .locals 4

    const/4 v1, 0x0

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, p1, :cond_1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_0

    const/16 v1, 0x1a

    :goto_1
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_1

    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xd

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_2

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not match "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-char v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final numberString()Ljava/lang/String;
    .locals 5

    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/16 v3, 0x4c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x53

    if-eq v0, v3, :cond_0

    const/16 v3, 0x42

    if-eq v0, v3, :cond_0

    const/16 v3, 0x46

    if-eq v0, v3, :cond_0

    const/16 v3, 0x44

    if-ne v0, v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-direct {p0, v3, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public scanBoolean()Z
    .locals 5

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v3, "false"

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    iput-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_1
    return v1

    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v3, "true"

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x4

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x31

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x30

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public scanFieldBoolean(J)Z
    .locals 9

    const/4 v6, 0x0

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v5, 0x0

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v7, "false"

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v3, v3, 0x5

    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int v1, v6, v3

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v6, :cond_9

    const/16 v0, 0x1a

    :goto_2
    const/16 v6, 0x2c

    if-ne v0, v6, :cond_b

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v4, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_a

    const/16 v6, 0x1a

    :goto_3
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v6, 0x3

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v7, "true"

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v3, v3, 0x4

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v7, "\"false\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v3, v3, 0x7

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v7, "\"true\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x6

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_5

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x30

    if-ne v6, v7, :cond_6

    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v7, "\"1\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v3, v3, 0x3

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v7, "\"0\""

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_8

    add-int/lit8 v3, v3, 0x3

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_9
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_2

    :cond_a
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto/16 :goto_3

    :cond_b
    const/16 v6, 0x7d

    if-eq v0, v6, :cond_e

    const/16 v6, 0x20

    if-eq v0, v6, :cond_c

    const/16 v6, 0xa

    if-eq v0, v6, :cond_c

    const/16 v6, 0xd

    if-eq v0, v6, :cond_c

    const/16 v6, 0x9

    if-eq v0, v6, :cond_c

    const/16 v6, 0xc

    if-eq v0, v6, :cond_c

    const/16 v6, 0x8

    if-ne v0, v6, :cond_e

    :cond_c
    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int v1, v6, v4

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v6, :cond_d

    const/16 v0, 0x1a

    :goto_4
    move v4, v3

    goto/16 :goto_2

    :cond_d
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_e
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_16

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v6, v4

    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v6, 0x2c

    if-ne v0, v6, :cond_10

    const/16 v6, 0x10

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_f

    const/16 v6, 0x1a

    :goto_5
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_6
    const/4 v6, 0x4

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    :cond_f
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    :cond_10
    const/16 v6, 0x5d

    if-ne v0, v6, :cond_12

    const/16 v6, 0xf

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_11

    const/16 v6, 0x1a

    :goto_7
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_6

    :cond_11
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    :cond_12
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_14

    const/16 v6, 0xd

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v6, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v6, :cond_13

    const/16 v6, 0x1a

    :goto_8
    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_6

    :cond_13
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_8

    :cond_14
    const/16 v6, 0x1a

    if-ne v0, v6, :cond_15

    const/16 v6, 0x14

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v3, -0x1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v6, 0x1a

    iput-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_6

    :cond_15
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_16
    const/4 v6, -0x1

    iput v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v5, 0x0

    move v3, v4

    goto/16 :goto_0
.end method

.method public scanFieldDate(J)Ljava/util/Date;
    .locals 21

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v8

    if-nez v8, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget-char v12, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v8, 0x1

    add-int v5, v15, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_1

    const/16 v2, 0x1a

    :goto_1
    const/16 v15, 0x22

    if-ne v2, v15, :cond_5

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v13, v15, v9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int v5, v15, v9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_2

    const/16 v2, 0x1a

    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/16 v16, 0x22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    add-int v17, v17, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    const/4 v15, -0x1

    if-ne v4, v15, :cond_3

    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v16, "unclosed str"

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_2

    :cond_3
    sub-int v11, v4, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result v15

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    add-int/2addr v8, v11

    add-int/lit8 v9, v8, 0x1

    add-int v15, v14, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    :goto_3
    const/16 v15, 0x2c

    if-ne v2, v15, :cond_d

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v9, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_c

    const/16 v15, 0x1a

    :goto_4
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v8, v9

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v15, 0x30

    if-lt v2, v15, :cond_b

    const/16 v15, 0x39

    if-gt v2, v15, :cond_b

    add-int/lit8 v15, v2, -0x30

    int-to-long v6, v15

    move v8, v9

    :goto_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v8, 0x1

    add-int v5, v15, v8

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_6

    const/16 v2, 0x1a

    :goto_6
    const/16 v15, 0x30

    if-lt v2, v15, :cond_7

    const/16 v15, 0x39

    if-gt v2, v15, :cond_7

    const-wide/16 v16, 0xa

    mul-long v16, v16, v6

    add-int/lit8 v15, v2, -0x30

    int-to-long v0, v15

    move-wide/from16 v18, v0

    add-long v6, v16, v18

    move v8, v9

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_6

    :cond_7
    const/16 v15, 0x2e

    if-ne v2, v15, :cond_8

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    move v8, v9

    goto/16 :goto_0

    :cond_8
    const/16 v15, 0x22

    if-ne v2, v15, :cond_16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int v5, v15, v9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_9

    const/16 v2, 0x1a

    :goto_7
    const-wide/16 v16, 0x0

    cmp-long v15, v6, v16

    if-gez v15, :cond_a

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_7

    :cond_a
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v6, v7}, Ljava/util/Date;-><init>(J)V

    move v9, v8

    goto/16 :goto_3

    :cond_b
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    move v8, v9

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto/16 :goto_4

    :cond_d
    const/16 v15, 0x7d

    if-ne v2, v15, :cond_15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v9, 0x1

    add-int/2addr v15, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v15, 0x2c

    if-ne v2, v15, :cond_f

    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_e

    const/16 v15, 0x1a

    :goto_8
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_9
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_8

    :cond_f
    const/16 v15, 0x5d

    if-ne v2, v15, :cond_11

    const/16 v15, 0xf

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_10

    const/16 v15, 0x1a

    :goto_a
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_a

    :cond_11
    const/16 v15, 0x7d

    if-ne v2, v15, :cond_13

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v15, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v5, v15, :cond_12

    const/16 v15, 0x1a

    :goto_b
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_b

    :cond_13
    const/16 v15, 0x1a

    if-ne v2, v15, :cond_14

    const/16 v15, 0x14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v15, 0x1a

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_9

    :cond_14
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_15
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    move v8, v9

    goto/16 :goto_0

    :cond_16
    move v8, v9

    goto/16 :goto_7
.end method

.method public final scanFieldDouble(J)D
    .locals 21

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v7

    if-nez v7, :cond_0

    const-wide/16 v14, 0x0

    :goto_0
    return-wide v14

    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v8

    add-int/lit8 v11, v13, -0x1

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_1

    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    :goto_2
    const/16 v13, 0x30

    if-lt v2, v13, :cond_c

    const/16 v13, 0x39

    if-gt v2, v13, :cond_c

    add-int/lit8 v5, v2, -0x30

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v13, 0x30

    if-lt v2, v13, :cond_2

    const/16 v13, 0x39

    if-gt v2, v13, :cond_2

    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    move v7, v8

    goto :goto_3

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    const/16 v13, 0x2e

    if-ne v2, v13, :cond_3

    const/4 v10, 0x1

    :goto_4
    if-eqz v10, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v13, 0x30

    if-lt v2, v13, :cond_4

    const/16 v13, 0x39

    if-gt v2, v13, :cond_4

    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    mul-int/lit8 v9, v9, 0xa

    :goto_5
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v13, 0x30

    if-lt v2, v13, :cond_5

    const/16 v13, 0x39

    if-gt v2, v13, :cond_5

    mul-int/lit8 v13, v5, 0xa

    add-int/lit8 v16, v2, -0x30

    add-int v5, v13, v16

    mul-int/lit8 v9, v9, 0xa

    move v7, v8

    goto :goto_5

    :cond_3
    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v14, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v13, 0x65

    if-eq v2, v13, :cond_6

    const/16 v13, 0x45

    if-ne v2, v13, :cond_8

    :cond_6
    const/4 v4, 0x1

    :goto_6
    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v13, 0x2b

    if-eq v2, v13, :cond_7

    const/16 v13, 0x2d

    if-ne v2, v13, :cond_13

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    :goto_7
    const/16 v13, 0x30

    if-lt v2, v13, :cond_9

    const/16 v13, 0x39

    if-gt v2, v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v8, 0x1

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    move v8, v7

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    goto :goto_6

    :cond_9
    move v7, v8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v13, v7

    sub-int/2addr v13, v11

    add-int/lit8 v3, v13, -0x1

    if-nez v4, :cond_b

    const/16 v13, 0xa

    if-ge v3, v13, :cond_b

    int-to-double v0, v5

    move-wide/from16 v16, v0

    int-to-double v0, v9

    move-wide/from16 v18, v0

    div-double v14, v16, v18

    if-eqz v6, :cond_a

    neg-double v14, v14

    :cond_a
    :goto_8
    const/16 v13, 0x2c

    if-ne v2, v13, :cond_d

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v7, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    goto :goto_8

    :cond_c
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v14, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v7, 0x1

    add-int/2addr v13, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v2

    const/16 v13, 0x2c

    if-ne v2, v13, :cond_e

    const/16 v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_9
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v7, v8

    goto/16 :goto_0

    :cond_e
    const/16 v13, 0x5d

    if-ne v2, v13, :cond_f

    const/16 v13, 0xf

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_f
    const/16 v13, 0x7d

    if-ne v2, v13, :cond_10

    const/16 v13, 0xd

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_10
    const/16 v13, 0x1a

    if-ne v2, v13, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v16, v8, -0x1

    add-int v13, v13, v16

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v13, 0x14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v13, 0x1a

    move-object/from16 v0, p0

    iput-char v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_11
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v14, 0x0

    move v7, v8

    goto/16 :goto_0

    :cond_12
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v14, 0x0

    goto/16 :goto_0

    :cond_13
    move v8, v7

    goto/16 :goto_7

    :cond_14
    move v7, v8

    goto/16 :goto_2
.end method

.method public final scanFieldDoubleArray(J)[D
    .locals 27

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v13

    if-nez v13, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    add-int v8, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1

    const/16 v7, 0x1a

    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v7, v0, :cond_2

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v4, 0x0

    move v13, v14

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    add-int v8, v22, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_4

    const/16 v7, 0x1a

    :goto_2
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v4, v0, [D

    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v13

    add-int/lit8 v17, v22, -0x1

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_5

    const/4 v12, 0x1

    :goto_4
    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    add-int v8, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_6

    const/16 v7, 0x1a

    :goto_5
    move v13, v14

    :cond_3
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_1d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_1d

    add-int/lit8 v11, v7, -0x30

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    add-int v8, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_7

    const/16 v7, 0x1a

    :goto_7
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_8

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_8

    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    move v13, v14

    goto :goto_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_7

    :cond_8
    const/4 v15, 0x1

    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v7, v0, :cond_9

    const/16 v16, 0x1

    :goto_8
    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    add-int v8, v22, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_a

    const/16 v7, 0x1a

    :goto_9
    mul-int/lit8 v15, v15, 0xa

    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_c

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_c

    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    add-int v8, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_b

    const/16 v7, 0x1a

    :goto_b
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_d

    mul-int/lit8 v22, v11, 0xa

    add-int/lit8 v23, v7, -0x30

    add-int v11, v22, v23

    mul-int/lit8 v15, v15, 0xa

    move v13, v14

    goto :goto_a

    :cond_9
    const/16 v16, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_9

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_b

    :cond_c
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v7, v0, :cond_e

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v7, v0, :cond_10

    :cond_e
    const/4 v10, 0x1

    :goto_c
    if-eqz v10, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    add-int v8, v22, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_11

    const/16 v7, 0x1a

    :goto_d
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v7, v0, :cond_f

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v7, v0, :cond_25

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    add-int v8, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_12

    const/16 v7, 0x1a

    :goto_e
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v7, v0, :cond_14

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v7, v0, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    add-int v8, v22, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_13

    const/16 v7, 0x1a

    :goto_f
    move v14, v13

    goto :goto_e

    :cond_10
    const/4 v10, 0x0

    goto :goto_c

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_d

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_e

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_f

    :cond_14
    move v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v13

    sub-int v22, v22, v17

    add-int/lit8 v9, v22, -0x1

    if-nez v10, :cond_18

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v9, v0, :cond_18

    int-to-double v0, v11

    move-wide/from16 v22, v0

    int-to-double v0, v15

    move-wide/from16 v24, v0

    div-double v20, v22, v24

    if-eqz v12, :cond_15

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    :cond_15
    :goto_10
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v5, v0, :cond_16

    array-length v0, v4

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v19, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, v19

    :cond_16
    add-int/lit8 v6, v5, 0x1

    aput-wide v20, v4, v5

    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    add-int v8, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_19

    const/16 v7, 0x1a

    :goto_11
    move v13, v14

    :cond_17
    move v5, v6

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v20

    goto :goto_10

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_11

    :cond_1a
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v14, v13, 0x1

    add-int v8, v22, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1c

    const/16 v7, 0x1a

    :goto_12
    array-length v0, v4

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v6, v0, :cond_1b

    new-array v0, v6, [D

    move-object/from16 v19, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, v19

    :cond_1b
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v14, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v13, v14

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_12

    :cond_1d
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_1e
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v13, v14, 0x1

    add-int v8, v22, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1f

    const/16 v7, 0x1a

    :goto_13
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v7, v0, :cond_20

    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_14
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_13

    :cond_20
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v7, v0, :cond_21

    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    :cond_21
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v7, v0, :cond_22

    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    :cond_22
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v7, v0, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v13, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_14

    :cond_23
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_24
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v4, 0x0

    move v13, v14

    goto/16 :goto_0

    :cond_25
    move v14, v13

    goto/16 :goto_e
.end method

.method public final scanFieldDoubleArray2(J)[[D
    .locals 29

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v16

    if-nez v16, :cond_0

    const/16 v24, 0x0

    check-cast v24, [[D

    :goto_0
    return-object v24

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    add-int v11, v24, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1

    const/16 v10, 0x1a

    :goto_1
    const/16 v24, 0x5b

    move/from16 v0, v24

    if-eq v10, v0, :cond_2

    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v24, 0x0

    check-cast v24, [[D

    move/from16 v16, v17

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    add-int v11, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_5

    const/16 v10, 0x1a

    :goto_2
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v7, v0, [[D

    const/4 v8, 0x0

    move v9, v8

    move/from16 v17, v16

    :cond_3
    :goto_3
    const/16 v24, 0x5b

    move/from16 v0, v24

    if-ne v10, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    add-int v11, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_6

    const/16 v10, 0x1a

    :goto_4
    const/16 v24, 0x10

    move/from16 v0, v24

    new-array v4, v0, [D

    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int v24, v24, v16

    add-int/lit8 v19, v24, -0x1

    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_7

    const/4 v15, 0x1

    :goto_6
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    add-int v11, v24, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_8

    const/16 v10, 0x1a

    :goto_7
    move/from16 v16, v17

    :cond_4
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_1f

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_1f

    add-int/lit8 v14, v10, -0x30

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    add-int v11, v24, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_9

    const/16 v10, 0x1a

    :goto_9
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_a

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_a

    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    move/from16 v16, v17

    goto :goto_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto/16 :goto_4

    :cond_7
    const/4 v15, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_7

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_9

    :cond_a
    const/16 v18, 0x1

    const/16 v24, 0x2e

    move/from16 v0, v24

    if-ne v10, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    add-int v11, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_b

    const/16 v10, 0x1a

    :goto_a
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_d

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_d

    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    mul-int/lit8 v18, v18, 0xa

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    add-int v11, v24, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_c

    const/16 v10, 0x1a

    :goto_c
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_e

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_e

    mul-int/lit8 v24, v14, 0xa

    add-int/lit8 v25, v10, -0x30

    add-int v14, v24, v25

    mul-int/lit8 v18, v18, 0xa

    move/from16 v16, v17

    goto :goto_b

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_a

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_c

    :cond_d
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    :cond_e
    const/16 v24, 0x65

    move/from16 v0, v24

    if-eq v10, v0, :cond_f

    const/16 v24, 0x45

    move/from16 v0, v24

    if-ne v10, v0, :cond_11

    :cond_f
    const/4 v13, 0x1

    :goto_d
    if-eqz v13, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    add-int v11, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_12

    const/16 v10, 0x1a

    :goto_e
    const/16 v24, 0x2b

    move/from16 v0, v24

    if-eq v10, v0, :cond_10

    const/16 v24, 0x2d

    move/from16 v0, v24

    if-ne v10, v0, :cond_2b

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    add-int v11, v24, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_13

    const/16 v10, 0x1a

    :goto_f
    const/16 v24, 0x30

    move/from16 v0, v24

    if-lt v10, v0, :cond_15

    const/16 v24, 0x39

    move/from16 v0, v24

    if-gt v10, v0, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    add-int v11, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_14

    const/16 v10, 0x1a

    :goto_10
    move/from16 v17, v16

    goto :goto_f

    :cond_11
    const/4 v13, 0x0

    goto :goto_d

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_e

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_f

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_10

    :cond_15
    move/from16 v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int v24, v24, v16

    sub-int v24, v24, v19

    add-int/lit8 v12, v24, -0x1

    if-nez v13, :cond_19

    const/16 v24, 0xa

    move/from16 v0, v24

    if-ge v12, v0, :cond_19

    int-to-double v0, v14

    move-wide/from16 v24, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v22, v24, v26

    if-eqz v15, :cond_16

    move-wide/from16 v0, v22

    neg-double v0, v0

    move-wide/from16 v22, v0

    :cond_16
    :goto_11
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v5, v0, :cond_17

    array-length v0, v4

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [D

    move-object/from16 v21, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, v21

    :cond_17
    add-int/lit8 v6, v5, 0x1

    aput-wide v22, v4, v5

    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    add-int v11, v24, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1a

    const/16 v10, 0x1a

    :goto_12
    move/from16 v16, v17

    :cond_18
    move v5, v6

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v22

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_12

    :cond_1b
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    add-int v11, v24, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_1e

    const/16 v10, 0x1a

    :goto_13
    array-length v0, v4

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v6, v0, :cond_1c

    new-array v0, v6, [D

    move-object/from16 v21, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v4, v21

    :cond_1c
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v9, v0, :cond_1d

    array-length v0, v7

    move/from16 v24, v0

    mul-int/lit8 v24, v24, 0x3

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [[D

    move-object/from16 v21, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v4, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v7, v21

    :cond_1d
    add-int/lit8 v8, v9, 0x1

    aput-object v4, v7, v9

    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    add-int v11, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_20

    const/16 v10, 0x1a

    :goto_14
    move v9, v8

    move/from16 v17, v16

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_13

    :cond_1f
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_14

    :cond_21
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v16, v17, 0x1

    add-int v11, v24, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v11, v0, :cond_23

    const/16 v10, 0x1a

    :goto_15
    array-length v0, v7

    move/from16 v24, v0

    move/from16 v0, v24

    if-eq v8, v0, :cond_22

    new-array v0, v8, [[D

    move-object/from16 v21, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v21

    move/from16 v2, v25

    invoke-static {v7, v0, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v7, v21

    :cond_22
    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v16, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v24, 0x3

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v24, v7

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_15

    :cond_24
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v17, v16, 0x1

    add-int v24, v24, v16

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v10

    const/16 v24, 0x2c

    move/from16 v0, v24

    if-ne v10, v0, :cond_25

    const/16 v24, 0x10

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_16
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move/from16 v16, v17

    move-object/from16 v24, v7

    goto/16 :goto_0

    :cond_25
    const/16 v24, 0x5d

    move/from16 v0, v24

    if-ne v10, v0, :cond_26

    const/16 v24, 0xf

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_26
    const/16 v24, 0x7d

    move/from16 v0, v24

    if-ne v10, v0, :cond_27

    const/16 v24, 0xd

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_27
    const/16 v24, 0x1a

    move/from16 v0, v24

    if-ne v10, v0, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v24, 0x14

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v24, 0x1a

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_16

    :cond_28
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v24, 0x0

    check-cast v24, [[D

    move/from16 v16, v17

    goto/16 :goto_0

    :cond_29
    const/16 v24, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v24, 0x0

    check-cast v24, [[D

    goto/16 :goto_0

    :cond_2a
    move/from16 v16, v17

    goto/16 :goto_14

    :cond_2b
    move/from16 v17, v16

    goto/16 :goto_f
.end method

.method public final scanFieldFloat(J)F
    .locals 15

    const/4 v12, 0x0

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v6

    add-int/lit8 v9, v12, -0x1

    const/16 v12, 0x2d

    if-ne v0, v12, :cond_1

    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_14

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    :goto_2
    const/16 v12, 0x30

    if-lt v0, v12, :cond_c

    const/16 v12, 0x39

    if-gt v0, v12, :cond_c

    add-int/lit8 v3, v0, -0x30

    :goto_3
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v12, 0x30

    if-lt v0, v12, :cond_2

    const/16 v12, 0x39

    if-gt v0, v12, :cond_2

    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    move v5, v6

    goto :goto_3

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    const/16 v12, 0x2e

    if-ne v0, v12, :cond_3

    const/4 v8, 0x1

    :goto_4
    if-eqz v8, :cond_5

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v12, 0x30

    if-lt v0, v12, :cond_4

    const/16 v12, 0x39

    if-gt v0, v12, :cond_4

    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    const/16 v7, 0xa

    :goto_5
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v12, 0x30

    if-lt v0, v12, :cond_5

    const/16 v12, 0x39

    if-gt v0, v12, :cond_5

    mul-int/lit8 v12, v3, 0xa

    add-int/lit8 v13, v0, -0x30

    add-int v3, v12, v13

    mul-int/lit8 v7, v7, 0xa

    move v5, v6

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_5
    const/16 v12, 0x65

    if-eq v0, v12, :cond_6

    const/16 v12, 0x45

    if-ne v0, v12, :cond_8

    :cond_6
    const/4 v2, 0x1

    :goto_6
    if-eqz v2, :cond_9

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v12, 0x2b

    if-eq v0, v12, :cond_7

    const/16 v12, 0x2d

    if-ne v0, v12, :cond_13

    :cond_7
    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    :goto_7
    const/16 v12, 0x30

    if-lt v0, v12, :cond_9

    const/16 v12, 0x39

    if-gt v0, v12, :cond_9

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int/2addr v12, v6

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    move v6, v5

    goto :goto_7

    :cond_8
    const/4 v2, 0x0

    goto :goto_6

    :cond_9
    move v5, v6

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v12, v5

    sub-int/2addr v12, v9

    add-int/lit8 v1, v12, -0x1

    if-nez v2, :cond_b

    const/16 v12, 0xa

    if-ge v1, v12, :cond_b

    int-to-float v12, v3

    int-to-float v13, v7

    div-float v11, v12, v13

    if-eqz v4, :cond_a

    neg-float v11, v11

    :cond_a
    :goto_8
    const/16 v12, 0x2c

    if-ne v0, v12, :cond_d

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v5, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v12, 0x3

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v12, 0x10

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v9, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    goto :goto_8

    :cond_c
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_12

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int/2addr v12, v5

    invoke-virtual {p0, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v12, 0x2c

    if-ne v0, v12, :cond_e

    const/16 v12, 0x10

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_9
    const/4 v12, 0x4

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v5, v6

    goto/16 :goto_0

    :cond_e
    const/16 v12, 0x5d

    if-ne v0, v12, :cond_f

    const/16 v12, 0xf

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_f
    const/16 v12, 0x7d

    if-ne v0, v12, :cond_10

    const/16 v12, 0xd

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_9

    :cond_10
    const/16 v12, 0x1a

    if-ne v0, v12, :cond_11

    iget v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v13, v6, -0x1

    add-int/2addr v12, v13

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v12, 0x14

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v12, 0x1a

    iput-char v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_9

    :cond_11
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v11, 0x0

    move v5, v6

    goto/16 :goto_0

    :cond_12
    const/4 v12, -0x1

    iput v12, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_13
    move v6, v5

    goto/16 :goto_7

    :cond_14
    move v5, v6

    goto/16 :goto_2
.end method

.method public final scanFieldFloatArray(J)[F
    .locals 23

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v12

    if-nez v12, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    add-int v7, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1

    const/16 v6, 0x1a

    :goto_1
    const/16 v20, 0x5b

    move/from16 v0, v20

    if-eq v6, v0, :cond_2

    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    move v12, v13

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    add-int v7, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_4

    const/16 v6, 0x1a

    :goto_2
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v3, v0, [F

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int v20, v20, v12

    add-int/lit8 v16, v20, -0x1

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_5

    const/4 v11, 0x1

    :goto_4
    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    add-int v7, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_6

    const/16 v6, 0x1a

    :goto_5
    move v12, v13

    :cond_3
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_1d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_1d

    add-int/lit8 v10, v6, -0x30

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    add-int v7, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_7

    const/16 v6, 0x1a

    :goto_7
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_8

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_8

    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    move v12, v13

    goto :goto_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_2

    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_5

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_7

    :cond_8
    const/4 v14, 0x1

    const/16 v20, 0x2e

    move/from16 v0, v20

    if-ne v6, v0, :cond_9

    const/4 v15, 0x1

    :goto_8
    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    add-int v7, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_a

    const/16 v6, 0x1a

    :goto_9
    mul-int/lit8 v14, v14, 0xa

    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_c

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_c

    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    add-int v7, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_b

    const/16 v6, 0x1a

    :goto_b
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_d

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_d

    mul-int/lit8 v20, v10, 0xa

    add-int/lit8 v21, v6, -0x30

    add-int v10, v20, v21

    mul-int/lit8 v14, v14, 0xa

    move v12, v13

    goto :goto_a

    :cond_9
    const/4 v15, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_9

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_b

    :cond_c
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_d
    const/16 v20, 0x65

    move/from16 v0, v20

    if-eq v6, v0, :cond_e

    const/16 v20, 0x45

    move/from16 v0, v20

    if-ne v6, v0, :cond_10

    :cond_e
    const/4 v9, 0x1

    :goto_c
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    add-int v7, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_11

    const/16 v6, 0x1a

    :goto_d
    const/16 v20, 0x2b

    move/from16 v0, v20

    if-eq v6, v0, :cond_f

    const/16 v20, 0x2d

    move/from16 v0, v20

    if-ne v6, v0, :cond_25

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    add-int v7, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_12

    const/16 v6, 0x1a

    :goto_e
    const/16 v20, 0x30

    move/from16 v0, v20

    if-lt v6, v0, :cond_14

    const/16 v20, 0x39

    move/from16 v0, v20

    if-gt v6, v0, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    add-int v7, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_13

    const/16 v6, 0x1a

    :goto_f
    move v13, v12

    goto :goto_e

    :cond_10
    const/4 v9, 0x0

    goto :goto_c

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_d

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_e

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_f

    :cond_14
    move v12, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int v20, v20, v12

    sub-int v20, v20, v16

    add-int/lit8 v8, v20, -0x1

    if-nez v9, :cond_18

    const/16 v20, 0xa

    move/from16 v0, v20

    if-ge v8, v0, :cond_18

    int-to-float v0, v10

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v19, v20, v21

    if-eqz v11, :cond_15

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    :cond_15
    :goto_10
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v4, v0, :cond_16

    array-length v0, v3

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x3

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v3, v18

    :cond_16
    add-int/lit8 v5, v4, 0x1

    aput v19, v3, v4

    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    add-int v7, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_19

    const/16 v6, 0x1a

    :goto_11
    move v12, v13

    :cond_17
    move v4, v5

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    goto :goto_10

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_11

    :cond_1a
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v13, v12, 0x1

    add-int v7, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1c

    const/16 v6, 0x1a

    :goto_12
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v5, v0, :cond_1b

    new-array v0, v5, [F

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v3, v18

    :cond_1b
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v13, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v12, v13

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_12

    :cond_1d
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_1e
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v12, v13, 0x1

    add-int v7, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-lt v7, v0, :cond_1f

    const/16 v6, 0x1a

    :goto_13
    const/16 v20, 0x2c

    move/from16 v0, v20

    if-ne v6, v0, :cond_20

    const/16 v20, 0x10

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_14
    const/16 v20, 0x4

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    goto :goto_13

    :cond_20
    const/16 v20, 0x5d

    move/from16 v0, v20

    if-ne v6, v0, :cond_21

    const/16 v20, 0xf

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    :cond_21
    const/16 v20, 0x7d

    move/from16 v0, v20

    if-ne v6, v0, :cond_22

    const/16 v20, 0xd

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_14

    :cond_22
    const/16 v20, 0x1a

    move/from16 v0, v20

    if-ne v6, v0, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v20, v0

    add-int/lit8 v21, v12, -0x1

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v20, 0x14

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v20, 0x1a

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_14

    :cond_23
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_24
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v3, 0x0

    move v12, v13

    goto/16 :goto_0

    :cond_25
    move v13, v12

    goto/16 :goto_e
.end method

.method public final scanFieldFloatArray2(J)[[F
    .locals 25

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v15

    if-nez v15, :cond_0

    const/16 v22, 0x0

    check-cast v22, [[F

    :goto_0
    return-object v22

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    add-int v10, v22, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1

    const/16 v9, 0x1a

    :goto_1
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-eq v9, v0, :cond_2

    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v22, 0x0

    check-cast v22, [[F

    move/from16 v15, v16

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    add-int v10, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_5

    const/16 v9, 0x1a

    :goto_2
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v6, v0, [[F

    const/4 v7, 0x0

    move v8, v7

    move/from16 v16, v15

    :cond_3
    :goto_3
    const/16 v22, 0x5b

    move/from16 v0, v22

    if-ne v9, v0, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    add-int v10, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_6

    const/16 v9, 0x1a

    :goto_4
    const/16 v22, 0x10

    move/from16 v0, v22

    new-array v3, v0, [F

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v15

    add-int/lit8 v18, v22, -0x1

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_7

    const/4 v14, 0x1

    :goto_6
    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    add-int v10, v22, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_8

    const/16 v9, 0x1a

    :goto_7
    move/from16 v15, v16

    :cond_4
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_1f

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_1f

    add-int/lit8 v13, v9, -0x30

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    add-int v10, v22, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_9

    const/16 v9, 0x1a

    :goto_9
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_a

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_a

    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    move/from16 v15, v16

    goto :goto_8

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto/16 :goto_4

    :cond_7
    const/4 v14, 0x0

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_7

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_9

    :cond_a
    const/16 v17, 0x1

    const/16 v22, 0x2e

    move/from16 v0, v22

    if-ne v9, v0, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    add-int v10, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_b

    const/16 v9, 0x1a

    :goto_a
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_d

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_d

    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    mul-int/lit8 v17, v17, 0xa

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    add-int v10, v22, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_c

    const/16 v9, 0x1a

    :goto_c
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_e

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_e

    mul-int/lit8 v22, v13, 0xa

    add-int/lit8 v23, v9, -0x30

    add-int v13, v22, v23

    mul-int/lit8 v17, v17, 0xa

    move/from16 v15, v16

    goto :goto_b

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_a

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_c

    :cond_d
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    :cond_e
    const/16 v22, 0x65

    move/from16 v0, v22

    if-eq v9, v0, :cond_f

    const/16 v22, 0x45

    move/from16 v0, v22

    if-ne v9, v0, :cond_11

    :cond_f
    const/4 v12, 0x1

    :goto_d
    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    add-int v10, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_12

    const/16 v9, 0x1a

    :goto_e
    const/16 v22, 0x2b

    move/from16 v0, v22

    if-eq v9, v0, :cond_10

    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v9, v0, :cond_2b

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    add-int v10, v22, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_13

    const/16 v9, 0x1a

    :goto_f
    const/16 v22, 0x30

    move/from16 v0, v22

    if-lt v9, v0, :cond_15

    const/16 v22, 0x39

    move/from16 v0, v22

    if-gt v9, v0, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    add-int v10, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_14

    const/16 v9, 0x1a

    :goto_10
    move/from16 v16, v15

    goto :goto_f

    :cond_11
    const/4 v12, 0x0

    goto :goto_d

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_e

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_f

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_10

    :cond_15
    move/from16 v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int v22, v22, v15

    sub-int v22, v22, v18

    add-int/lit8 v11, v22, -0x1

    if-nez v12, :cond_19

    const/16 v22, 0xa

    move/from16 v0, v22

    if-ge v11, v0, :cond_19

    int-to-float v0, v13

    move/from16 v22, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v21, v22, v23

    if-eqz v14, :cond_16

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    :cond_16
    :goto_11
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v4, v0, :cond_17

    array-length v0, v3

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v3, v20

    :cond_17
    add-int/lit8 v5, v4, 0x1

    aput v21, v3, v4

    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    add-int v10, v22, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1a

    const/16 v9, 0x1a

    :goto_12
    move/from16 v15, v16

    :cond_18
    move v4, v5

    goto/16 :goto_5

    :cond_19
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v21

    goto :goto_11

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_12

    :cond_1b
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    add-int v10, v22, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_1e

    const/16 v9, 0x1a

    :goto_13
    array-length v0, v3

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v5, v0, :cond_1c

    new-array v0, v5, [F

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v3, v20

    :cond_1c
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v8, v0, :cond_1d

    array-length v0, v6

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x3

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [[F

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v6, v20

    :cond_1d
    add-int/lit8 v7, v8, 0x1

    aput-object v3, v6, v8

    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    add-int v10, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_20

    const/16 v9, 0x1a

    :goto_14
    move v8, v7

    move/from16 v16, v15

    goto/16 :goto_3

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_13

    :cond_1f
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_14

    :cond_21
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v15, v16, 0x1

    add-int v10, v22, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_23

    const/16 v9, 0x1a

    :goto_15
    array-length v0, v6

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v7, v0, :cond_22

    new-array v0, v7, [[F

    move-object/from16 v20, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-static {v6, v0, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v6, v20

    :cond_22
    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v15, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v22, v6

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_15

    :cond_24
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v16, v15, 0x1

    add-int v22, v22, v15

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v9

    const/16 v22, 0x2c

    move/from16 v0, v22

    if-ne v9, v0, :cond_25

    const/16 v22, 0x10

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_16
    const/16 v22, 0x4

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move/from16 v15, v16

    move-object/from16 v22, v6

    goto/16 :goto_0

    :cond_25
    const/16 v22, 0x5d

    move/from16 v0, v22

    if-ne v9, v0, :cond_26

    const/16 v22, 0xf

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_26
    const/16 v22, 0x7d

    move/from16 v0, v22

    if-ne v9, v0, :cond_27

    const/16 v22, 0xd

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_16

    :cond_27
    const/16 v22, 0x1a

    move/from16 v0, v22

    if-ne v9, v0, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v22, v0

    add-int/lit8 v23, v16, -0x1

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v22, 0x14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v22, 0x1a

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_16

    :cond_28
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v22, 0x0

    check-cast v22, [[F

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_29
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v22, 0x0

    check-cast v22, [[F

    goto/16 :goto_0

    :cond_2a
    move/from16 v15, v16

    goto/16 :goto_14

    :cond_2b
    move/from16 v16, v15

    goto/16 :goto_f
.end method

.method public scanFieldInt(J)I
    .locals 11

    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v4

    if-nez v4, :cond_1

    const/4 v7, 0x0

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int v1, v8, v4

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_3

    const/16 v0, 0x1a

    :goto_1
    const/16 v8, 0x22

    if-ne v0, v8, :cond_4

    const/4 v6, 0x1

    :goto_2
    if-eqz v6, :cond_2

    const/4 v6, 0x1

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int v1, v8, v5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_5

    const/16 v0, 0x1a

    :goto_3
    move v5, v4

    :cond_2
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6

    const/4 v3, 0x1

    :goto_4
    if-eqz v3, :cond_1e

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int v1, v8, v5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_7

    const/16 v0, 0x1a

    :goto_5
    const/16 v8, 0x30

    if-lt v0, v8, :cond_d

    const/16 v8, 0x39

    if-gt v0, v8, :cond_d

    add-int/lit8 v7, v0, -0x30

    :goto_6
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v4, 0x1

    add-int v1, v8, v4

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_8

    const/16 v0, 0x1a

    :goto_7
    const/16 v8, 0x30

    if-lt v0, v8, :cond_9

    const/16 v8, 0x39

    if-gt v0, v8, :cond_9

    mul-int/lit8 v8, v7, 0xa

    add-int/lit8 v9, v0, -0x30

    add-int v7, v8, v9

    move v4, v5

    goto :goto_6

    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    :cond_8
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7

    :cond_9
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_a

    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v7, 0x0

    move v4, v5

    goto/16 :goto_0

    :cond_a
    const/16 v8, 0x22

    if-ne v0, v8, :cond_1d

    if-nez v6, :cond_b

    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v7, 0x0

    move v4, v5

    goto/16 :goto_0

    :cond_b
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int v2, v8, v5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_c

    const/16 v0, 0x1a

    :goto_8
    if-gez v7, :cond_1c

    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_e
    const/16 v8, 0x20

    if-gt v0, v8, :cond_13

    const/16 v8, 0x20

    if-eq v0, v8, :cond_f

    const/16 v8, 0xa

    if-eq v0, v8, :cond_f

    const/16 v8, 0xd

    if-eq v0, v8, :cond_f

    const/16 v8, 0x9

    if-eq v0, v8, :cond_f

    const/16 v8, 0xc

    if-eq v0, v8, :cond_f

    const/16 v8, 0x8

    if-ne v0, v8, :cond_13

    :cond_f
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int v1, v8, v5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_12

    const/16 v0, 0x1a

    :goto_9
    move v5, v4

    :goto_a
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_e

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_11

    const/16 v8, 0x1a

    :goto_b
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eqz v3, :cond_10

    neg-int v7, v7

    :cond_10
    move v4, v5

    goto/16 :goto_0

    :cond_11
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_b

    :cond_12
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_9

    :cond_13
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_1b

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v5, 0x1

    add-int/2addr v8, v5

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v8, 0x2c

    if-ne v0, v8, :cond_15

    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_14

    const/16 v8, 0x1a

    :goto_c
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_d
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-eqz v3, :cond_0

    neg-int v7, v7

    goto/16 :goto_0

    :cond_14
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_c

    :cond_15
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_17

    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_16

    const/16 v8, 0x1a

    :goto_e
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_d

    :cond_16
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_e

    :cond_17
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_19

    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v2, v8, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v8, :cond_18

    const/16 v8, 0x1a

    :goto_f
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_d

    :cond_18
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_f

    :cond_19
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_1a

    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_d

    :cond_1a
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_1b
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v7, 0x0

    move v4, v5

    goto/16 :goto_0

    :cond_1c
    move v5, v4

    goto/16 :goto_a

    :cond_1d
    move v4, v5

    goto/16 :goto_8

    :cond_1e
    move v4, v5

    goto/16 :goto_5
.end method

.method public final scanFieldIntArray(J)[I
    .locals 13

    const/4 v10, 0x0

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int v4, v10, v6

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_1

    const/16 v3, 0x1a

    :goto_1
    const/16 v10, 0x5b

    if-eq v3, v10, :cond_2

    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v0, 0x0

    move v6, v7

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1

    :cond_2
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    add-int v4, v10, v7

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_4

    const/16 v3, 0x1a

    :goto_2
    const/16 v10, 0x10

    new-array v0, v10, [I

    const/4 v1, 0x0

    const/16 v10, 0x5d

    if-ne v3, v10, :cond_17

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int v4, v10, v6

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_5

    const/16 v3, 0x1a

    :goto_3
    move v6, v7

    :goto_4
    array-length v10, v0

    if-eq v1, v10, :cond_3

    new-array v8, v1, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v8

    :cond_3
    const/16 v10, 0x2c

    if-ne v3, v10, :cond_f

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v6, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/4 v10, 0x3

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v10, 0x10

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    :cond_5
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_3

    :cond_6
    array-length v10, v0

    if-lt v2, v10, :cond_7

    array-length v10, v0

    mul-int/lit8 v10, v10, 0x3

    div-int/lit8 v10, v10, 0x2

    new-array v8, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v0, v10, v8, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v8

    :cond_7
    add-int/lit8 v1, v2, 0x1

    if-eqz v5, :cond_8

    neg-int v9, v9

    :cond_8
    aput v9, v0, v2

    const/16 v10, 0x2c

    if-ne v3, v10, :cond_c

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    add-int v4, v10, v7

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_b

    const/16 v3, 0x1a

    :goto_5
    move v2, v1

    move v7, v6

    :goto_6
    const/4 v5, 0x0

    const/16 v10, 0x2d

    if-ne v3, v10, :cond_16

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    add-int v4, v10, v7

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_9

    const/16 v3, 0x1a

    :goto_7
    const/4 v5, 0x1

    :goto_8
    const/16 v10, 0x30

    if-lt v3, v10, :cond_e

    const/16 v10, 0x39

    if-gt v3, v10, :cond_e

    add-int/lit8 v9, v3, -0x30

    :goto_9
    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int v4, v10, v6

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_a

    const/16 v3, 0x1a

    :goto_a
    const/16 v10, 0x30

    if-lt v3, v10, :cond_6

    const/16 v10, 0x39

    if-gt v3, v10, :cond_6

    mul-int/lit8 v10, v9, 0xa

    add-int/lit8 v11, v3, -0x30

    add-int v9, v10, v11

    move v6, v7

    goto :goto_9

    :cond_9
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_7

    :cond_a
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_a

    :cond_b
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_5

    :cond_c
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_15

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v7, 0x1

    add-int v4, v10, v7

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v10, :cond_d

    const/16 v3, 0x1a

    :goto_b
    goto/16 :goto_4

    :cond_d
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_b

    :cond_e
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_14

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v7, v6, 0x1

    add-int/2addr v10, v6

    invoke-virtual {p0, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v3

    const/16 v10, 0x2c

    if-ne v3, v10, :cond_10

    const/16 v10, 0x10

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_c
    const/4 v10, 0x4

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v6, v7

    goto/16 :goto_0

    :cond_10
    const/16 v10, 0x5d

    if-ne v3, v10, :cond_11

    const/16 v10, 0xf

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_c

    :cond_11
    const/16 v10, 0x7d

    if-ne v3, v10, :cond_12

    const/16 v10, 0xd

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_c

    :cond_12
    const/16 v10, 0x1a

    if-ne v3, v10, :cond_13

    iget v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v11, v7, -0x1

    add-int/2addr v10, v11

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v10, 0x14

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v10, 0x1a

    iput-char v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_c

    :cond_13
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v0, 0x0

    move v6, v7

    goto/16 :goto_0

    :cond_14
    const/4 v10, -0x1

    iput v10, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_15
    move v6, v7

    goto/16 :goto_5

    :cond_16
    move v6, v7

    goto/16 :goto_8

    :cond_17
    move v2, v1

    move v7, v6

    goto/16 :goto_6
.end method

.method public scanFieldLong(J)J
    .locals 13

    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v6, 0x0

    :cond_0
    :goto_0
    return-wide v6

    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int v1, v8, v3

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_3

    const/16 v0, 0x1a

    :goto_1
    const/16 v8, 0x22

    if-ne v0, v8, :cond_4

    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int v1, v8, v4

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_5

    const/16 v0, 0x1a

    :goto_3
    move v4, v3

    :cond_2
    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6

    const/4 v2, 0x1

    :goto_4
    if-eqz v2, :cond_1b

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int v1, v8, v4

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_7

    const/16 v0, 0x1a

    :goto_5
    const/16 v8, 0x30

    if-lt v0, v8, :cond_e

    const/16 v8, 0x39

    if-gt v0, v8, :cond_e

    add-int/lit8 v8, v0, -0x30

    int-to-long v6, v8

    :goto_6
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v3, 0x1

    add-int v1, v8, v3

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_8

    const/16 v0, 0x1a

    :goto_7
    const/16 v8, 0x30

    if-lt v0, v8, :cond_9

    const/16 v8, 0x39

    if-gt v0, v8, :cond_9

    const-wide/16 v8, 0xa

    mul-long/2addr v8, v6

    add-int/lit8 v10, v0, -0x30

    int-to-long v10, v10

    add-long v6, v8, v10

    move v3, v4

    goto :goto_6

    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_5

    :cond_8
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_7

    :cond_9
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_a

    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v6, 0x0

    move v3, v4

    goto/16 :goto_0

    :cond_a
    const/16 v8, 0x22

    if-ne v0, v8, :cond_c

    if-nez v5, :cond_b

    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v6, 0x0

    move v3, v4

    goto/16 :goto_0

    :cond_b
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int v1, v8, v4

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_d

    const/16 v0, 0x1a

    :goto_8
    move v4, v3

    :cond_c
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_f

    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v6, 0x0

    move v3, v4

    goto/16 :goto_0

    :cond_d
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_8

    :cond_e
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    :cond_f
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_12

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v4, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_11

    const/16 v8, 0x1a

    :goto_9
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    if-eqz v2, :cond_10

    neg-long v6, v6

    :cond_10
    move v3, v4

    goto/16 :goto_0

    :cond_11
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_9

    :cond_12
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_1a

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v8, v4

    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v0

    const/16 v8, 0x2c

    if-ne v0, v8, :cond_14

    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_13

    const/16 v8, 0x1a

    :goto_a
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_b
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    if-eqz v2, :cond_0

    neg-long v6, v6

    goto/16 :goto_0

    :cond_13
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_a

    :cond_14
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_16

    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_15

    const/16 v8, 0x1a

    :goto_c
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_15
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_c

    :cond_16
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_18

    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v8, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_17

    const/16 v8, 0x1a

    :goto_d
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_17
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_d

    :cond_18
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_19

    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v3, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_b

    :cond_19
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v6, 0x0

    goto/16 :goto_0

    :cond_1a
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v6, 0x0

    move v3, v4

    goto/16 :goto_0

    :cond_1b
    move v3, v4

    goto/16 :goto_5
.end method

.method public scanFieldString(J)Ljava/lang/String;
    .locals 19

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v9

    if-nez v9, :cond_0

    const/4 v14, 0x0

    :goto_0
    return-object v14

    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v10, v9, 0x1

    add-int v8, v15, v9

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_1

    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unclosed str, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v15, 0x22

    if-eq v1, v15, :cond_2

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    move v9, v10

    goto :goto_0

    :cond_2
    const/16 v11, 0x22

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v13, v15, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v15, v0, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/4 v15, -0x1

    if-ne v5, v15, :cond_3

    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "unclosed str, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_3
    const/4 v14, 0x0

    sget-boolean v15, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v13, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    :goto_1
    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    :goto_2
    const/4 v12, 0x0

    add-int/lit8 v7, v5, -0x1

    :goto_3
    if-ltz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x5c

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    const/4 v6, 0x1

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    :cond_4
    sub-int v4, v5, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v14, v3, v15, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_1

    :cond_5
    rem-int/lit8 v15, v12, 0x2

    if-nez v15, :cond_7

    sub-int v4, v5, v13

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/2addr v15, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    if-eqz v6, :cond_8

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v14

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v8, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_9

    const/16 v1, 0x1a

    :goto_5
    const/16 v15, 0x2c

    if-ne v1, v15, :cond_b

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v15, 0x1

    move-object/from16 v0, p0

    iput v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v8, v15, :cond_a

    const/16 v15, 0x1a

    :goto_6
    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move v9, v10

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const/16 v16, 0x22

    add-int/lit8 v17, v5, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    goto/16 :goto_2

    :cond_8
    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    invoke-direct {v14, v3, v15, v4}, Ljava/lang/String;-><init>([CII)V

    const/16 v15, 0x5c

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v14

    goto :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->charAt(I)C

    move-result v15

    goto :goto_6

    :cond_b
    const/16 v15, 0x7d

    if-ne v1, v15, :cond_11

    add-int/lit8 v5, v5, 0x1

    move v2, v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v2, v15, :cond_c

    const/16 v1, 0x1a

    :goto_7
    const/16 v15, 0x2c

    if-ne v1, v15, :cond_d

    const/16 v15, 0x10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_8
    const/4 v15, 0x4

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v9, v10

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_7

    :cond_d
    const/16 v15, 0x5d

    if-ne v1, v15, :cond_e

    const/16 v15, 0xf

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_8

    :cond_e
    const/16 v15, 0x7d

    if-ne v1, v15, :cond_f

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_8

    :cond_f
    const/16 v15, 0x1a

    if-ne v1, v15, :cond_10

    const/16 v15, 0x14

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v15, 0x1a

    move-object/from16 v0, p0

    iput-char v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_8

    :cond_10
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    move v9, v10

    goto/16 :goto_0

    :cond_11
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->stringDefaultValue:Ljava/lang/String;

    move v9, v10

    goto/16 :goto_0
.end method

.method public scanFieldSymbol(J)J
    .locals 11

    const/4 v8, 0x0

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    invoke-direct {p0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->matchFieldHash(J)I

    move-result v5

    if-nez v5, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int v1, v8, v5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_1

    const/16 v0, 0x1a

    :goto_1
    const/16 v8, 0x22

    if-eq v0, v8, :cond_2

    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v2, 0x0

    move v5, v6

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_2
    const-wide v2, -0x340d631b7bdddcdbL    # -7.302176725335867E57

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int v7, v8, v6

    move v5, v6

    :goto_2
    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int v1, v8, v5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_3

    const/16 v0, 0x1a

    :goto_3
    const/16 v8, 0x22

    if-ne v0, v8, :cond_5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v5, v6, 0x1

    add-int v1, v8, v6

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_4

    const/16 v0, 0x1a

    :goto_4
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_7

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v5, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v4, v8, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v8, :cond_6

    const/16 v8, 0x1a

    :goto_5
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v8, 0x3

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_4

    :cond_5
    int-to-long v8, v0

    xor-long/2addr v2, v8

    const-wide v8, 0x100000001b3L

    mul-long/2addr v2, v8

    const/16 v8, 0x5c

    if-ne v0, v8, :cond_e

    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v2, 0x0

    move v5, v6

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_5

    :cond_7
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_d

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v5, 0x1

    add-int v1, v8, v5

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v8, :cond_8

    const/16 v0, 0x1a

    :goto_6
    const/16 v8, 0x2c

    if-ne v0, v8, :cond_9

    const/16 v8, 0x10

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :goto_7
    const/4 v8, 0x4

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    move v5, v6

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_6

    :cond_9
    const/16 v8, 0x5d

    if-ne v0, v8, :cond_a

    const/16 v8, 0xf

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_a
    const/16 v8, 0x7d

    if-ne v0, v8, :cond_b

    const/16 v8, 0xd

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_7

    :cond_b
    const/16 v8, 0x1a

    if-ne v0, v8, :cond_c

    const/16 v8, 0x14

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v9, v6, -0x1

    add-int/2addr v8, v9

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    const/16 v8, 0x1a

    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_7

    :cond_c
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v2, 0x0

    move v5, v6

    goto/16 :goto_0

    :cond_d
    const/4 v8, -0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->matchStat:I

    const-wide/16 v2, 0x0

    goto/16 :goto_0

    :cond_e
    move v5, v6

    goto/16 :goto_2
.end method

.method public scanISO8601DateIfMatch(Z)Z
    .locals 2

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanISO8601DateIfMatch(ZI)Z

    move-result v0

    return v0
.end method

.method public scanISO8601DateIfMatch(ZI)Z
    .locals 73

    if-nez p1, :cond_4

    const/16 v18, 0xd

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, p2

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, p2

    add-int/lit8 v18, v18, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v47

    const/16 v18, 0x2f

    move/from16 v0, v31

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x44

    move/from16 v0, v32

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x61

    move/from16 v0, v37

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x74

    move/from16 v0, v38

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x65

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x28

    move/from16 v0, v40

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x2f

    move/from16 v0, v46

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v18, 0x29

    move/from16 v0, v47

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/16 v59, -0x1

    const/16 v52, 0x6

    :goto_0
    move/from16 v0, v52

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v52

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v30

    const/16 v18, 0x2b

    move/from16 v0, v30

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    move/from16 v59, v52

    :cond_0
    add-int/lit8 v52, v52, 0x1

    goto :goto_0

    :cond_1
    const/16 v18, 0x30

    move/from16 v0, v30

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    const/16 v18, 0x39

    move/from16 v0, v30

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    :cond_2
    const/16 v18, -0x1

    move/from16 v0, v59

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/16 v18, 0x0

    :goto_1
    return v18

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v58, v18, 0x6

    sub-int v18, v59, v58

    move-object/from16 v0, p0

    move/from16 v1, v58

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v57

    invoke-static/range {v57 .. v57}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->timeZone:Ljava/util/TimeZone;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v18, 0x1

    goto :goto_1

    :cond_4
    const/16 v18, 0x8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0xe

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v33

    const/16 v18, 0x54

    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    const/16 v18, 0x20

    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    :cond_5
    const/16 v18, 0x11

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    :cond_6
    if-eqz p1, :cond_7

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v43

    const/16 v18, 0x2d

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v18, 0x2d

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    const/16 v45, 0x1

    :goto_2
    if-eqz v45, :cond_a

    const/16 v18, 0x10

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    const/16 v61, 0x1

    :goto_3
    if-eqz v45, :cond_b

    const/16 v18, 0x11

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    const/16 v62, 0x1

    :goto_4
    if-nez v62, :cond_8

    if-eqz v61, :cond_c

    :cond_8
    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v37

    move/from16 v7, v38

    move/from16 v8, v40

    move/from16 v9, v41

    move/from16 v10, v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v11

    :goto_5
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_d

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_9
    const/16 v45, 0x0

    goto :goto_2

    :cond_a
    const/16 v61, 0x0

    goto :goto_3

    :cond_b
    const/16 v62, 0x0

    goto :goto_4

    :cond_c
    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v37

    move/from16 v7, v38

    move/from16 v8, v39

    move/from16 v9, v40

    move/from16 v10, v41

    move/from16 v11, v42

    goto :goto_5

    :cond_d
    move-object/from16 v12, p0

    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    const/16 v18, 0x8

    move/from16 v0, p2

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v36

    if-eqz v62, :cond_e

    const/16 v18, 0x54

    move/from16 v0, v33

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    const/16 v18, 0x3a

    move/from16 v0, v36

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x5a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_10

    :cond_e
    if-eqz v61, :cond_11

    const/16 v18, 0x20

    move/from16 v0, v33

    move/from16 v1, v18

    if-eq v0, v1, :cond_f

    const/16 v18, 0x54

    move/from16 v0, v33

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    :cond_f
    const/16 v18, 0x3a

    move/from16 v0, v36

    move/from16 v1, v18

    if-ne v0, v1, :cond_11

    :cond_10
    move/from16 v12, v34

    move/from16 v13, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    const/16 v16, 0x30

    const/16 v17, 0x30

    :goto_6
    invoke-static/range {v12 .. v17}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_12

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_11
    move/from16 v12, v43

    move/from16 v13, v44

    move/from16 v14, v33

    move/from16 v15, v34

    move/from16 v16, v35

    move/from16 v17, v36

    goto :goto_6

    :cond_12
    const/16 v18, 0x11

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    if-nez v62, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v29

    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_13

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_14

    :cond_13
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_14
    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-le v0, v1, :cond_16

    :cond_15
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_16
    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-le v0, v1, :cond_18

    :cond_17
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_18
    add-int/lit8 v18, v27, -0x30

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v19, v28, -0x30

    mul-int/lit8 v19, v19, 0xa

    add-int v18, v18, v19

    add-int/lit8 v19, v29, -0x30

    add-int v54, v18, v19

    :goto_7
    add-int/lit8 v18, v12, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v13, -0x30

    add-int v51, v18, v19

    add-int/lit8 v18, v14, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v15, -0x30

    add-int v56, v18, v19

    add-int/lit8 v18, v16, -0x30

    mul-int/lit8 v18, v18, 0xa

    add-int/lit8 v19, v17, -0x30

    add-int v60, v18, v19

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_19
    const/16 v54, 0x0

    goto :goto_7

    :cond_1a
    const/16 v51, 0x0

    const/16 v56, 0x0

    const/16 v60, 0x0

    const/16 v54, 0x0

    goto :goto_8

    :cond_1b
    const/16 v18, 0x9

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_1c

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v31

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v38

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v42

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v43

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v44

    const/16 v48, 0xa

    const/16 v18, 0x2d

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_1d

    const/16 v18, 0x2d

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    :cond_1d
    const/16 v18, 0x2f

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    const/16 v18, 0x2f

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_1f

    :cond_1e
    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v37

    move/from16 v7, v38

    move/from16 v8, v40

    move/from16 v9, v41

    move/from16 v10, v43

    move/from16 v11, v44

    :goto_9
    invoke-static/range {v4 .. v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkDate(CCCCCCII)Z

    move-result v18

    if-nez v18, :cond_33

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_1f
    const/16 v18, 0x2d

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    const/16 v18, 0x2d

    move/from16 v0, v41

    move/from16 v1, v18

    if-ne v0, v1, :cond_21

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v37

    move/from16 v7, v38

    const/16 v8, 0x30

    move/from16 v9, v40

    const/16 v18, 0x20

    move/from16 v0, v43

    move/from16 v1, v18

    if-ne v0, v1, :cond_20

    const/16 v10, 0x30

    move/from16 v11, v42

    const/16 v48, 0x8

    goto :goto_9

    :cond_20
    move/from16 v10, v42

    move/from16 v11, v43

    const/16 v48, 0x9

    goto :goto_9

    :cond_21
    const/16 v18, 0x2e

    move/from16 v0, v37

    move/from16 v1, v18

    if-ne v0, v1, :cond_22

    const/16 v18, 0x2e

    move/from16 v0, v40

    move/from16 v1, v18

    if-eq v0, v1, :cond_23

    :cond_22
    const/16 v18, 0x2d

    move/from16 v0, v37

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    const/16 v18, 0x2d

    move/from16 v0, v40

    move/from16 v1, v18

    if-ne v0, v1, :cond_24

    :cond_23
    move/from16 v10, v31

    move/from16 v11, v32

    move/from16 v8, v38

    move/from16 v9, v39

    move/from16 v4, v41

    move/from16 v5, v42

    move/from16 v6, v43

    move/from16 v7, v44

    goto :goto_9

    :cond_24
    const/16 v18, 0x5e74

    move/from16 v0, v39

    move/from16 v1, v18

    if-eq v0, v1, :cond_25

    const v18, 0xb144

    move/from16 v0, v39

    move/from16 v1, v18

    if-ne v0, v1, :cond_32

    :cond_25
    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v6, v37

    move/from16 v7, v38

    const/16 v18, 0x6708

    move/from16 v0, v42

    move/from16 v1, v18

    if-eq v0, v1, :cond_26

    const v18, 0xc6d4

    move/from16 v0, v42

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    :cond_26
    move/from16 v8, v40

    move/from16 v9, v41

    const/16 v18, 0x65e5

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_27

    const v18, 0xc77c

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_28

    :cond_27
    const/16 v10, 0x30

    move/from16 v11, v43

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x65e5

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const v19, 0xc77c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2a

    :cond_29
    move/from16 v10, v43

    move/from16 v11, v44

    const/16 v48, 0xb

    goto/16 :goto_9

    :cond_2a
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_2b
    const/16 v18, 0x6708

    move/from16 v0, v41

    move/from16 v1, v18

    if-eq v0, v1, :cond_2c

    const v18, 0xc6d4

    move/from16 v0, v41

    move/from16 v1, v18

    if-ne v0, v1, :cond_31

    :cond_2c
    const/16 v8, 0x30

    move/from16 v9, v40

    const/16 v18, 0x65e5

    move/from16 v0, v43

    move/from16 v1, v18

    if-eq v0, v1, :cond_2d

    const v18, 0xc77c

    move/from16 v0, v43

    move/from16 v1, v18

    if-ne v0, v1, :cond_2e

    :cond_2d
    const/16 v10, 0x30

    move/from16 v11, v42

    goto/16 :goto_9

    :cond_2e
    const/16 v18, 0x65e5

    move/from16 v0, v44

    move/from16 v1, v18

    if-eq v0, v1, :cond_2f

    const v18, 0xc77c

    move/from16 v0, v44

    move/from16 v1, v18

    if-ne v0, v1, :cond_30

    :cond_2f
    move/from16 v10, v42

    move/from16 v11, v43

    goto/16 :goto_9

    :cond_30
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_31
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_32
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_33
    move-object/from16 v18, p0

    move/from16 v19, v4

    move/from16 v20, v5

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    invoke-direct/range {v18 .. v26}, Lcom/alibaba/fastjson/parser/JSONLexer;->setCalendar(CCCCCCCC)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v63

    const/16 v18, 0x54

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_34

    const/16 v18, 0x20

    move/from16 v0, v63

    move/from16 v1, v18

    if-ne v0, v1, :cond_35

    if-nez p1, :cond_35

    :cond_34
    add-int/lit8 v18, v48, 0x9

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_3d

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_35
    const/16 v18, 0x22

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const/16 v18, 0x1a

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const/16 v18, 0x65e5

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_36

    const v18, 0xc77c

    move/from16 v0, v63

    move/from16 v1, v18

    if-ne v0, v1, :cond_37

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xb

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xc

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xd

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_37
    const/16 v18, 0x2b

    move/from16 v0, v63

    move/from16 v1, v18

    if-eq v0, v1, :cond_38

    const/16 v18, 0x2d

    move/from16 v0, v63

    move/from16 v1, v18

    if-ne v0, v1, :cond_3c

    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3a

    :cond_39
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_3a
    const/16 v19, 0x30

    const/16 v20, 0x30

    const/16 v21, 0x30

    const/16 v22, 0x30

    const/16 v23, 0x30

    const/16 v24, 0x30

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v24}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int v19, v19, v48

    add-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v63

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_3b
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_3c
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3e

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    const/16 v19, 0x3a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3f

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v17

    invoke-static/range {v12 .. v17}, Lcom/alibaba/fastjson/parser/JSONLexer;->checkTime(CCCCCC)Z

    move-result v18

    if-nez v18, :cond_40

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_40
    move-object/from16 v18, p0

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v22, v15

    move/from16 v23, v16

    move/from16 v24, v17

    invoke-virtual/range {v18 .. v24}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTime(CCCCCC)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v49

    const/16 v18, 0x2e

    move/from16 v0, v49

    move/from16 v1, v18

    if-ne v0, v1, :cond_41

    add-int/lit8 v18, v48, 0xb

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_43

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Ljava/util/Calendar;->set(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0x9

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v18, 0x5a

    move/from16 v0, v49

    move/from16 v1, v18

    if-ne v0, v1, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_42

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v71

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_42

    const/16 v18, 0x0

    aget-object v18, v71, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_42
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_43
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v27

    const/16 v18, 0x30

    move/from16 v0, v27

    move/from16 v1, v18

    if-lt v0, v1, :cond_44

    const/16 v18, 0x39

    move/from16 v0, v27

    move/from16 v1, v18

    if-le v0, v1, :cond_45

    :cond_44
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_45
    add-int/lit8 v54, v27, -0x30

    const/16 v53, 0x1

    add-int/lit8 v18, v48, 0xb

    move/from16 v0, p2

    move/from16 v1, v18

    if-le v0, v1, :cond_46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v28

    const/16 v18, 0x30

    move/from16 v0, v28

    move/from16 v1, v18

    if-lt v0, v1, :cond_46

    const/16 v18, 0x39

    move/from16 v0, v28

    move/from16 v1, v18

    if-gt v0, v1, :cond_46

    mul-int/lit8 v18, v54, 0xa

    add-int/lit8 v19, v28, -0x30

    add-int v54, v18, v19

    const/16 v53, 0x2

    :cond_46
    const/16 v18, 0x2

    move/from16 v0, v53

    move/from16 v1, v18

    if-ne v0, v1, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v29

    const/16 v18, 0x30

    move/from16 v0, v29

    move/from16 v1, v18

    if-lt v0, v1, :cond_47

    const/16 v18, 0x39

    move/from16 v0, v29

    move/from16 v1, v18

    if-gt v0, v1, :cond_47

    mul-int/lit8 v18, v54, 0xa

    add-int/lit8 v19, v29, -0x30

    add-int v54, v18, v19

    const/16 v53, 0x3

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0xe

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v72, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v70

    const/16 v18, 0x2b

    move/from16 v0, v70

    move/from16 v1, v18

    if-eq v0, v1, :cond_48

    const/16 v18, 0x2d

    move/from16 v0, v70

    move/from16 v1, v18

    if-ne v0, v1, :cond_53

    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v64

    const/16 v18, 0x30

    move/from16 v0, v64

    move/from16 v1, v18

    if-lt v0, v1, :cond_49

    const/16 v18, 0x31

    move/from16 v0, v64

    move/from16 v1, v18

    if-le v0, v1, :cond_4a

    :cond_49
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v65

    const/16 v18, 0x30

    move/from16 v0, v65

    move/from16 v1, v18

    if-lt v0, v1, :cond_4b

    const/16 v18, 0x39

    move/from16 v0, v65

    move/from16 v1, v18

    if-le v0, v1, :cond_4c

    :cond_4b
    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v66

    const/16 v18, 0x3a

    move/from16 v0, v66

    move/from16 v1, v18

    if-ne v0, v1, :cond_50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v67

    const/16 v18, 0x30

    move/from16 v0, v67

    move/from16 v1, v18

    if-eq v0, v1, :cond_4d

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v68

    const/16 v18, 0x30

    move/from16 v0, v68

    move/from16 v1, v18

    if-eq v0, v1, :cond_4e

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_4e
    const/16 v72, 0x6

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, v70

    move/from16 v2, v64

    move/from16 v3, v65

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->setTimeZone(CCC)V

    :cond_4f
    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0xa

    add-int v19, v19, v53

    add-int v19, v19, v72

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v50

    const/16 v18, 0x1a

    move/from16 v0, v50

    move/from16 v1, v18

    if-eq v0, v1, :cond_54

    const/16 v18, 0x22

    move/from16 v0, v50

    move/from16 v1, v18

    if-eq v0, v1, :cond_54

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_50
    const/16 v18, 0x30

    move/from16 v0, v66

    move/from16 v1, v18

    if-ne v0, v1, :cond_52

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int v18, v18, v48

    add-int/lit8 v18, v18, 0xa

    add-int v18, v18, v53

    add-int/lit8 v18, v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v67

    const/16 v18, 0x30

    move/from16 v0, v67

    move/from16 v1, v18

    if-eq v0, v1, :cond_51

    const/16 v18, 0x0

    goto/16 :goto_1

    :cond_51
    const/16 v72, 0x5

    goto :goto_a

    :cond_52
    const/16 v72, 0x3

    goto :goto_a

    :cond_53
    const/16 v18, 0x5a

    move/from16 v0, v70

    move/from16 v1, v18

    if-ne v0, v1, :cond_4f

    const/16 v72, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    if-eqz v18, :cond_4f

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v71

    move-object/from16 v0, v71

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_4f

    const/16 v18, 0x0

    aget-object v18, v71, v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_b

    :cond_54
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v18, v0

    add-int/lit8 v19, v48, 0xa

    add-int v19, v19, v53

    add-int v19, v19, v72

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v18, 0x5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    const/16 v18, 0x1

    goto/16 :goto_1
.end method

.method public final scanLongValue()J
    .locals 10

    const/4 v7, 0x0

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    const/4 v6, 0x1

    const-wide/high16 v2, -0x8000000000000000L

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_0

    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syntax error, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_0
    const-wide/16 v4, 0x0

    :goto_1
    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x30

    if-lt v7, v8, :cond_5

    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v8, 0x39

    if-gt v7, v8, :cond_5

    iget-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    add-int/lit8 v0, v7, -0x30

    const-wide v8, -0xcccccccccccccccL

    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error long value, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v6, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    :cond_2
    const-wide/16 v8, 0xa

    mul-long/2addr v4, v8

    int-to-long v8, v0

    add-long/2addr v8, v2

    cmp-long v7, v4, v8

    if-gez v7, :cond_3

    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error long value, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    int-to-long v8, v0

    sub-long/2addr v4, v8

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v1, v7, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v1, v7, :cond_4

    const/16 v7, 0x1a

    :goto_2
    iput-char v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto/16 :goto_1

    :cond_4
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    :cond_5
    if-nez v6, :cond_6

    neg-long v4, v4

    :cond_6
    return-wide v4
.end method

.method public final scanNumber()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x1

    const/16 v2, 0x1a

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_0

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_1

    move v1, v2

    :goto_0
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_0
    :goto_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v5, :cond_3

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v6, :cond_3

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_2

    move v1, v2

    :goto_2
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_2

    :cond_3
    iput-boolean v7, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_4

    move v1, v2

    :goto_3
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    :goto_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v5, :cond_6

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v6, :cond_6

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_5

    move v1, v2

    :goto_5
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_5

    :cond_6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x4c

    if-ne v1, v3, :cond_8

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :cond_7
    :goto_6
    iget-boolean v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    if-eqz v1, :cond_16

    const/4 v1, 0x3

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    :goto_7
    return-void

    :cond_8
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x53

    if-ne v1, v3, :cond_9

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_9
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x42

    if-ne v1, v3, :cond_a

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_6

    :cond_a
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x46

    if-ne v1, v3, :cond_b

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto :goto_6

    :cond_b
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x44

    if-ne v1, v3, :cond_c

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto :goto_6

    :cond_c
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x65

    if-eq v1, v3, :cond_d

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x45

    if-ne v1, v3, :cond_7

    :cond_d
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_10

    move v1, v2

    :goto_8
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2b

    if-eq v1, v3, :cond_e

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_f

    :cond_e
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_11

    move v1, v2

    :goto_9
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_f
    :goto_a
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-lt v1, v5, :cond_13

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v1, v6, :cond_13

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v0, v1, :cond_12

    move v1, v2

    :goto_b
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    :cond_10
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_8

    :cond_11
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_9

    :cond_12
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_b

    :cond_13
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x44

    if-eq v1, v2, :cond_14

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x46

    if-ne v1, v2, :cond_15

    :cond_14
    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :cond_15
    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->exp:Z

    iput-boolean v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->isDouble:Z

    goto/16 :goto_6

    :cond_16
    const/4 v1, 0x2

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto/16 :goto_7
.end method

.method public final scanNumberValue()Ljava/lang/Number;
    .locals 36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v28, v0

    const/16 v26, 0x0

    const/16 v25, 0x0

    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x2d

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    const/16 v24, 0x1

    const-wide/high16 v20, -0x8000000000000000L

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_2

    const/16 v31, 0x1a

    :goto_0
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_1
    const-wide/16 v22, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x30

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x39

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    add-int/lit8 v8, v31, -0x30

    const-wide v32, -0xcccccccccccccccL

    cmp-long v31, v22, v32

    if-gez v31, :cond_0

    const/16 v26, 0x1

    :cond_0
    const-wide/16 v32, 0xa

    mul-long v22, v22, v32

    int-to-long v0, v8

    move-wide/from16 v32, v0

    add-long v32, v32, v20

    cmp-long v31, v22, v32

    if-gez v31, :cond_1

    const/16 v26, 0x1

    :cond_1
    int-to-long v0, v8

    move-wide/from16 v32, v0

    sub-long v22, v22, v32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_4

    const/16 v31, 0x1a

    :goto_3
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto/16 :goto_0

    :cond_3
    const/16 v24, 0x0

    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto :goto_3

    :cond_5
    if-nez v24, :cond_6

    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    :cond_6
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x4c

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    :cond_7
    :goto_4
    const/16 v18, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x2e

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_c

    const/16 v31, 0x1a

    :goto_5
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :goto_6
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x30

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x39

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_d

    const/16 v31, 0x1a

    :goto_7
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x53

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-short v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v25

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x42

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-byte v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v25

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x46

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x44

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v32, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v25

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto/16 :goto_7

    :cond_e
    const/16 v30, 0x0

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x65

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x45

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_18

    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_12

    const/16 v31, 0x1a

    :goto_8
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x2b

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x2d

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_13

    const/16 v31, 0x1a

    :goto_9
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    :cond_11
    :goto_a
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x30

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x39

    move/from16 v0, v31

    move/from16 v1, v32

    if-gt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v31, v0

    add-int/lit8 v16, v31, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v31, v0

    move/from16 v0, v16

    move/from16 v1, v31

    if-lt v0, v1, :cond_14

    const/16 v31, 0x1a

    :goto_b
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    goto :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v31

    goto :goto_b

    :cond_15
    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x44

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v31, v0

    const/16 v32, 0x46

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iget-char v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    move/from16 v30, v0

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :cond_17
    const/4 v12, 0x1

    :cond_18
    if-nez v18, :cond_1c

    if-nez v12, :cond_1c

    if-eqz v26, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v31, v0

    sub-int v19, v31, v28

    move/from16 v0, v19

    new-array v7, v0, [C

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    invoke-direct {v0, v7}, Ljava/lang/String;-><init>([C)V

    new-instance v25, Ljava/math/BigInteger;

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    :cond_19
    if-nez v25, :cond_1a

    const-wide/32 v32, -0x80000000

    cmp-long v31, v22, v32

    if-lez v31, :cond_1b

    const-wide/32 v32, 0x7fffffff

    cmp-long v31, v22, v32

    if-gez v31, :cond_1b

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    :cond_1a
    :goto_c
    move-object/from16 v31, v25

    :goto_d
    return-object v31

    :cond_1b
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    goto :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v31, v0

    sub-int v19, v31, v28

    if-eqz v30, :cond_1d

    add-int/lit8 v19, v19, -0x1

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v19

    move/from16 v1, v31

    if-ge v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    add-int v32, v28, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    :goto_e
    if-nez v12, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->features:I

    move/from16 v31, v0

    sget-object v32, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    move-object/from16 v0, v32

    iget v0, v0, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v32, v0

    and-int v31, v31, v32

    if-eqz v31, :cond_1f

    new-instance v25, Ljava/math/BigDecimal;

    const/16 v31, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v31

    move/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    :goto_f
    move-object/from16 v31, v25

    goto :goto_d

    :cond_1e
    move/from16 v0, v19

    new-array v7, v0, [C

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v31, v0

    add-int v32, v28, v19

    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v28

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v1, v2, v7, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_e

    :cond_1f
    const/16 v31, 0x9

    move/from16 v0, v19

    move/from16 v1, v31

    if-gt v0, v1, :cond_27

    if-nez v12, :cond_27

    const/4 v14, 0x0

    add-int/lit8 v15, v14, 0x1

    :try_start_0
    aget-char v6, v7, v14

    const/16 v31, 0x2d

    move/from16 v0, v31

    if-eq v6, v0, :cond_20

    const/16 v31, 0x2b

    move/from16 v0, v31

    if-ne v6, v0, :cond_29

    :cond_20
    add-int/lit8 v14, v15, 0x1

    aget-char v6, v7, v15

    :goto_10
    add-int/lit8 v17, v6, -0x30

    const/16 v27, 0x0

    :goto_11
    move/from16 v0, v19

    if-ge v14, v0, :cond_23

    aget-char v6, v7, v14

    const/16 v31, 0x2e

    move/from16 v0, v31

    if-ne v6, v0, :cond_22

    const/16 v27, 0x1

    :cond_21
    :goto_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_11

    :cond_22
    add-int/lit8 v8, v6, -0x30

    mul-int/lit8 v31, v17, 0xa

    add-int v17, v31, v8

    if-eqz v27, :cond_21

    mul-int/lit8 v27, v27, 0xa

    goto :goto_12

    :cond_23
    const/16 v31, 0x46

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v32, v0

    div-float v13, v31, v32

    if-eqz v24, :cond_24

    neg-float v13, v13

    :cond_24
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v31

    goto/16 :goto_d

    :cond_25
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v32, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v34, v0

    div-double v10, v32, v34

    if-eqz v24, :cond_26

    neg-double v10, v10

    :cond_26
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v31

    goto/16 :goto_d

    :cond_27
    new-instance v29, Ljava/lang/String;

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v19

    invoke-direct {v0, v7, v1, v2}, Ljava/lang/String;-><init>([CII)V

    const/16 v31, 0x46

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_28

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v25

    goto/16 :goto_f

    :cond_28
    invoke-static/range {v29 .. v29}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v25

    goto/16 :goto_f

    :catch_0
    move-exception v9

    new-instance v31, Lcom/alibaba/fastjson/JSONException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, ", "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v31

    :cond_29
    move v14, v15

    goto/16 :goto_10
.end method

.method public final scanString()V
    .locals 20

    move-object/from16 v0, p0

    iget-char v14, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    add-int/lit8 v16, v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v5, v0, :cond_0

    new-instance v17, Lcom/alibaba/fastjson/JSONException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "unclosed str, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v17

    :cond_0
    sub-int v4, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v3

    :goto_0
    if-lez v4, :cond_2

    add-int/lit8 v17, v4, -0x1

    aget-char v17, v3, v17

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/4 v15, 0x1

    add-int/lit8 v7, v4, -0x2

    :goto_1
    if-ltz v7, :cond_1

    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_1
    rem-int/lit8 v17, v15, 0x2

    if-nez v17, :cond_4

    :cond_2
    if-nez v6, :cond_7

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v4, :cond_7

    aget-char v17, v3, v7

    const/16 v18, 0x5c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v14, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    sub-int v12, v11, v5

    add-int v13, v4, v12

    array-length v0, v3

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v13, v0, :cond_6

    array-length v0, v3

    move/from16 v17, v0

    mul-int/lit8 v17, v17, 0x3

    div-int/lit8 v10, v17, 0x2

    if-ge v10, v13, :cond_5

    move v10, v13

    :cond_5
    new-array v9, v10, [C

    const/16 v17, 0x0

    const/16 v18, 0x0

    array-length v0, v3

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v3, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v9

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v11, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    move v4, v13

    move v5, v11

    const/4 v6, 0x1

    goto :goto_0

    :cond_7
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    move-object/from16 v0, p0

    iput v4, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    add-int/lit8 v17, v5, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v8, v0, :cond_8

    const/16 v17, 0x1a

    :goto_3
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v17, 0x4

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v17

    goto :goto_3
.end method

.method public scanStringValue(C)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x5c

    const/4 v9, -0x1

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v6, v8, 0x1

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, p1, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ne v2, v9, :cond_0

    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unclosed str, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    const/4 v7, 0x0

    sget-boolean v8, Lcom/alibaba/fastjson/parser/JSONLexer;->V6:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_3

    :goto_1
    const/4 v5, 0x0

    add-int/lit8 v3, v2, -0x1

    :goto_2
    if-ltz v3, :cond_2

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_1
    sub-int v1, v2, v6

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v1}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_2
    rem-int/lit8 v8, v5, 0x2

    if-nez v8, :cond_4

    sub-int v1, v2, v6

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v7

    :cond_3
    add-int/lit8 v8, v2, 0x1

    iput v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iget v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    if-lt v4, v8, :cond_5

    const/16 v8, 0x1a

    :goto_3
    iput-char v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object v7

    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, p1, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    goto :goto_3
.end method

.method public final scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x27

    const/16 v4, 0x22

    const/16 v3, 0xd

    const/4 v0, 0x0

    :goto_0
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-eq v1, v3, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_1
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v4, :cond_2

    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v1, v5, :cond_3

    invoke-virtual {p0, p1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x7d

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iput v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_4
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    const/16 v1, 0x10

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_5
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_6

    const/16 v1, 0x14

    iput v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;
    .locals 22

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v17, v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v6, v0, :cond_0

    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "unclosed str, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v19

    :cond_0
    sub-int v5, v6, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->sub_chars(II)[C

    move-result-object v4

    :goto_0
    if-lez v5, :cond_2

    add-int/lit8 v19, v5, -0x1

    aget-char v19, v4, v19

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    const/16 v16, 0x1

    add-int/lit8 v9, v5, -0x2

    :goto_1
    if-ltz v9, :cond_1

    aget-char v19, v4, v9

    const/16 v20, 0x5c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_1
    rem-int/lit8 v19, v16, 0x2

    if-nez v19, :cond_4

    :cond_2
    if-nez v7, :cond_a

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v5, :cond_7

    aget-char v3, v4, v9

    mul-int/lit8 v19, v8, 0x1f

    add-int v8, v19, v3

    const/16 v19, 0x5c

    move/from16 v0, v19

    if-ne v3, v0, :cond_3

    const/4 v7, 0x1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v6, 0x1

    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v13

    sub-int v14, v13, v6

    add-int v15, v5, v14

    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v15, v0, :cond_6

    array-length v0, v4

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x3

    div-int/lit8 v12, v19, 0x2

    if-ge v12, v15, :cond_5

    move v12, v15

    :cond_5
    new-array v11, v12, [C

    const/16 v19, 0x0

    const/16 v20, 0x0

    array-length v0, v4

    move/from16 v21, v0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v4, v0, v11, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v11

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v13, v4, v5}, Ljava/lang/String;->getChars(II[CI)V

    move v5, v15

    move v6, v13

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v7, :cond_8

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v18

    :goto_3
    add-int/lit8 v19, v6, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->len:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v10, v0, :cond_b

    const/16 v19, 0x1a

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-char v0, v1, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    return-object v18

    :cond_8
    const/16 v19, 0x14

    move/from16 v0, v19

    if-ge v5, v0, :cond_9

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1, v5, v8}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol([CIII)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_9
    new-instance v18, Ljava/lang/String;

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v4, v1, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_3

    :cond_a
    invoke-static {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v19

    goto :goto_4
.end method

.method public final scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x1

    iget-char v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    iget-char v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    sget-object v6, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    array-length v6, v6

    if-ge v5, v6, :cond_0

    sget-object v5, Lcom/alibaba/fastjson/parser/JSONLexer;->firstIdentifierFlags:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_1

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_2

    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "illegal identifier : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-char v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v3, v1

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    iput v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    move-result v0

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_3

    sget-object v4, Lcom/alibaba/fastjson/parser/JSONLexer;->identifierFlags:[Z

    aget-boolean v4, v4, v0

    if-nez v4, :cond_3

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->bp:I

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->charAt(I)C

    move-result v4

    iput-char v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v4, 0x12

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    const-string/jumbo v5, "null"

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_2
    return-object v4

    :cond_3
    mul-int/lit8 v4, v3, 0x1f

    add-int v3, v4, v0

    iget v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    iget v5, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    iget v6, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-virtual {p1, v4, v5, v6, v3}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method protected setTime(CCCCCC)V
    .locals 5

    add-int/lit8 v3, p1, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p2, -0x30

    add-int v0, v3, v4

    add-int/lit8 v3, p3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p4, -0x30

    add-int v1, v3, v4

    add-int/lit8 v3, p5, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p6, -0x30

    add-int v2, v3, v4

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xc

    invoke-virtual {v3, v4, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v2}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method protected setTimeZone(CCC)V
    .locals 5

    add-int/lit8 v3, p2, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, p3, -0x30

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0xe10

    mul-int/lit16 v2, v3, 0x3e8

    const/16 v3, 0x2d

    if-ne p1, v3, :cond_0

    neg-int v2, v2

    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-static {v2}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-lez v3, :cond_1

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_1
    return-void
.end method

.method protected skipComment()V
    .locals 4

    const/16 v3, 0x2f

    const/16 v2, 0x2a

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    :cond_3
    :goto_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v1, "invalid comment"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final skipWhitespace()V
    .locals 3

    const/16 v2, 0x2f

    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-gt v0, v2, :cond_2

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    goto :goto_0

    :cond_1
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->ch:C

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipComment()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final stringVal()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->hasSpecial:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->readString([CI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->np:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sp:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->subString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final sub_chars(II)[C
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    array-length v1, v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    invoke-virtual {v1, p1, v2, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p2, [C

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->sbuf:[C

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->text:Ljava/lang/String;

    add-int v2, p1, p2

    invoke-virtual {v1, p1, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public final token()I
    .locals 1

    iget v0, p0, Lcom/alibaba/fastjson/parser/JSONLexer;->token:I

    return v0
.end method
