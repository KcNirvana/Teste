.class final Lcom/google/ads/interactivemedia/v3/internal/dx;
.super Lcom/google/ads/interactivemedia/v3/internal/du;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/dx$a;
    }
.end annotation


# instance fields
.field private b:Z

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ed;

.field private final d:[Z

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/ea;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/ea;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/ea;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/ea;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/ea;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/dx$a;

.field private k:J

.field private l:J

.field private final m:Lcom/google/ads/interactivemedia/v3/internal/fp;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Lcom/google/ads/interactivemedia/v3/internal/ed;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/du;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->c:Lcom/google/ads/interactivemedia/v3/internal/ed;

    const/4 p2, 0x3

    new-array p2, p2, [Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->d:[Z

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ea;

    const/16 v0, 0x80

    const/16 v1, 0x20

    invoke-direct {p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;-><init>(II)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->e:Lcom/google/ads/interactivemedia/v3/internal/ea;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ea;

    const/16 v1, 0x21

    invoke-direct {p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;-><init>(II)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->f:Lcom/google/ads/interactivemedia/v3/internal/ea;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ea;

    const/16 v1, 0x22

    invoke-direct {p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;-><init>(II)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->g:Lcom/google/ads/interactivemedia/v3/internal/ea;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ea;

    const/16 v1, 0x27

    invoke-direct {p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;-><init>(II)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->h:Lcom/google/ads/interactivemedia/v3/internal/ea;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/ea;

    const/16 v1, 0x28

    invoke-direct {p2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;-><init>(II)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->i:Lcom/google/ads/interactivemedia/v3/internal/ea;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/dx$a;

    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/dx$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->j:Lcom/google/ads/interactivemedia/v3/internal/dx$a;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->m:Lcom/google/ads/interactivemedia/v3/internal/fp;

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/ea;Lcom/google/ads/interactivemedia/v3/internal/ea;Lcom/google/ads/interactivemedia/v3/internal/ea;)Lcom/google/ads/interactivemedia/v3/internal/bj;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    iget v4, v1, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    add-int/2addr v3, v4

    iget v4, v2, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    add-int/2addr v3, v4

    new-array v3, v3, [B

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:[B

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:[B

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    iget v7, v1, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    invoke-static {v4, v6, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, v2, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:[B

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    add-int/2addr v0, v5

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    invoke-static {v4, v6, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:[B

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    invoke-static {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a([BI)I

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fo;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:[B

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>([B)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v2

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    const/16 v5, 0x58

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v2, :cond_2

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v8, v8, 0x59

    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v9

    if-eqz v9, :cond_1

    add-int/lit8 v8, v8, 0x8

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    const/4 v7, 0x2

    if-lez v2, :cond_3

    rsub-int/lit8 v8, v2, 0x8

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v0, v8}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    :cond_3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v8

    if-ne v8, v1, :cond_4

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    :cond_4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v9

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v10

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v11

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v12

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v13

    if-eq v8, v4, :cond_6

    if-ne v8, v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v14, 0x1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v14, 0x2

    :goto_2
    if-ne v8, v4, :cond_7

    const/4 v8, 0x2

    goto :goto_3

    :cond_7
    const/4 v8, 0x1

    :goto_3
    add-int/2addr v10, v11

    mul-int v14, v14, v10

    sub-int/2addr v1, v14

    add-int/2addr v12, v13

    mul-int v8, v8, v12

    sub-int/2addr v9, v8

    :cond_8
    move/from16 v16, v1

    move/from16 v17, v9

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    goto :goto_4

    :cond_9
    move v8, v2

    :goto_4
    if-gt v8, v2, :cond_a

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->a(Lcom/google/ads/interactivemedia/v3/internal/fo;)V

    :cond_b
    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    :cond_c
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->b(Lcom/google/ads/interactivemedia/v3/internal/fo;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v2

    if-eqz v2, :cond_d

    :goto_5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v2

    if-ge v6, v2, :cond_d

    add-int/lit8 v2, v1, 0x4

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {v0, v7}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v2

    const/16 v4, 0xff

    if-ne v2, v4, :cond_f

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v4

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v0

    if-eqz v4, :cond_e

    if-eqz v0, :cond_e

    int-to-float v1, v4

    int-to-float v0, v0

    div-float/2addr v1, v0

    :cond_e
    move/from16 v20, v1

    goto :goto_6

    :cond_f
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fn;->b:[F

    array-length v0, v0

    if-ge v2, v0, :cond_10

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/fn;->b:[F

    aget v0, v0, v2

    move/from16 v20, v0

    goto :goto_6

    :cond_10
    const-string v0, "H265Reader"

    const/16 v4, 0x2e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/high16 v20, 0x3f800000    # 1.0f

    :goto_6
    const/4 v10, 0x0

    const-string v11, "video/hevc"

    const/4 v12, -0x1

    const/4 v13, -0x1

    const-wide/16 v14, -0x1

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    const/16 v19, -0x1

    invoke-static/range {v10 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    return-object v0
.end method

.method private a(JIIJ)V
    .locals 8

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->b:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->j:Lcom/google/ads/interactivemedia/v3/internal/dx$a;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/dx$a;->a(JIIJ)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->e:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->f:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->g:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a(I)V

    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->h:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->i:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a(I)V

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fo;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_5

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-ge v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    goto :goto_3

    :cond_0
    const/16 v4, 0x40

    shl-int/lit8 v6, v1, 0x1

    add-int/2addr v6, v2

    shl-int v6, v5, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-le v1, v5, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->e()I

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->e()I

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    goto :goto_4

    :cond_3
    const/4 v4, 0x1

    :goto_4
    add-int/2addr v3, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a([BII)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->j:Lcom/google/ads/interactivemedia/v3/internal/dx$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/dx$a;->a([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->e:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->f:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->g:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a([BII)V

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->h:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->i:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a([BII)V

    return-void
.end method

.method private b(JIIJ)V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->j:Lcom/google/ads/interactivemedia/v3/internal/dx$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/dx$a;->a(JI)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->e:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->b(I)Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->f:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->b(I)Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->g:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->b(I)Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->e:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ea;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->f:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ea;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->g:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ea;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->e:Lcom/google/ads/interactivemedia/v3/internal/ea;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->f:Lcom/google/ads/interactivemedia/v3/internal/ea;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->g:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-static {p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/dx;->a(Lcom/google/ads/interactivemedia/v3/internal/ea;Lcom/google/ads/interactivemedia/v3/internal/ea;Lcom/google/ads/interactivemedia/v3/internal/ea;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/bj;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->b:Z

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->h:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->b(I)Z

    move-result p1

    const/4 p2, 0x5

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->h:Lcom/google/ads/interactivemedia/v3/internal/ea;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:[B

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->h:Lcom/google/ads/interactivemedia/v3/internal/ea;

    iget p3, p3, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    invoke-static {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a([BI)I

    move-result p1

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->m:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->h:Lcom/google/ads/interactivemedia/v3/internal/ea;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:[B

    invoke-virtual {p3, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BI)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->m:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->c:Lcom/google/ads/interactivemedia/v3/internal/ed;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->m:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, p5, p6, p3}, Lcom/google/ads/interactivemedia/v3/internal/ed;->a(JLcom/google/ads/interactivemedia/v3/internal/fp;)V

    :cond_2
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->i:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {p1, p4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->b(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->i:Lcom/google/ads/interactivemedia/v3/internal/ea;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:[B

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->i:Lcom/google/ads/interactivemedia/v3/internal/ea;

    iget p3, p3, Lcom/google/ads/interactivemedia/v3/internal/ea;->b:I

    invoke-static {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a([BI)I

    move-result p1

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->m:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->i:Lcom/google/ads/interactivemedia/v3/internal/ea;

    iget-object p4, p4, Lcom/google/ads/interactivemedia/v3/internal/ea;->a:[B

    invoke-virtual {p3, p4, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BI)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->m:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->c:Lcom/google/ads/interactivemedia/v3/internal/ed;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->m:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {p1, p5, p6, p2}, Lcom/google/ads/interactivemedia/v3/internal/ed;->a(JLcom/google/ads/interactivemedia/v3/internal/fp;)V

    :cond_3
    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/fo;)V
    .locals 9

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v3

    :cond_0
    const/4 v5, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    const/4 v6, 0x0

    :goto_1
    if-gt v6, v4, :cond_5

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    move-result v6

    add-int v7, v4, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v4, :cond_3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->d()I

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    move v4, v7

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->d:[Z

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a([Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->e:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->f:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->g:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->h:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->i:Lcom/google/ads/interactivemedia/v3/internal/ea;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->j:Lcom/google/ads/interactivemedia/v3/internal/dx$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/dx$a;->a()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->k:J

    return-void
.end method

.method public a(JZ)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/dx;->l:J

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fp;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c()I

    move-result v9

    iget-object v10, v8, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget-wide v1, v7, Lcom/google/ads/interactivemedia/v3/internal/dx;->k:J

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v7, Lcom/google/ads/interactivemedia/v3/internal/dx;->k:J

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/dx;->a:Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v2

    invoke-interface {v1, v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)V

    :goto_0
    if-ge v0, v9, :cond_0

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/dx;->d:[Z

    invoke-static {v10, v0, v9, v1}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a([BII[Z)I

    move-result v11

    if-ne v11, v9, :cond_1

    invoke-direct {v7, v10, v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/dx;->a([BII)V

    return-void

    :cond_1
    invoke-static {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/fn;->c([BI)I

    move-result v12

    sub-int v1, v11, v0

    if-lez v1, :cond_2

    invoke-direct {v7, v10, v0, v11}, Lcom/google/ads/interactivemedia/v3/internal/dx;->a([BII)V

    :cond_2
    sub-int v13, v9, v11

    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/internal/dx;->k:J

    int-to-long v4, v13

    sub-long v14, v2, v4

    if-gez v1, :cond_3

    neg-int v0, v1

    move v4, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-wide v5, v7, Lcom/google/ads/interactivemedia/v3/internal/dx;->l:J

    move-object/from16 v0, p0

    move-wide v1, v14

    move v3, v13

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/dx;->b(JIIJ)V

    iget-wide v5, v7, Lcom/google/ads/interactivemedia/v3/internal/dx;->l:J

    move v4, v12

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/dx;->a(JIIJ)V

    add-int/lit8 v0, v11, 0x3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
