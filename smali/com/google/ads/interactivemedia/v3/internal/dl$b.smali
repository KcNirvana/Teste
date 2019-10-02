.class public final Lcom/google/ads/interactivemedia/v3/internal/dl$b;
.super Ljava/lang/Object;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:J

.field public e:J

.field public f:J

.field public g:I

.field public h:I

.field public i:I

.field public final j:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->j:[I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->a:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->b:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->c:J

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->d:J

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->e:J

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->f:J

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->g:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->h:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/dl$b;->i:I

    return-void
.end method
