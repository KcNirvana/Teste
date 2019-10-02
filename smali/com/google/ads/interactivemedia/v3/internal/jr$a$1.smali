.class Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;
.super Landroid/graphics/drawable/shapes/Shape;
.source "IMASDK"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/interactivemedia/v3/internal/jr$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Landroid/graphics/Path;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public onResize(FF)V
    .locals 5

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->a:Landroid/graphics/Path;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->getWidth()F

    move-result p2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->getHeight()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->a:Landroid/graphics/Path;

    const/4 p2, 0x6

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->getHeight()F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->getHeight()F

    move-result v1

    const/16 v2, 0xc

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->getHeight()F

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v4, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p1, v4, p2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->a:Landroid/graphics/Path;

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v4, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->a:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/jr$a$1;->getWidth()F

    move-result p2

    invoke-virtual {p1, p2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method
