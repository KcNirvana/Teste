.class public final Lcom/google/zxing/aztec/encoder/HighLevelEncoder;
.super Ljava/lang/Object;
.source "HighLevelEncoder.java"


# static fields
.field private static final CHAR_MAP:[[I

.field static final LATCH_TABLE:[[I

.field static final MODE_DIGIT:I = 0x2

.field static final MODE_LOWER:I = 0x1

.field static final MODE_MIXED:I = 0x3

.field static final MODE_NAMES:[Ljava/lang/String;

.field static final MODE_PUNCT:I = 0x4

.field static final MODE_UPPER:I

.field static final SHIFT_TABLE:[[I


# instance fields
.field private final text:[B


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v7, "UPPER"

    aput-object v7, v5, v6

    const-string/jumbo v7, "LOWER"

    aput-object v7, v5, v10

    const-string/jumbo v7, "DIGIT"

    aput-object v7, v5, v11

    const-string/jumbo v7, "MIXED"

    aput-object v7, v5, v13

    const-string/jumbo v7, "PUNCT"

    aput-object v7, v5, v12

    sput-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->MODE_NAMES:[Ljava/lang/String;

    const/4 v5, 0x5

    new-array v5, v5, [[I

    const/4 v7, 0x5

    new-array v7, v7, [I

    const v8, 0x5001c

    aput v8, v7, v10

    const v8, 0x5001e

    aput v8, v7, v11

    const v8, 0x5001d

    aput v8, v7, v13

    const v8, 0xa03be

    aput v8, v7, v12

    aput-object v7, v5, v6

    const/4 v7, 0x5

    new-array v7, v7, [I

    const v8, 0x901ee

    aput v8, v7, v6

    const v8, 0x5001e

    aput v8, v7, v11

    const v8, 0x5001d

    aput v8, v7, v13

    const v8, 0xa03be

    aput v8, v7, v12

    aput-object v7, v5, v10

    const/4 v7, 0x5

    new-array v7, v7, [I

    const v8, 0x4000e

    aput v8, v7, v6

    const v8, 0x901dc

    aput v8, v7, v10

    const v8, 0x901dd

    aput v8, v7, v13

    const v8, 0xe3bbe

    aput v8, v7, v12

    aput-object v7, v5, v11

    const/4 v7, 0x5

    new-array v7, v7, [I

    const v8, 0x5001d

    aput v8, v7, v6

    const v8, 0x5001c

    aput v8, v7, v10

    const v8, 0xa03be

    aput v8, v7, v11

    const v8, 0x5001e

    aput v8, v7, v12

    aput-object v7, v5, v13

    const/4 v7, 0x5

    new-array v7, v7, [I

    const v8, 0x5001f

    aput v8, v7, v6

    const v8, 0xa03fc

    aput v8, v7, v10

    const v8, 0xa03fe

    aput v8, v7, v11

    const v8, 0xa03fd

    aput v8, v7, v13

    aput-object v7, v5, v12

    sput-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->LATCH_TABLE:[[I

    const/4 v5, 0x5

    const/16 v7, 0x100

    filled-new-array {v5, v7}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    sput-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v6

    const/16 v7, 0x20

    aput v10, v5, v7

    const/16 v0, 0x41

    :goto_0
    const/16 v5, 0x5a

    if-le v0, v5, :cond_0

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v10

    const/16 v7, 0x20

    aput v10, v5, v7

    const/16 v0, 0x61

    :goto_1
    const/16 v5, 0x7a

    if-le v0, v5, :cond_1

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v11

    const/16 v7, 0x20

    aput v10, v5, v7

    const/16 v0, 0x30

    :goto_2
    const/16 v5, 0x39

    if-le v0, v5, :cond_2

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v11

    const/16 v7, 0x2c

    const/16 v8, 0xc

    aput v8, v5, v7

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v11

    const/16 v7, 0x2e

    const/16 v8, 0xd

    aput v8, v5, v7

    const/16 v5, 0x1c

    new-array v2, v5, [I

    const/16 v5, 0x20

    aput v5, v2, v10

    aput v10, v2, v11

    aput v11, v2, v13

    aput v13, v2, v12

    const/4 v5, 0x5

    aput v12, v2, v5

    const/4 v5, 0x6

    const/4 v7, 0x5

    aput v7, v2, v5

    const/4 v5, 0x7

    const/4 v7, 0x6

    aput v7, v2, v5

    const/16 v5, 0x8

    const/4 v7, 0x7

    aput v7, v2, v5

    const/16 v5, 0x9

    const/16 v7, 0x8

    aput v7, v2, v5

    const/16 v5, 0xa

    const/16 v7, 0x9

    aput v7, v2, v5

    const/16 v5, 0xb

    const/16 v7, 0xa

    aput v7, v2, v5

    const/16 v5, 0xc

    const/16 v7, 0xb

    aput v7, v2, v5

    const/16 v5, 0xd

    const/16 v7, 0xc

    aput v7, v2, v5

    const/16 v5, 0xe

    const/16 v7, 0xd

    aput v7, v2, v5

    const/16 v5, 0xf

    const/16 v7, 0x1b

    aput v7, v2, v5

    const/16 v5, 0x10

    const/16 v7, 0x1c

    aput v7, v2, v5

    const/16 v5, 0x11

    const/16 v7, 0x1d

    aput v7, v2, v5

    const/16 v5, 0x12

    const/16 v7, 0x1e

    aput v7, v2, v5

    const/16 v5, 0x13

    const/16 v7, 0x1f

    aput v7, v2, v5

    const/16 v5, 0x14

    const/16 v7, 0x40

    aput v7, v2, v5

    const/16 v5, 0x15

    const/16 v7, 0x5c

    aput v7, v2, v5

    const/16 v5, 0x16

    const/16 v7, 0x5e

    aput v7, v2, v5

    const/16 v5, 0x17

    const/16 v7, 0x5f

    aput v7, v2, v5

    const/16 v5, 0x18

    const/16 v7, 0x60

    aput v7, v2, v5

    const/16 v5, 0x19

    const/16 v7, 0x7c

    aput v7, v2, v5

    const/16 v5, 0x1a

    const/16 v7, 0x7e

    aput v7, v2, v5

    const/16 v5, 0x1b

    const/16 v7, 0x7f

    aput v7, v2, v5

    const/4 v1, 0x0

    :goto_3
    array-length v5, v2

    if-lt v1, v5, :cond_3

    const/16 v5, 0x1f

    new-array v3, v5, [I

    const/16 v5, 0xd

    aput v5, v3, v10

    const/4 v5, 0x6

    const/16 v7, 0x21

    aput v7, v3, v5

    const/4 v5, 0x7

    const/16 v7, 0x27

    aput v7, v3, v5

    const/16 v5, 0x8

    const/16 v7, 0x23

    aput v7, v3, v5

    const/16 v5, 0x9

    const/16 v7, 0x24

    aput v7, v3, v5

    const/16 v5, 0xa

    const/16 v7, 0x25

    aput v7, v3, v5

    const/16 v5, 0xb

    const/16 v7, 0x26

    aput v7, v3, v5

    const/16 v5, 0xc

    const/16 v7, 0x27

    aput v7, v3, v5

    const/16 v5, 0xd

    const/16 v7, 0x28

    aput v7, v3, v5

    const/16 v5, 0xe

    const/16 v7, 0x29

    aput v7, v3, v5

    const/16 v5, 0xf

    const/16 v7, 0x2a

    aput v7, v3, v5

    const/16 v5, 0x10

    const/16 v7, 0x2b

    aput v7, v3, v5

    const/16 v5, 0x11

    const/16 v7, 0x2c

    aput v7, v3, v5

    const/16 v5, 0x12

    const/16 v7, 0x2d

    aput v7, v3, v5

    const/16 v5, 0x13

    const/16 v7, 0x2e

    aput v7, v3, v5

    const/16 v5, 0x14

    const/16 v7, 0x2f

    aput v7, v3, v5

    const/16 v5, 0x15

    const/16 v7, 0x3a

    aput v7, v3, v5

    const/16 v5, 0x16

    const/16 v7, 0x3b

    aput v7, v3, v5

    const/16 v5, 0x17

    const/16 v7, 0x3c

    aput v7, v3, v5

    const/16 v5, 0x18

    const/16 v7, 0x3d

    aput v7, v3, v5

    const/16 v5, 0x19

    const/16 v7, 0x3e

    aput v7, v3, v5

    const/16 v5, 0x1a

    const/16 v7, 0x3f

    aput v7, v3, v5

    const/16 v5, 0x1b

    const/16 v7, 0x5b

    aput v7, v3, v5

    const/16 v5, 0x1c

    const/16 v7, 0x5d

    aput v7, v3, v5

    const/16 v5, 0x1d

    const/16 v7, 0x7b

    aput v7, v3, v5

    const/16 v5, 0x1e

    const/16 v7, 0x7d

    aput v7, v3, v5

    const/4 v1, 0x0

    :goto_4
    array-length v5, v3

    if-lt v1, v5, :cond_4

    const/4 v5, 0x6

    const/4 v7, 0x6

    filled-new-array {v5, v7}, [I

    move-result-object v5

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    sput-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    sget-object v7, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    array-length v8, v7

    move v5, v6

    :goto_5
    if-lt v5, v8, :cond_6

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v6

    aput v6, v5, v12

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v10

    aput v6, v5, v12

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v10

    const/16 v7, 0x1c

    aput v7, v5, v6

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v13

    aput v6, v5, v12

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v11

    aput v6, v5, v12

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    aget-object v5, v5, v11

    const/16 v7, 0xf

    aput v7, v5, v6

    return-void

    :cond_0
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v6

    add-int/lit8 v7, v0, -0x41

    add-int/lit8 v7, v7, 0x2

    aput v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v10

    add-int/lit8 v7, v0, -0x61

    add-int/lit8 v7, v7, 0x2

    aput v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_2
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v11

    add-int/lit8 v7, v0, -0x30

    add-int/lit8 v7, v7, 0x2

    aput v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_3
    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v13

    aget v7, v2, v1

    aput v1, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_4
    aget v5, v3, v1

    if-lez v5, :cond_5

    sget-object v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v5, v5, v12

    aget v7, v3, v1

    aput v1, v5, v7

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_6
    aget-object v4, v7, v5

    const/4 v9, -0x1

    invoke-static {v4, v9}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    return-void
.end method

.method private static simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    return-object v4

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/zxing/aztec/encoder/State;

    const/4 v0, 0x1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    :goto_2
    if-eqz v0, :cond_0

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/aztec/encoder/State;

    invoke-virtual {v3, v2}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v2, v3}, Lcom/google/zxing/aztec/encoder/State;->isBetterThanOrEqualTo(Lcom/google/zxing/aztec/encoder/State;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "I",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v8, v8, p2

    and-int/lit16 v8, v8, 0xff

    int-to-char v1, v8

    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v1

    if-lez v8, :cond_2

    const/4 v2, 0x1

    :goto_0
    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_1
    const/4 v8, 0x4

    if-le v5, v8, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v8

    if-gtz v8, :cond_0

    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v1

    if-nez v8, :cond_1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->CHAR_MAP:[[I

    aget-object v8, v8, v5

    aget v3, v8, v1

    if-lez v3, :cond_7

    if-nez v7, :cond_4

    invoke-virtual {p1, p2}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v7

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v8

    if-eq v5, v8, :cond_5

    const/4 v8, 0x2

    if-ne v5, v8, :cond_6

    :cond_5
    invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_6
    if-nez v2, :cond_7

    sget-object v8, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->SHIFT_TABLE:[[I

    invoke-virtual {p1}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v9

    aget-object v8, v8, v9

    aget v8, v8, v5

    if-ltz v8, :cond_7

    invoke-virtual {v7, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v6

    invoke-interface {p3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private static updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/aztec/encoder/State;",
            "II",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x4

    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->endBinaryShift(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v2

    invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getMode()I

    move-result v3

    if-eq v3, v4, :cond_0

    invoke-virtual {v2, v4, p2}, Lcom/google/zxing/aztec/encoder/State;->shiftAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v3, 0x3

    if-eq p2, v3, :cond_1

    if-ne p2, v4, :cond_2

    :cond_1
    rsub-int/lit8 v3, p2, 0x10

    invoke-virtual {v2, v5, v3}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/google/zxing/aztec/encoder/State;->latchAndAppend(II)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/google/zxing/aztec/encoder/State;->getBinaryShiftByteCount()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/google/zxing/aztec/encoder/State;->addBinaryShiftChar(I)Lcom/google/zxing/aztec/encoder/State;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    invoke-direct {p0, v1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForChar(Lcom/google/zxing/aztec/encoder/State;ILjava/util/Collection;)V

    goto :goto_0
.end method

.method private static updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;II)",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/aztec/encoder/State;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->simplifyStates(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    invoke-static {v1, p1, p2, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateForPair(Lcom/google/zxing/aztec/encoder/State;IILjava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method public encode()Lcom/google/zxing/common/BitArray;
    .locals 9

    const/16 v8, 0x20

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/aztec/encoder/State;->INITIAL_STATE:Lcom/google/zxing/aztec/encoder/State;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v0, 0x0

    :goto_0
    iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v6, v6

    if-lt v0, v6, :cond_0

    new-instance v5, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;

    invoke-direct {v5, p0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder$1;-><init>(Lcom/google/zxing/aztec/encoder/HighLevelEncoder;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/aztec/encoder/State;

    iget-object v5, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    invoke-virtual {v1, v5}, Lcom/google/zxing/aztec/encoder/State;->toBitArray([B)Lcom/google/zxing/common/BitArray;

    move-result-object v5

    return-object v5

    :cond_0
    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    array-length v7, v7

    if-ge v6, v7, :cond_1

    iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    add-int/lit8 v7, v0, 0x1

    aget-byte v2, v6, v7

    :goto_1
    iget-object v6, p0, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->text:[B

    aget-byte v6, v6, v0

    sparse-switch v6, :sswitch_data_0

    const/4 v3, 0x0

    :goto_2
    if-lez v3, :cond_6

    invoke-static {v4, v0, v3}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForPair(Ljava/lang/Iterable;II)Ljava/util/Collection;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    :sswitch_0
    const/16 v6, 0xa

    if-ne v2, v6, :cond_2

    const/4 v3, 0x2

    :goto_4
    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_4

    :sswitch_1
    if-ne v2, v8, :cond_3

    const/4 v3, 0x3

    :goto_5
    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_5

    :sswitch_2
    if-ne v2, v8, :cond_4

    const/4 v3, 0x4

    :goto_6
    goto :goto_2

    :cond_4
    move v3, v5

    goto :goto_6

    :sswitch_3
    if-ne v2, v8, :cond_5

    const/4 v3, 0x5

    :goto_7
    goto :goto_2

    :cond_5
    move v3, v5

    goto :goto_7

    :cond_6
    invoke-direct {p0, v4, v0}, Lcom/google/zxing/aztec/encoder/HighLevelEncoder;->updateStateListForChar(Ljava/lang/Iterable;I)Ljava/util/Collection;

    move-result-object v4

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_0
        0x2c -> :sswitch_2
        0x2e -> :sswitch_1
        0x3a -> :sswitch_3
    .end sparse-switch
.end method
