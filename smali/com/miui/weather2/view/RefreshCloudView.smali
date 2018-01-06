.class public Lcom/miui/weather2/view/RefreshCloudView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Bitmap;

.field private c:F

.field private d:Landroid/graphics/RectF;

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/weather2/view/RefreshCloudView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/weather2/view/RefreshCloudView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/miui/weather2/view/RefreshCloudView;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->a:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshCloudView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshCloudView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020162

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/miui/weather2/view/RefreshCloudView;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshCloudView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshCloudView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/miui/weather2/view/RefreshCloudView;->a:Landroid/graphics/Paint;

    const/16 v6, 0x1f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    iget-object v1, p0, Lcom/miui/weather2/view/RefreshCloudView;->d:Landroid/graphics/RectF;

    iget v2, p0, Lcom/miui/weather2/view/RefreshCloudView;->e:F

    iget v3, p0, Lcom/miui/weather2/view/RefreshCloudView;->f:F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/miui/weather2/view/RefreshCloudView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v3, 0x0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshCloudView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshCloudView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->d:Landroid/graphics/RectF;

    return-void
.end method

.method setFractionToUpdateCloudIcon(F)V
    .locals 3

    const/high16 v2, 0x43b40000    # 360.0f

    iget v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->c:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/miui/weather2/view/RefreshCloudView;->c:F

    mul-float v0, p1, v2

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->e:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/miui/weather2/view/RefreshCloudView;->f:F

    invoke-virtual {p0}, Lcom/miui/weather2/view/RefreshCloudView;->invalidate()V

    :cond_0
    return-void
.end method
