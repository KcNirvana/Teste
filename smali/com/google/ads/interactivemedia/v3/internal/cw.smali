.class final Lcom/google/ads/interactivemedia/v3/internal/cw;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/cw$f;,
        Lcom/google/ads/interactivemedia/v3/internal/cw$e;,
        Lcom/google/ads/interactivemedia/v3/internal/cw$c;,
        Lcom/google/ads/interactivemedia/v3/internal/cw$a;,
        Lcom/google/ads/interactivemedia/v3/internal/cw$d;,
        Lcom/google/ads/interactivemedia/v3/internal/cw$g;,
        Lcom/google/ads/interactivemedia/v3/internal/cw$b;
    }
.end annotation


# static fields
.field private static final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "cenc"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->c(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/ads/interactivemedia/v3/internal/cw;->a:I

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;II)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->J:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;IILcom/google/ads/interactivemedia/v3/internal/cw$d;I)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v0

    :goto_0
    sub-int v1, v0, p1

    const/4 v2, 0x0

    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string v3, "childAtomSize should be positive"

    invoke-static {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->V:I

    if-ne v2, v3, :cond_1

    invoke-static {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cw;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, p3, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->a:[Lcom/google/ads/interactivemedia/v3/internal/de;

    iget-object p1, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/de;

    aput-object p1, p0, p4

    iget-object p0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/cv$a;",
            ")",
            "Landroid/util/Pair<",
            "[J[J>;"
        }
    .end annotation

    if-eqz p0, :cond_5

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->Q:I

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->o()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->i()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_3
    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/cv$b;Z)Lcom/google/ads/interactivemedia/v3/internal/cg;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v1

    if-lt v1, p1, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->aA:I

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b(I)V

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/cg;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v1, v1, -0x8

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/cg;
    .locals 4

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->aB:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BI)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cw;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/cg;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Lcom/google/ads/interactivemedia/v3/internal/cw$a;
    .locals 7

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p1

    const/4 v0, 0x3

    and-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    if-eq p1, v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v2

    and-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)[B

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    if-lez v2, :cond_2

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>([B)V

    add-int/lit8 v1, p1, 0x1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a(I)V

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a(Lcom/google/ads/interactivemedia/v3/internal/fo;)Lcom/google/ads/interactivemedia/v3/internal/fn$b;

    move-result-object p0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fn$b;->d:F

    :cond_2
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/cw$a;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/cw$a;-><init>(Ljava/util/List;IF)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;IJILjava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/cw$d;
    .locals 18

    move-object/from16 v11, p0

    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v12

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/cw$d;

    invoke-direct {v13, v12}, Lcom/google/ads/interactivemedia/v3/internal/cw$d;-><init>(I)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v17

    if-lez v17, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "childAtomSize should be positive"

    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->b:I

    if-eq v1, v0, :cond_9

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->c:I

    if-eq v1, v0, :cond_9

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->Z:I

    if-eq v1, v0, :cond_9

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->al:I

    if-eq v1, v0, :cond_9

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->d:I

    if-eq v1, v0, :cond_9

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->e:I

    if-eq v1, v0, :cond_9

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->f:I

    if-eq v1, v0, :cond_9

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->aJ:I

    if-eq v1, v0, :cond_9

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->aK:I

    if-ne v1, v0, :cond_1

    goto/16 :goto_3

    :cond_1
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->i:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->aa:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->n:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->p:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->r:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->u:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->s:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->t:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ax:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->ay:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->l:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->m:I

    if-eq v1, v0, :cond_8

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->j:I

    if-ne v1, v0, :cond_2

    goto/16 :goto_2

    :cond_2
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->aj:I

    if-ne v1, v0, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/ttml+xml"

    const/4 v4, -0x1

    move-wide/from16 v5, p2

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    iput-object v0, v13, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    goto/16 :goto_4

    :cond_3
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->au:I

    if-ne v1, v0, :cond_4

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/x-quicktime-tx3g"

    const/4 v4, -0x1

    move-wide/from16 v5, p2

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    iput-object v0, v13, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    goto/16 :goto_4

    :cond_4
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->av:I

    if-ne v1, v0, :cond_5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/x-mp4vtt"

    const/4 v4, -0x1

    move-wide/from16 v5, p2

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    iput-object v0, v13, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    goto :goto_4

    :cond_5
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->aw:I

    if-ne v1, v0, :cond_6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/ttml+xml"

    const/4 v4, -0x1

    const-wide/16 v8, 0x0

    move-wide/from16 v5, p2

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;J)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    iput-object v0, v13, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    goto :goto_4

    :cond_6
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/cv;->aM:I

    if-ne v1, v0, :cond_7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-camera-motion"

    const/4 v2, -0x1

    move-wide/from16 v9, p2

    invoke-static {v0, v1, v2, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    iput-object v0, v13, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    goto :goto_4

    :cond_7
    move-wide/from16 v9, p2

    goto :goto_4

    :cond_8
    :goto_2
    move-wide/from16 v9, p2

    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object v9, v13

    move v10, v15

    invoke-static/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;IIIIJLjava/lang/String;ZLcom/google/ads/interactivemedia/v3/internal/cw$d;I)V

    goto :goto_4

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-object v8, v13

    move v9, v15

    invoke-static/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;IIIIJILcom/google/ads/interactivemedia/v3/internal/cw$d;I)V

    :goto_4
    add-int v0, v16, v17

    invoke-virtual {v11, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_0

    :cond_a
    return-object v13
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;Lcom/google/ads/interactivemedia/v3/internal/cv$b;JZ)Lcom/google/ads/interactivemedia/v3/internal/dd;
    .locals 23

    move-object/from16 v0, p0

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/cv;->E:I

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->e(I)Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    move-result-object v1

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/cv;->S:I

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/cw;->e(Lcom/google/ads/interactivemedia/v3/internal/fp;)I

    move-result v5

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/dd;->b:I

    const/4 v3, 0x0

    if-eq v5, v2, :cond_0

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/dd;->a:I

    if-eq v5, v2, :cond_0

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/dd;->c:I

    if-eq v5, v2, :cond_0

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/dd;->d:I

    if-eq v5, v2, :cond_0

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/dd;->e:I

    if-eq v5, v2, :cond_0

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/dd;->f:I

    if-eq v5, v2, :cond_0

    return-object v3

    :cond_0
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/cv;->O:I

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v2

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/cw;->d(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/cw$g;

    move-result-object v2

    const-wide/16 v6, -0x1

    cmp-long v4, p2, v6

    if-nez v4, :cond_1

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/cw$g;->a(Lcom/google/ads/interactivemedia/v3/internal/cw$g;)J

    move-result-wide v8

    move-object/from16 v4, p1

    goto :goto_0

    :cond_1
    move-object/from16 v4, p1

    move-wide/from16 v8, p2

    :goto_0
    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/cw;->c(Lcom/google/ads/interactivemedia/v3/internal/fp;)J

    move-result-wide v14

    cmp-long v4, v8, v6

    if-nez v4, :cond_2

    :goto_1
    move-wide v10, v6

    goto :goto_2

    :cond_2
    const-wide/32 v10, 0xf4240

    move-wide v12, v14

    invoke-static/range {v8 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v6

    goto :goto_1

    :goto_2
    sget v4, Lcom/google/ads/interactivemedia/v3/internal/cv;->F:I

    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->e(I)Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    move-result-object v4

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/cv;->G:I

    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->e(I)Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    move-result-object v4

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/cv;->R:I

    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v1

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cw;->f(Lcom/google/ads/interactivemedia/v3/internal/fp;)Landroid/util/Pair;

    move-result-object v1

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/cv;->T:I

    invoke-virtual {v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v4

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/cw$g;->b(Lcom/google/ads/interactivemedia/v3/internal/cw$g;)I

    move-result v17

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/cw$g;->c(Lcom/google/ads/interactivemedia/v3/internal/cw$g;)I

    move-result v20

    iget-object v6, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v6

    check-cast v21, Ljava/lang/String;

    move-object/from16 v16, v4

    move-wide/from16 v18, v10

    move/from16 v22, p4

    invoke-static/range {v16 .. v22}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;IJILjava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/cw$d;

    move-result-object v4

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/cv;->P:I

    invoke-virtual {v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->e(I)Lcom/google/ads/interactivemedia/v3/internal/cv$a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/cv$a;)Landroid/util/Pair;

    move-result-object v0

    iget-object v6, v4, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    if-nez v6, :cond_3

    move-object/from16 v17, v3

    goto :goto_3

    :cond_3
    new-instance v17, Lcom/google/ads/interactivemedia/v3/internal/dd;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/cw$g;->b(Lcom/google/ads/interactivemedia/v3/internal/cw$g;)I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v12, v4, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget-object v13, v4, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->a:[Lcom/google/ads/interactivemedia/v3/internal/de;

    iget v1, v4, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->c:I

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v3

    check-cast v16, [J

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    move-object/from16 v3, v17

    move v4, v2

    move-wide v8, v14

    move v14, v1

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    invoke-direct/range {v3 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/dd;-><init>(IIJJJLcom/google/ads/interactivemedia/v3/internal/bj;[Lcom/google/ads/interactivemedia/v3/internal/de;I[J[J)V

    :goto_3
    return-object v17
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/dd;Lcom/google/ads/interactivemedia/v3/internal/cv$a;)Lcom/google/ads/interactivemedia/v3/internal/dg;
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bl;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/cv;->aq:I

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/cw$e;

    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/cw$e;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cv$b;)V

    goto :goto_0

    :cond_0
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/cv;->ar:I

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v2

    if-eqz v2, :cond_2b

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/cw$f;

    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/cw$f;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cv$b;)V

    :goto_0
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/cw$c;->a()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dg;

    new-array v6, v4, [J

    new-array v7, v4, [I

    const/4 v8, 0x0

    new-array v9, v4, [J

    new-array v10, v4, [I

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/dg;-><init>([J[II[J[I)V

    return-object v0

    :cond_1
    sget v5, Lcom/google/ads/interactivemedia/v3/internal/cv;->as:I

    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    sget v5, Lcom/google/ads/interactivemedia/v3/internal/cv;->at:I

    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v5

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    sget v8, Lcom/google/ads/interactivemedia/v3/internal/cv;->ap:I

    invoke-virtual {v1, v8}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v8

    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    sget v9, Lcom/google/ads/interactivemedia/v3/internal/cv;->am:I

    invoke-virtual {v1, v9}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v9

    iget-object v9, v9, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    sget v10, Lcom/google/ads/interactivemedia/v3/internal/cv;->an:I

    invoke-virtual {v1, v10}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v10

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    iget-object v10, v10, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    goto :goto_2

    :cond_3
    move-object v10, v11

    :goto_2
    sget v12, Lcom/google/ads/interactivemedia/v3/internal/cv;->ao:I

    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/cv$a;->d(I)Lcom/google/ads/interactivemedia/v3/internal/cv$b;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cv$b;->aP:Lcom/google/ads/interactivemedia/v3/internal/fp;

    goto :goto_3

    :cond_4
    move-object v1, v11

    :goto_3
    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/cw$b;

    invoke-direct {v12, v8, v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/cw$b;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/fp;Z)V

    const/16 v5, 0xc

    invoke-virtual {v9, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v8

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v13

    if-eqz v1, :cond_5

    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v14

    goto :goto_4

    :cond_5
    const/4 v14, 0x0

    :goto_4
    const/4 v15, -0x1

    if-eqz v10, :cond_7

    invoke-virtual {v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v11

    add-int/lit8 v15, v11, -0x1

    goto :goto_5

    :cond_6
    move-object v10, v11

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    :goto_5
    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/cw$c;->c()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string v11, "audio/raw"

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->l:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-nez v7, :cond_8

    if-nez v14, :cond_8

    if-nez v5, :cond_8

    const/4 v4, 0x1

    goto :goto_6

    :cond_8
    const/4 v4, 0x0

    :goto_6
    const-wide/16 v17, 0x0

    if-nez v4, :cond_16

    new-array v4, v2, [J

    new-array v11, v2, [I

    new-array v6, v2, [J

    move/from16 v20, v5

    new-array v5, v2, [I

    move-object/from16 v28, v9

    move/from16 v24, v14

    move-wide/from16 v22, v17

    move/from16 v0, v20

    const/4 v14, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move v9, v7

    move-wide/from16 v20, v22

    const/4 v7, 0x0

    move/from16 v43, v13

    move v13, v8

    move/from16 v8, v43

    :goto_7
    if-ge v7, v2, :cond_10

    :goto_8
    if-nez v26, :cond_9

    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->a()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    move/from16 v29, v8

    move/from16 v30, v9

    iget-wide v8, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->d:J

    move-wide/from16 v31, v8

    iget v8, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->c:I

    move/from16 v26, v8

    move/from16 v8, v29

    move/from16 v9, v30

    move-wide/from16 v20, v31

    goto :goto_8

    :cond_9
    move/from16 v29, v8

    move/from16 v30, v9

    if-eqz v1, :cond_b

    :goto_9
    if-nez v27, :cond_a

    if-lez v24, :cond_a

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v27

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v25

    add-int/lit8 v24, v24, -0x1

    goto :goto_9

    :cond_a
    add-int/lit8 v27, v27, -0x1

    :cond_b
    move/from16 v8, v25

    aput-wide v20, v4, v7

    invoke-interface {v3}, Lcom/google/ads/interactivemedia/v3/internal/cw$c;->b()I

    move-result v9

    aput v9, v11, v7

    aget v9, v11, v7

    if-le v9, v14, :cond_c

    aget v9, v11, v7

    move/from16 v34, v2

    move-object/from16 v33, v3

    move v14, v9

    goto :goto_a

    :cond_c
    move/from16 v34, v2

    move-object/from16 v33, v3

    :goto_a
    int-to-long v2, v8

    add-long v2, v22, v2

    aput-wide v2, v6, v7

    if-nez v10, :cond_d

    const/4 v2, 0x1

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    :goto_b
    aput v2, v5, v7

    if-ne v7, v15, :cond_e

    const/4 v2, 0x1

    aput v2, v5, v7

    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_e

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v3

    sub-int/2addr v3, v2

    move/from16 v35, v0

    move v15, v3

    goto :goto_c

    :cond_e
    move/from16 v35, v0

    :goto_c
    move/from16 v0, v29

    int-to-long v2, v0

    add-long v22, v22, v2

    add-int/lit8 v13, v13, -0x1

    if-nez v13, :cond_f

    if-lez v30, :cond_f

    invoke-virtual/range {v28 .. v28}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v2

    add-int/lit8 v9, v30, -0x1

    move v13, v0

    move v0, v2

    goto :goto_d

    :cond_f
    move/from16 v9, v30

    :goto_d
    aget v2, v11, v7

    int-to-long v2, v2

    add-long v20, v20, v2

    add-int/lit8 v26, v26, -0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v25, v8

    move-object/from16 v3, v33

    move/from16 v2, v34

    move v8, v0

    move/from16 v0, v35

    goto/16 :goto_7

    :cond_10
    move/from16 v34, v2

    move/from16 v30, v9

    if-nez v27, :cond_11

    const/4 v2, 0x1

    goto :goto_e

    :cond_11
    const/4 v2, 0x0

    :goto_e
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Z)V

    :goto_f
    if-lez v24, :cond_13

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_10

    :cond_12
    const/4 v2, 0x0

    :goto_10
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Z)V

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    add-int/lit8 v24, v24, -0x1

    goto :goto_f

    :cond_13
    if-nez v0, :cond_15

    if-nez v13, :cond_15

    if-nez v26, :cond_15

    if-eqz v30, :cond_14

    goto :goto_11

    :cond_14
    move-object/from16 v0, p0

    goto :goto_12

    :cond_15
    :goto_11
    const-string v1, "AtomParsers"

    move v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->g:I

    const/16 v7, 0xd7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Inconsistent stbl box for track "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": remainingSynchronizationSamples "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingSamplesInChunk "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v26

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", remainingTimestampDeltaChanges "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v30

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    move/from16 v23, v14

    goto :goto_14

    :cond_16
    move/from16 v34, v2

    move-object/from16 v33, v3

    iget v1, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->a:I

    new-array v1, v1, [J

    iget v2, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->a:I

    new-array v2, v2, [I

    :goto_13
    invoke-virtual {v12}, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->a()Z

    move-result v3

    if-eqz v3, :cond_17

    iget v3, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->b:I

    iget-wide v4, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->d:J

    aput-wide v4, v1, v3

    iget v3, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->b:I

    iget v4, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$b;->c:I

    aput v4, v2, v3

    goto :goto_13

    :cond_17
    invoke-interface/range {v33 .. v33}, Lcom/google/ads/interactivemedia/v3/internal/cw$c;->b()I

    move-result v3

    int-to-long v4, v13

    invoke-static {v3, v1, v2, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(I[J[IJ)Lcom/google/ads/interactivemedia/v3/internal/cy$a;

    move-result-object v1

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/cy$a;->a:[J

    iget-object v11, v1, Lcom/google/ads/interactivemedia/v3/internal/cy$a;->b:[I

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/cy$a;->c:I

    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/cy$a;->d:[J

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/cy$a;->e:[I

    move/from16 v23, v2

    :goto_14
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    if-nez v1, :cond_18

    const-wide/32 v1, 0xf4240

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->i:J

    invoke-static {v6, v1, v2, v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([JJJ)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v22, v11

    move-object/from16 v24, v6

    move-object/from16 v25, v5

    invoke-direct/range {v20 .. v25}, Lcom/google/ads/interactivemedia/v3/internal/dg;-><init>([J[II[J[I)V

    return-object v0

    :cond_18
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    const/16 v16, 0x0

    aget-wide v2, v1, v16

    cmp-long v1, v2, v17

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    :goto_15
    array-length v2, v6

    if-ge v1, v2, :cond_19

    aget-wide v2, v6, v1

    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->o:[J

    aget-wide v8, v7, v16

    sub-long v17, v2, v8

    const-wide/32 v19, 0xf4240

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->i:J

    move-wide/from16 v21, v2

    invoke-static/range {v17 .. v22}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v2

    aput-wide v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    const/16 v16, 0x0

    goto :goto_15

    :cond_19
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move-object/from16 v22, v11

    move-object/from16 v24, v6

    move-object/from16 v25, v5

    invoke-direct/range {v20 .. v25}, Lcom/google/ads/interactivemedia/v3/internal/dg;-><init>([J[II[J[I)V

    return-object v0

    :cond_1a
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_16
    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    array-length v8, v8

    const-wide/16 v9, -0x1

    if-ge v1, v8, :cond_1d

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->o:[J

    aget-wide v12, v8, v1

    cmp-long v8, v12, v9

    if-eqz v8, :cond_1c

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    aget-wide v24, v8, v1

    iget-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->i:J

    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->j:J

    move-wide/from16 v26, v8

    move-wide/from16 v28, v14

    invoke-static/range {v24 .. v29}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-static {v6, v12, v13, v10, v10}, Lcom/google/ads/interactivemedia/v3/internal/ft;->b([JJZZ)I

    move-result v14

    add-long/2addr v12, v8

    const/4 v8, 0x0

    invoke-static {v6, v12, v13, v10, v8}, Lcom/google/ads/interactivemedia/v3/internal/ft;->b([JJZZ)I

    move-result v9

    sub-int v8, v9, v14

    add-int/2addr v3, v8

    if-eq v7, v14, :cond_1b

    const/4 v7, 0x1

    goto :goto_17

    :cond_1b
    const/4 v7, 0x0

    :goto_17
    or-int/2addr v2, v7

    move v7, v9

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_1d
    move/from16 v1, v34

    if-eq v3, v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_18

    :cond_1e
    const/4 v1, 0x0

    :goto_18
    or-int/2addr v1, v2

    if-eqz v1, :cond_1f

    new-array v2, v3, [J

    goto :goto_19

    :cond_1f
    move-object v2, v4

    :goto_19
    if-eqz v1, :cond_20

    new-array v7, v3, [I

    goto :goto_1a

    :cond_20
    move-object v7, v11

    :goto_1a
    if-eqz v1, :cond_21

    const/16 v23, 0x0

    :cond_21
    if-eqz v1, :cond_22

    new-array v8, v3, [I

    goto :goto_1b

    :cond_22
    move-object v8, v5

    :goto_1b
    new-array v3, v3, [J

    move/from16 v27, v23

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1c
    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    array-length v14, v14

    if-ge v12, v14, :cond_27

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->o:[J

    aget-wide v9, v14, v12

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->n:[J

    aget-wide v28, v14, v12

    const-wide/16 v14, -0x1

    cmp-long v20, v9, v14

    if-eqz v20, :cond_26

    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->i:J

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->j:J

    move-wide/from16 v20, v28

    move-wide/from16 v22, v14

    move-wide/from16 v24, v7

    invoke-static/range {v20 .. v25}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v7

    add-long/2addr v7, v9

    const/4 v14, 0x1

    invoke-static {v6, v9, v10, v14, v14}, Lcom/google/ads/interactivemedia/v3/internal/ft;->b([JJZZ)I

    move-result v15

    move/from16 v38, v12

    const/4 v12, 0x0

    invoke-static {v6, v7, v8, v14, v12}, Lcom/google/ads/interactivemedia/v3/internal/ft;->b([JJZZ)I

    move-result v7

    if-eqz v1, :cond_23

    sub-int v8, v7, v15

    invoke-static {v4, v15, v2, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v14, v36

    invoke-static {v11, v15, v14, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v12, v37

    invoke-static {v5, v15, v12, v13, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1d

    :cond_23
    move-object/from16 v14, v36

    move-object/from16 v12, v37

    :goto_1d
    move/from16 v8, v27

    :goto_1e
    if-ge v15, v7, :cond_25

    const-wide/32 v22, 0xf4240

    move-object/from16 v39, v4

    move-object/from16 v40, v5

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->j:J

    move-wide/from16 v20, v17

    move-wide/from16 v24, v4

    invoke-static/range {v20 .. v25}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v4

    aget-wide v20, v6, v15

    sub-long v22, v20, v9

    const-wide/32 v24, 0xf4240

    move-object/from16 v41, v6

    move/from16 v42, v7

    iget-wide v6, v0, Lcom/google/ads/interactivemedia/v3/internal/dd;->i:J

    move-wide/from16 v26, v6

    invoke-static/range {v22 .. v27}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(JJJ)J

    move-result-wide v6

    add-long/2addr v4, v6

    aput-wide v4, v3, v13

    if-eqz v1, :cond_24

    aget v4, v14, v13

    if-le v4, v8, :cond_24

    aget v8, v11, v15

    :cond_24
    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v39

    move-object/from16 v5, v40

    move-object/from16 v6, v41

    move/from16 v7, v42

    goto :goto_1e

    :cond_25
    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-object/from16 v41, v6

    move/from16 v27, v8

    goto :goto_1f

    :cond_26
    move-object/from16 v39, v4

    move-object/from16 v40, v5

    move-object/from16 v41, v6

    move-object v14, v7

    move/from16 v38, v12

    move-object v12, v8

    :goto_1f
    const/4 v4, 0x0

    add-long v17, v17, v28

    add-int/lit8 v4, v38, 0x1

    move-object v8, v12

    move-object v7, v14

    move-object/from16 v5, v40

    move-object/from16 v6, v41

    const-wide/16 v9, -0x1

    move v12, v4

    move-object/from16 v4, v39

    goto/16 :goto_1c

    :cond_27
    move-object v14, v7

    move-object v12, v8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_20
    array-length v4, v12

    if-ge v0, v4, :cond_29

    if-nez v1, :cond_29

    aget v4, v12, v0

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    goto :goto_21

    :cond_28
    const/4 v4, 0x0

    :goto_21
    or-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_29
    if-eqz v1, :cond_2a

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dg;

    move-object/from16 v24, v0

    move-object/from16 v25, v2

    move-object/from16 v26, v14

    move-object/from16 v28, v3

    move-object/from16 v29, v12

    invoke-direct/range {v24 .. v29}, Lcom/google/ads/interactivemedia/v3/internal/dg;-><init>([J[II[J[I)V

    return-object v0

    :cond_2a
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v1, "The edited sample sequence does not contain a sync sample."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/bl;

    const-string v1, "Track has no sample table size information"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bl;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;IIIIJILcom/google/ads/interactivemedia/v3/internal/cw$d;I)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p8

    add-int/lit8 v5, v2, 0x8

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    const/16 v5, 0x18

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v13

    const/16 v5, 0x32

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v5

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/cv;->Z:I

    if-ne v1, v6, :cond_0

    move/from16 v6, p9

    invoke-static {v0, v2, v3, v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;IILcom/google/ads/interactivemedia/v3/internal/cw$d;I)I

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    :cond_0
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v14, v7

    move-object/from16 v17, v14

    const/4 v6, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v18, -0x1

    :goto_0
    sub-int v9, v5, v2

    if-ge v9, v3, :cond_11

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v11

    sub-int/2addr v11, v2

    if-ne v11, v3, :cond_1

    goto/16 :goto_8

    :cond_1
    if-lez v10, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    const-string v8, "childAtomSize should be positive"

    invoke-static {v15, v8}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v8

    sget v15, Lcom/google/ads/interactivemedia/v3/internal/cv;->H:I

    const/4 v11, 0x3

    if-ne v8, v15, :cond_4

    if-nez v7, :cond_3

    const/16 v20, 0x1

    goto :goto_2

    :cond_3
    const/16 v20, 0x0

    :goto_2
    invoke-static/range {v20 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    const-string v7, "video/avc"

    invoke-static {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Lcom/google/ads/interactivemedia/v3/internal/cw$a;

    move-result-object v8

    iget-object v14, v8, Lcom/google/ads/interactivemedia/v3/internal/cw$a;->a:Ljava/util/List;

    iget v9, v8, Lcom/google/ads/interactivemedia/v3/internal/cw$a;->b:I

    iput v9, v4, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->c:I

    if-nez v6, :cond_10

    iget v8, v8, Lcom/google/ads/interactivemedia/v3/internal/cw$a;->c:F

    move/from16 v16, v8

    goto/16 :goto_7

    :cond_4
    sget v15, Lcom/google/ads/interactivemedia/v3/internal/cv;->I:I

    if-ne v8, v15, :cond_6

    if-nez v7, :cond_5

    const/16 v20, 0x1

    goto :goto_3

    :cond_5
    const/16 v20, 0x0

    :goto_3
    invoke-static/range {v20 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    const-string v7, "video/hevc"

    invoke-static {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/cw;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Landroid/util/Pair;

    move-result-object v8

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v9

    check-cast v14, Ljava/util/List;

    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v4, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->c:I

    goto/16 :goto_7

    :cond_6
    sget v15, Lcom/google/ads/interactivemedia/v3/internal/cv;->g:I

    if-ne v8, v15, :cond_8

    if-nez v7, :cond_7

    const/16 v20, 0x1

    goto :goto_4

    :cond_7
    const/16 v20, 0x0

    :goto_4
    invoke-static/range {v20 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    const-string v7, "video/3gpp"

    goto/16 :goto_7

    :cond_8
    sget v15, Lcom/google/ads/interactivemedia/v3/internal/cv;->J:I

    if-ne v8, v15, :cond_a

    if-nez v7, :cond_9

    const/16 v20, 0x1

    goto :goto_5

    :cond_9
    const/16 v20, 0x0

    :goto_5
    invoke-static/range {v20 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    invoke-static {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/cw;->d(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Landroid/util/Pair;

    move-result-object v7

    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [B

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object v7, v8

    goto :goto_7

    :cond_a
    sget v15, Lcom/google/ads/interactivemedia/v3/internal/cv;->ai:I

    if-ne v8, v15, :cond_b

    invoke-static {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/cw;->c(Lcom/google/ads/interactivemedia/v3/internal/fp;I)F

    move-result v16

    const/4 v6, 0x1

    goto :goto_7

    :cond_b
    sget v15, Lcom/google/ads/interactivemedia/v3/internal/cv;->aL:I

    if-ne v8, v15, :cond_e

    if-nez v7, :cond_c

    const/16 v20, 0x1

    goto :goto_6

    :cond_c
    const/16 v20, 0x0

    :goto_6
    invoke-static/range {v20 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->aJ:I

    if-ne v1, v7, :cond_d

    const-string v7, "video/x-vnd.on2.vp8"

    goto :goto_7

    :cond_d
    const-string v7, "video/x-vnd.on2.vp9"

    goto :goto_7

    :cond_e
    sget v15, Lcom/google/ads/interactivemedia/v3/internal/cv;->aH:I

    if-ne v8, v15, :cond_f

    invoke-static {v0, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/cw;->d(Lcom/google/ads/interactivemedia/v3/internal/fp;II)[B

    move-result-object v17

    goto :goto_7

    :cond_f
    sget v9, Lcom/google/ads/interactivemedia/v3/internal/cv;->aG:I

    if-ne v8, v9, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v8

    invoke-virtual {v0, v11}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    if-nez v8, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    const/16 v18, 0x3

    goto :goto_7

    :pswitch_1
    const/4 v8, 0x2

    const/16 v18, 0x2

    goto :goto_7

    :pswitch_2
    const/16 v18, 0x1

    goto :goto_7

    :pswitch_3
    const/16 v18, 0x0

    :cond_10
    :goto_7
    add-int/2addr v5, v10

    goto/16 :goto_0

    :cond_11
    :goto_8
    if-nez v7, :cond_12

    return-void

    :cond_12
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/16 v19, 0x0

    move-wide/from16 v10, p5

    move/from16 v15, p7

    invoke-static/range {v6 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;IF[BILcom/google/ads/interactivemedia/v3/internal/aw;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    iput-object v0, v4, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/fp;IIIIJLjava/lang/String;ZLcom/google/ads/interactivemedia/v3/internal/cw$d;I)V
    .locals 27

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v13, p5

    move-object/from16 v15, p7

    move-object/from16 v12, p9

    add-int/lit8 v3, v1, 0x8

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    const/4 v3, 0x6

    const/16 v16, 0x0

    const/16 v4, 0x10

    if-eqz p8, :cond_0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v5

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    const/4 v5, 0x0

    :goto_0
    const/4 v11, 0x2

    const/4 v10, 0x1

    if-eqz v5, :cond_3

    if-ne v5, v10, :cond_1

    goto :goto_1

    :cond_1
    if-ne v5, v11, :cond_2

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->v()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result v4

    const/16 v5, 0x14

    invoke-virtual {v0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    move v6, v4

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v6

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->q()I

    move-result v3

    if-ne v5, v10, :cond_4

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v4

    sget v5, Lcom/google/ads/interactivemedia/v3/internal/cv;->aa:I

    move/from16 v7, p1

    if-ne v7, v5, :cond_5

    move/from16 v5, p10

    invoke-static {v0, v1, v2, v12, v5}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;IILcom/google/ads/interactivemedia/v3/internal/cw$d;I)I

    move-result v5

    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    goto :goto_3

    :cond_5
    move v5, v7

    :goto_3
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->n:I

    const/16 v17, 0x0

    if-ne v5, v7, :cond_6

    const-string v5, "audio/ac3"

    goto :goto_6

    :cond_6
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->p:I

    if-ne v5, v7, :cond_7

    const-string v5, "audio/eac3"

    goto :goto_6

    :cond_7
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->r:I

    if-ne v5, v7, :cond_8

    const-string v5, "audio/vnd.dts"

    goto :goto_6

    :cond_8
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->s:I

    if-eq v5, v7, :cond_10

    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->t:I

    if-ne v5, v7, :cond_9

    goto :goto_5

    :cond_9
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->u:I

    if-ne v5, v7, :cond_a

    const-string v5, "audio/vnd.dts.hd;profile=lbr"

    goto :goto_6

    :cond_a
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->ax:I

    if-ne v5, v7, :cond_b

    const-string v5, "audio/3gpp"

    goto :goto_6

    :cond_b
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->ay:I

    if-ne v5, v7, :cond_c

    const-string v5, "audio/amr-wb"

    goto :goto_6

    :cond_c
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->l:I

    if-eq v5, v7, :cond_f

    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->m:I

    if-ne v5, v7, :cond_d

    goto :goto_4

    :cond_d
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->j:I

    if-ne v5, v7, :cond_e

    const-string v5, "audio/mpeg"

    goto :goto_6

    :cond_e
    move-object/from16 v5, v17

    goto :goto_6

    :cond_f
    :goto_4
    const-string v5, "audio/raw"

    goto :goto_6

    :cond_10
    :goto_5
    const-string v5, "audio/vnd.dts.hd"

    :goto_6
    move/from16 v19, v3

    move v9, v4

    move-object v7, v5

    move/from16 v18, v6

    move-object/from16 v20, v17

    :goto_7
    sub-int v3, v9, v1

    const/4 v4, -0x1

    if-ge v3, v2, :cond_1a

    invoke-virtual {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v8

    if-lez v8, :cond_11

    const/4 v3, 0x1

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    :goto_8
    const-string v5, "childAtomSize should be positive"

    invoke-static {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(ZLjava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v3

    sget v5, Lcom/google/ads/interactivemedia/v3/internal/cv;->J:I

    if-eq v3, v5, :cond_16

    if-eqz p8, :cond_12

    sget v5, Lcom/google/ads/interactivemedia/v3/internal/cv;->k:I

    if-ne v3, v5, :cond_12

    goto/16 :goto_b

    :cond_12
    sget v4, Lcom/google/ads/interactivemedia/v3/internal/cv;->o:I

    if-ne v3, v4, :cond_14

    add-int/lit8 v3, v9, 0x8

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v13, v14, v15}, Lcom/google/ads/interactivemedia/v3/internal/fd;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v3

    iput-object v3, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    :cond_13
    :goto_9
    move-object/from16 v23, v7

    move/from16 v22, v8

    move/from16 v24, v9

    move-object v2, v12

    const/16 v25, 0x1

    const/16 v26, 0x2

    goto :goto_a

    :cond_14
    sget v4, Lcom/google/ads/interactivemedia/v3/internal/cv;->q:I

    if-ne v3, v4, :cond_15

    add-int/lit8 v3, v9, 0x8

    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v13, v14, v15}, Lcom/google/ads/interactivemedia/v3/internal/fd;->b(Lcom/google/ads/interactivemedia/v3/internal/fp;Ljava/lang/String;JLjava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v3

    iput-object v3, v12, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    goto :goto_9

    :cond_15
    sget v4, Lcom/google/ads/interactivemedia/v3/internal/cv;->v:I

    if-ne v3, v4, :cond_13

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v21, 0x0

    move-object v4, v7

    move-object/from16 v23, v7

    move/from16 v22, v8

    move-wide/from16 v7, p5

    move/from16 v24, v9

    move/from16 v9, v18

    const/16 v25, 0x1

    move/from16 v10, v19

    const/16 v26, 0x2

    move-object/from16 v11, v21

    move-object v2, v12

    move-object/from16 v12, p7

    invoke-static/range {v3 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v3

    iput-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    :goto_a
    move/from16 v5, v22

    move-object/from16 v7, v23

    move/from16 v3, v24

    goto :goto_d

    :cond_16
    :goto_b
    move-object/from16 v23, v7

    move/from16 v22, v8

    move/from16 v24, v9

    move-object v2, v12

    const/16 v25, 0x1

    const/16 v26, 0x2

    sget v5, Lcom/google/ads/interactivemedia/v3/internal/cv;->J:I

    if-ne v3, v5, :cond_17

    move/from16 v5, v22

    move/from16 v3, v24

    move v9, v3

    goto :goto_c

    :cond_17
    move/from16 v5, v22

    move/from16 v3, v24

    invoke-static {v0, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/cw;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;II)I

    move-result v9

    :goto_c
    if-eq v9, v4, :cond_19

    invoke-static {v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/cw;->d(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Landroid/util/Pair;

    move-result-object v4

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v20, v4

    check-cast v20, [B

    const-string v4, "audio/mp4a-latm"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-static/range {v20 .. v20}, Lcom/google/ads/interactivemedia/v3/internal/ff;->a([B)Landroid/util/Pair;

    move-result-object v4

    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move/from16 v18, v4

    move/from16 v19, v7

    :cond_18
    move-object v7, v6

    goto :goto_d

    :cond_19
    move-object/from16 v7, v23

    :goto_d
    add-int v9, v3, v5

    move-object v12, v2

    move/from16 v2, p3

    const/4 v10, 0x1

    const/4 v11, 0x2

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v23, v7

    move-object v2, v12

    const/16 v26, 0x2

    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    if-nez v0, :cond_1d

    move-object/from16 v5, v23

    if-eqz v5, :cond_1d

    const-string v0, "audio/raw"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v10, 0x2

    goto :goto_e

    :cond_1b
    const/4 v10, -0x1

    :goto_e
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    const/4 v4, -0x1

    if-nez v20, :cond_1c

    move-object/from16 v8, v17

    goto :goto_f

    :cond_1c
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v8, v1

    :goto_f
    move-object v1, v5

    move-object v11, v2

    move v2, v3

    move v3, v4

    move-wide/from16 v4, p5

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/bj;->a(Ljava/lang/String;Ljava/lang/String;IIJIILjava/util/List;Ljava/lang/String;I)Lcom/google/ads/interactivemedia/v3/internal/bj;

    move-result-object v0

    iput-object v0, v11, Lcom/google/ads/interactivemedia/v3/internal/cw$d;->b:Lcom/google/ads/interactivemedia/v3/internal/bj;

    :cond_1d
    return-void
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/fp;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x15

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v5

    move v6, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v7

    add-int/lit8 v8, v7, 0x4

    add-int/2addr v6, v8

    invoke-virtual {p0, v7}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    new-array v1, v4, [B

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v7

    move v8, v6

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v9

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/fn;->a:[B

    sget-object v11, Lcom/google/ads/interactivemedia/v3/internal/fn;->a:[B

    array-length v11, v11

    invoke-static {v10, v2, v1, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/fn;->a:[B

    array-length v10, v10

    add-int/2addr v8, v10

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v11

    invoke-static {v10, v11, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v9

    invoke-virtual {p0, v9}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    const/4 p0, 0x0

    goto :goto_4

    :cond_4
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :goto_4
    add-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/fp;II)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/fp;",
            "II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Lcom/google/ads/interactivemedia/v3/internal/de;",
            ">;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move-object v5, v4

    const/4 v3, 0x0

    :goto_0
    sub-int v6, v0, p1

    const/4 v7, 0x1

    if-ge v6, p2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v6

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v8

    sget v9, Lcom/google/ads/interactivemedia/v3/internal/cv;->ab:I

    if-ne v8, v9, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    :cond_0
    sget v9, Lcom/google/ads/interactivemedia/v3/internal/cv;->W:I

    if-ne v8, v9, :cond_2

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v3

    sget v8, Lcom/google/ads/interactivemedia/v3/internal/cw;->a:I

    if-ne v3, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move v3, v7

    goto :goto_2

    :cond_2
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->X:I

    if-ne v8, v7, :cond_3

    invoke-static {p0, v0, v6}, Lcom/google/ads/interactivemedia/v3/internal/cw;->c(Lcom/google/ads/interactivemedia/v3/internal/fp;II)Lcom/google/ads/interactivemedia/v3/internal/de;

    move-result-object v5

    :cond_3
    :goto_2
    add-int/2addr v0, v6

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_7

    if-eqz v4, :cond_5

    const/4 p0, 0x1

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    :goto_3
    const-string p1, "frma atom is mandatory"

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(ZLjava/lang/Object;)V

    if-eqz v5, :cond_6

    const/4 v2, 0x1

    :cond_6
    const-string p0, "schi->tenc atom is mandatory"

    invoke-static {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(ZLjava/lang/Object;)V

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v1
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/cg;
    .locals 8

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->aN:I

    if-ne v2, v3, :cond_5

    move-object v2, v1

    move-object v3, v2

    :goto_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v4

    if-ge v4, v0, :cond_4

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v4

    add-int/lit8 v4, v4, -0xc

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v5

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->aC:I

    if-ne v5, v7, :cond_1

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->e(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->aD:I

    if-ne v5, v7, :cond_2

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->e(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/cv;->aE:I

    if-ne v5, v7, :cond_3

    invoke-virtual {p0, v6}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->e(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v0, "com.apple.iTunes"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cg;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/cg;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/internal/fp;I)F
    .locals 0

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->s()I

    move-result p0

    int-to-float p1, p1

    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/internal/fp;)J
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method private static c(Lcom/google/ads/interactivemedia/v3/internal/fp;II)Lcom/google/ads/interactivemedia/v3/internal/de;
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->Y:I

    if-ne v2, v3, :cond_1

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result p1

    const/16 v1, 0x10

    new-array v1, v1, [B

    array-length v2, v1

    invoke-virtual {p0, v1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/de;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/de;-><init>(ZI[B)V

    return-object p0

    :cond_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/internal/fp;I)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/fp;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    add-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cw;->g(Lcom/google/ads/interactivemedia/v3/internal/fp;)I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cw;->g(Lcom/google/ads/interactivemedia/v3/internal/fp;)I

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "audio/vnd.dts.hd"

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_1
    const-string p0, "audio/vnd.dts"

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_2
    const-string v1, "audio/eac3"

    goto :goto_0

    :sswitch_3
    const-string v1, "audio/ac3"

    goto :goto_0

    :sswitch_4
    const-string p0, "audio/mpeg"

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_5
    const-string v1, "audio/mp4a-latm"

    goto :goto_0

    :sswitch_6
    const-string v1, "video/hevc"

    goto :goto_0

    :sswitch_7
    const-string v1, "video/avc"

    goto :goto_0

    :sswitch_8
    const-string v1, "video/mp4v-es"

    :goto_0
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/cw;->g(Lcom/google/ads/interactivemedia/v3/internal/fp;)I

    move-result p1

    new-array v0, p1, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_8
        0x21 -> :sswitch_7
        0x23 -> :sswitch_6
        0x40 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x6b -> :sswitch_4
        0xa5 -> :sswitch_3
        0xa6 -> :sswitch_2
        0xa9 -> :sswitch_1
        0xaa -> :sswitch_0
        0xab -> :sswitch_0
        0xac -> :sswitch_1
    .end sparse-switch
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/cw$g;
    .locals 11

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    invoke-virtual {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d()I

    move-result v5

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_3

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    add-int v9, v5, v7

    aget-byte v8, v8, v9

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    :goto_2
    const-wide/16 v7, -0x1

    if-eqz v5, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    goto :goto_4

    :cond_4
    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v0

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->u()J

    move-result-wide v0

    :goto_3
    const-wide/16 v9, 0x0

    cmp-long v5, v0, v9

    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    move-wide v7, v0

    :goto_4
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result p0

    const/high16 v4, 0x10000

    const/high16 v5, -0x10000

    if-nez v0, :cond_7

    if-ne v1, v4, :cond_7

    if-ne v2, v5, :cond_7

    if-nez p0, :cond_7

    const/16 v6, 0x5a

    goto :goto_5

    :cond_7
    if-nez v0, :cond_8

    if-ne v1, v5, :cond_8

    if-ne v2, v4, :cond_8

    if-nez p0, :cond_8

    const/16 v6, 0x10e

    goto :goto_5

    :cond_8
    if-ne v0, v5, :cond_9

    if-nez v1, :cond_9

    if-nez v2, :cond_9

    if-ne p0, v5, :cond_9

    const/16 v6, 0xb4

    :cond_9
    :goto_5
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/cw$g;

    invoke-direct {p0, v3, v7, v8, v6}, Lcom/google/ads/interactivemedia/v3/internal/cw$g;-><init>(IJI)V

    return-object p0
.end method

.method private static d(Lcom/google/ads/interactivemedia/v3/internal/fp;II)[B
    .locals 4

    add-int/lit8 v0, p1, 0x8

    :goto_0
    sub-int v1, v0, p1

    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v2

    sget v3, Lcom/google/ads/interactivemedia/v3/internal/cv;->aI:I

    if-ne v2, v3, :cond_0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/fp;->a:[B

    add-int/2addr v1, v0

    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_0
    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static e(Lcom/google/ads/interactivemedia/v3/internal/fp;)I
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result p0

    return p0
.end method

.method private static f(Lcom/google/ads/interactivemedia/v3/internal/fp;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/fp;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->c(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->m()I

    move-result v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/cv;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    :goto_0
    invoke-virtual {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->k()J

    move-result-wide v2

    if-nez v1, :cond_1

    const/4 v0, 0x4

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->g()I

    move-result p0

    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    shr-int/lit8 v1, p0, 0x5

    and-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x60

    int-to-char v1, v1

    and-int/lit8 p0, p0, 0x1f

    add-int/lit8 p0, p0, 0x60

    int-to-char p0, p0

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static g(Lcom/google/ads/interactivemedia/v3/internal/fp;)I
    .locals 3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->f()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
