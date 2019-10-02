.class public Lcom/google/ads/interactivemedia/v3/internal/ca;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ck;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/ci;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/bm;

.field private c:Z

.field private d:J

.field private e:J

.field private volatile f:J

.field private volatile g:Lcom/google/ads/interactivemedia/v3/internal/bj;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/eq;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ci;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ci;-><init>(Lcom/google/ads/interactivemedia/v3/internal/eq;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bm;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bm;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->b:Lcom/google/ads/interactivemedia/v3/internal/bm;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->c:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->d:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->f:J

    return-void
.end method

.method private f()Z
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->b:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(Lcom/google/ads/interactivemedia/v3/internal/bm;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->c:Z

    if-eqz v1, :cond_0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->b:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/bm;->c()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ci;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->b:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(Lcom/google/ads/interactivemedia/v3/internal/bm;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->e:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->b:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/bm;->e:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->e:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lcom/google/ads/interactivemedia/v3/internal/cd;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(Lcom/google/ads/interactivemedia/v3/internal/cd;IZ)I

    move-result p1

    return p1
.end method

.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->c:Z

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->d:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->f:J

    return-void
.end method

.method public a(J)V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->b:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(Lcom/google/ads/interactivemedia/v3/internal/bm;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->b:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bm;->e:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ci;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->c:Z

    goto :goto_0

    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->d:J

    return-void
.end method

.method public a(JIII[B)V
    .locals 11

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ca;->f:J

    move-wide v4, p1

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ca;->f:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ci;->c()J

    move-result-wide v1

    move v9, p4

    int-to-long v6, v9

    sub-long/2addr v1, v6

    move/from16 v6, p5

    int-to-long v6, v6

    sub-long v7, v1, v6

    move v6, p3

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(JIJI[B)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->g:Lcom/google/ads/interactivemedia/v3/internal/bj;

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/bm;)Z
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ca;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ci;->b(Lcom/google/ads/interactivemedia/v3/internal/bm;)Z

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->c:Z

    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/bm;->e:J

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->d:J

    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->g:Lcom/google/ads/interactivemedia/v3/internal/bj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->a:Lcom/google/ads/interactivemedia/v3/internal/ci;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ci;->a(J)Z

    move-result p1

    return p1
.end method

.method public c()Lcom/google/ads/interactivemedia/v3/internal/bj;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->g:Lcom/google/ads/interactivemedia/v3/internal/bj;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ca;->f:J

    return-wide v0
.end method

.method public e()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ca;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
