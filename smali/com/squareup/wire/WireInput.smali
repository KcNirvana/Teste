.class final Lcom/squareup/wire/WireInput;
.super Ljava/lang/Object;
.source "WireInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/wire/WireInput$1;
    }
.end annotation


# static fields
.field private static final ENCOUNTERED_A_MALFORMED_VARINT:Ljava/lang/String; = "WireInput encountered a malformed varint."

.field private static final ENCOUNTERED_A_NEGATIVE_SIZE:Ljava/lang/String; = "Encountered a negative size"

.field private static final INPUT_ENDED_UNEXPECTEDLY:Ljava/lang/String; = "The input ended unexpectedly in the middle of a field"

.field private static final PROTOCOL_MESSAGE_CONTAINED_AN_INVALID_TAG_ZERO:Ljava/lang/String; = "Protocol message contained an invalid tag (zero)."

.field private static final PROTOCOL_MESSAGE_END_GROUP_TAG_DID_NOT_MATCH_EXPECTED_TAG:Ljava/lang/String; = "Protocol message end-group tag did not match expected tag."

.field public static final RECURSION_LIMIT:I = 0x40

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private currentLimit:I

.field private lastTag:I

.field private pos:I

.field public recursionDepth:I

.field private final source:Lokio/BufferedSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/squareup/wire/WireInput;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Lokio/BufferedSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    iput-object p1, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private isAtEnd()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->getPosition()J

    move-result-wide v0

    iget v2, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->exhausted()Z

    move-result v0

    goto :goto_0
.end method

.method public static newInstance(Ljava/io/InputStream;)Lcom/squareup/wire/WireInput;
    .locals 2

    new-instance v0, Lcom/squareup/wire/WireInput;

    invoke-static {p0}, Lokio/Okio;->source(Ljava/io/InputStream;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static newInstance(Lokio/Source;)Lcom/squareup/wire/WireInput;
    .locals 2

    new-instance v0, Lcom/squareup/wire/WireInput;

    invoke-static {p0}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static newInstance([B)Lcom/squareup/wire/WireInput;
    .locals 2

    new-instance v0, Lcom/squareup/wire/WireInput;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method public static newInstance([BII)Lcom/squareup/wire/WireInput;
    .locals 2

    new-instance v0, Lcom/squareup/wire/WireInput;

    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0, p1, p2}, Lokio/Buffer;->write([BII)Lokio/Buffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/wire/WireInput;-><init>(Lokio/BufferedSource;)V

    return-object v0
.end method

.method private skip(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0, p1, p2}, Lokio/BufferedSource;->skip(J)V

    return-void
.end method

.method private skipField(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    sget-object v1, Lcom/squareup/wire/WireInput$1;->$SwitchMap$com$squareup$wire$WireType:[I

    invoke-static {p1}, Lcom/squareup/wire/WireType;->valueOf(I)Lcom/squareup/wire/WireType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/wire/WireType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint64()J

    :goto_0
    return v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readFixed32()I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readFixed64()J

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/squareup/wire/WireInput;->skip(J)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->skipGroup()V

    and-int/lit8 v1, p1, -0x8

    sget-object v2, Lcom/squareup/wire/WireType;->END_GROUP:Lcom/squareup/wire/WireType;

    invoke-virtual {v2}, Lcom/squareup/wire/WireType;->value()I

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/squareup/wire/WireInput;->checkLastTagWas(I)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getPosition()J
    .locals 2

    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public popLimit(I)V
    .locals 0

    iput p1, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    return-void
.end method

.method public pushLimit(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gez p1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Encountered a negative size"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/2addr p1, v1

    iget v0, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    if-le p1, v0, :cond_1

    new-instance v1, Ljava/io/EOFException;

    const-string/jumbo v2, "The input ended unexpectedly in the middle of a field"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iput p1, p0, Lcom/squareup/wire/WireInput;->currentLimit:I

    return v0
.end method

.method public readBytes()Lokio/ByteString;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/squareup/wire/WireInput;->readBytes(I)Lokio/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public readBytes(I)Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->require(J)V

    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    int-to-long v2, p1

    invoke-interface {v0, v2, v3}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readIntLe()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v0, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readLongLe()J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    iget v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v1, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    int-to-long v2, v0

    sget-object v4, Lcom/squareup/wire/WireInput;->UTF_8:Ljava/nio/charset/Charset;

    invoke-interface {v1, v2, v3, v4}, Lokio/BufferedSource;->readString(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/squareup/wire/WireInput;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readVarint32()I

    move-result v0

    iput v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    iget v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/squareup/wire/WireInput;->lastTag:I

    goto :goto_0
.end method

.method public readVarint32()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v3, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v2

    if-ltz v2, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    and-int/lit8 v1, v2, 0x7f

    iget v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v3, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v2

    if-ltz v2, :cond_2

    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    iget v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v3, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v2

    if-ltz v2, :cond_3

    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_0

    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    iget v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v3, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v2

    if-ltz v2, :cond_4

    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_0

    :cond_4
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    iget v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v3, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    if-gez v2, :cond_0

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_5

    iget v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v3, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v3}, Lokio/BufferedSource;->readByte()B

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "WireInput encountered a malformed varint."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public readVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    iget v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/wire/WireInput;->pos:I

    iget-object v4, p0, Lcom/squareup/wire/WireInput;->source:Lokio/BufferedSource;

    invoke-interface {v4}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 v1, v1, 0x7

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "WireInput encountered a malformed varint."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public skipGroup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-virtual {p0}, Lcom/squareup/wire/WireInput;->readTag()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/squareup/wire/WireInput;->skipField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-void
.end method
