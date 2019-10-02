.class Lcom/google/ads/interactivemedia/v3/internal/jq$3;
.super Landroid/graphics/drawable/shapes/Shape;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/jq;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/jq;)V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jq$3;->getHeight()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jq$3;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jq$3;->getHeight()F

    move-result v4

    const/4 v1, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method
