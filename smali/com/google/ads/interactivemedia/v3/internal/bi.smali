.class public Lcom/google/ads/interactivemedia/v3/internal/bi;
.super Lcom/google/ads/interactivemedia/v3/internal/bg;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/bi$a;
    }
.end annotation


# instance fields
.field private final c:Lcom/google/ads/interactivemedia/v3/internal/br;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/bi$a;

.field private final e:J

.field private final f:I

.field private final g:I

.field private h:Landroid/view/Surface;

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:I

.field private n:I

.field private o:I

.field private p:F

.field private q:I

.field private r:I

.field private s:I

.field private t:F

.field private u:I

.field private v:I

.field private w:I

.field private x:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/bn;Lcom/google/ads/interactivemedia/v3/internal/bf;IJLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/bi$a;I)V
    .locals 12

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/google/ads/interactivemedia/v3/internal/bi;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/bn;Lcom/google/ads/interactivemedia/v3/internal/bf;IJLcom/google/ads/interactivemedia/v3/internal/bv;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/bi$a;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/bn;Lcom/google/ads/interactivemedia/v3/internal/bf;IJLcom/google/ads/interactivemedia/v3/internal/bv;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/bi$a;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/ads/interactivemedia/v3/internal/bn;",
            "Lcom/google/ads/interactivemedia/v3/internal/bf;",
            "IJ",
            "Lcom/google/ads/interactivemedia/v3/internal/bv<",
            "Lcom/google/ads/interactivemedia/v3/internal/bx;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/ads/interactivemedia/v3/internal/bi$a;",
            "I)V"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p7

    move/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/bg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bn;Lcom/google/ads/interactivemedia/v3/internal/bf;Lcom/google/ads/interactivemedia/v3/internal/bv;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/bg$b;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/br;

    move-object v1, p1

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/br;-><init>(Landroid/content/Context;)V

    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->c:Lcom/google/ads/interactivemedia/v3/internal/br;

    move v0, p4

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->f:I

    const-wide/16 v0, 0x3e8

    mul-long v0, v0, p5

    iput-wide v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->e:J

    move-object/from16 v0, p10

    iput-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->d:Lcom/google/ads/interactivemedia/v3/internal/bi$a;

    move/from16 v0, p11

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->g:I

    const-wide/16 v0, -0x1

    iput-wide v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->k:J

    const/4 v0, -0x1

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->q:I

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->r:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->t:F

    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->p:F

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->u:I

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->v:I

    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bi;->x:F

    return-void
.end method

.method private A()V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->d:Lcom/google/ads/interactivemedia/v3/internal/bi$a;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->m:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->m:I

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->l:J

    sub-long v3, v0, v3

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->b:Landroid/os/Handler;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/bi$3;

    invoke-direct {v6, p0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/bi$3;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bi;IJ)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->m:I

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->l:J

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/bi;)Lcom/google/ads/interactivemedia/v3/internal/bi$a;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->d:Lcom/google/ads/interactivemedia/v3/internal/bi$a;

    return-object p0
.end method

