.class public final Lcom/google/ads/interactivemedia/v3/internal/br;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/interactivemedia/v3/internal/br$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/br$a;

.field private final b:Z

.field private final c:J

.field private final d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:Z

.field private i:J

.field private j:J

.field private k:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/br;-><init>(FZ)V

    return-void
.end method

.method private constructor <init>(FZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->b:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/br$a;->a()Lcom/google/ads/interactivemedia/v3/internal/br$a;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->a:Lcom/google/ads/interactivemedia/v3/internal/br$a;

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    float-to-double p1, p1

    div-double/2addr v0, p1

    double-to-long p1, v0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->c:J

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->c:J

    const-wide/16 v0, 0x50

    mul-long p1, p1, v0

    const-wide/16 v0, 0x64

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->d:J

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->a:Lcom/google/ads/interactivemedia/v3/internal/br$a;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->c:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->d:J

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/br;->a(Landroid/content/Context;)F

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/br;-><init>(FZ)V

    return-void
.end method

.method private static a(Landroid/content/Context;)F
    .locals 1

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    return p0
.end method

.method private static a(JJJ)J
    .locals 4

    sub-long v0, p0, p2

    div-long/2addr v0, p4

    mul-long v0, v0, p4

    add-long/2addr p2, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    sub-long p4, p2, p4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    add-long/2addr p4, p2

    move-wide v2, p2

    move-wide p2, p4

    move-wide p4, v2

    :goto_0
    const/4 v0, 0x0

    sub-long v0, p2, p0

    sub-long/2addr p0, p4

    cmp-long p0, v0, p0

    if-gez p0, :cond_1

    goto :goto_1

    :cond_1
    move-wide p2, p4

    :goto_1
    return-wide p2
.end method

.method private b(JJ)Z
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->j:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->i:J

    sub-long/2addr p3, v0

    sub-long/2addr p3, p1

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    const-wide/32 p3, 0x1312d00

    cmp-long p1, p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(JJ)J
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    const-wide/16 v5, 0x3e8

    mul-long v5, v5, v1

    iget-boolean v7, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->h:Z

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->e:J

    cmp-long v7, v1, v7

    if-eqz v7, :cond_0

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->k:J

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->k:J

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->g:J

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->f:J

    :cond_0
    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->k:J

    const-wide/16 v9, 0x6

    cmp-long v7, v7, v9

    const/4 v8, 0x0

    if-ltz v7, :cond_2

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->j:J

    sub-long v9, v5, v9

    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->k:J

    div-long/2addr v9, v11

    iget-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->f:J

    add-long/2addr v11, v9

    invoke-direct {v0, v11, v12, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/br;->b(JJ)Z

    move-result v7

    if-eqz v7, :cond_1

    iput-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->h:Z

    move-wide v7, v3

    move-wide v11, v5

    goto :goto_0

    :cond_1
    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->i:J

    add-long/2addr v7, v11

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->j:J

    sub-long/2addr v7, v9

    :goto_0
    move-wide v13, v7

    goto :goto_1

    :cond_2
    invoke-direct {v0, v5, v6, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/br;->b(JJ)Z

    move-result v7

    if-eqz v7, :cond_3

    iput-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->h:Z

    :cond_3
    move-wide v13, v3

    move-wide v11, v5

    :goto_1
    iget-boolean v7, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->h:Z

    const-wide/16 v8, 0x0

    if-nez v7, :cond_4

    iput-wide v5, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->j:J

    iput-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->i:J

    iput-wide v8, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->k:J

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->h:Z

    invoke-virtual/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/br;->c()V

    :cond_4
    iput-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->e:J

    iput-wide v11, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->g:J

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->a:Lcom/google/ads/interactivemedia/v3/internal/br$a;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->a:Lcom/google/ads/interactivemedia/v3/internal/br$a;

    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/br$a;->a:J

    cmp-long v1, v1, v8

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->a:Lcom/google/ads/interactivemedia/v3/internal/br$a;

    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/br$a;->a:J

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->c:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-static/range {v13 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/br;->a(JJJ)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/br;->d:J

    sub-long/2addr v1, v3

    return-wide v1

    :cond_6
    :goto_2
    return-wide v13
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->h:Z

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->a:Lcom/google/ads/interactivemedia/v3/internal/br$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/br$a;->b()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/br;->a:Lcom/google/ads/interactivemedia/v3/internal/br$a;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/br$a;->c()V

    :cond_0
    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method
