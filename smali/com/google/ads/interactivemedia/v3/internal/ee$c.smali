.class Lcom/google/ads/interactivemedia/v3/internal/ee$c;
.super Lcom/google/ads/interactivemedia/v3/internal/ee$d;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ee;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/fo;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fp;

.field private final d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ee;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ee$d;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ee$1;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v0, 0x5

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->d:I

    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)I
    .locals 8

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v0

    add-int/2addr v0, p2

    const/4 p2, -0x1

    :goto_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v1

    const/16 v2, 0x87

    const/16 v3, 0x81

    if-ge v1, v0, :cond_6

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v4

    const/4 v5, 0x5

    if-ne v1, v5, :cond_2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v4

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_0

    const/16 p2, 0x81

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ee;->d()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    const/16 p2, 0x87

    goto :goto_2

    :cond_1
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ee;->e()J

    move-result-wide v1

    cmp-long v1, v4, v1

    if-nez v1, :cond_6

    const/16 p2, 0x24

    goto :goto_2

    :cond_2
    const/16 v5, 0x6a

    if-ne v1, v5, :cond_3

    const/16 p2, 0x81

    goto :goto_1

    :cond_3
    const/16 v3, 0x7a

    if-ne v1, v3, :cond_4

    const/16 p2, 0x87

    goto :goto_1

    :cond_4
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_5

    const/16 p2, 0x8a

    :cond_5
    :goto_1
    invoke-virtual {p1, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    goto :goto_0

    :cond_6
    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    return p2
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fp;ZLcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x3

    const/16 v4, 0xc

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a(Lcom/google/ads/interactivemedia/v3/internal/fo;I)V

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v6

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->e:I

    iput v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->f:I

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    const/4 v7, -0x1

    invoke-static {v6, v5, v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([BIII)I

    move-result v6

    iput v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->g:I

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->e:I

    invoke-virtual {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a(I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v6

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->e:I

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->f:I

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v7, v7, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->f:I

    invoke-virtual {v1, v7, v8, v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->f:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->f:I

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->f:I

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->e:I

    if-ge v1, v6, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->e:I

    iget v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->g:I

    invoke-static {v1, v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([BIII)I

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v7, 0x2

    invoke-virtual {v1, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a(Lcom/google/ads/interactivemedia/v3/internal/fo;I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v1

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v8

    and-int/lit8 v8, v8, 0x10

    const/16 v9, 0x15

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/ee;->c:Lcom/google/ads/interactivemedia/v3/internal/dy;

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/dy;

    invoke-interface {v2, v9}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/dy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iput-object v10, v8, Lcom/google/ads/interactivemedia/v3/internal/ee;->c:Lcom/google/ads/interactivemedia/v3/internal/dy;

    :cond_3
    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->e:I

    add-int/lit8 v8, v8, -0x9

    sub-int/2addr v8, v1

    sub-int/2addr v8, v6

    :goto_0
    const/4 v1, 0x1

    if-lez v8, :cond_13

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a(Lcom/google/ads/interactivemedia/v3/internal/fo;I)V

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v10

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v12, v3}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/16 v13, 0xd

    invoke-virtual {v12, v13}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v12

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v13, v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->b:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v13, v4}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v13

    const/4 v14, 0x6

    if-ne v10, v14, :cond_4

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {v0, v10, v13}, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)I

    move-result v10

    goto :goto_1

    :cond_4
    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->c:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-virtual {v14, v13}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :goto_1
    add-int/lit8 v13, v13, 0x5

    sub-int/2addr v8, v13

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v13}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v13

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_5

    move v13, v10

    goto :goto_2

    :cond_5
    move v13, v12

    :goto_2
    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    iget-object v14, v14, Lcom/google/ads/interactivemedia/v3/internal/ee;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v14

    if-eqz v14, :cond_6

    goto/16 :goto_6

    :cond_6
    const/16 v14, 0xf

    const/4 v15, 0x0

    if-eq v10, v14, :cond_10

    if-eq v10, v9, :cond_e

    const/16 v14, 0x1b

    if-eq v10, v14, :cond_a

    const/16 v11, 0x24

    if-eq v10, v11, :cond_9

    const/16 v11, 0x87

    if-eq v10, v11, :cond_8

    const/16 v11, 0x8a

    if-eq v10, v11, :cond_7

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_0
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/dq;

    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v10

    invoke-direct {v15, v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/dq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Z)V

    goto/16 :goto_5

    :pswitch_1
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/dz;

    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v10

    invoke-direct {v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/dz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    goto/16 :goto_5

    :pswitch_2
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/dz;

    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v10

    invoke-direct {v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/dz;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    goto/16 :goto_5

    :pswitch_3
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/dv;

    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v10

    invoke-direct {v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/dv;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    goto/16 :goto_5

    :cond_7
    :pswitch_4
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/dt;

    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v10

    invoke-direct {v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    goto/16 :goto_5

    :cond_8
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/dq;

    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v10

    invoke-direct {v15, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/dq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Z)V

    goto/16 :goto_5

    :cond_9
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/dx;

    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v10

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/ed;

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/ee;->b(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v14

    invoke-interface {v2, v14}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v14

    invoke-direct {v11, v14}, Lcom/google/ads/interactivemedia/v3/internal/ed;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    invoke-direct {v15, v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/dx;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Lcom/google/ads/interactivemedia/v3/internal/ed;)V

    goto/16 :goto_5

    :cond_a
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v10

    and-int/2addr v10, v6

    if-eqz v10, :cond_b

    goto/16 :goto_5

    :cond_b
    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/dw;

    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v14

    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/ed;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ee;->b(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/google/ads/interactivemedia/v3/internal/ed;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    goto :goto_3

    :cond_c
    const/4 v3, 0x0

    :goto_3
    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v4

    and-int/2addr v4, v11

    if-eqz v4, :cond_d

    const/4 v4, 0x1

    goto :goto_4

    :cond_d
    const/4 v4, 0x0

    :goto_4
    invoke-direct {v10, v14, v15, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/dw;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Lcom/google/ads/interactivemedia/v3/internal/ed;ZZ)V

    move-object v15, v10

    goto :goto_5

    :cond_e
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    iget-object v15, v3, Lcom/google/ads/interactivemedia/v3/internal/ee;->c:Lcom/google/ads/interactivemedia/v3/internal/dy;

    goto :goto_5

    :cond_f
    new-instance v15, Lcom/google/ads/interactivemedia/v3/internal/dy;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ee;->b(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/google/ads/interactivemedia/v3/internal/dy;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    goto :goto_5

    :cond_10
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v3

    and-int/2addr v3, v7

    if-eqz v3, :cond_11

    goto :goto_5

    :cond_11
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ds;

    invoke-interface {v2, v13}, Lcom/google/ads/interactivemedia/v3/internal/ce;->d(I)Lcom/google/ads/interactivemedia/v3/internal/ck;

    move-result-object v4

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/cb;

    invoke-direct {v10}, Lcom/google/ads/interactivemedia/v3/internal/cb;-><init>()V

    invoke-direct {v3, v4, v10}, Lcom/google/ads/interactivemedia/v3/internal/ds;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ck;Lcom/google/ads/interactivemedia/v3/internal/ck;)V

    move-object v15, v3

    :goto_5
    if-eqz v15, :cond_12

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ee;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v13, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ee;->a:Landroid/util/SparseArray;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ee$b;

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/ee;->c(Lcom/google/ads/interactivemedia/v3/internal/ee;)Lcom/google/ads/interactivemedia/v3/internal/ec;

    move-result-object v4

    invoke-direct {v3, v15, v4}, Lcom/google/ads/interactivemedia/v3/internal/ee$b;-><init>(Lcom/google/ads/interactivemedia/v3/internal/du;Lcom/google/ads/interactivemedia/v3/internal/ec;)V

    invoke-virtual {v1, v12, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_12
    :goto_6
    const/4 v3, 0x3

    const/16 v4, 0xc

    goto/16 :goto_0

    :cond_13
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/ee;)I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_14

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ee;->d(Lcom/google/ads/interactivemedia/v3/internal/ee;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-interface/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    goto :goto_7

    :cond_14
    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ee;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->remove(I)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ee;->a:Landroid/util/SparseArray;

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->d:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    invoke-interface/range {p3 .. p3}, Lcom/google/ads/interactivemedia/v3/internal/ce;->f()V

    :cond_15
    :goto_7
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ee$c;->a:Lcom/google/ads/interactivemedia/v3/internal/ee;

    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ee;->a(Lcom/google/ads/interactivemedia/v3/internal/ee;Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x81
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
