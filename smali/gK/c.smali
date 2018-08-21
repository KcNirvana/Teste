.class public final LgK/c;
.super Ljava/lang/Object;

# interfaces
.implements LgK/d;
.implements LgK/e;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final c:[B


# instance fields
.field a:LgK/o;

.field b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LgK/c;->c:[B

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

    invoke-static/range {v0 .. v5}, LgK/t;->a(JJJ)V

    iget-object v1, p0, LgK/c;->a:LgK/o;

    if-nez v1, :cond_1

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, v1, LgK/o;->c:I

    iget v2, v1, LgK/o;->b:I

    sub-int/2addr v0, v2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, v1, LgK/o;->a:[B

    iget v3, v1, LgK/o;->b:I

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v1, LgK/o;->b:I

    add-int/2addr v2, v0

    iput v2, v1, LgK/o;->b:I

    iget-wide v2, p0, LgK/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, LgK/c;->b:J

    iget v2, v1, LgK/o;->b:I

    iget v3, v1, LgK/o;->c:I

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, LgK/o;->a()LgK/o;

    move-result-object v2

    iput-object v2, p0, LgK/c;->a:LgK/o;

    invoke-static {v1}, LgK/p;->a(LgK/o;)V

    goto :goto_0
.end method

.method public a(B)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, LgK/c;->a(BJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(BJ)J
    .locals 12

    const-wide/16 v6, -0x1

    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fromIndex < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/c;->a:LgK/o;

    if-nez v0, :cond_1

    move-wide v0, v6

    :goto_0
    return-wide v0

    :cond_1
    move-object v4, v0

    move-wide v0, v2

    :cond_2
    iget v5, v4, LgK/o;->c:I

    iget v8, v4, LgK/o;->b:I

    sub-int v8, v5, v8

    int-to-long v10, v8

    cmp-long v5, p2, v10

    if-ltz v5, :cond_3

    int-to-long v10, v8

    sub-long/2addr p2, v10

    :goto_1
    int-to-long v8, v8

    add-long/2addr v0, v8

    iget-object v4, v4, LgK/o;->f:LgK/o;

    iget-object v5, p0, LgK/c;->a:LgK/o;

    if-ne v4, v5, :cond_2

    move-wide v0, v6

    goto :goto_0

    :cond_3
    iget-object v9, v4, LgK/o;->a:[B

    iget v5, v4, LgK/o;->b:I

    int-to-long v10, v5

    add-long/2addr v10, p2

    long-to-int v5, v10

    iget v10, v4, LgK/o;->c:I

    :goto_2
    if-ge v5, v10, :cond_5

    aget-byte v11, v9, v5

    if-ne v11, p1, :cond_4

    int-to-long v2, v5

    add-long/2addr v0, v2

    iget v2, v4, LgK/o;->b:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    move-wide p2, v2

    goto :goto_1
.end method

.method public a(LgK/c;J)J
    .locals 4

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sink == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    cmp-long v0, p2, v2

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, LgK/c;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 p2, -0x1

    :goto_0
    return-wide p2

    :cond_2
    iget-wide v0, p0, LgK/c;->b:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    iget-wide p2, p0, LgK/c;->b:J

    :cond_3
    invoke-virtual {p1, p0, p2, p3}, LgK/c;->a_(LgK/c;J)V

    goto :goto_0
.end method

.method public a(LgK/r;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-wide/16 v2, 0x2000

    invoke-interface {p1, p0, v2, v3}, LgK/r;->a(LgK/c;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public a(I)LgK/c;
    .locals 3

    const/16 v0, 0x80

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, LgK/c;->b(I)LgK/c;

    :goto_0
    return-object p0

    :cond_0
    const/16 v0, 0x800

    if-ge p1, v0, :cond_1

    shr-int/lit8 v0, p1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    goto :goto_0

    :cond_1
    const/high16 v0, 0x10000

    if-ge p1, v0, :cond_3

    const v0, 0xd800

    if-lt p1, v0, :cond_2

    const v0, 0xdfff

    if-gt p1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    shr-int/lit8 v0, p1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    goto :goto_0

    :cond_3
    const v0, 0x10ffff

    if-gt p1, v0, :cond_4

    shr-int/lit8 v0, p1, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    shr-int/lit8 v0, p1, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    shr-int/lit8 v0, p1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    and-int/lit8 v0, p1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected code point: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(LgK/c;JJ)LgK/c;
    .locals 8

    const-wide/16 v6, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, LgK/c;->b:J

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, LgK/t;->a(JJJ)V

    cmp-long v0, p4, v6

    if-nez v0, :cond_2

    :cond_1
    return-object p0

    :cond_2
    iget-wide v0, p1, LgK/c;->b:J

    add-long/2addr v0, p4

    iput-wide v0, p1, LgK/c;->b:J

    iget-object v0, p0, LgK/c;->a:LgK/o;

    :goto_0
    iget v1, v0, LgK/o;->c:I

    iget v2, v0, LgK/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v1, p2, v2

    if-ltz v1, :cond_3

    iget v1, v0, LgK/o;->c:I

    iget v2, v0, LgK/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    sub-long/2addr p2, v2

    iget-object v0, v0, LgK/o;->f:LgK/o;

    goto :goto_0

    :cond_3
    :goto_1
    cmp-long v1, p4, v6

    if-lez v1, :cond_1

    new-instance v1, LgK/o;

    invoke-direct {v1, v0}, LgK/o;-><init>(LgK/o;)V

    iget v2, v1, LgK/o;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p2

    long-to-int v2, v2

    iput v2, v1, LgK/o;->b:I

    iget v2, v1, LgK/o;->b:I

    long-to-int v3, p4

    add-int/2addr v2, v3

    iget v3, v1, LgK/o;->c:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, LgK/o;->c:I

    iget-object v2, p1, LgK/c;->a:LgK/o;

    if-nez v2, :cond_4

    iput-object v1, v1, LgK/o;->g:LgK/o;

    iput-object v1, v1, LgK/o;->f:LgK/o;

    iput-object v1, p1, LgK/c;->a:LgK/o;

    :goto_2
    iget v2, v1, LgK/o;->c:I

    iget v1, v1, LgK/o;->b:I

    sub-int v1, v2, v1

    int-to-long v2, v1

    sub-long/2addr p4, v2

    iget-object v0, v0, LgK/o;->f:LgK/o;

    move-wide p2, v6

    goto :goto_1

    :cond_4
    iget-object v2, p1, LgK/c;->a:LgK/o;

    iget-object v2, v2, LgK/o;->g:LgK/o;

    invoke-virtual {v2, v1}, LgK/o;->a(LgK/o;)LgK/o;

    goto :goto_2
.end method

.method public a(LgK/f;)LgK/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "byteString == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p0}, LgK/f;->a(LgK/c;)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)LgK/c;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LgK/c;->a(Ljava/lang/String;II)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)LgK/c;
    .locals 9

    const v8, 0xdfff

    const/16 v7, 0x80

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalAccessError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ge p3, p2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le p3, v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    const v2, 0xdbff

    if-gt v1, v2, :cond_4

    const v2, 0xdc00

    if-lt v0, v2, :cond_4

    if-le v0, v8, :cond_c

    :cond_4
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    add-int/lit8 p2, p2, 0x1

    :cond_5
    :goto_1
    if-ge p2, p3, :cond_d

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ge v1, v7, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LgK/c;->e(I)LgK/o;

    move-result-object v2

    iget-object v3, v2, LgK/o;->a:[B

    iget v0, v2, LgK/o;->c:I

    sub-int v4, v0, p2

    rsub-int v0, v4, 0x2000

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v0, p2, 0x1

    add-int v6, v4, p2

    int-to-byte v1, v1

    aput-byte v1, v3, v6

    :goto_2
    if-ge v0, v5, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v7, :cond_7

    :cond_6
    add-int v1, v0, v4

    iget v3, v2, LgK/o;->c:I

    sub-int/2addr v1, v3

    iget v3, v2, LgK/o;->c:I

    add-int/2addr v3, v1

    iput v3, v2, LgK/o;->c:I

    iget-wide v2, p0, LgK/c;->b:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, LgK/c;->b:J

    :goto_3
    move p2, v0

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v4

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    move v0, v1

    goto :goto_2

    :cond_8
    const/16 v0, 0x800

    if-ge v1, v0, :cond_9

    shr-int/lit8 v0, v1, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    add-int/lit8 v0, p2, 0x1

    goto :goto_3

    :cond_9
    const v0, 0xd800

    if-lt v1, v0, :cond_a

    if-le v1, v8, :cond_b

    :cond_a
    shr-int/lit8 v0, v1, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    shr-int/lit8 v0, v1, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    and-int/lit8 v0, v1, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    add-int/lit8 v0, p2, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v0, p2, 0x1

    if-ge v0, p3, :cond_3

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto/16 :goto_0

    :cond_c
    const/high16 v2, 0x10000

    const v3, -0xd801

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0xa

    const v3, -0xdc01

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    add-int/2addr v0, v2

    shr-int/lit8 v1, v0, 0x12

    or-int/lit16 v1, v1, 0xf0

    invoke-virtual {p0, v1}, LgK/c;->b(I)LgK/c;

    shr-int/lit8 v1, v0, 0xc

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, LgK/c;->b(I)LgK/c;

    shr-int/lit8 v1, v0, 0x6

    and-int/lit8 v1, v1, 0x3f

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {p0, v1}, LgK/c;->b(I)LgK/c;

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    add-int/lit8 v0, p2, 0x2

    goto :goto_3

    :cond_d
    return-object p0
.end method

.method public a()LgK/s;
    .locals 1

    sget-object v0, LgK/s;->b:LgK/s;

    return-object v0
.end method

.method public a(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    iget-wide v0, p0, LgK/c;->b:J

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, LgK/t;->a(JJJ)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "charset == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

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

    const-string/jumbo v0, ""

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v1, p0, LgK/c;->a:LgK/o;

    iget v0, v1, LgK/o;->b:I

    int-to-long v2, v0

    add-long/2addr v2, p1

    iget v0, v1, LgK/o;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, LgK/c;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    iget-object v2, v1, LgK/o;->a:[B

    iget v3, v1, LgK/o;->b:I

    long-to-int v4, p1

    invoke-direct {v0, v2, v3, v4, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iget v2, v1, LgK/o;->b:I

    int-to-long v2, v2

    add-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v1, LgK/o;->b:I

    iget-wide v2, p0, LgK/c;->b:J

    sub-long/2addr v2, p1

    iput-wide v2, p0, LgK/c;->b:J

    iget v2, v1, LgK/o;->b:I

    iget v3, v1, LgK/o;->c:I

    if-ne v2, v3, :cond_2

    invoke-virtual {v1}, LgK/o;->a()LgK/o;

    move-result-object v2

    iput-object v2, p0, LgK/c;->a:LgK/o;

    invoke-static {v1}, LgK/p;->a(LgK/o;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-wide v0, p0, LgK/c;->b:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
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

    invoke-virtual {p0, p1, v0, v1}, LgK/c;->a([BII)I

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

.method public a_(LgK/c;J)V
    .locals 8

    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, p0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == this"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p1, LgK/c;->b:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, LgK/t;->a(JJJ)V

    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    iget-object v0, p1, LgK/c;->a:LgK/o;

    iget v0, v0, LgK/o;->c:I

    iget-object v1, p1, LgK/c;->a:LgK/o;

    iget v1, v1, LgK/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-gez v0, :cond_6

    iget-object v0, p0, LgK/c;->a:LgK/o;

    if-eqz v0, :cond_3

    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget-object v0, v0, LgK/o;->g:LgK/o;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v0, v1, LgK/o;->e:Z

    if-eqz v0, :cond_5

    iget v0, v1, LgK/o;->c:I

    int-to-long v4, v0

    add-long/2addr v4, p2

    iget-boolean v0, v1, LgK/o;->d:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_2
    int-to-long v6, v0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2000

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    iget-object v0, p1, LgK/c;->a:LgK/o;

    long-to-int v2, p2

    invoke-virtual {v0, v1, v2}, LgK/o;->a(LgK/o;I)V

    iget-wide v0, p1, LgK/c;->b:J

    sub-long/2addr v0, p2

    iput-wide v0, p1, LgK/c;->b:J

    iget-wide v0, p0, LgK/c;->b:J

    add-long/2addr v0, p2

    iput-wide v0, p0, LgK/c;->b:J

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_1

    :cond_4
    iget v0, v1, LgK/o;->b:I

    goto :goto_2

    :cond_5
    iget-object v0, p1, LgK/c;->a:LgK/o;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, LgK/o;->a(I)LgK/o;

    move-result-object v0

    iput-object v0, p1, LgK/c;->a:LgK/o;

    :cond_6
    iget-object v0, p1, LgK/c;->a:LgK/o;

    iget v1, v0, LgK/o;->c:I

    iget v4, v0, LgK/o;->b:I

    sub-int/2addr v1, v4

    int-to-long v4, v1

    invoke-virtual {v0}, LgK/o;->a()LgK/o;

    move-result-object v1

    iput-object v1, p1, LgK/c;->a:LgK/o;

    iget-object v1, p0, LgK/c;->a:LgK/o;

    if-nez v1, :cond_7

    iput-object v0, p0, LgK/c;->a:LgK/o;

    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget-object v1, p0, LgK/c;->a:LgK/o;

    iget-object v6, p0, LgK/c;->a:LgK/o;

    iput-object v6, v1, LgK/o;->g:LgK/o;

    iput-object v6, v0, LgK/o;->f:LgK/o;

    :goto_3
    iget-wide v0, p1, LgK/c;->b:J

    sub-long/2addr v0, v4

    iput-wide v0, p1, LgK/c;->b:J

    iget-wide v0, p0, LgK/c;->b:J

    add-long/2addr v0, v4

    iput-wide v0, p0, LgK/c;->b:J

    sub-long/2addr p2, v4

    goto :goto_0

    :cond_7
    iget-object v1, p0, LgK/c;->a:LgK/o;

    iget-object v1, v1, LgK/o;->g:LgK/o;

    invoke-virtual {v1, v0}, LgK/o;->a(LgK/o;)LgK/o;

    move-result-object v0

    invoke-virtual {v0}, LgK/o;->b()V

    goto :goto_3
.end method

.method public b(J)B
    .locals 7

    iget-wide v0, p0, LgK/c;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, LgK/t;->a(JJJ)V

    iget-object v0, p0, LgK/c;->a:LgK/o;

    :goto_0
    iget v1, v0, LgK/o;->c:I

    iget v2, v0, LgK/o;->b:I

    sub-int/2addr v1, v2

    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    iget-object v1, v0, LgK/o;->a:[B

    iget v0, v0, LgK/o;->b:I

    long-to-int v2, p1

    add-int/2addr v0, v2

    aget-byte v0, v1, v0

    return v0

    :cond_0
    int-to-long v2, v1

    sub-long/2addr p1, v2

    iget-object v0, v0, LgK/o;->f:LgK/o;

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, LgK/c;->b:J

    return-wide v0
.end method

.method public b(I)LgK/c;
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LgK/c;->e(I)LgK/o;

    move-result-object v0

    iget-object v1, v0, LgK/o;->a:[B

    iget v2, v0, LgK/o;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, LgK/o;->c:I

    int-to-byte v0, p1

    aput-byte v0, v1, v2

    iget-wide v0, p0, LgK/c;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/c;->b:J

    return-object p0
.end method

.method public b([B)LgK/c;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, LgK/c;->b([BII)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public b([BII)LgK/c;
    .locals 6

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "source == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, LgK/t;->a(JJJ)V

    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, LgK/c;->e(I)LgK/o;

    move-result-object v1

    sub-int v2, v0, p2

    iget v3, v1, LgK/o;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, v1, LgK/o;->a:[B

    iget v4, v1, LgK/o;->c:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v2

    iget v3, v1, LgK/o;->c:I

    add-int/2addr v2, v3

    iput v2, v1, LgK/o;->c:I

    goto :goto_0

    :cond_1
    iget-wide v0, p0, LgK/c;->b:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/c;->b:J

    return-object p0
.end method

.method public synthetic b(LgK/f;)LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/c;->a(LgK/f;)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/c;->a(Ljava/lang/String;)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public c()LgK/c;
    .locals 0

    return-object p0
.end method

.method public c(I)LgK/c;
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, LgK/c;->e(I)LgK/o;

    move-result-object v0

    iget-object v1, v0, LgK/o;->a:[B

    iget v2, v0, LgK/o;->c:I

    add-int/lit8 v3, v2, 0x1

    ushr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v2, v3, 0x1

    and-int/lit16 v4, p1, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iput v2, v0, LgK/o;->c:I

    iget-wide v0, p0, LgK/c;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/c;->b:J

    return-object p0
.end method

.method public synthetic c([B)LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/c;->b([B)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c([BII)LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LgK/c;->b([BII)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public c(J)LgK/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    new-instance v0, LgK/f;

    invoke-virtual {p0, p1, p2}, LgK/c;->f(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, LgK/f;-><init>([B)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, LgK/c;->s()LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public d()LgK/c;
    .locals 0

    return-object p0
.end method

.method public d(I)LgK/c;
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, LgK/c;->e(I)LgK/o;

    move-result-object v0

    iget-object v1, v0, LgK/o;->a:[B

    iget v2, v0, LgK/o;->c:I

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

    iput v2, v0, LgK/o;->c:I

    iget-wide v0, p0, LgK/c;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/c;->b:J

    return-object p0
.end method

.method public d(J)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    sget-object v0, LgK/t;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, LgK/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()LgK/d;
    .locals 0

    return-object p0
.end method

.method e(I)LgK/o;
    .locals 3

    const/16 v2, 0x2000

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-le p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, LgK/c;->a:LgK/o;

    if-nez v0, :cond_3

    invoke-static {}, LgK/p;->a()LgK/o;

    move-result-object v0

    iput-object v0, p0, LgK/c;->a:LgK/o;

    iget-object v1, p0, LgK/c;->a:LgK/o;

    iget-object v2, p0, LgK/c;->a:LgK/o;

    iget-object v0, p0, LgK/c;->a:LgK/o;

    iput-object v0, v2, LgK/o;->g:LgK/o;

    iput-object v0, v1, LgK/o;->f:LgK/o;

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget-object v0, v0, LgK/o;->g:LgK/o;

    iget v1, v0, LgK/o;->c:I

    add-int/2addr v1, p1

    if-gt v1, v2, :cond_4

    iget-boolean v1, v0, LgK/o;->e:Z

    if-nez v1, :cond_2

    :cond_4
    invoke-static {}, LgK/p;->a()LgK/o;

    move-result-object v1

    invoke-virtual {v0, v1}, LgK/o;->a(LgK/o;)LgK/o;

    move-result-object v0

    goto :goto_0
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

    invoke-virtual {p0, v0, v1}, LgK/c;->b(J)B

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    sub-long v0, p1, v2

    invoke-virtual {p0, v0, v1}, LgK/c;->d(J)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, LgK/c;->g(J)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, LgK/c;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, LgK/c;->g(J)V

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
    instance-of v2, p1, LgK/c;

    if-nez v2, :cond_1

    move v0, v7

    goto :goto_0

    :cond_1
    check-cast p1, LgK/c;

    iget-wide v2, p0, LgK/c;->b:J

    iget-wide v4, p1, LgK/c;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    iget-wide v2, p0, LgK/c;->b:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    iget-object v5, p0, LgK/c;->a:LgK/o;

    iget-object v4, p1, LgK/c;->a:LgK/o;

    iget v3, v5, LgK/o;->b:I

    iget v2, v4, LgK/o;->b:I

    :goto_1
    iget-wide v8, p0, LgK/c;->b:J

    cmp-long v8, v0, v8

    if-gez v8, :cond_8

    iget v8, v5, LgK/o;->c:I

    sub-int/2addr v8, v3

    iget v9, v4, LgK/o;->c:I

    sub-int/2addr v9, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-long v10, v8

    move v8, v7

    :goto_2
    int-to-long v12, v8

    cmp-long v9, v12, v10

    if-gez v9, :cond_5

    iget-object v12, v5, LgK/o;->a:[B

    add-int/lit8 v9, v3, 0x1

    aget-byte v12, v12, v3

    iget-object v13, v4, LgK/o;->a:[B

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
    iget v8, v5, LgK/o;->c:I

    if-ne v3, v8, :cond_6

    iget-object v5, v5, LgK/o;->f:LgK/o;

    iget v3, v5, LgK/o;->b:I

    :cond_6
    iget v8, v4, LgK/o;->c:I

    if-ne v2, v8, :cond_7

    iget-object v4, v4, LgK/o;->f:LgK/o;

    iget v2, v4, LgK/o;->b:I

    :cond_7
    add-long/2addr v0, v10

    goto :goto_1

    :cond_8
    move v0, v6

    goto :goto_0
.end method

.method public synthetic f(I)LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/c;->d(I)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 4

    iget-wide v0, p0, LgK/c;->b:J

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

    iget-wide v0, p0, LgK/c;->b:J

    const-wide/16 v2, 0x0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, LgK/t;->a(JJJ)V

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "byteCount > Integer.MAX_VALUE: "

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

    invoke-virtual {p0, v0}, LgK/c;->a([B)V

    return-object v0
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public g()J
    .locals 5

    const-wide/16 v2, 0x0

    iget-wide v0, p0, LgK/c;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    move-wide v0, v2

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    iget-object v2, p0, LgK/c;->a:LgK/o;

    iget-object v2, v2, LgK/o;->g:LgK/o;

    iget v3, v2, LgK/o;->c:I

    const/16 v4, 0x2000

    if-ge v3, v4, :cond_0

    iget-boolean v3, v2, LgK/o;->e:Z

    if-eqz v3, :cond_0

    iget v3, v2, LgK/o;->c:I

    iget v2, v2, LgK/o;->b:I

    sub-int v2, v3, v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public synthetic g(I)LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/c;->c(I)LgK/c;

    move-result-object v0

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

    iget-object v0, p0, LgK/c;->a:LgK/o;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget v0, v0, LgK/o;->c:I

    iget-object v1, p0, LgK/c;->a:LgK/o;

    iget v1, v1, LgK/o;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iget-wide v2, p0, LgK/c;->b:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, LgK/c;->b:J

    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v1, p0, LgK/c;->a:LgK/o;

    iget v2, v1, LgK/o;->b:I

    add-int/2addr v0, v2

    iput v0, v1, LgK/o;->b:I

    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget v0, v0, LgK/o;->b:I

    iget-object v1, p0, LgK/c;->a:LgK/o;

    iget v1, v1, LgK/o;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LgK/c;->a:LgK/o;

    invoke-virtual {v0}, LgK/o;->a()LgK/o;

    move-result-object v1

    iput-object v1, p0, LgK/c;->a:LgK/o;

    invoke-static {v0}, LgK/p;->a(LgK/o;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public h()B
    .locals 10

    iget-wide v0, p0, LgK/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "size == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget v1, v0, LgK/o;->b:I

    iget v2, v0, LgK/o;->c:I

    iget-object v3, v0, LgK/o;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    iget-wide v6, p0, LgK/c;->b:J

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    iput-wide v6, p0, LgK/c;->b:J

    if-ne v4, v2, :cond_1

    invoke-virtual {v0}, LgK/o;->a()LgK/o;

    move-result-object v2

    iput-object v2, p0, LgK/c;->a:LgK/o;

    invoke-static {v0}, LgK/p;->a(LgK/o;)V

    :goto_0
    return v1

    :cond_1
    iput v4, v0, LgK/o;->b:I

    goto :goto_0
.end method

.method public h(J)LgK/c;
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_17

    neg-long v2, p1

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const-string/jumbo v0, "-9223372036854775808"

    invoke-virtual {p0, v0}, LgK/c;->a(Ljava/lang/String;)LgK/c;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move v4, v0

    :goto_1
    const-wide/32 v0, 0x5f5e100

    cmp-long v0, v2, v0

    if-gez v0, :cond_a

    const-wide/16 v0, 0x2710

    cmp-long v0, v2, v0

    if-gez v0, :cond_6

    const-wide/16 v0, 0x64

    cmp-long v0, v2, v0

    if-gez v0, :cond_4

    const-wide/16 v0, 0xa

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    invoke-virtual {p0, v0}, LgK/c;->e(I)LgK/o;

    move-result-object v5

    iget-object v6, v5, LgK/o;->a:[B

    iget v1, v5, LgK/o;->c:I

    add-int/2addr v1, v0

    :goto_3
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_15

    const-wide/16 v8, 0xa

    rem-long v8, v2, v8

    long-to-int v7, v8

    add-int/lit8 v1, v1, -0x1

    sget-object v8, LgK/c;->c:[B

    aget-byte v7, v8, v7

    aput-byte v7, v6, v1

    const-wide/16 v8, 0xa

    div-long/2addr v2, v8

    goto :goto_3

    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :cond_4
    const-wide/16 v0, 0x3e8

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const/4 v0, 0x3

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    :cond_6
    const-wide/32 v0, 0xf4240

    cmp-long v0, v2, v0

    if-gez v0, :cond_8

    const-wide/32 v0, 0x186a0

    cmp-long v0, v2, v0

    if-gez v0, :cond_7

    const/4 v0, 0x5

    goto :goto_2

    :cond_7
    const/4 v0, 0x6

    goto :goto_2

    :cond_8
    const-wide/32 v0, 0x989680

    cmp-long v0, v2, v0

    if-gez v0, :cond_9

    const/4 v0, 0x7

    goto :goto_2

    :cond_9
    const/16 v0, 0x8

    goto :goto_2

    :cond_a
    const-wide v0, 0xe8d4a51000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_e

    const-wide v0, 0x2540be400L

    cmp-long v0, v2, v0

    if-gez v0, :cond_c

    const-wide/32 v0, 0x3b9aca00

    cmp-long v0, v2, v0

    if-gez v0, :cond_b

    const/16 v0, 0x9

    goto :goto_2

    :cond_b
    const/16 v0, 0xa

    goto :goto_2

    :cond_c
    const-wide v0, 0x174876e800L

    cmp-long v0, v2, v0

    if-gez v0, :cond_d

    const/16 v0, 0xb

    goto :goto_2

    :cond_d
    const/16 v0, 0xc

    goto :goto_2

    :cond_e
    const-wide v0, 0x38d7ea4c68000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_11

    const-wide v0, 0x9184e72a000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_2

    :cond_f
    const-wide v0, 0x5af3107a4000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_10

    const/16 v0, 0xe

    goto/16 :goto_2

    :cond_10
    const/16 v0, 0xf

    goto/16 :goto_2

    :cond_11
    const-wide v0, 0x16345785d8a0000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_13

    const-wide v0, 0x2386f26fc10000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_12

    const/16 v0, 0x10

    goto/16 :goto_2

    :cond_12
    const/16 v0, 0x11

    goto/16 :goto_2

    :cond_13
    const-wide v0, 0xde0b6b3a7640000L

    cmp-long v0, v2, v0

    if-gez v0, :cond_14

    const/16 v0, 0x12

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0x13

    goto/16 :goto_2

    :cond_15
    if-eqz v4, :cond_16

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2d

    aput-byte v2, v6, v1

    :cond_16
    iget v1, v5, LgK/o;->c:I

    add-int/2addr v1, v0

    iput v1, v5, LgK/o;->c:I

    iget-wide v2, p0, LgK/c;->b:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/c;->b:J

    goto/16 :goto_0

    :cond_17
    move v4, v0

    move-wide v2, p1

    goto/16 :goto_1
.end method

.method public synthetic h(I)LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, LgK/c;->b(I)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v1, p0, LgK/c;->a:LgK/o;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iget v2, v1, LgK/o;->b:I

    iget v4, v1, LgK/o;->c:I

    :goto_1
    if-ge v2, v4, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, v1, LgK/o;->a:[B

    aget-byte v3, v3, v2

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    :cond_2
    iget-object v1, v1, LgK/o;->f:LgK/o;

    iget-object v2, p0, LgK/c;->a:LgK/o;

    if-ne v1, v2, :cond_1

    goto :goto_0
.end method

.method public i(J)LgK/c;
    .locals 9

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/16 v0, 0x30

    invoke-virtual {p0, v0}, LgK/c;->b(I)LgK/c;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, LgK/c;->e(I)LgK/o;

    move-result-object v2

    iget-object v3, v2, LgK/o;->a:[B

    iget v0, v2, LgK/o;->c:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v4, v2, LgK/o;->c:I

    :goto_1
    if-lt v0, v4, :cond_1

    sget-object v5, LgK/c;->c:[B

    const-wide/16 v6, 0xf

    and-long/2addr v6, p1

    long-to-int v6, v6

    aget-byte v5, v5, v6

    aput-byte v5, v3, v0

    const/4 v5, 0x4

    ushr-long/2addr p1, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget v0, v2, LgK/o;->c:I

    add-int/2addr v0, v1

    iput v0, v2, LgK/o;->c:I

    iget-wide v2, p0, LgK/c;->b:J

    int-to-long v0, v1

    add-long/2addr v0, v2

    iput-wide v0, p0, LgK/c;->b:J

    goto :goto_0
.end method

.method public i()S
    .locals 10

    const-wide/16 v8, 0x2

    iget-wide v0, p0, LgK/c;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, LgK/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget v1, v0, LgK/o;->b:I

    iget v2, v0, LgK/o;->c:I

    sub-int v3, v2, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, LgK/c;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, LgK/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_1
    iget-object v3, v0, LgK/o;->a:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    iget-wide v6, p0, LgK/c;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, LgK/c;->b:J

    if-ne v5, v2, :cond_2

    invoke-virtual {v0}, LgK/o;->a()LgK/o;

    move-result-object v2

    iput-object v2, p0, LgK/c;->a:LgK/o;

    invoke-static {v0}, LgK/p;->a(LgK/o;)V

    :goto_1
    int-to-short v0, v1

    goto :goto_0

    :cond_2
    iput v5, v0, LgK/o;->b:I

    goto :goto_1
.end method

.method public j()I
    .locals 10

    const-wide/16 v8, 0x4

    iget-wide v0, p0, LgK/c;->b:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size < 4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, LgK/c;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, LgK/c;->a:LgK/o;

    iget v0, v1, LgK/o;->b:I

    iget v2, v1, LgK/o;->c:I

    sub-int v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    invoke-virtual {p0}, LgK/c;->h()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, LgK/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, LgK/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, LgK/c;->h()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v3, v1, LgK/o;->a:[B

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

    iget-wide v6, p0, LgK/c;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p0, LgK/c;->b:J

    if-ne v5, v2, :cond_2

    invoke-virtual {v1}, LgK/o;->a()LgK/o;

    move-result-object v2

    iput-object v2, p0, LgK/c;->a:LgK/o;

    invoke-static {v1}, LgK/p;->a(LgK/o;)V

    goto :goto_0

    :cond_2
    iput v5, v1, LgK/o;->b:I

    goto :goto_0
.end method

.method public synthetic j(J)LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LgK/c;->i(J)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic k(J)LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LgK/c;->h(J)LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public k()S
    .locals 1

    invoke-virtual {p0}, LgK/c;->i()S

    move-result v0

    invoke-static {v0}, LgK/t;->a(S)S

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    invoke-virtual {p0}, LgK/c;->j()I

    move-result v0

    invoke-static {v0}, LgK/t;->a(I)I

    move-result v0

    return v0
.end method

.method public m()J
    .locals 18

    move-object/from16 v0, p0

    iget-wide v2, v0, LgK/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "size == 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, LgK/c;->a:LgK/o;

    iget-object v11, v10, LgK/o;->a:[B

    iget v6, v10, LgK/o;->b:I

    iget v12, v10, LgK/o;->c:I

    move v7, v6

    :goto_0
    if-ge v7, v12, :cond_6

    aget-byte v8, v11, v7

    const/16 v6, 0x30

    if-lt v8, v6, :cond_2

    const/16 v6, 0x39

    if-gt v8, v6, :cond_2

    add-int/lit8 v6, v8, -0x30

    :goto_1
    const-wide/high16 v14, -0x1000000000000000L    # -3.105036184601418E231

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-eqz v9, :cond_8

    new-instance v2, LgK/c;

    invoke-direct {v2}, LgK/c;-><init>()V

    invoke-virtual {v2, v4, v5}, LgK/c;->i(J)LgK/c;

    move-result-object v2

    invoke-virtual {v2, v8}, LgK/c;->b(I)LgK/c;

    move-result-object v2

    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Number too large: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, LgK/c;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const/16 v6, 0x61

    if-lt v8, v6, :cond_3

    const/16 v6, 0x66

    if-gt v8, v6, :cond_3

    add-int/lit8 v6, v8, -0x61

    add-int/lit8 v6, v6, 0xa

    goto :goto_1

    :cond_3
    const/16 v6, 0x41

    if-lt v8, v6, :cond_4

    const/16 v6, 0x46

    if-gt v8, v6, :cond_4

    add-int/lit8 v6, v8, -0x41

    add-int/lit8 v6, v6, 0xa

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Expected leading [0-9a-fA-F] character but was 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    const/4 v2, 0x1

    :cond_6
    if-ne v7, v12, :cond_9

    invoke-virtual {v10}, LgK/o;->a()LgK/o;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, LgK/c;->a:LgK/o;

    invoke-static {v10}, LgK/p;->a(LgK/o;)V

    :goto_2
    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, LgK/c;->a:LgK/o;

    if-nez v6, :cond_1

    :cond_7
    move-object/from16 v0, p0

    iget-wide v6, v0, LgK/c;->b:J

    int-to-long v2, v3

    sub-long v2, v6, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, LgK/c;->b:J

    return-wide v4

    :cond_8
    const/4 v8, 0x4

    shl-long/2addr v4, v8

    int-to-long v8, v6

    or-long/2addr v8, v4

    add-int/lit8 v4, v7, 0x1

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move-wide v4, v8

    goto/16 :goto_0

    :cond_9
    iput v7, v10, LgK/o;->b:I

    goto :goto_2
.end method

.method public n()LgK/f;
    .locals 2

    new-instance v0, LgK/f;

    invoke-virtual {p0}, LgK/c;->q()[B

    move-result-object v1

    invoke-direct {v0, v1}, LgK/f;-><init>([B)V

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-wide v0, p0, LgK/c;->b:J

    sget-object v2, LgK/t;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, LgK/c;->a(JLjava/nio/charset/Charset;)Ljava/lang/String;
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

.method public p()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, LgK/c;->a(B)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    new-instance v1, LgK/c;

    invoke-direct {v1}, LgK/c;-><init>()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x20

    iget-wide v6, p0, LgK/c;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LgK/c;->a(LgK/c;JJ)LgK/c;

    new-instance v0, Ljava/io/EOFException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\\n not found: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, LgK/c;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " content="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, LgK/c;->n()LgK/f;

    move-result-object v1

    invoke-virtual {v1}, LgK/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, v0, v1}, LgK/c;->e(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()[B
    .locals 2

    :try_start_0
    iget-wide v0, p0, LgK/c;->b:J

    invoke-virtual {p0, v0, v1}, LgK/c;->f(J)[B
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

.method public r()V
    .locals 2

    :try_start_0
    iget-wide v0, p0, LgK/c;->b:J

    invoke-virtual {p0, v0, v1}, LgK/c;->g(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public s()LgK/c;
    .locals 6

    new-instance v1, LgK/c;

    invoke-direct {v1}, LgK/c;-><init>()V

    iget-wide v2, p0, LgK/c;->b:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, LgK/o;

    iget-object v2, p0, LgK/c;->a:LgK/o;

    invoke-direct {v0, v2}, LgK/o;-><init>(LgK/o;)V

    iput-object v0, v1, LgK/c;->a:LgK/o;

    iget-object v0, v1, LgK/c;->a:LgK/o;

    iget-object v2, v1, LgK/c;->a:LgK/o;

    iget-object v3, v1, LgK/c;->a:LgK/o;

    iput-object v3, v2, LgK/o;->g:LgK/o;

    iput-object v3, v0, LgK/o;->f:LgK/o;

    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget-object v0, v0, LgK/o;->f:LgK/o;

    :goto_1
    iget-object v2, p0, LgK/c;->a:LgK/o;

    if-eq v0, v2, :cond_1

    iget-object v2, v1, LgK/c;->a:LgK/o;

    iget-object v2, v2, LgK/o;->g:LgK/o;

    new-instance v3, LgK/o;

    invoke-direct {v3, v0}, LgK/o;-><init>(LgK/o;)V

    invoke-virtual {v2, v3}, LgK/o;->a(LgK/o;)LgK/o;

    iget-object v0, v0, LgK/o;->f:LgK/o;

    goto :goto_1

    :cond_1
    iget-wide v2, p0, LgK/c;->b:J

    iput-wide v2, v1, LgK/c;->b:J

    move-object v0, v1

    goto :goto_0
.end method

.method public synthetic t()LgK/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, LgK/c;->d()LgK/c;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v0, p0, LgK/c;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string/jumbo v0, "Buffer[size=0]"

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, LgK/c;->b:J

    const-wide/16 v2, 0x10

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    invoke-virtual {p0}, LgK/c;->s()LgK/c;

    move-result-object v0

    invoke-virtual {v0}, LgK/c;->n()LgK/f;

    move-result-object v0

    const-string/jumbo v1, "Buffer[size=%s data=%s]"

    new-array v2, v4, [Ljava/lang/Object;

    iget-wide v4, p0, LgK/c;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, LgK/f;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    :try_start_0
    const-string/jumbo v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget-object v0, v0, LgK/o;->a:[B

    iget-object v2, p0, LgK/c;->a:LgK/o;

    iget v2, v2, LgK/o;->b:I

    iget-object v3, p0, LgK/c;->a:LgK/o;

    iget v3, v3, LgK/o;->c:I

    iget-object v4, p0, LgK/c;->a:LgK/o;

    iget v4, v4, LgK/o;->b:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, p0, LgK/c;->a:LgK/o;

    iget-object v0, v0, LgK/o;->f:LgK/o;

    :goto_1
    iget-object v2, p0, LgK/c;->a:LgK/o;

    if-eq v0, v2, :cond_2

    iget-object v2, v0, LgK/o;->a:[B

    iget v3, v0, LgK/o;->b:I

    iget v4, v0, LgK/o;->c:I

    iget v5, v0, LgK/o;->b:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    iget-object v0, v0, LgK/o;->f:LgK/o;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "Buffer[size=%s md5=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, LgK/c;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, LgK/f;->a([B)LgK/f;

    move-result-object v1

    invoke-virtual {v1}, LgK/f;->d()Ljava/lang/String;

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
