.class final Lcom/google/ads/interactivemedia/v3/internal/dj;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

.field private d:I

.field private e:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/dl$b;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/dl$a;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Z)V

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->a()V

    :goto_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->b:I

    const/4 v2, 0x4

    and-int/2addr v0, v2

    if-eq v0, v2, :cond_1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->d()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/dl$b;Lcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->h:I

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->i:I

    add-int/2addr v0, v2

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->c:J

    return-wide v0
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/dl$b;Lcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->c:J

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->h:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->i:I

    add-int/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->c:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/dl$b;Lcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    goto :goto_0

    :cond_0
    iget-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->e:J

    const/4 p3, -0x1

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:I

    return-wide p1

    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bl;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>()V

    throw p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:I

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/fp;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    const/4 v2, 0x0

    :goto_1
    if-nez v2, :cond_7

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:I

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p1, v3, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/dl$b;Lcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->h:I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->b:I

    and-int/2addr v4, v1

    if-ne v4, v1, :cond_2

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    invoke-static {v4, v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/dl$b;ILcom/google/ads/interactivemedia/v3/internal/dl$a;)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->b:I

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->a:I

    add-int/2addr v3, v5

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-interface {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b(I)V

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:I

    :cond_3
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:I

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    invoke-static {v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/dl$b;ILcom/google/ads/interactivemedia/v3/internal/dl$a;)V

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->b:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->a:I

    if-lez v4, :cond_5

    iget-object v2, p2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->a:I

    invoke-interface {p1, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v2

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->c:Lcom/google/ads/interactivemedia/v3/internal/dl$a;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/dl$a;->a:I

    add-int/2addr v2, v4

    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->j:[I

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xff

    if-eq v2, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_3
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v4, v4, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->g:I

    if-ne v3, v4, :cond_6

    const/4 v3, -0x1

    :cond_6
    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dj;->d:I

    goto/16 :goto_1

    :cond_7
    return v1
.end method
