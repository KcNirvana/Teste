.class public final Lcom/google/ads/interactivemedia/v3/internal/by;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/cj;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/by;->a:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/by;->b:[I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/by;->c:[J

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/by;->d:[J

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/by;->e:[J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/by;->e:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ft;->a([JJZZ)I

    move-result p1

    return p1
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/by;->c:[J

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/by;->a(J)I

    move-result p1

    aget-wide p1, v0, p1

    return-wide p1
.end method
