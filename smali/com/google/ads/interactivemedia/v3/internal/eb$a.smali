.class final Lcom/google/ads/interactivemedia/v3/internal/eb$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/du;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ec;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/fo;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/du;Lcom/google/ads/interactivemedia/v3/internal/ec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->b:Lcom/google/ads/interactivemedia/v3/internal/ec;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/16 p2, 0x40

    new-array p2, p2, [B

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->d:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->e:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->g:I

    return-void
.end method

.method private c()V
    .locals 10

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->h:J

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->f:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->e:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v5, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v2, v7}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {v2, v6}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->b:Lcom/google/ads/interactivemedia/v3/internal/ec;

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ec;->a(J)J

    iput-boolean v6, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->b:Lcom/google/ads/interactivemedia/v3/internal/ec;

    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ec;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->h:J

    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->f:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/du;->a()V

    return-void
.end method

.method public a(Lcom/google/ads/interactivemedia/v3/internal/fp;Lcom/google/ads/interactivemedia/v3/internal/ce;)V
    .locals 3

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a(I)V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->b()V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->g:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fp;->a([BII)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c:Lcom/google/ads/interactivemedia/v3/internal/fo;

    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a(I)V

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->c()V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->h:J

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(JZ)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/du;->a(Lcom/google/ads/interactivemedia/v3/internal/fp;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/eb$a;->a:Lcom/google/ads/interactivemedia/v3/internal/du;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/du;->b()V

    return-void
.end method
