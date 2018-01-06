.class public final La/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/h;
.implements La/i;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:La/x;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, La/e;->c:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 6

    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, La/ad;->a(JJJ)V

    iget-object v1, p0, La/e;->a:La/x;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, v1, La/x;->c:I

    iget v2, v1, La/x;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, La/x;->a:[B

    iget v3, v1, La/x;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, La/x;->b:I

    add-int/2addr v2, v0

    iput v2, v1, La/x;->b:I

    iget-wide v2, p0, La/e;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, La/e;->b:J

    iget v2, v1, La/x;->b:I

    iget v3, v1, La/x;->c:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, La/x;->a()La/x;

    move-result-object v2

    iput-object v2, p0, La/e;->a:La/x;

    sget-object v2, La/y;->a:La/y;

    invoke-virtual {v2, v1}, La/y;->a(La/x;)V

    goto :goto_0
.end method

.method public a()J
    .locals 2

    iget-wide v0, p0, La/e;->b:J

    return-wide v0
.end method

.method public a(B)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, La/e;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .locals 12

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, La/e;->a:La/x;

    if-nez v2, :cond_1

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    :cond_2
    iget v3, v2, La/x;->c:I

    iget v4, v2, La/x;->b:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    cmp-long v4, p2, v4

    if-ltz v4, :cond_3

    int-to-long v4, v3

    sub-long/2addr p2, v4

    :goto_1
    int-to-long v4, v3

    add-long/2addr v0, v4

    iget-object v2, v2, La/x;->d:La/x;

    iget-object v3, p0, La/e;->a:La/x;

    if-ne v2, v3, :cond_2

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v6, v2, La/x;->a:[B

    iget v4, v2, La/x;->b:I

    int-to-long v4, v4

    add-long/2addr v4, p2

    iget v7, v2, La/x;->c:I

    int-to-long v8, v7

    :goto_2
    cmp-long v7, v4, v8

    if-gez v7, :cond_5

    long-to-int v7, v4

    aget-byte v7, v6, v7

    if-ne v7, p1, :cond_4

    add-long/2addr v0, v4

    iget v2, v2, La/x;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_4
    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    goto :goto_2

    :cond_5
    const-wide/16 p2, 0x0

    goto :goto_1
.end method

.method public a(La/aa;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x800

    invoke-interface {p1, p0, v2, v3}, La/aa;->read(La/e;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public a(I)La/e;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/e;->d(I)La/x;

    move-result-object v0

    iget-object v1, v0, La/x;->a:[B

    iget v2, v0, La/x;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, La/x;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, La/e;->b:J

    return-object p0
.end method

.method public a(La/e;JJ)La/e;
    .locals 10

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, La/e;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, La/ad;->a(JJJ)V

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_2

    :cond_1
    return-object p0

    :cond_2
    iget-object v0, p0, La/e;->a:La/x;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, La/e;->d(I)La/x;

    move-result-object v1

    iget-wide v2, p1, La/e;->b:J

    add-long/2addr v2, p4

    iput-wide v2, p1, La/e;->b:J

    move-wide v2, p2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-lez v4, :cond_1

    :goto_1
    iget v4, v0, La/x;->c:I

    iget v5, v0, La/x;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    iget v4, v0, La/x;->c:I

    iget v5, v0, La/x;->b:I

    sub-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget-object v0, v0, La/x;->d:La/x;

    goto :goto_1

    :cond_3
    iget v4, v1, La/x;->c:I

    const/16 v5, 0x800

    if-ne v4, v5, :cond_4

    sget-object v4, La/y;->a:La/y;

    invoke-virtual {v4}, La/y;->a()La/x;

    move-result-object v4

    invoke-virtual {v1, v4}, La/x;->a(La/x;)La/x;

    move-result-object v1

    :cond_4
    iget v4, v0, La/x;->c:I

    int-to-long v4, v4

    iget v6, v0, La/x;->b:I

    int-to-long v6, v6

    add-long/2addr v6, v2

    sub-long/2addr v4, v6

    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget v6, v1, La/x;->c:I

    rsub-int v6, v6, 0x800

    int-to-long v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, v0, La/x;->a:[B

    iget v6, v0, La/x;->b:I

    long-to-int v7, v2

    add-int/2addr v6, v7

    iget-object v7, v1, La/x;->a:[B

    iget v8, v1, La/x;->c:I

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v6, v4

    add-long/2addr v2, v6

    iget v5, v1, La/x;->c:I

    add-int/2addr v5, v4

    iput v5, v1, La/x;->c:I

    int-to-long v4, v4

    sub-long/2addr p4, v4

    goto :goto_0
.end method

.method public a(La/j;)La/e;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, La/j;->b:[B

    const/4 v1, 0x0

    iget-object v2, p1, La/j;->b:[B

    array-length v2, v2

    invoke-virtual {p0, v0, v1, v2}, La/e;->b([BII)La/e;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)La/e;
    .locals 11

    const v10, 0xdfff

    const/16 v9, 0x80

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_a

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ge v4, v9, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, La/e;->d(I)La/x;

    move-result-object v5

    iget-object v6, v5, La/x;->a:[B

    iget v0, v5, La/x;->c:I

    sub-int v7, v0, v2

    rsub-int v0, v7, 0x800

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/lit8 v0, v2, 0x1

    add-int/2addr v2, v7

    int-to-byte v4, v4

    aput-byte v4, v6, v2

    :goto_1
    if-ge v0, v8, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v9, :cond_2

    :cond_1
    add-int v2, v0, v7

    iget v4, v5, La/x;->c:I

    sub-int/2addr v2, v4

    iget v4, v5, La/x;->c:I

    add-int/2addr v4, v2

    iput v4, v5, La/x;->c:I

    iget-wide v4, p0, La/e;->b:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, La/e;->b:J

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v0, 0x1

    add-int/2addr v0, v7

    int-to-byte v4, v4

    aput-byte v4, v6, v0

    move v0, v2

    goto :goto_1

    :cond_3
    const/16 v0, 0x800

    if-ge v4, v0, :cond_4

    shr-int/lit8 v0, v4, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, La/e;->a(I)La/e;

    and-int/lit8 v0, v4, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/e;->a(I)La/e;

    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    :cond_4
    const v0, 0xd800

    if-lt v4, v0, :cond_5

    if-le v4, v10, :cond_6

    :cond_5
    shr-int/lit8 v0, v4, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, La/e;->a(I)La/e;

    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/e;->a(I)La/e;

    and-int/lit8 v0, v4, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/e;->a(I)La/e;

    add-int/lit8 v0, v2, 0x1

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v2, 0x1

    if-ge v0, v3, :cond_8

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_3
    const v5, 0xdbff

    if-gt v4, v5, :cond_7

    const v5, 0xdc00

    if-lt v0, v5, :cond_7

    if-le v0, v10, :cond_9

    :cond_7
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, La/e;->a(I)La/e;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_3

    :cond_9
    const/high16 v5, 0x10000

    const v6, -0xd801

    and-int/2addr v4, v6

    shl-int/lit8 v4, v4, 0xa

    const v6, -0xdc01

    and-int/2addr v0, v6

    or-int/2addr v0, v4

    add-int/2addr v0, v5

    shr-int/lit8 v4, v0, 0x12

    or-int/lit16 v4, v4, 0xf0

    invoke-virtual {p0, v4}, La/e;->a(I)La/e;

    shr-int/lit8 v4, v0, 0xc

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {p0, v4}, La/e;->a(I)La/e;

    shr-int/lit8 v4, v0, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    invoke-virtual {p0, v4}, La/e;->a(I)La/e;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, La/e;->a(I)La/e;

    add-int/lit8 v0, v2, 0x2

    goto/16 :goto_2

    :cond_a
    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/nio/charset/Charset;)La/e;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, La/ad;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, La/e;->a(Ljava/lang/String;)La/e;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, La/e;->b([BII)La/e;

    move-result-object v0

    goto :goto_0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, La/e;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, La/ad;->a(JJJ)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    const-string v0, ""

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v1, p0, La/e;->a:La/x;

    iget v0, v1, La/x;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, La/x;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, La/e;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, La/x;->a:[B

    iget v3, v1, La/x;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, La/x;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, La/x;->b:I

    iget-wide v2, p0, La/e;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, La/e;->b:J

    iget v2, v1, La/x;->b:I

    iget v3, v1, La/x;->c:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, La/x;->a()La/x;

    move-result-object v2

    iput-object v2, p0, La/e;->a:La/x;

    sget-object v2, La/y;->a:La/y;

    invoke-virtual {v2, v1}, La/y;->a(La/x;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, La/e;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public a(La/e;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, La/e;->b:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    iget-wide v0, p0, La/e;->b:J

    invoke-virtual {p1, p0, v0, v1}, La/e;->write(La/e;J)V

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1, p0, p2, p3}, La/e;->write(La/e;J)V

    return-void
.end method

.method public a([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-virtual {p0, p1, v0, v1}, La/e;->a([BII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(J)B
    .locals 7

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, La/ad;->a(JJJ)V

    iget-object v0, p0, La/e;->a:La/x;

    :goto_0
    iget v1, v0, La/x;->c:I

    iget v2, v0, La/x;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, La/x;->a:[B

    iget v0, v0, La/x;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    iget-object v0, v0, La/x;->d:La/x;

    goto :goto_0
.end method

.method public b()La/e;
    .locals 0

    return-object p0
.end method

.method public b(I)La/e;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, La/e;->d(I)La/x;

    move-result-object v0

    iget-object v1, v0, La/x;->a:[B

    iget v2, v0, La/x;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, La/x;->c:I

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, La/e;->b:J

    return-object p0
.end method

.method public b([B)La/e;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/e;->b([BII)La/e;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)La/e;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, La/ad;->a(JJJ)V

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, La/e;->d(I)La/x;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, La/x;->c:I

    rsub-int v3, v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, La/x;->a:[B

    iget v4, v1, La/x;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, La/x;->c:I

    add-int/2addr v2, v3

    iput v2, v1, La/x;->c:I

    goto :goto_0

    :cond_1
    iget-wide v0, p0, La/e;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, La/e;->b:J

    return-object p0
.end method

.method public synthetic b(La/j;)La/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, La/e;->a(La/j;)La/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)La/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, La/e;->a(Ljava/lang/String;)La/e;

    move-result-object v0

    return-object v0
.end method

.method public c(I)La/e;
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, La/e;->d(I)La/x;

    move-result-object v0

    iget-object v1, v0, La/x;->a:[B

    iget v2, v0, La/x;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, La/x;->c:I

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, La/e;->b:J

    return-object p0
.end method

.method public synthetic c([B)La/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, La/e;->b([B)La/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BII)La/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, La/e;->b([BII)La/e;

    move-result-object v0

    return-object v0
.end method

.method public c(J)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, La/j;

    invoke-virtual {p0, p1, p2}, La/e;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, La/j;-><init>([B)V

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 1

    new-instance v0, La/f;

    invoke-direct {v0, p0}, La/f;-><init>(La/e;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, La/e;->t()La/e;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()La/e;
    .locals 0

    return-object p0
.end method

.method d(I)La/x;
    .locals 3

    const/16 v2, 0x800

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, La/e;->a:La/x;

    if-nez v0, :cond_3

    sget-object v0, La/y;->a:La/y;

    invoke-virtual {v0}, La/y;->a()La/x;

    move-result-object v0

    iput-object v0, p0, La/e;->a:La/x;

    iget-object v1, p0, La/e;->a:La/x;

    iget-object v2, p0, La/e;->a:La/x;

    iget-object v0, p0, La/e;->a:La/x;

    iput-object v0, v2, La/x;->e:La/x;

    iput-object v0, v1, La/x;->d:La/x;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, La/e;->a:La/x;

    iget-object v0, v0, La/x;->e:La/x;

    iget v1, v0, La/x;->c:I

    add-int/2addr v1, p1

    if-le v1, v2, :cond_2

    sget-object v1, La/y;->a:La/y;

    invoke-virtual {v1}, La/y;->a()La/x;

    move-result-object v1

    invoke-virtual {v0, v1}, La/x;->a(La/x;)La/x;

    move-result-object v0

    goto :goto_0
.end method

.method public d(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, La/ad;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, La/e;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()La/h;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-object p0
.end method

.method public synthetic e(I)La/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, La/e;->c(I)La/e;

    move-result-object v0

    return-object v0
.end method

.method e(J)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, La/e;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, La/e;->d(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, La/e;->g(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, La/e;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, La/e;->g(J)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14

    const-wide/16 v0, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne p0, p1, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    instance-of v2, p1, La/e;

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    check-cast p1, La/e;

    iget-wide v2, p0, La/e;->b:J

    iget-wide v4, p1, La/e;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    iget-wide v2, p0, La/e;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    iget-object v5, p0, La/e;->a:La/x;

    iget-object v4, p1, La/e;->a:La/x;

    iget v3, v5, La/x;->b:I

    iget v2, v4, La/x;->b:I

    :goto_1
    iget-wide v8, p0, La/e;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    iget v8, v5, La/x;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, La/x;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    :goto_2
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_5

    iget-object v12, v5, La/x;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, La/x;->a:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v13, v2

    if-eq v12, v2, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v3

    move v3, v9

    goto :goto_2

    :cond_5
    iget v8, v5, La/x;->c:I

    if-ne v3, v8, :cond_6

    iget-object v5, v5, La/x;->d:La/x;

    iget v3, v5, La/x;->b:I

    :cond_6
    iget v8, v4, La/x;->c:I

    if-ne v2, v8, :cond_7

    iget-object v4, v4, La/x;->d:La/x;

    iget v2, v4, La/x;->b:I

    :cond_7
    add-long/2addr v0, v10

    goto :goto_1

    :cond_8
    move v0, v6

    goto :goto_0
.end method

.method public synthetic f(I)La/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, La/e;->b(I)La/e;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 4

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f(J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, La/ad;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount > Integer.MAX_VALUE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    long-to-int v0, p1

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, La/e;->a([B)V

    return-object v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public synthetic g(I)La/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, La/e;->a(I)La/e;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/io/InputStream;
    .locals 1

    new-instance v0, La/g;

    invoke-direct {v0, p0}, La/g;-><init>(La/e;)V

    return-object v0
.end method

.method public g(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, La/e;->a:La/x;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, La/e;->a:La/x;

    iget v0, v0, La/x;->c:I

    iget-object v1, p0, La/e;->a:La/x;

    iget v1, v1, La/x;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v2, p0, La/e;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, La/e;->b:J

    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v1, p0, La/e;->a:La/x;

    iget v2, v1, La/x;->b:I

    add-int/2addr v0, v2

    iput v0, v1, La/x;->b:I

    iget-object v0, p0, La/e;->a:La/x;

    iget v0, v0, La/x;->b:I

    iget-object v1, p0, La/e;->a:La/x;

    iget v1, v1, La/x;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, La/e;->a:La/x;

    invoke-virtual {v0}, La/x;->a()La/x;

    move-result-object v1

    iput-object v1, p0, La/e;->a:La/x;

    sget-object v1, La/y;->a:La/y;

    invoke-virtual {v1, v0}, La/y;->a(La/x;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h()J
    .locals 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, La/e;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, La/e;->a:La/x;

    iget-object v2, v2, La/x;->e:La/x;

    iget v3, v2, La/x;->c:I

    const/16 v4, 0x800

    if-ge v3, v4, :cond_0

    iget v3, v2, La/x;->c:I

    iget v2, v2, La/x;->b:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public h(J)La/e;
    .locals 9

    const/16 v8, 0x8

    const-wide/16 v6, 0xff

    invoke-virtual {p0, v8}, La/e;->d(I)La/x;

    move-result-object v0

    iget-object v1, v0, La/x;->a:[B

    iget v2, v0, La/x;->c:I

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x30

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x28

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x20

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    const/16 v4, 0x18

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    const/16 v4, 0x10

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v3, v2, 0x1

    ushr-long v4, p1, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-long v4, p1, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, La/x;->c:I

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, La/e;->b:J

    return-object p0
.end method

.method public hashCode()I
    .locals 5

    iget-object v1, p0, La/e;->a:La/x;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget v2, v1, La/x;->b:I

    iget v4, v1, La/x;->c:I

    :goto_1
    if-ge v2, v4, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, La/x;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v1, v1, La/x;->d:La/x;

    iget-object v2, p0, La/e;->a:La/x;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public i()B
    .locals 10

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/e;->a:La/x;

    iget v1, v0, La/x;->b:I

    iget v2, v0, La/x;->c:I

    iget-object v3, v0, La/x;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v6, p0, La/e;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, La/e;->b:J

    if-ne v4, v2, :cond_1

    invoke-virtual {v0}, La/x;->a()La/x;

    move-result-object v2

    iput-object v2, p0, La/e;->a:La/x;

    sget-object v2, La/y;->a:La/y;

    invoke-virtual {v2, v0}, La/y;->a(La/x;)V

    :goto_0
    return v1

    :cond_1
    iput v4, v0, La/x;->b:I

    goto :goto_0
.end method

.method public synthetic i(J)La/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, La/e;->h(J)La/e;

    move-result-object v0

    return-object v0
.end method

.method public j()S
    .locals 10

    const-wide/16 v8, 0x2

    iget-wide v0, p0, La/e;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/e;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, La/e;->a:La/x;

    iget v1, v0, La/x;->b:I

    iget v2, v0, La/x;->c:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, La/e;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, La/e;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v3, v0, La/x;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v6, p0, La/e;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, La/e;->b:J

    if-ne v5, v2, :cond_2

    invoke-virtual {v0}, La/x;->a()La/x;

    move-result-object v2

    iput-object v2, p0, La/e;->a:La/x;

    sget-object v2, La/y;->a:La/y;

    invoke-virtual {v2, v0}, La/y;->a(La/x;)V

    :goto_1
    int-to-short v0, v1

    goto :goto_0

    :cond_2
    iput v5, v0, La/x;->b:I

    goto :goto_1
.end method

.method public k()I
    .locals 10

    const-wide/16 v8, 0x4

    iget-wide v0, p0, La/e;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/e;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, La/e;->a:La/x;

    iget v0, v1, La/x;->b:I

    iget v2, v1, La/x;->c:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, La/e;->i()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, La/e;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, La/e;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, La/e;->i()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v3, v1, La/x;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v3, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v0, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v0, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    iget-wide v6, p0, La/e;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, La/e;->b:J

    if-ne v5, v2, :cond_2

    invoke-virtual {v1}, La/x;->a()La/x;

    move-result-object v2

    iput-object v2, p0, La/e;->a:La/x;

    sget-object v2, La/y;->a:La/y;

    invoke-virtual {v2, v1}, La/y;->a(La/x;)V

    goto :goto_0

    :cond_2
    iput v5, v1, La/x;->b:I

    goto :goto_0
.end method

.method public l()J
    .locals 12

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size < 8: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, La/e;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, La/e;->a:La/x;

    iget v0, v2, La/x;->b:I

    iget v3, v2, La/x;->c:I

    sub-int v1, v3, v0

    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    invoke-virtual {p0}, La/e;->k()I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, La/e;->k()I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_1
    iget-object v1, v2, La/x;->a:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v6, v0

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v0, 0x38

    shl-long/2addr v6, v0

    add-int/lit8 v0, v4, 0x1

    aget-byte v4, v1, v4

    int-to-long v4, v4

    const-wide/16 v8, 0xff

    and-long/2addr v4, v8

    const/16 v8, 0x30

    shl-long/2addr v4, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v0, 0x28

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v0, 0x18

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    add-int/lit8 v0, v6, 0x1

    aget-byte v6, v1, v6

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-byte v0, v1, v0

    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    const/16 v0, 0x8

    shl-long/2addr v8, v0

    or-long/2addr v4, v8

    add-int/lit8 v7, v6, 0x1

    aget-byte v0, v1, v6

    int-to-long v0, v0

    const-wide/16 v8, 0xff

    and-long/2addr v0, v8

    or-long/2addr v0, v4

    iget-wide v4, p0, La/e;->b:J

    const-wide/16 v8, 0x8

    sub-long/2addr v4, v8

    iput-wide v4, p0, La/e;->b:J

    if-ne v7, v3, :cond_2

    invoke-virtual {v2}, La/x;->a()La/x;

    move-result-object v3

    iput-object v3, p0, La/e;->a:La/x;

    sget-object v3, La/y;->a:La/y;

    invoke-virtual {v3, v2}, La/y;->a(La/x;)V

    goto :goto_0

    :cond_2
    iput v7, v2, La/x;->b:I

    goto :goto_0
.end method

.method public m()S
    .locals 1

    invoke-virtual {p0}, La/e;->j()S

    move-result v0

    invoke-static {v0}, La/ad;->a(S)S

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    invoke-virtual {p0}, La/e;->k()I

    move-result v0

    invoke-static {v0}, La/ad;->a(I)I

    move-result v0

    return v0
.end method

.method public o()La/j;
    .locals 2

    new-instance v0, La/j;

    invoke-virtual {p0}, La/e;->r()[B

    move-result-object v1

    invoke-direct {v0, v1}, La/j;-><init>([B)V

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-wide v0, p0, La/e;->b:J

    sget-object v2, La/ad;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, La/e;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public q()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, La/e;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v1, La/e;

    invoke-direct {v1}, La/e;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-wide v6, p0, La/e;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, La/e;->a(La/e;JJ)La/e;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, La/e;->a()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, La/e;->o()La/j;

    move-result-object v1

    invoke-virtual {v1}, La/j;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0, v1}, La/e;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()[B
    .locals 2

    :try_start_0
    iget-wide v0, p0, La/e;->b:J

    invoke-virtual {p0, v0, v1}, La/e;->f(J)[B
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public read(La/e;J)J
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, La/e;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 p2, -0x1

    :goto_0
    return-wide p2

    :cond_2
    iget-wide v0, p0, La/e;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, La/e;->b:J

    :cond_3
    invoke-virtual {p1, p0, p2, p3}, La/e;->write(La/e;J)V

    goto :goto_0
.end method

.method public s()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, La/e;->b:J

    invoke-virtual {p0, v0, v1}, La/e;->g(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public t()La/e;
    .locals 6

    new-instance v1, La/e;

    invoke-direct {v1}, La/e;-><init>()V

    iget-wide v2, p0, La/e;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/e;->a:La/x;

    iget-object v0, v0, La/x;->a:[B

    iget-object v2, p0, La/e;->a:La/x;

    iget v2, v2, La/x;->b:I

    iget-object v3, p0, La/e;->a:La/x;

    iget v3, v3, La/x;->c:I

    iget-object v4, p0, La/e;->a:La/x;

    iget v4, v4, La/x;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, La/e;->b([BII)La/e;

    iget-object v0, p0, La/e;->a:La/x;

    iget-object v0, v0, La/x;->d:La/x;

    :goto_1
    iget-object v2, p0, La/e;->a:La/x;

    if-eq v0, v2, :cond_1

    iget-object v2, v0, La/x;->a:[B

    iget v3, v0, La/x;->b:I

    iget v4, v0, La/x;->c:I

    iget v5, v0, La/x;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, La/e;->b([BII)La/e;

    iget-object v0, v0, La/x;->d:La/x;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public timeout()La/ab;
    .locals 1

    sget-object v0, La/ab;->NONE:La/ab;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, "Buffer[size=0]"

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, La/e;->b:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, La/e;->t()La/e;

    move-result-object v0

    invoke-virtual {v0}, La/e;->o()La/j;

    move-result-object v0

    const-string v1, "Buffer[size=%s data=%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, La/e;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, La/j;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v0, p0, La/e;->a:La/x;

    iget-object v0, v0, La/x;->a:[B

    iget-object v2, p0, La/e;->a:La/x;

    iget v2, v2, La/x;->b:I

    iget-object v3, p0, La/e;->a:La/x;

    iget v3, v3, La/x;->c:I

    iget-object v4, p0, La/e;->a:La/x;

    iget v4, v4, La/x;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, La/e;->a:La/x;

    iget-object v0, v0, La/x;->d:La/x;

    :goto_1
    iget-object v2, p0, La/e;->a:La/x;

    if-eq v0, v2, :cond_2

    iget-object v2, v0, La/x;->a:[B

    iget v3, v0, La/x;->b:I

    iget v4, v0, La/x;->c:I

    iget v5, v0, La/x;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, v0, La/x;->d:La/x;

    goto :goto_1

    :cond_2
    const-string v0, "Buffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, La/e;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, La/j;->a([B)La/j;

    move-result-object v1

    invoke-virtual {v1}, La/j;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public synthetic u()La/h;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, La/e;->d()La/e;

    move-result-object v0

    return-object v0
.end method

.method public write(La/e;J)V
    .locals 8

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p1, La/e;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, La/ad;->a(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_6

    iget-object v0, p1, La/e;->a:La/x;

    iget v0, v0, La/x;->c:I

    iget-object v1, p1, La/e;->a:La/x;

    iget v1, v1, La/x;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_3

    iget-object v0, p0, La/e;->a:La/x;

    if-eqz v0, :cond_4

    iget-object v0, p0, La/e;->a:La/x;

    iget-object v0, v0, La/x;->e:La/x;

    :goto_1
    if-eqz v0, :cond_2

    iget v1, v0, La/x;->c:I

    iget v4, v0, La/x;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v4, p2

    const-wide/16 v6, 0x800

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    :cond_2
    iget-object v0, p1, La/e;->a:La/x;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, La/x;->a(I)La/x;

    move-result-object v0

    iput-object v0, p1, La/e;->a:La/x;

    :cond_3
    iget-object v0, p1, La/e;->a:La/x;

    iget v1, v0, La/x;->c:I

    iget v4, v0, La/x;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, La/x;->a()La/x;

    move-result-object v1

    iput-object v1, p1, La/e;->a:La/x;

    iget-object v1, p0, La/e;->a:La/x;

    if-nez v1, :cond_7

    iput-object v0, p0, La/e;->a:La/x;

    iget-object v0, p0, La/e;->a:La/x;

    iget-object v1, p0, La/e;->a:La/x;

    iget-object v6, p0, La/e;->a:La/x;

    iput-object v6, v1, La/x;->e:La/x;

    iput-object v6, v0, La/x;->d:La/x;

    :goto_2
    iget-wide v0, p1, La/e;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, La/e;->b:J

    iget-wide v0, p0, La/e;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, La/e;->b:J

    sub-long/2addr p2, v4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v1, p1, La/e;->a:La/x;

    long-to-int v2, p2

    invoke-virtual {v1, v0, v2}, La/x;->a(La/x;I)V

    iget-wide v0, p1, La/e;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, La/e;->b:J

    iget-wide v0, p0, La/e;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, La/e;->b:J

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, La/e;->a:La/x;

    iget-object v1, v1, La/x;->e:La/x;

    invoke-virtual {v1, v0}, La/x;->a(La/x;)La/x;

    move-result-object v0

    invoke-virtual {v0}, La/x;->b()V

    goto :goto_2
.end method
