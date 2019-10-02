.class public abstract Lorg/apache/ws/commons/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ws/commons/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Decoder"
.end annotation


# instance fields
.field private final byteBuffer:[B

.field private byteBufferOffset:I

.field private eofBytes:I

.field private num:I

.field private numBytes:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/ws/commons/util/Base64$DecodingException;

    const-string v1, "Unexpected end of file"

    invoke-direct {v0, v1}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/apache/ws/commons/util/Base64$Decoder;->writeBuffer([BII)V

    iput v2, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    :cond_2
    return-void
.end method

.method public write([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_8

    add-int/lit8 v2, v1, 0x1

    aget-char v1, p1, v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v3, 0x3d

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->eofBytes:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->eofBytes:I

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shl-int/lit8 v1, v1, 0x6

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid value for numBytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    new-instance p1, Lorg/apache/ws/commons/util/Base64$DecodingException;

    const-string p2, "Trailing garbage detected"

    invoke-direct {p1, p2}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v5, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v1, v3

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->eofBytes:I

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :cond_1
    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    invoke-virtual {p0, v1, v0, v3}, Lorg/apache/ws/commons/util/Base64$Decoder;->writeBuffer([BII)V

    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    goto/16 :goto_1

    :pswitch_2
    new-instance p1, Lorg/apache/ws/commons/util/Base64$DecodingException;

    const-string p2, "Unexpected end of stream character (=)"

    invoke-direct {p1, p2}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->eofBytes:I

    if-gtz v3, :cond_7

    if-ltz v1, :cond_4

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$100()[B

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_4

    invoke-static {}, Lorg/apache/ws/commons/util/Base64;->access$100()[B

    move-result-object v3

    aget-byte v3, v3, v1

    if-ltz v3, :cond_4

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shl-int/lit8 v1, v1, 0x6

    add-int/2addr v1, v3

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    add-int/2addr v1, v4

    iput v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    iget v4, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    add-int/lit8 v1, v1, 0x3

    iget-object v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    array-length v3, v3

    if-le v1, v3, :cond_3

    iget-object v1, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBuffer:[B

    iget v3, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    invoke-virtual {p0, v1, v0, v3}, Lorg/apache/ws/commons/util/Base64$Decoder;->writeBuffer([BII)V

    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->byteBufferOffset:I

    :cond_3
    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->num:I

    iput v0, p0, Lorg/apache/ws/commons/util/Base64$Decoder;->numBytes:I

    goto :goto_1

    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    :goto_1
    :pswitch_3
    add-int/lit8 p2, p2, 0x1

    move v1, v2

    goto/16 :goto_0

    :cond_6
    new-instance p1, Lorg/apache/ws/commons/util/Base64$DecodingException;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Invalid Base64 character: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/apache/ws/commons/util/Base64$DecodingException;

    const-string p2, "Base64 characters after end of stream character (=) detected."

    invoke-direct {p1, p2}, Lorg/apache/ws/commons/util/Base64$DecodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract writeBuffer([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
