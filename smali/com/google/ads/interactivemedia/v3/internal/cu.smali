.class final Lcom/google/ads/interactivemedia/v3/internal/cu;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cs$a;


# instance fields
.field private final a:J

.field private final b:J

.field private final c:J

.field private final d:[J

.field private final e:J

.field private final g:I


# direct methods
.method private constructor <init>(JJJ)V
    .locals 11

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/cu;-><init>(JJJ[JJI)V

    return-void
.end method

.method private constructor <init>(JJJ[JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->a:J

    iput-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->b:J

    iput-wide p5, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->c:J

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->d:[J

    iput-wide p8, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->e:J

    iput p10, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->g:I

    return-void
.end method

.method private a(I)J
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->b:J

    int-to-long v2, p1

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/fm;Lcom/google/ads/interactivemedia/v3/internal/fp;JJ)Lcom/google/ads/interactivemedia/v3/internal/cu;
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->g:I

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->d:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    int-to-long v3, v3

    add-long v6, p2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v3

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    int-to-long v8, v4

    int-to-long v10, v1

    const-wide/32 v12, 0xf4240

    mul-long v10, v10, v12

    int-to-long v12, v2

    invoke-static/range {v8 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v8

    const/4 v1, 0x6

    and-int/lit8 v2, v3, 0x6

    if-eq v2, v1, :cond_1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cu;

    move-object v5, v0

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/cu;-><init>(JJJ)V

    return-object v0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v1

    int-to-long v13, v1

    move-object/from16 v1, p1

    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    const/16 v2, 0x63

    new-array v12, v2, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v4

    int-to-long v4, v4

    aput-wide v4, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/cu;

    iget v15, v0, Lcom/google/ads/interactivemedia/v3/internal/fm;->c:I

    move-object v5, v1

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v15}, Lcom/google/ads/interactivemedia/v3/internal/cu;-><init>(JJJ[JJI)V

    return-object v1

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(J)J
    .locals 11

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/cu;->a()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->a:J

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_3

    :cond_0
    const-wide/high16 v3, 0x4070000000000000L    # 256.0

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->a:J

    sub-long/2addr p1, v5

    long-to-double p1, p1

    mul-double p1, p1, v3

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->e:J

    long-to-double v3, v3

    div-double/2addr p1, v3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->d:[J

    double-to-long v3, p1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v0, v3, v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([JJZZ)I

    move-result v0

    add-int/2addr v0, v6

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/cu;->a(I)J

    move-result-wide v3

    if-nez v0, :cond_1

    move-wide v7, v1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->d:[J

    add-int/lit8 v7, v0, -0x1

    aget-wide v7, v5, v7

    :goto_0
    const/16 v5, 0x63

    if-ne v0, v5, :cond_2

    const-wide/16 v9, 0x100

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->d:[J

    aget-wide v9, v5, v0

    :goto_1
    add-int/2addr v0, v6

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/cu;->a(I)J

    move-result-wide v5

    cmp-long v0, v9, v7

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    sub-long/2addr v5, v3

    long-to-double v0, v5

    long-to-double v5, v7

    sub-double/2addr p1, v5

    mul-double v0, v0, p1

    sub-long/2addr v9, v7

    long-to-double p1, v9

    div-double/2addr v0, p1

    double-to-long v1, v0

    :goto_2
    const/4 p1, 0x0

    add-long/2addr v3, v1

    return-wide v3

    :cond_4
    :goto_3
    return-wide v1
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->d:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->b:J

    return-wide v0
.end method

.method public b(J)J
    .locals 7

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/cu;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->a:J

    return-wide p1

    :cond_0
    long-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->b:J

    long-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x43800000    # 256.0f

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float p2, p1, p2

    if-ltz p2, :cond_2

    const/high16 v0, 0x43800000    # 256.0f

    goto :goto_1

    :cond_2
    float-to-int p2, p1

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->d:[J

    add-int/lit8 v1, p2, -0x1

    aget-wide v3, v0, v1

    long-to-float v0, v3

    :goto_0
    const/16 v1, 0x63

    if-ge p2, v1, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->d:[J

    aget-wide v2, v1, p2

    long-to-float v2, v2

    :cond_4
    sub-float/2addr v2, v0

    int-to-float p2, p2

    sub-float/2addr p1, p2

    mul-float v2, v2, p1

    add-float/2addr v0, v2

    :goto_1
    const-wide/high16 p1, 0x3f70000000000000L    # 0.00390625

    float-to-double v0, v0

    mul-double v0, v0, p1

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->e:J

    long-to-double p1, p1

    mul-double v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->a:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->c:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_5

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->c:J

    sub-long/2addr v3, v1

    goto :goto_2

    :cond_5
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->a:J

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->g:I

    int-to-long v5, v0

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/cu;->e:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v1

    :goto_2
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method
