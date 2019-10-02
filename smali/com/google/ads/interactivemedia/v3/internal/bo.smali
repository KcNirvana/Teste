.class public abstract Lcom/google/ads/interactivemedia/v3/internal/bo;
.super Lcom/google/ads/interactivemedia/v3/internal/bq;
.source "IMASDK"


# instance fields
.field private final a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

.field private b:[I

.field private c:[I

.field private d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

.field private e:I

.field private f:J


# direct methods
.method public varargs constructor <init>([Lcom/google/ads/interactivemedia/v3/internal/bn;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bq;-><init>()V

    array-length v0, p1

    new-array v0, v0, [Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/bn;->a()Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/bn$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/az;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/az;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->e:I

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->b(I)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bo;->a(J)V

    return-wide v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method protected final a(JLcom/google/ads/interactivemedia/v3/internal/bk;Lcom/google/ads/interactivemedia/v3/internal/bm;)I
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->e:I

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->a(IJLcom/google/ads/interactivemedia/v3/internal/bk;Lcom/google/ads/interactivemedia/v3/internal/bm;)I

    move-result p1

    return p1
.end method

.method protected a(IJZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    invoke-virtual {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/bo;->e(J)J

    move-result-wide p2

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->b:[I

    aget v0, v0, p1

    aget-object p4, p4, v0

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->c:[I

    aget p1, p4, p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->e:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    iget p4, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->e:I

    invoke-interface {p1, p4, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->a(IJ)V

    invoke-virtual {p0, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/bo;->a(J)V

    return-void
.end method

.method protected abstract a(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation
.end method

.method protected abstract a(JJZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/bj;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bh$b;
        }
    .end annotation
.end method

.method protected final b(I)Lcom/google/ads/interactivemedia/v3/internal/bj;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->b:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->c:[I

    aget p1, v1, p1

    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->a(I)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object p1

    return-object p1
.end method

.method protected final b(JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bo;->e(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->e:I

    invoke-interface {v0, v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->b(IJ)Z

    move-result v7

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bo;->b(J)J

    move-result-wide v3

    move-object v2, p0

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/bo;->a(JJZ)V

    return-void
.end method

.method protected final c(J)Z
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    array-length v5, v5

    if-ge v3, v5, :cond_0

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    aget-object v5, v5, v3

    move-wide/from16 v6, p1

    invoke-interface {v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->a(J)Z

    move-result v5

    and-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->c()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x0

    new-array v3, v4, [I

    new-array v4, v4, [I

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    array-length v7, v7

    move-wide v8, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v7, :cond_8

    iget-object v10, v1, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    aget-object v10, v10, v5

    invoke-interface {v10}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->c()I

    move-result v11

    move-wide v12, v8

    move v8, v6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v11, :cond_7

    invoke-interface {v10, v6}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->a(I)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v9

    :try_start_0
    invoke-virtual {v1, v9}, Lcom/google/ads/interactivemedia/v3/internal/bo;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)Z

    move-result v14
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/bh$b; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v15, -0x1

    if-eqz v14, :cond_6

    aput v5, v3, v8

    aput v6, v4, v8

    add-int/lit8 v8, v8, 0x1

    cmp-long v14, v12, v15

    if-nez v14, :cond_3

    goto :goto_4

    :cond_3
    move-object/from16 v17, v3

    iget-wide v2, v9, Lcom/google/ads/interactivemedia/v3/internal/bj;->e:J

    cmp-long v9, v2, v15

    if-nez v9, :cond_4

    move-wide v12, v15

    goto :goto_5

    :cond_4
    const-wide/16 v14, -0x2

    cmp-long v9, v2, v14

    if-nez v9, :cond_5

    goto :goto_5

    :cond_5
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    goto :goto_5

    :cond_6
    :goto_4
    move-object/from16 v17, v3

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v17

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/az;

    invoke-direct {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/az;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    move-object/from16 v17, v3

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    move-wide v8, v12

    goto :goto_2

    :cond_8
    move-object/from16 v17, v3

    iput-wide v8, v1, Lcom/google/ads/interactivemedia/v3/internal/bo;->f:J

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/bo;->b:[I

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/bo;->c:[I

    const/4 v0, 0x1

    return v0
.end method

.method protected d(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bo;->e(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->b(J)V

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bo;->b(J)J

    return-void
.end method

.method protected e(J)J
    .locals 0

    return-wide p1
.end method

.method protected g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->e:I

    invoke-interface {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->c(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    return-void
.end method

.method protected q()J
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method protected r()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->f:J

    return-wide v0
.end method

.method protected s()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->d:Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bo;->a(Lcom/google/ads/interactivemedia/v3/internal/bn$a;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/bo;->a(Lcom/google/ads/interactivemedia/v3/internal/bn$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected t()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->a:[Lcom/google/ads/interactivemedia/v3/internal/bn$a;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/bn$a;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final u()I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bo;->c:[I

    array-length v0, v0

    return v0
.end method
