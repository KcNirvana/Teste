.class final Lcom/google/ads/interactivemedia/v3/internal/dk;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private c:J

.field private d:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/dl$b;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v1, 0x11a

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->c:J

    return-void
.end method


# virtual methods
.method public a(JLcom/google/ads/interactivemedia/v3/internal/cd;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_0

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->d:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-object v7, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {p3, v0, v7, v4}, Lcom/google/ads/interactivemedia/v3/internal/dl;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;Lcom/google/ads/interactivemedia/v3/internal/dl$b;Lcom/google/ads/interactivemedia/v3/internal/fp;Z)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->c:J

    sub-long/2addr p1, v7

    cmp-long v0, p1, v5

    if-lez v0, :cond_2

    const-wide/32 v4, 0x11940

    cmp-long v4, p1, v4

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/internal/cd;->a()V

    return-wide v2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->i:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->a:Lcom/google/ads/interactivemedia/v3/internal/dl$b;

    iget v3, v3, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->h:I

    add-int/2addr v2, v3

    if-gtz v0, :cond_3

    const/4 v1, 0x2

    :cond_3
    mul-int v2, v2, v1

    int-to-long v0, v2

    invoke-interface {p3}, Lcom/google/ads/interactivemedia/v3/internal/cd;->c()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->c:J

    mul-long p1, p1, v0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->d:J

    div-long/2addr p1, v0

    add-long/2addr v2, p1

    return-wide v2
.end method

.method public a(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Z)V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->c:J

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dk;->d:J

    return-void
.end method
