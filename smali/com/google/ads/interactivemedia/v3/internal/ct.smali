.class final Lcom/google/ads/interactivemedia/v3/internal/ct;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cs$a;


# instance fields
.field private final a:[J

.field private final b:[J

.field private final c:J


# direct methods
.method private constructor <init>([J[JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ct;->a:[J

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ct;->b:[J

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ct;->c:J

    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/fm;Lcom/google/ads/interactivemedia/v3/internal/fp;JJ)Lcom/google/ads/interactivemedia/v3/internal/ct;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v4

    const/4 v5, 0x0

    if-gtz v4, :cond_0

    return-object v5

    :cond_0
    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->d:I

    int-to-long v7, v4

    const-wide/32 v9, 0xf4240

    const/16 v4, 0x7d00

    if-lt v6, v4, :cond_1

    const/16 v4, 0x480

    goto :goto_0

    :cond_1
    const/16 v4, 0x240

    :goto_0
    int-to-long v11, v4

    mul-long v9, v9, v11

    int-to-long v11, v6

    invoke-static/range {v7 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    int-to-long v10, v0

    add-long v10, p2, v10

    add-int/lit8 v0, v4, 0x1

    new-array v12, v0, [J

    new-array v0, v0, [J

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    aput-wide v13, v12, v15

    aput-wide v10, v0, v15

    const/4 v13, 0x1

    :goto_1
    array-length v14, v12

    if-ge v13, v14, :cond_3

    packed-switch v9, :pswitch_data_0

    return-object v5

    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v14

    goto :goto_2

    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->j()I

    move-result v14

    goto :goto_2

    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v14

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v14

    :goto_2
    mul-int v14, v14, v8

    int-to-long v14, v14

    add-long/2addr v10, v14

    int-to-long v14, v13

    mul-long v14, v14, v6

    move-wide/from16 v16, v6

    int-to-long v5, v4

    div-long/2addr v14, v5

    aput-wide v14, v12, v13

    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-nez v5, :cond_2

    move-wide v5, v10

    goto :goto_3

    :cond_2
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_3
    aput-wide v5, v0, v13

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v6, v16

    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v6

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/ct;

    move-wide/from16 v2, v16

    invoke-direct {v1, v12, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ct;-><init>([J[JJ)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ct;->a:[J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ct;->b:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ct;->c:J

    return-wide v0
.end method

.method public b(J)J
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ct;->b:[J

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ct;->a:[J

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2, v2}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([JJZZ)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method