.method private a()V
    .locals 12

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->d:Lcom/google/ads/interactivemedia/v3/internal/bi$a;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->u:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->q:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->v:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->r:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->w:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->s:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->x:F

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->t:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->q:I

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->r:I

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->s:I

    iget v9, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->t:F

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->b:Landroid/os/Handler;

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/bi$1;

    move-object v1, v11

    move-object v2, p0

    move v3, v0

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/bi$1;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bi;IIIF)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->u:I

    iput v7, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->v:I

    iput v8, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->w:I

    iput v9, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->x:F

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/media/MediaFormat;Z)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    const-string v0, "max-input-size"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "height"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_1

    const-string v1, "max-height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "max-height"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    const-string v1, "width"

    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-eqz p2, :cond_2

    const-string p2, "max-width"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "max-width"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_2
    const-string p2, "mime"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v2, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "video/x-vnd.on2.vp9"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_1
    const-string v3, "video/x-vnd.on2.vp8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "video/avc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "video/mp4v-es"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v3, "video/hevc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "video/3gpp"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    packed-switch v2, :pswitch_data_0

    return-void

    :pswitch_0
    mul-int v1, v1, v0

    goto :goto_2

    :pswitch_1
    mul-int v1, v1, v0

    goto :goto_1

    :pswitch_2
    const-string p2, "BRAVIA 4K 2015"

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/ft;->d:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0xf

    div-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xf

    div-int/lit8 v0, v0, 0x10

    mul-int v1, v1, v0

    mul-int/lit8 v1, v1, 0x10

    mul-int/lit8 v1, v1, 0x10

    goto :goto_1

    :pswitch_3
    mul-int v1, v1, v0

    :goto_1
    const/4 v5, 0x2

    :goto_2
    mul-int/lit8 v1, v1, 0x3

    mul-int/lit8 v5, v5, 0x2

    div-int/2addr v1, v5

    const-string p2, "max-input-size"

    invoke-virtual {p1, p2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x63306f58 -> :sswitch_5
        -0x63185e82 -> :sswitch_4
        0x46cdc642 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->h:Landroid/view/Surface;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->h:Landroid/view/Surface;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->i:Z

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->v()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->m()V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->j()V

    :cond_2
    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->d:Lcom/google/ads/interactivemedia/v3/internal/bi$a;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->h:Landroid/view/Surface;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->b:Landroid/os/Handler;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/bi$2;

    invoke-direct {v2, p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/bi$2;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bi;Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->i:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(IJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(IJZ)V

    if-eqz p4, :cond_0

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->e:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    const-wide/16 p3, 0x3e8

    mul-long p1, p1, p3

    iget-wide p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->e:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->k:J

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->c:Lcom/google/ads/interactivemedia/v3/internal/br;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/br;->a()V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/view/Surface;

    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a(Landroid/view/Surface;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected a(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(J)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->j:Z

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->n:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->k:J

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;I)V
    .locals 1

    const-string v0, "skipVideoBuffer"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/av;->g:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/av;->g:I

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;IJ)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a()V

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/av;->f:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/av;->f:I

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->j:Z

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->i()V

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 4

    const-string v0, "crop-right"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "crop-left"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-top"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "crop-right"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "crop-left"

    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    goto :goto_1

    :cond_1
    const-string v2, "width"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->q:I

    if-eqz v0, :cond_2

    const-string v0, "crop-bottom"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "crop-top"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr v0, p2

    add-int/2addr v0, v1

    goto :goto_2

    :cond_2
    const-string v0, "height"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->r:I

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->p:F

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->t:F

    sget p2, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v0, 0x15

    if-lt p2, v0, :cond_4

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->o:I

    const/16 v0, 0x5a

    if-eq p2, v0, :cond_3

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->o:I

    const/16 v0, 0x10e

    if-ne p2, v0, :cond_5

    :cond_3
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->q:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->r:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->q:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->r:I

    const/high16 p2, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->t:F

    div-float/2addr p2, v0

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->t:F

    goto :goto_3

    :cond_4
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->o:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->s:I

    :cond_5
    :goto_3
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->f:I

    invoke-virtual {p1, p2}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
    .locals 1

    invoke-direct {p0, p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a(Landroid/media/MediaFormat;Z)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->h:Landroid/view/Surface;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/bk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bk;)V

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bj;->m:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bj;->m:F

    :goto_0
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->p:F

    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bj;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/bj;->l:I

    :goto_1
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->o:I

    return-void
.end method

.method protected a(JJ)Z
    .locals 0

    const-wide/16 p3, -0x7530

    cmp-long p1, p1, p3

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move/from16 v5, p8

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p9, :cond_0

    invoke-virtual {v0, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a(Landroid/media/MediaCodec;I)V

    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/bi;->n:I

    return v6

    :cond_0
    iget-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/bi;->j:Z

    const/16 v9, 0x15

    if-nez v8, :cond_2

    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    if-lt v1, v9, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v3, v5, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a(Landroid/media/MediaCodec;IJ)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/bi;->c(Landroid/media/MediaCodec;I)V

    :goto_0
    iput v7, v0, Lcom/google/ads/interactivemedia/v3/internal/bi;->n:I

    return v6

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->v()I

    move-result v8

    const/4 v10, 0x3

    if-eq v8, v10, :cond_3

    return v7

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    sub-long/2addr v10, v1

    iget-wide v14, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    sub-long v14, v14, p1

    sub-long/2addr v14, v10

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    mul-long v14, v14, v12

    add-long/2addr v14, v10

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/bi;->c:Lcom/google/ads/interactivemedia/v3/internal/br;

    iget-wide v6, v4, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v8, v6, v7, v14, v15}, Lcom/google/ads/interactivemedia/v3/internal/br;->a(JJ)J

    move-result-wide v6

    sub-long v10, v6, v10

    div-long/2addr v10, v12

    invoke-virtual {v0, v10, v11, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/bi;->b(Landroid/media/MediaCodec;I)V

    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v1, 0x1

    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    if-lt v2, v9, :cond_6

    const-wide/32 v8, 0xc350

    cmp-long v2, v10, v8

    if-gez v2, :cond_5

    invoke-virtual {v0, v3, v5, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a(Landroid/media/MediaCodec;IJ)V

    const/4 v2, 0x0

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/bi;->n:I

    return v1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const-wide/16 v1, 0x7530

    cmp-long v1, v10, v1

    if-gez v1, :cond_5

    const-wide/16 v1, 0x2af8

    cmp-long v1, v10, v1

    if-lez v1, :cond_7

    const-wide/16 v1, 0x2710

    sub-long/2addr v10, v1

    :try_start_0
    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    :goto_1
    invoke-virtual {v0, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/bi;->c(Landroid/media/MediaCodec;I)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/bi;->n:I

    const/4 v1, 0x1

    return v1

    :goto_2
    return v1
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/ads/interactivemedia/v3/internal/bj;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z
    .locals 1

    iget-object p1, p4, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Ljava/lang/String;

    iget-object v0, p3, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    iget p1, p3, Lcom/google/ads/interactivemedia/v3/internal/bj;->h:I

    iget p2, p4, Lcom/google/ads/interactivemedia/v3/internal/bj;->h:I

    if-ne p1, p2, :cond_1

    iget p1, p3, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:I

    iget p2, p4, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:I

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/bf;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bh$b;
        }
    .end annotation

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Ljava/lang/String;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/fl;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "video/x-unknown"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/ay;

    move-result-object p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected b(Landroid/media/MediaCodec;I)V
    .locals 1

    const-string v0, "dropVideoBuffer"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/av;->h:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/av;->h:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->m:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->m:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->n:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->n:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->i:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/av;->i:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->m:I

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->g:I

    if-ne p1, p2, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->A()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->c()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->m:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->l:J

    return-void
.end method

.method protected c(Landroid/media/MediaCodec;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->a()V

    const-string v0, "releaseOutputBuffer"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget p2, p1, Lcom/google/ads/interactivemedia/v3/internal/av;->f:I

    add-int/2addr p2, v0

    iput p2, p1, Lcom/google/ads/interactivemedia/v3/internal/av;->f:I

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->j:Z

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->i()V

    return-void
.end method

.method protected d()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->k:J

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->A()V

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->d()V

    return-void
.end method

.method protected f()Z
    .locals 9

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->f()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->j:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;->o()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->k:J

    return v1

    :cond_1
    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->k:J

    cmp-long v0, v4, v2

    const/4 v4, 0x0

    if-nez v0, :cond_2

    return v4

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->k:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_3

    return v1

    :cond_3
    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->k:J

    return v4
.end method

.method protected g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->q:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->r:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->t:F

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->p:F

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->u:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->v:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->x:F

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->c:Lcom/google/ads/interactivemedia/v3/internal/br;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/br;->b()V

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->g()V

    return-void
.end method

.method protected k()Z
    .locals 1

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->h:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bi;->h:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
