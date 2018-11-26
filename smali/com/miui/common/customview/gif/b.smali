.class public Lcom/miui/common/customview/gif/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final axj:[B

.field private axk:Lcom/miui/common/customview/gif/d;

.field private axl:Ljava/nio/ByteBuffer;

.field private blockSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/miui/common/customview/gif/b;->axj:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/common/customview/gif/b;->blockSize:I

    return-void
.end method

.method private aEN()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget v1, v1, Lcom/miui/common/customview/gif/d;->status:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private aEO()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->readShort()I

    move-result v3

    iput v3, v0, Lcom/miui/common/customview/gif/g;->axT:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->readShort()I

    move-result v3

    iput v3, v0, Lcom/miui/common/customview/gif/g;->axU:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->readShort()I

    move-result v3

    iput v3, v0, Lcom/miui/common/customview/gif/g;->axV:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->readShort()I

    move-result v3

    iput v3, v0, Lcom/miui/common/customview/gif/g;->axW:I

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v3, 0x7

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v5, v5, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v1, v5, Lcom/miui/common/customview/gif/g;->axX:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    invoke-direct {p0, v4}, Lcom/miui/common/customview/gif/b;->aEQ(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/miui/common/customview/gif/g;->axY:[I

    :goto_2
    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/miui/common/customview/gif/g;->axZ:I

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aFa()V

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEN()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/common/customview/gif/g;->axY:[I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget v1, v0, Lcom/miui/common/customview/gif/d;->axm:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/miui/common/customview/gif/d;->axm:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axo:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v1, v1, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private aEP()I
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v1

    iput v1, p0, Lcom/miui/common/customview/gif/b;->blockSize:I

    iget v1, p0, Lcom/miui/common/customview/gif/b;->blockSize:I

    if-lez v1, :cond_1

    move v1, v0

    move v2, v0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/miui/common/customview/gif/b;->blockSize:I

    if-ge v2, v0, :cond_0

    iget v0, p0, Lcom/miui/common/customview/gif/b;->blockSize:I

    sub-int v1, v0, v2

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/miui/common/customview/gif/b;->axj:[B

    invoke-virtual {v0, v3, v2, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    :goto_1
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "GifHeaderParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "GifHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error Reading Block n: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " blockSize: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/miui/common/customview/gif/b;->blockSize:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/common/customview/gif/d;->status:I

    move v0, v2

    goto :goto_1
.end method

.method private aEQ(I)[I
    .locals 10

    const/4 v9, 0x3

    const/4 v0, 0x0

    mul-int/lit8 v2, p1, 0x3

    const/4 v1, 0x0

    new-array v4, v2, [B

    :try_start_0
    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v1, v2, [I

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v3, v0, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v5, v0, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v0, v4, v3

    and-int/lit16 v7, v0, 0xff

    add-int/lit8 v0, v6, 0x1

    aget-byte v3, v4, v6

    and-int/lit16 v6, v3, 0xff

    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v5, v5, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v1, v2
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "GifHeaderParser"

    invoke-static {v2, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "GifHeaderParser"

    const-string/jumbo v3, "Format Error Reading Color Table"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    const/4 v2, 0x1

    iput v2, v0, Lcom/miui/common/customview/gif/d;->status:I

    :cond_1
    return-object v1
.end method

.method private aER()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/miui/common/customview/gif/b;->aES(I)V

    return-void
.end method

.method private aES(I)V
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    move v0, v3

    :goto_0
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEN()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget v2, v2, Lcom/miui/common/customview/gif/d;->axm:I

    if-le v2, p1, :cond_1

    :cond_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iput v1, v2, Lcom/miui/common/customview/gif/d;->status:I

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :sswitch_0
    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v2, v2, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    new-instance v4, Lcom/miui/common/customview/gif/g;

    invoke-direct {v4}, Lcom/miui/common/customview/gif/g;-><init>()V

    iput-object v4, v2, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    :cond_2
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEO()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEZ()V

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    new-instance v4, Lcom/miui/common/customview/gif/g;

    invoke-direct {v4}, Lcom/miui/common/customview/gif/g;-><init>()V

    iput-object v4, v2, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aET()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEP()I

    const-string/jumbo v2, ""

    move-object v4, v2

    move v2, v3

    :goto_2
    const/16 v5, 0xb

    if-ge v2, v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/common/customview/gif/b;->axj:[B

    aget-byte v5, v5, v2

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const-string/jumbo v2, "NETSCAPE2.0"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEW()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEZ()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEZ()V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEZ()V

    goto/16 :goto_0

    :sswitch_6
    move v0, v1

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private aET()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v2

    iget-object v3, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v3, v3, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    and-int/lit8 v4, v2, 0x1c

    shr-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/miui/common/customview/gif/g;->axP:I

    iget-object v3, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v3, v3, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    iget v3, v3, Lcom/miui/common/customview/gif/g;->axP:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v3, v3, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    iput v0, v3, Lcom/miui/common/customview/gif/g;->axP:I

    :cond_0
    iget-object v3, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v3, v3, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :goto_0
    iput-boolean v0, v3, Lcom/miui/common/customview/gif/g;->axQ:Z

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->readShort()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/16 v0, 0xa

    :cond_1
    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v1, v1, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v1, Lcom/miui/common/customview/gif/g;->axR:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v0, v0, Lcom/miui/common/customview/gif/d;->axn:Lcom/miui/common/customview/gif/g;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v1

    iput v1, v0, Lcom/miui/common/customview/gif/g;->axS:I

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private aEU()V
    .locals 3

    const-string/jumbo v1, ""

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "GIF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/common/customview/gif/d;->status:I

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEV()V

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-boolean v0, v0, Lcom/miui/common/customview/gif/d;->axp:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEN()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget v1, v1, Lcom/miui/common/customview/gif/d;->axr:I

    invoke-direct {p0, v1}, Lcom/miui/common/customview/gif/b;->aEQ(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/miui/common/customview/gif/d;->axq:[I

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget-object v1, v1, Lcom/miui/common/customview/gif/d;->axq:[I

    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget v2, v2, Lcom/miui/common/customview/gif/d;->axt:I

    aget v1, v1, v2

    iput v1, v0, Lcom/miui/common/customview/gif/d;->axs:I

    :cond_2
    return-void
.end method

.method private aEV()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->readShort()I

    move-result v2

    iput v2, v1, Lcom/miui/common/customview/gif/d;->width:I

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->readShort()I

    move-result v2

    iput v2, v1, Lcom/miui/common/customview/gif/d;->height:I

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v1

    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v2, Lcom/miui/common/customview/gif/d;->axp:Z

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x2

    shl-int v1, v2, v1

    iput v1, v0, Lcom/miui/common/customview/gif/d;->axr:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v1

    iput v1, v0, Lcom/miui/common/customview/gif/d;->axt:I

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v1

    iput v1, v0, Lcom/miui/common/customview/gif/d;->axu:I

    return-void
.end method

.method private aEW()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEP()I

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axj:[B

    aget-byte v0, v0, v3

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axj:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axj:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/miui/common/customview/gif/d;->loopCount:I

    :cond_1
    iget v0, p0, Lcom/miui/common/customview/gif/b;->blockSize:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEN()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    :cond_2
    return-void
.end method

.method private aEZ()V
    .locals 3

    :cond_0
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    move-result v0

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private aFa()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->read()I

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEZ()V

    return-void
.end method

.method private read()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    const/4 v2, 0x1

    iput v2, v1, Lcom/miui/common/customview/gif/d;->status:I

    goto :goto_0
.end method

.method private readShort()I
    .locals 1

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axj:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/miui/common/customview/gif/d;

    invoke-direct {v0}, Lcom/miui/common/customview/gif/d;-><init>()V

    iput-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iput v1, p0, Lcom/miui/common/customview/gif/b;->blockSize:I

    return-void
.end method


# virtual methods
.method public aEX(Ljava/nio/ByteBuffer;)Lcom/miui/common/customview/gif/b;
    .locals 2

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->reset()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public aEY([B)Lcom/miui/common/customview/gif/b;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/common/customview/gif/b;->aEX(Ljava/nio/ByteBuffer;)Lcom/miui/common/customview/gif/b;

    :goto_0
    return-object p0

    :cond_0
    iput-object v0, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    const/4 v1, 0x2

    iput v1, v0, Lcom/miui/common/customview/gif/d;->status:I

    goto :goto_0
.end method

.method public parseHeader()Lcom/miui/common/customview/gif/d;
    .locals 2

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axl:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEN()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEU()V

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aEN()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/common/customview/gif/b;->aER()V

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    iget v0, v0, Lcom/miui/common/customview/gif/d;->axm:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/miui/common/customview/gif/d;->status:I

    :cond_2
    iget-object v0, p0, Lcom/miui/common/customview/gif/b;->axk:Lcom/miui/common/customview/gif/d;

    return-object v0
.end method
