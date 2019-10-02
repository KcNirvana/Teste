.class final Lcom/google/ads/interactivemedia/v3/internal/ei$a;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/ei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ei$a;->a:I

    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ei$a;->b:J

    return-void
.end method

.method synthetic constructor <init>(IJLcom/google/ads/interactivemedia/v3/internal/ei$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ei$a;-><init>(IJ)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ei$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei$a;->b:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/ei$a;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ei$a;->a:I

    return p0
.end method
