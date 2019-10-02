.class public final Lcom/google/ads/interactivemedia/v3/internal/fo;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field public a:[B

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->d:I

    return-void
.end method

.method private f()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    if-lez v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v0

    :cond_1
    add-int/2addr v3, v0

    return v3
.end method

.method private g()V
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->d:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->d:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/fe;->b(Z)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->d:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    mul-int/lit8 v0, v0, 0x8

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->g()V

    return-void
.end method

.method public a([B)V
    .locals 1

    array-length v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a([BI)V

    return-void
.end method

.method public a([BI)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->d:I

    return-void
.end method

.method public b(I)V
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    div-int/lit8 v1, p1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    rem-int/lit8 p1, p1, 0x8

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    const/4 v0, 0x7

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->g()V

    return-void
.end method

.method public b()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->c(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(I)I
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    div-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xff

    const/16 v4, 0x8

    if-ge v0, v1, :cond_2

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    aget-byte v5, v5, v6

    and-int/2addr v5, v3

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    shl-int/2addr v5, v6

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    and-int/2addr v6, v3

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    sub-int/2addr v4, v7

    ushr-int v4, v6, v4

    or-int/2addr v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    aget-byte v4, v4, v5

    :goto_1
    add-int/lit8 p1, p1, -0x8

    and-int/2addr v3, v4

    shl-int/2addr v3, p1

    or-int/2addr v2, v3

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_5

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    add-int/2addr v0, p1

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, v3, p1

    int-to-byte p1, p1

    if-le v0, v4, :cond_4

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    add-int/lit8 v5, v0, -0x8

    shl-int/2addr v1, v5

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    and-int/2addr v3, v5

    rsub-int/lit8 v5, v0, 0x10

    shr-int/2addr v3, v5

    or-int/2addr v1, v3

    and-int/2addr p1, v1

    or-int/2addr p1, v2

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    :cond_3
    :goto_2
    move v2, p1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->a:[B

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    aget-byte v1, v1, v5

    and-int/2addr v1, v3

    rsub-int/lit8 v3, v0, 0x8

    shr-int/2addr v1, v3

    and-int/2addr p1, v1

    or-int/2addr p1, v2

    if-ne v0, v4, :cond_3

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    goto :goto_2

    :goto_3
    rem-int/2addr v0, v4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    :cond_5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->g()V

    return v2
.end method

.method public c()Z
    .locals 7

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->d:I

    if-ge v4, v5, :cond_0

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->b()Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->d:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->b:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/fo;->c:I

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->a()I

    move-result v0

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v6

    if-lt v0, v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public d()I
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->f()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/fo;->f()I

    move-result v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    add-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    mul-int v1, v1, v0

    return v1
.end method
