.class Lcom/google/ads/interactivemedia/v3/internal/iy$e;
.super Lcom/google/ads/interactivemedia/v3/internal/iy$d;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/bi$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/interactivemedia/v3/internal/iy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/iy;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/iy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$e;->a:Lcom/google/ads/interactivemedia/v3/internal/iy;

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/iy$d;-><init>(Lcom/google/ads/interactivemedia/v3/internal/iy;)V

    return-void
.end method


# virtual methods
.method public a(IIIF)V
    .locals 0

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/iy$e;->a:Lcom/google/ads/interactivemedia/v3/internal/iy;

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/iy;->c(Lcom/google/ads/interactivemedia/v3/internal/iy;)Lcom/google/ads/interactivemedia/v3/internal/at;

    move-result-object p3

    if-nez p2, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    mul-float p1, p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    :goto_0
    invoke-virtual {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/at;->a(F)V

    return-void
.end method

.method public a(IJ)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/Surface;)V
    .locals 0

    return-void
.end method
