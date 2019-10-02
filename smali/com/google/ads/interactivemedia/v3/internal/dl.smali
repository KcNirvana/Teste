.class final Lcom/google/ads/interactivemedia/v3/internal/dl;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/dl$a;,
        Lcom/google/ads/interactivemedia/v3/internal/dl$b;
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "OggS"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:I

    return-void
.end method

.method public static a(BII)I
    .locals 0

    shr-int/2addr p0, p2

    rsub-int/lit8 p1, p1, 0x8

    const/16 p2, 0xff

    ushr-int p1, p2, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/cd;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/16 v0, 0x800

    new-array v0, v0, [B

    array-length v1, v0

    :goto_0
    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int v1, v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    :goto_1
    const/4 v2, 0x0

    invoke-interface {p0, v0, v2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BIIZ)Z

    :goto_2
    add-int/lit8 v3, v1, -0x3

    if-ge v2, v3, :cond_3

    aget-byte v3, v0, v2

    const/16 v4, 0x4f

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x3

    aget-byte v3, v0, v3

    const/16 v4, 0x53

    if-ne v3, v4, :cond_2

    invoke-interface {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    goto :goto_0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/dl$b;ILcom/google/ads/interactivemedia/v3/internal/dl$a;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p2, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->b:I

    iput v0, p2, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->a:I

    :cond_0
    iget v0, p2, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->b:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->g:I

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->j:[I

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p2, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->b:I

    add-int/2addr v1, p1

    aget v0, v0, v1

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->a:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->a:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    :cond_1
    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/dl$b;Lcom/google/ads/interactivemedia/v3/internal/fp;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->a()V

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v3

    invoke-interface {p0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1b

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_8

    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/16 v3, 0x1b

    invoke-interface {p0, v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BIIZ)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v4

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/dl;->a:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    if-eqz p3, :cond_3

    return v2

    :cond_3
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "expected OggS capture pattern at begin of page"

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v0

    iput v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->a:I

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->a:I

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    return v2

    :cond_5
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string p1, "unsupported bit stream revision"

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p3

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->b:I

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->p()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->c:J

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->l()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->d:J

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->l()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->e:J

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->l()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->f:J

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p3

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->g:I

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    iget p3, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->g:I

    add-int/2addr p3, v3

    iput p3, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->h:I

    iget-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->g:I

    invoke-interface {p0, p3, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c([BII)V

    :goto_2
    iget p0, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->g:I

    if-ge v2, p0, :cond_7

    iget-object p0, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->j:[I

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p3

    aput p3, p0, v2

    iget p0, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->i:I

    iget-object p3, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->j:[I

    aget p3, p3, v2

    add-int/2addr p0, p3

    iput p0, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->i:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return v1

    :cond_8
    :goto_3
    if-eqz p3, :cond_9

    return v2

    :cond_9
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method
