.class final Lcom/google/ads/interactivemedia/v3/internal/dz;
.super Lcom/google/ads/interactivemedia/v3/internal/du;
.source "IMASDK"


# instance fields
.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fm;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:J

.field private i:I

.field private j:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/du;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->d:I

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    const/4 v1, -0x1

    aput-byte v1, v0, p1

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fm;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/fm;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->c:Lcom/google/ads/interactivemedia/v3/internal/fm;

    return-void
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/fp;)V
    .locals 8

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-boolean v4, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->g:Z

    if-eqz v4, :cond_1

    aget-byte v4, v0, v1

    const/16 v7, 0xe0

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->g:Z

    if-eqz v4, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iput-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->g:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    aget-byte v0, v0, v1

    aput-byte v0, p1, v6

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    iput v6, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->d:I

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    return-void
.end method

.method private c(Lcom/google/ads/interactivemedia/v3/internal/fp;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v1

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    const/4 v3, 0x4

    rsub-int/lit8 v2, v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    move-object/from16 v5, p1

    invoke-virtual {v5, v2, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    if-ge v1, v3, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->c:Lcom/google/ads/interactivemedia/v3/internal/fm;

    invoke-static {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/fm;->a(ILcom/google/ads/interactivemedia/v3/internal/fm;)Z

    move-result v1

    const/4 v4, 0x1

    if-nez v1, :cond_1

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    iput v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->d:I

    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->c:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->i:I

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->f:Z

    if-nez v1, :cond_2

    const-wide/32 v5, 0xf4240

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->c:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fm;->g:I

    int-to-long v7, v1

    mul-long v7, v7, v5

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->c:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fm;->d:I

    int-to-long v5, v1

    div-long/2addr v7, v5

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->h:J

    const/4 v9, 0x0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->c:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget-object v10, v1, Lcom/google/ads/interactivemedia/v3/internal/fm;->b:Ljava/lang/String;

    const/4 v11, -0x1

    const/16 v12, 0x1000

    const-wide/16 v13, -0x1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->c:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v15, v1, Lcom/google/ads/interactivemedia/v3/internal/fm;->e:I

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->c:Lcom/google/ads/interactivemedia/v3/internal/fm;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fm;->d:I

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v16, v1

    invoke-static/range {v9 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v1

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-interface {v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    iput-boolean v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->f:Z

    :cond_2
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->b:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-interface {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dz;->d:I

    return-void
.end method

.method private d(Lcom/google/ads/interactivemedia/v3/internal/fp;)V
    .locals 8

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->i:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-interface {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->i:I

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->j:J

    const/4 v4, 0x1

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->i:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->j:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->j:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->d:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->e:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->g:Z

    return-void
.end method

.method public a(JZ)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->j:J

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fp;)V
    .locals 1

    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dz;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dz;->d(Lcom/google/ads/interactivemedia/v3/internal/fp;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dz;->c(Lcom/google/ads/interactivemedia/v3/internal/fp;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/dz;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 0

    return-void
.end method
