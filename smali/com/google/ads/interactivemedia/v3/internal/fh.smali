.class public final Lcom/google/ads/interactivemedia/v3/internal/fh;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:[J

.field private final b:[J


# direct methods
.method private constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:[J

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:[J

    return-void
.end method

.method public static a(Lcom/google/ads/interactivemedia/v3/internal/fp;)Lcom/google/ads/interactivemedia/v3/internal/fh;
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->j()I

    move-result v0

    div-int/lit8 v0, v0, 0x12

    new-array v1, v0, [J

    new-array v2, v0, [J

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->o()J

    move-result-wide v4

    aput-wide v4, v1, v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fp;->o()J

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/fp;->d(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/fh;

    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fh;-><init>([J[J)V

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/fh;)[J
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/fh;->a:[J

    return-object p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/fh;)[J
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/fh;->b:[J

    return-object p0
.end method


# virtual methods
.method public a(JJ)Lcom/google/ads/interactivemedia/v3/internal/cj;
    .locals 7

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/fh$1;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/fh$1;-><init>(Lcom/google/ads/interactivemedia/v3/internal/fh;JJ)V

    return-object v6
.end method
