.class final Lcom/google/ads/interactivemedia/v3/internal/df;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:Lcom/google/ads/interactivemedia/v3/internal/cx;

.field public b:J

.field public c:J

.field public d:I

.field public e:[I

.field public f:[I

.field public g:[J

.field public h:[Z

.field public i:Z

.field public j:[Z

.field public k:I

.field public l:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field public m:Z

.field public n:Lcom/google/ads/interactivemedia/v3/internal/de;

.field public o:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->d:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->o:J

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->i:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->n:Lcom/google/ads/interactivemedia/v3/internal/de;

    return-void
.end method

.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->d:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->e:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->e:[I

    array-length v0, v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->d:I

    if-ge v0, v1, :cond_1

    :cond_0
    mul-int/lit8 p1, p1, 0x7d

    div-int/lit8 p1, p1, 0x64

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->e:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->f:[I

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->g:[J

    new-array v0, p1, [Z

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->h:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->j:[Z

    :cond_1
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->l:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->k:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/cd;->b([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->l:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->m:Z

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fp;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->l:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->k:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->l:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->m:Z

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->l:Lcom/google/ads/interactivemedia/v3/internal/fp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->l:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v0

    if-ge v0, p1, :cond_1

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->l:Lcom/google/ads/interactivemedia/v3/internal/fp;

    :cond_1
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->k:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->i:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->m:Z

    return-void
.end method

.method public c(I)J
    .locals 5

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->g:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/df;->f:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method
