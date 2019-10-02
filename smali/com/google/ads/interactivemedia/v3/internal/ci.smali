.class final Lcom/google/ads/interactivemedia/v3/internal/ci;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/ci$b;,
        Lcom/google/ads/interactivemedia/v3/internal/ci$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/eq;

.field private final b:I

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ci$a;

.field private final d:Ljava/util/concurrent/LinkedBlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingDeque<",
            "Lcom/google/ads/interactivemedia/v3/internal/ep;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/ci$b;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private g:J

.field private h:J

.field private i:Lcom/google/ads/interactivemedia/v3/internal/ep;

.field private j:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/eq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/eq;->b()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->b:I

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ci$a;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ci$a;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->c:Lcom/google/ads/interactivemedia/v3/internal/ci$a;

    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ci$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ci$b;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ci$1;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->e:Lcom/google/ads/interactivemedia/v3/internal/ci$b;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->b:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    return-void
.end method

.method private a(I)I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/eq;->a()Lcom/google/ads/interactivemedia/v3/internal/ep;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private a(JLjava/nio/ByteBuffer;I)V
    .locals 4

    :goto_0
    if-lez p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->b(J)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->g:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->b:I

    sub-int/2addr v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ep;->a:[B

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a(I)I

    move-result v0

    invoke-virtual {p3, v3, v0, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    int-to-long v2, v1

    add-long/2addr p1, v2

    sub-int/2addr p4, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(J[BI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->b(J)V

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->g:J

    sub-long v1, p1, v1

    long-to-int v1, v1

    sub-int v2, p4, v0

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->b:I

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v3}, Ljava/util/concurrent/LinkedBlockingDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/ep;->a:[B

    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a(I)I

    move-result v1

    invoke-static {v4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-long v3, v2

    add-long/2addr p1, v3

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/bm;Lcom/google/ads/interactivemedia/v3/internal/ci$b;)V
    .locals 13

    iget-wide v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ci$b;->a:J

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(J[BI)V

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v4, 0x0

    aget-byte v2, v2, v4

    and-int/lit16 v5, v2, 0x80

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit8 v2, v2, 0x7f

    iget-object v6, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->a:Lcom/google/ads/interactivemedia/v3/internal/ax;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/ax;->a:[B

    if-nez v6, :cond_1

    iget-object v6, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->a:Lcom/google/ads/interactivemedia/v3/internal/ax;

    const/16 v7, 0x10

    new-array v7, v7, [B

    iput-object v7, v6, Lcom/google/ads/interactivemedia/v3/internal/ax;->a:[B

    :cond_1
    iget-object v6, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->a:Lcom/google/ads/interactivemedia/v3/internal/ax;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/ax;->a:[B

    invoke-direct {p0, v0, v1, v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(J[BI)V

    int-to-long v6, v2

    add-long/2addr v0, v6

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(J[BI)V

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v3

    move v7, v3

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->a:Lcom/google/ads/interactivemedia/v3/internal/ax;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ax;->d:[I

    if-eqz v2, :cond_4

    array-length v3, v2

    if-ge v3, v7, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    move-object v8, v2

    goto :goto_4

    :cond_4
    :goto_3
    new-array v2, v7, [I

    goto :goto_2

    :goto_4
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->a:Lcom/google/ads/interactivemedia/v3/internal/ax;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ax;->e:[I

    if-eqz v2, :cond_6

    array-length v3, v2

    if-ge v3, v7, :cond_5

    goto :goto_6

    :cond_5
    :goto_5
    move-object v9, v2

    goto :goto_7

    :cond_6
    :goto_6
    new-array v2, v7, [I

    goto :goto_5

    :goto_7
    if-eqz v5, :cond_7

    mul-int/lit8 v2, v7, 0x6

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(J[BI)V

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    :goto_8
    if-ge v4, v7, :cond_8

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v2

    aput v2, v8, v4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->f:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v2

    aput v2, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_7
    aput v4, v8, v4

    iget v2, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->c:I

    iget-wide v5, p2, Lcom/google/ads/interactivemedia/v3/internal/ci$b;->a:J

    sub-long v5, v0, v5

    long-to-int v3, v5

    sub-int/2addr v2, v3

    aput v2, v9, v4

    :cond_8
    iget-object v6, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->a:Lcom/google/ads/interactivemedia/v3/internal/ax;

    iget-object v10, p2, Lcom/google/ads/interactivemedia/v3/internal/ci$b;->b:[B

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->a:Lcom/google/ads/interactivemedia/v3/internal/ax;

    iget-object v11, v2, Lcom/google/ads/interactivemedia/v3/internal/ax;->a:[B

    const/4 v12, 0x1

    invoke-virtual/range {v6 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ax;->a(I[I[I[B[BI)V

    iget-wide v2, p2, Lcom/google/ads/interactivemedia/v3/internal/ci$b;->a:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v1, p2, Lcom/google/ads/interactivemedia/v3/internal/ci$b;->a:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p2, Lcom/google/ads/interactivemedia/v3/internal/ci$b;->a:J

    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->c:I

    sub-int/2addr p2, v0

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->c:I

    return-void
.end method

.method private b(J)V
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->g:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->b:I

    div-int/2addr p1, p2

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingDeque;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/eq;->a(Lcom/google/ads/interactivemedia/v3/internal/ep;)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->g:J

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->b:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->g:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ep;->a:[B

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a(I)I

    move-result v1

    invoke-interface {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->h:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->h:J

    return p1
.end method

.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->c:Lcom/google/ads/interactivemedia/v3/internal/ci$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ci$a;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->a:Lcom/google/ads/interactivemedia/v3/internal/eq;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingDeque;->size()I

    move-result v2

    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/LinkedBlockingDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/ads/interactivemedia/v3/internal/ep;

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/eq;->a([Lcom/google/ads/interactivemedia/v3/internal/ep;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->d:Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingDeque;->clear()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->g:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->h:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->b:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    return-void
.end method

.method public a(JIJI[B)V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->c:Lcom/google/ads/interactivemedia/v3/internal/ci$a;

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ci$a;->a(JIJI[B)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ep;->a:[B

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->i:Lcom/google/ads/interactivemedia/v3/internal/ep;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ep;->a(I)I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->j:I

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->h:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->h:J

    sub-int/2addr p2, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(J)Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->c:Lcom/google/ads/interactivemedia/v3/internal/ci$a;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ci$a;->a(J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->b(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/bm;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->c:Lcom/google/ads/interactivemedia/v3/internal/ci$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->e:Lcom/google/ads/interactivemedia/v3/internal/ci$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ci$a;->a(Lcom/google/ads/interactivemedia/v3/internal/bm;Lcom/google/ads/interactivemedia/v3/internal/ci$b;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->c:Lcom/google/ads/interactivemedia/v3/internal/ci$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ci$a;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ci;->b(J)V

    return-void
.end method

.method public b(Lcom/google/ads/interactivemedia/v3/internal/bm;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->c:Lcom/google/ads/interactivemedia/v3/internal/ci$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->e:Lcom/google/ads/interactivemedia/v3/internal/ci$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ci$a;->a(Lcom/google/ads/interactivemedia/v3/internal/bm;Lcom/google/ads/interactivemedia/v3/internal/ci$b;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/bm;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->e:Lcom/google/ads/interactivemedia/v3/internal/ci$b;

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(Lcom/google/ads/interactivemedia/v3/internal/bm;Lcom/google/ads/interactivemedia/v3/internal/ci$b;)V

    :cond_1
    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->c:I

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bm;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->e:Lcom/google/ads/interactivemedia/v3/internal/ci$b;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ci$b;->a:J

    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->b:Ljava/nio/ByteBuffer;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->c:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(JLjava/nio/ByteBuffer;I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->c:Lcom/google/ads/interactivemedia/v3/internal/ci$a;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ci$a;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ci;->b(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ci;->h:J

    return-wide v0
.end method
