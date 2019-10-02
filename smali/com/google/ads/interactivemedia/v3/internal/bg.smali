.class public abstract Lcom/google/ads/interactivemedia/v3/internal/bg;
.super Lcom/google/ads/interactivemedia/v3/internal/bo;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/bg$a;,
        Lcom/google/ads/interactivemedia/v3/internal/bg$b;
    }
.end annotation


# static fields
.field private static final c:[B


# instance fields
.field private A:[Ljava/nio/ByteBuffer;

.field private B:J

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field private G:I

.field private H:I

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field public final a:Lcom/google/ads/interactivemedia/v3/internal/av;

.field protected final b:Landroid/os/Handler;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/bf;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/bv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/interactivemedia/v3/internal/bv<",
            "Lcom/google/ads/interactivemedia/v3/internal/bx;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/bm;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/bk;

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroid/media/MediaCodec$BufferInfo;

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/bg$b;

.field private final l:Z

.field private m:Lcom/google/ads/interactivemedia/v3/internal/bj;

.field private n:Lcom/google/ads/interactivemedia/v3/internal/bu;

.field private o:Landroid/media/MediaCodec;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:[Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0000016742C00BDA259000000168CE0F13200000016588840DCE7118A0002FBF1C31C3275D78"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->d(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/bg;->c:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/bn;Lcom/google/ads/interactivemedia/v3/internal/bf;Lcom/google/ads/interactivemedia/v3/internal/bv;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/bg$b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/interactivemedia/v3/internal/bn;",
            "Lcom/google/ads/interactivemedia/v3/internal/bf;",
            "Lcom/google/ads/interactivemedia/v3/internal/bv<",
            "Lcom/google/ads/interactivemedia/v3/internal/bx;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/ads/interactivemedia/v3/internal/bg$b;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/google/ads/interactivemedia/v3/internal/bn;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/bg;-><init>([Lcom/google/ads/interactivemedia/v3/internal/bn;Lcom/google/ads/interactivemedia/v3/internal/bf;Lcom/google/ads/interactivemedia/v3/internal/bv;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/bg$b;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/ads/interactivemedia/v3/internal/bn;Lcom/google/ads/interactivemedia/v3/internal/bf;Lcom/google/ads/interactivemedia/v3/internal/bv;ZLandroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/bg$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/ads/interactivemedia/v3/internal/bn;",
            "Lcom/google/ads/interactivemedia/v3/internal/bf;",
            "Lcom/google/ads/interactivemedia/v3/internal/bv<",
            "Lcom/google/ads/interactivemedia/v3/internal/bx;",
            ">;Z",
            "Landroid/os/Handler;",
            "Lcom/google/ads/interactivemedia/v3/internal/bg$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bo;-><init>([Lcom/google/ads/interactivemedia/v3/internal/bn;)V

    sget p1, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/fe;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/bf;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->d:Lcom/google/ads/interactivemedia/v3/internal/bf;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    iput-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->f:Z

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->b:Landroid/os/Handler;

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->k:Lcom/google/ads/interactivemedia/v3/internal/bg$b;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/bg;->B()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->l:Z

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/av;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/av;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bm;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/bk;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/bk;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->h:Lcom/google/ads/interactivemedia/v3/internal/bk;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->i:Ljava/util/List;

    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->j:Landroid/media/MediaCodec$BufferInfo;

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->H:I

    return-void
.end method

.method private A()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->m()V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->j()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->M:Z

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->h()V

    :goto_0
    return-void
.end method

.method private static B()Z
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    const-string v0, "foster"

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ft;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NVIDIA"

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ft;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/bm;I)Landroid/media/MediaCodec$CryptoInfo;
    .locals 3

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/bm;->a:Lcom/google/ads/interactivemedia/v3/internal/ax;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ax;->a()Landroid/media/MediaCodec$CryptoInfo;

    move-result-object p0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    :cond_1
    iget-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    add-int/2addr v2, p1

    aput v2, v0, v1

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/bg;)Lcom/google/ads/interactivemedia/v3/internal/bg$b;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->k:Lcom/google/ads/interactivemedia/v3/internal/bg$b;

    return-object p0
.end method

.method private a(Landroid/media/MediaCodec$CryptoException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->k:Lcom/google/ads/interactivemedia/v3/internal/bg$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/bg$2;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bg$2;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bg;Landroid/media/MediaCodec$CryptoException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a(Lcom/google/ads/interactivemedia/v3/internal/bg$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->b(Lcom/google/ads/interactivemedia/v3/internal/bg$a;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/az;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/az;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private a(Ljava/lang/String;JJ)V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->k:Lcom/google/ads/interactivemedia/v3/internal/bg$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->b:Landroid/os/Handler;

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/bg$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/bg$3;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bg;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private a()Z
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->B:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private a(JJ)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    move-object v10, p0

    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->M:Z

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    return v11

    :cond_0
    iget v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    if-gez v0, :cond_3

    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->v:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->J:Z

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget-object v1, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->j:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->p()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->A()V

    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->M:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->m()V

    :cond_1
    return v11

    :cond_2
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget-object v1, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->j:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->p()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iput v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    :cond_3
    :goto_0
    iget v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    const/4 v1, -0x2

    const/4 v12, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->i()V

    return v12

    :cond_4
    iget v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_5

    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->A:[Ljava/nio/ByteBuffer;

    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->e:I

    add-int/2addr v1, v12

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->e:I

    return v12

    :cond_5
    iget v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    if-gez v0, :cond_8

    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->t:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->L:Z

    if-nez v0, :cond_6

    iget v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->A()V

    return v12

    :cond_7
    return v11

    :cond_8
    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->y:Z

    const/4 v13, -0x1

    if-eqz v0, :cond_9

    iput-boolean v11, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->y:Z

    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget v1, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    invoke-virtual {v0, v1, v11}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    iput v13, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    return v12

    :cond_9
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->A()V

    return v11

    :cond_a
    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->h(J)I

    move-result v14

    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->v:Z

    if-eqz v0, :cond_d

    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->J:Z

    if-eqz v0, :cond_d

    :try_start_1
    iget-object v5, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->A:[Ljava/nio/ByteBuffer;

    iget v1, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    aget-object v6, v0, v1

    iget-object v7, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    if-eq v14, v13, :cond_b

    const/4 v9, 0x1

    goto :goto_1

    :cond_b
    const/4 v9, 0x0

    :goto_1
    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->A()V

    iget-boolean v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->M:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->m()V

    :cond_c
    return v11

    :cond_d
    iget-object v5, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->A:[Ljava/nio/ByteBuffer;

    iget v1, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    aget-object v6, v0, v1

    iget-object v7, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->j:Landroid/media/MediaCodec$BufferInfo;

    iget v8, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    if-eq v14, v13, :cond_e

    const/4 v9, 0x1

    goto :goto_2

    :cond_e
    const/4 v9, 0x0

    :goto_2
    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_10

    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->j:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->b(J)V

    if-eq v14, v13, :cond_f

    iget-object v0, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->i:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_f
    iput v13, v10, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    return v12

    :cond_10
    return v11
.end method

.method private a(JZ)Z
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    move-object/from16 v7, p0

    iget-boolean v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->L:Z

    const/4 v8, 0x0

    if-nez v0, :cond_19

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->H:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    if-gez v0, :cond_2

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    iput v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    if-gez v0, :cond_1

    return v8

    :cond_1
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-object v2, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->z:[Ljava/nio/ByteBuffer;

    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    aget-object v2, v2, v3

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/bm;->b:Ljava/nio/ByteBuffer;

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bm;->d()V

    :cond_2
    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->H:I

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    iget-boolean v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->t:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iput-boolean v10, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->J:Z

    iget-object v11, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget v12, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x4

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v9, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    :goto_0
    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->H:I

    return v8

    :cond_4
    iget-boolean v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->x:Z

    if-eqz v0, :cond_5

    iput-boolean v8, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->x:Z

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bm;->b:Ljava/nio/ByteBuffer;

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/bg;->c:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v11, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget v12, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    const/4 v13, 0x0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/bg;->c:[B

    array-length v14, v0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v9, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    iput-boolean v10, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->I:Z

    return v10

    :cond_5
    iget-boolean v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->N:Z

    const/4 v2, -0x2

    if-eqz v0, :cond_6

    const/4 v0, -0x3

    goto :goto_2

    :cond_6
    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    if-ne v0, v10, :cond_8

    const/4 v0, 0x0

    :goto_1
    iget-object v3, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    iget-object v3, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget-object v4, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-object v4, v4, Lcom/google/ads/interactivemedia/v3/internal/bm;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    :cond_8
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->h:Lcom/google/ads/interactivemedia/v3/internal/bk;

    iget-object v3, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    move-wide/from16 v4, p1

    invoke-virtual {v7, v4, v5, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(JLcom/google/ads/interactivemedia/v3/internal/bk;Lcom/google/ads/interactivemedia/v3/internal/bm;)I

    move-result v0

    if-eqz p3, :cond_9

    iget v3, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->K:I

    if-ne v3, v10, :cond_9

    if-ne v0, v2, :cond_9

    iput v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->K:I

    :cond_9
    :goto_2
    if-ne v0, v2, :cond_a

    return v8

    :cond_a
    const/4 v2, -0x4

    if-ne v0, v2, :cond_c

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    if-ne v0, v1, :cond_b

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bm;->d()V

    iput v10, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    :cond_b
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->h:Lcom/google/ads/interactivemedia/v3/internal/bk;

    invoke-virtual {v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bk;)V

    return v10

    :cond_c
    if-ne v0, v9, :cond_10

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    if-ne v0, v1, :cond_d

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bm;->d()V

    iput v10, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    :cond_d
    iput-boolean v10, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->L:Z

    iget-boolean v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->I:Z

    if-nez v0, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->A()V

    return v8

    :cond_e
    :try_start_0
    iget-boolean v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->t:Z

    if-eqz v0, :cond_f

    goto :goto_3

    :cond_f
    iput-boolean v10, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->J:Z

    iget-object v11, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget v12, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x4

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    iput v9, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v8

    :catch_0
    move-exception v0

    invoke-direct {v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Landroid/media/MediaCodec$CryptoException;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/az;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/az;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_10
    iget-boolean v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->O:Z

    if-eqz v0, :cond_13

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bm;->c()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bm;->d()V

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    if-ne v0, v1, :cond_11

    iput v10, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    :cond_11
    return v10

    :cond_12
    iput-boolean v8, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->O:Z

    :cond_13
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bm;->a()Z

    move-result v0

    invoke-direct {v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Z)Z

    move-result v1

    iput-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->N:Z

    iget-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->N:Z

    if-eqz v1, :cond_14

    return v8

    :cond_14
    iget-boolean v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->q:Z

    if-eqz v1, :cond_16

    if-nez v0, :cond_16

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/bm;->b:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/fn;->a(Ljava/nio/ByteBuffer;)V

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/bm;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    if-nez v1, :cond_15

    return v10

    :cond_15
    iput-boolean v8, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->q:Z

    :cond_16
    :try_start_1
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/bm;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v14

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/bm;->c:I

    sub-int v11, v14, v1

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/bm;->e:J

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/bm;->b()Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->i:Ljava/util/List;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/bm;->b:Ljava/nio/ByteBuffer;

    move-object/from16 v1, p0

    move-wide v2, v12

    move v5, v14

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(JLjava/nio/ByteBuffer;IZ)V

    if-eqz v0, :cond_18

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->g:Lcom/google/ads/interactivemedia/v3/internal/bm;

    invoke-static {v0, v11}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bm;I)Landroid/media/MediaCodec$CryptoInfo;

    move-result-object v18

    iget-object v15, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    const/16 v17, 0x0

    const/16 v21, 0x0

    move/from16 v16, v0

    move-wide/from16 v19, v12

    invoke-virtual/range {v15 .. v21}, Landroid/media/MediaCodec;->queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V

    goto :goto_4

    :cond_18
    iget-object v11, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    const/4 v1, 0x0

    const/16 v17, 0x0

    move-wide v2, v12

    move v12, v0

    move v13, v1

    move-wide v15, v2

    invoke-virtual/range {v11 .. v17}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :goto_4
    iput v9, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    iput-boolean v10, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->I:Z

    iput v8, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/bg;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->c:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->c:I
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_1

    return v10

    :catch_1
    move-exception v0

    invoke-direct {v7, v0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Landroid/media/MediaCodec$CryptoException;)V

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/az;

    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/az;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_19
    :goto_5
    return v8
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.SEC.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.SEC.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->d:Ljava/lang/String;

    const-string v1, "SM-G800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.avc.dec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/bj;->f:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OMX.MTK.VIDEO.DECODER.AVC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->E:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/bv;->b()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->f:Z

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1

    :cond_3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/az;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/bv;->d()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/az;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/bj;)Landroid/media/MediaFormat;
    .locals 2

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/bj;->b()Landroid/media/MediaFormat;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "auto-frc"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object p1
.end method

.method private b(Lcom/google/ads/interactivemedia/v3/internal/bg$a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->k:Lcom/google/ads/interactivemedia/v3/internal/bg$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->b:Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/bg$1;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bg$1;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bg;Lcom/google/ads/interactivemedia/v3/internal/bg$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_2

    const-string v0, "OMX.Nvidia.h264.decode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ft;->b:Ljava/lang/String;

    const-string v0, "flounder"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ft;->b:Ljava/lang/String;

    const-string v0, "flounder_lte"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ft;->b:Ljava/lang/String;

    const-string v0, "grouper"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/ft;->b:Ljava/lang/String;

    const-string v0, "tilapia"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z
    .locals 3

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/bj;->q:I

    if-ne p1, v1, :cond_0

    const-string p1, "OMX.MTK.AUDIO.DECODER.MP3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_1

    const-string v0, "OMX.rk.video_decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.allwinner.video.decoder.avc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const-string v0, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_2

    const-string v0, "hb2000"

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/ft;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OMX.amlogic.avc.decoder.awesome"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OMX.amlogic.avc.decoder.awesome.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    const-string v0, "OMX.google.aac.decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 2

    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->a:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/ft;->d:Ljava/lang/String;

    const-string v1, "ODROID-XU3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OMX.Exynos.AVC.Decoder"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OMX.Exynos.AVC.Decoder.secure"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private g(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->h:Lcom/google/ads/interactivemedia/v3/internal/bk;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(JLcom/google/ads/interactivemedia/v3/internal/bk;Lcom/google/ads/interactivemedia/v3/internal/bm;)I

    move-result p1

    const/4 p2, -0x4

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->h:Lcom/google/ads/interactivemedia/v3/internal/bk;

    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bk;)V

    :cond_0
    return-void
.end method

.method private h(J)I
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private i()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->s:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "width"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    const-string v1, "height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->y:Z

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->w:Z

    if-eqz v1, :cond_1

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {p0, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->d:I

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/ads/interactivemedia/v3/internal/bf;Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/ay;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bh$b;
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/ay;

    move-result-object p1

    return-object p1
.end method

.method protected a(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->K:I

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->L:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->M:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->n()V

    :cond_0
    return-void
.end method

.method protected a(JJZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->K:I

    if-nez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    iget p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->K:I

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    :goto_0
    iput p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->K:I

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    if-nez p5, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/bg;->g(J)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->j()V

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    if-eqz p5, :cond_5

    const-string p5, "drainAndFeed"

    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(JJ)Z

    move-result p5

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(JZ)Z

    move-result p3

    if-eqz p3, :cond_4

    :goto_2
    invoke-direct {p0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(JZ)Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a()V

    :cond_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/av;->a()V

    return-void
.end method

.method protected a(JLjava/nio/ByteBuffer;IZ)V
    .locals 0

    return-void
.end method

.method protected a(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    return-void
.end method

.method protected abstract a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V
.end method

.method protected a(Lcom/google/ads/interactivemedia/v3/internal/bk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget-object v1, p1, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/bk;->b:Lcom/google/ads/interactivemedia/v3/internal/bu;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->n:Lcom/google/ads/interactivemedia/v3/internal/bu;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->n:Lcom/google/ads/interactivemedia/v3/internal/bu;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->E:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    invoke-static {v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->p:Z

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    invoke-virtual {p0, p1, v3, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Landroid/media/MediaCodec;ZLcom/google/ads/interactivemedia/v3/internal/bj;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->F:Z

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->s:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/bj;->h:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/bj;->h:I

    if-ne p1, v3, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget p1, p1, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:I

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bj;->i:I

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->x:Z

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->I:Z

    if-eqz p1, :cond_4

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->H:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->m()V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->j()V

    :goto_1
    return-void
.end method

.method protected abstract a(JJLandroid/media/MediaCodec;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation
.end method

.method protected a(Landroid/media/MediaCodec;ZLcom/google/ads/interactivemedia/v3/internal/bj;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract a(Lcom/google/ads/interactivemedia/v3/internal/bf;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bh$b;
        }
    .end annotation
.end method

.method protected final a(Lcom/google/ads/interactivemedia/v3/internal/bj;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/bh$b;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->d:Lcom/google/ads/interactivemedia/v3/internal/bf;

    invoke-virtual {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bf;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z

    move-result p1

    return p1
.end method

.method protected b(J)V
    .locals 0

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->M:Z

    return v0
.end method

.method protected f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->N:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->K:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected g()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->n:Lcom/google/ads/interactivemedia/v3/internal/bu;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->E:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/bv;->a()V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->E:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/bo;->g()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/bo;->g()V

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->E:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/bv;->a()V

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->E:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_1
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/bo;->g()V

    throw v1

    :catchall_2
    move-exception v0

    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/bo;->g()V

    throw v0
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected final j()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->k()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/bj;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->n:Lcom/google/ads/interactivemedia/v3/internal/bu;

    const/4 v7, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->E:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->n:Lcom/google/ads/interactivemedia/v3/internal/bu;

    invoke-interface {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/bv;->a(Lcom/google/ads/interactivemedia/v3/internal/bu;)V

    iput-boolean v8, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->E:Z

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/bv;->b()I

    move-result v1

    if-eqz v1, :cond_4

    if-eq v1, v7, :cond_3

    const/4 v4, 0x4

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/bv;->c()Lcom/google/ads/interactivemedia/v3/internal/bw;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/bx;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/bx;->a()Landroid/media/MediaCrypto;

    move-result-object v1

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    invoke-interface {v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/bv;->a(Ljava/lang/String;)Z

    move-result v4

    move v9, v4

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/az;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->e:Lcom/google/ads/interactivemedia/v3/internal/bv;

    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/bv;->d()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/az;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/az;

    const-string v1, "Media requires a DrmSessionManager"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/az;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object v1, v3

    const/4 v9, 0x0

    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->d:Lcom/google/ads/interactivemedia/v3/internal/bf;

    invoke-virtual {p0, v4, v0, v9}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bf;Ljava/lang/String;Z)Lcom/google/ads/interactivemedia/v3/internal/ay;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/bh$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/bg$a;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    const v6, -0xc34e

    invoke-direct {v4, v5, v0, v9, v6}, Lcom/google/ads/interactivemedia/v3/internal/bg$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bj;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bg$a;)V

    move-object v0, v3

    :goto_2
    if-nez v0, :cond_7

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/bg$a;

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    const v6, -0xc34f

    invoke-direct {v4, v5, v3, v9, v6}, Lcom/google/ads/interactivemedia/v3/internal/bg$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bj;Ljava/lang/Throwable;ZI)V

    invoke-direct {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bg$a;)V

    :cond_7
    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ay;->a:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ay;->c:Z

    if-eqz v3, :cond_8

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/bg;->f(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v2, 0x1

    :cond_8
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->p:Z

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    invoke-static {v10, v2}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->q:Z

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->r:Z

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/bg;->b(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->s:Z

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/bg;->c(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->t:Z

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/bg;->d(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->u:Z

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/bg;->e(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->v:Z

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    invoke-static {v10, v2}, Lcom/google/ads/interactivemedia/v3/internal/bg;->b(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/bj;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->w:Z

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "createByCodecName("

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(Ljava/lang/String;)V

    invoke-static {v10}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a()V

    const-string v4, "configureCodec"

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    iget-boolean v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ay;->c:Z

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    invoke-direct {p0, v5}, Lcom/google/ads/interactivemedia/v3/internal/bg;->b(Lcom/google/ads/interactivemedia/v3/internal/bj;)Landroid/media/MediaFormat;

    move-result-object v5

    invoke-virtual {p0, v4, v0, v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Landroid/media/MediaCodec;ZLandroid/media/MediaFormat;Landroid/media/MediaCrypto;)V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a()V

    const-string v0, "codec.start()"

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/fs;->a()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const/4 v0, 0x0

    sub-long v11, v4, v2

    move-object v1, p0

    move-object v2, v10

    move-wide v3, v4

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->z:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->A:[Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/bg$a;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    invoke-direct {v1, v2, v0, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/bg$a;-><init>(Lcom/google/ads/interactivemedia/v3/internal/bj;Ljava/lang/Throwable;ZLjava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bg;->a(Lcom/google/ads/interactivemedia/v3/internal/bg$a;)V

    :goto_3
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->v()I

    move-result v0

    if-ne v0, v7, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_4

    :cond_9
    const-wide/16 v0, -0x1

    :goto_4
    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->B:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    iput-boolean v8, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->O:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->a:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->a:I

    return-void
.end method

.method protected k()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected final l()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected m()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->B:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->N:Z

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->z:[Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->A:[Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->F:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->I:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->p:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->q:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->r:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->s:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->t:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->u:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->w:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->x:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->y:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->J:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->H:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->a:Lcom/google/ads/interactivemedia/v3/internal/av;

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/av;->b:I

    :try_start_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    throw v0

    :catchall_2
    move-exception v0

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method protected n()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/az;
        }
    .end annotation

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->B:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->C:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->D:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->O:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->N:Z

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->x:Z

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->y:Z

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->r:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->u:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->J:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->H:I

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->m()V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->j()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->o:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->flush()V

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->I:Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->m()V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/bg;->j()V

    :goto_1
    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->F:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->m:Lcom/google/ads/interactivemedia/v3/internal/bj;

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->G:I

    :cond_3
    return-void
.end method

.method protected final o()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/bg;->K:I

    return v0
.end method

.method protected p()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
