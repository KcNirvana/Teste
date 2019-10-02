.class final Lcom/google/ads/interactivemedia/v3/internal/dv;
.super Lcom/google/ads/interactivemedia/v3/internal/du;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/dv$a;
    }
.end annotation


# static fields
.field private static final b:[D


# instance fields
.field private c:Z

.field private d:J

.field private final e:[Z

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/dv$a;

.field private g:Z

.field private h:J

.field private i:J

.field private j:Z

.field private k:Z

.field private l:J

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->b:[D

    return-void

    :array_0
    .array-data 8
        0x4037f9dcb5112287L    # 23.976023976023978
        0x4038000000000000L    # 24.0
        0x4039000000000000L    # 25.0
        0x403df853e2556b28L    # 29.97002997002997
        0x403e000000000000L    # 30.0
        0x4049000000000000L    # 50.0
        0x404df853e2556b28L    # 59.94005994005994
        0x404e000000000000L    # 60.0
    .end array-data
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/du;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    const/4 p1, 0x4

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->e:[Z

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dv$a;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dv$a;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->f:Lcom/google/ads/interactivemedia/v3/internal/dv$a;

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/dv$a;)Landroid/util/Pair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/dv$a;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/ads/interactivemedia/v3/internal/bj;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dv$a;->c:[B

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dv$a;->a:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    const/4 v2, 0x4

    aget-byte v3, v1, v2

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x5

    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x6

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v3, v2

    shr-int/lit8 v7, v5, 0x4

    or-int v14, v3, v7

    and-int/lit8 v3, v5, 0xf

    shl-int/lit8 v3, v3, 0x8

    or-int v15, v3, v6

    const/4 v3, 0x7

    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v2, v5, 0x4

    packed-switch v2, :pswitch_data_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    goto :goto_1

    :pswitch_0
    mul-int/lit8 v2, v15, 0x79

    int-to-float v2, v2

    mul-int/lit8 v5, v14, 0x64

    int-to-float v5, v5

    div-float/2addr v2, v5

    goto :goto_0

    :pswitch_1
    mul-int/lit8 v2, v15, 0x10

    int-to-float v2, v2

    mul-int/lit8 v5, v14, 0x9

    int-to-float v5, v5

    div-float/2addr v2, v5

    goto :goto_0

    :pswitch_2
    mul-int/lit8 v2, v15, 0x4

    int-to-float v2, v2

    mul-int/lit8 v5, v14, 0x3

    int-to-float v5, v5

    div-float/2addr v2, v5

    :goto_0
    move/from16 v18, v2

    :goto_1
    const/4 v8, 0x0

    const-string v9, "video/mpeg2"

    const/4 v10, -0x1

    const/4 v11, -0x1

    const-wide/16 v12, -0x1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v16

    const/16 v17, -0x1

    invoke-static/range {v8 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v2

    const-wide/16 v5, 0x0

    aget-byte v3, v1, v3

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_1

    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/dv;->b:[D

    array-length v7, v7

    if-ge v3, v7, :cond_1

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/dv;->b:[D

    aget-wide v6, v5, v3

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/dv$a;->b:I

    add-int/lit8 v0, v0, 0x9

    aget-byte v3, v1, v0

    and-int/lit8 v3, v3, 0x60

    shr-int/2addr v3, v4

    aget-byte v0, v1, v0

    and-int/lit8 v0, v0, 0x1f

    if-eq v3, v0, :cond_0

    int-to-double v3, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v8

    add-int/lit8 v0, v0, 0x1

    int-to-double v0, v0

    div-double/2addr v3, v0

    mul-double v6, v6, v3

    :cond_0
    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v6

    double-to-long v5, v0

    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->e:[Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a([Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->f:Lcom/google/ads/interactivemedia/v3/internal/dv$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dv$a;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->j:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->g:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->h:J

    return-void
.end method

.method public a(JZ)V
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long p3, p1, v0

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->j:Z

    iget-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->j:Z

    if-eqz p3, :cond_1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dv;->i:J

    :cond_1
    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fp;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v2

    if-lez v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v3

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->h:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->h:J

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    move v5, v2

    :goto_0
    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->e:[Z

    invoke-static {v4, v2, v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a([BII[Z)I

    move-result v2

    if-ne v2, v3, :cond_1

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->c:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->f:Lcom/google/ads/interactivemedia/v3/internal/dv$a;

    invoke-virtual {v1, v4, v5, v3}, Lcom/google/ads/interactivemedia/v3/internal/dv$a;->a([BII)V

    :cond_0
    return-void

    :cond_1
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    add-int/lit8 v7, v2, 0x3

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    iget-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->c:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_4

    sub-int v8, v2, v5

    if-lez v8, :cond_2

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->f:Lcom/google/ads/interactivemedia/v3/internal/dv$a;

    invoke-virtual {v11, v4, v5, v2}, Lcom/google/ads/interactivemedia/v3/internal/dv$a;->a([BII)V

    :cond_2
    if-gez v8, :cond_3

    neg-int v5, v8

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->f:Lcom/google/ads/interactivemedia/v3/internal/dv$a;

    invoke-virtual {v8, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/dv$a;->a(II)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->f:Lcom/google/ads/interactivemedia/v3/internal/dv$a;

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/dv;->a(Lcom/google/ads/interactivemedia/v3/internal/dv$a;)Landroid/util/Pair;

    move-result-object v5

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object v11, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/ads/interactivemedia/v3/internal/bj;

    invoke-interface {v8, v11}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iput-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->d:J

    iput-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->c:Z

    :cond_4
    iget-boolean v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->c:Z

    if-eqz v5, :cond_9

    const/16 v5, 0xb8

    if-eq v6, v5, :cond_5

    if-nez v6, :cond_9

    :cond_5
    sub-int v8, v3, v2

    iget-boolean v11, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->g:Z

    if-eqz v11, :cond_6

    iget-boolean v14, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->k:Z

    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->h:J

    move/from16 v18, v6

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->l:J

    sub-long/2addr v11, v5

    long-to-int v5, v11

    sub-int v15, v5, v8

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-wide v12, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->m:J

    const/16 v17, 0x0

    move/from16 v16, v8

    invoke-interface/range {v11 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(JIII[B)V

    iput-boolean v10, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->k:Z

    move/from16 v5, v18

    goto :goto_2

    :cond_6
    move v5, v6

    :goto_2
    const/16 v6, 0xb8

    if-ne v5, v6, :cond_7

    iput-boolean v10, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->g:Z

    iput-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->k:Z

    goto :goto_4

    :cond_7
    iget-boolean v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->j:Z

    if-eqz v5, :cond_8

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->i:J

    goto :goto_3

    :cond_8
    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->m:J

    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->d:J

    add-long/2addr v5, v11

    :goto_3
    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->m:J

    iget-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->h:J

    int-to-long v11, v8

    sub-long/2addr v5, v11

    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->l:J

    iput-boolean v10, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->j:Z

    iput-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/dv;->g:Z

    :cond_9
    :goto_4
    move v5, v2

    move v2, v7

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
