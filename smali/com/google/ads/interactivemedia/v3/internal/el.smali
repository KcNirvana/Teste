.class final Lcom/google/ads/interactivemedia/v3/internal/el;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    return-void
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/cd;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    const/16 v3, 0x80

    const/4 v4, 0x0

    :goto_0
    and-int v5, v0, v3

    if-nez v5, :cond_1

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    not-int v3, v3

    and-int/2addr v0, v3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v3, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    :goto_1
    if-ge v1, v4, :cond_2

    shl-int/lit8 p1, v0, 0x8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    add-int/2addr v0, p1

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    add-int/2addr v4, v2

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x400

    if-eqz v2, :cond_1

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v0

    :cond_1
    :goto_0
    long-to-int v3, v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {p1, v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v7

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    :goto_1
    const-wide/32 v4, 0x1a45dfa3

    cmp-long v4, v7, v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    if-ne v4, v3, :cond_2

    return v6

    :cond_2
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-interface {p1, v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    const/16 v4, 0x8

    shl-long v4, v7, v4

    const-wide/16 v7, -0x100

    and-long/2addr v4, v7

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->a:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    aget-byte v7, v7, v6

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    or-long/2addr v7, v4

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/el;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;)J

    move-result-wide v3

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    int-to-long v7, v7

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v11, v3, v9

    if-eqz v11, :cond_a

    if-eqz v2, :cond_4

    add-long v11, v7, v3

    cmp-long v0, v11, v0

    if-ltz v0, :cond_4

    goto :goto_5

    :cond_4
    :goto_2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    int-to-long v0, v0

    add-long v11, v7, v3

    cmp-long v0, v0, v11

    if-gez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/el;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;)J

    move-result-wide v0

    cmp-long v0, v0, v9

    if-nez v0, :cond_5

    return v6

    :cond_5
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/el;->b(Lcom/google/ads/interactivemedia/v3/internal/cd;)J

    move-result-wide v0

    const-wide/16 v11, 0x0

    cmp-long v2, v0, v11

    if-ltz v2, :cond_7

    const-wide/32 v11, 0x7fffffff

    cmp-long v11, v0, v11

    if-lez v11, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_4

    long-to-int v2, v0

    invoke-interface {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c(I)V

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    int-to-long v11, v2

    add-long/2addr v11, v0

    long-to-int v0, v11

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    goto :goto_2

    :cond_7
    :goto_3
    return v6

    :cond_8
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/el;->b:I

    int-to-long v0, p1

    cmp-long p1, v0, v11

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    :goto_4
    return v5

    :cond_a
    :goto_5
    return v6
.end method
