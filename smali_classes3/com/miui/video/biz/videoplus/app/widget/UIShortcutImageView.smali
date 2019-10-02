.class public Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;
.super Lcom/miui/video/common/feed/ui/card/UIImageView;
.source "UIShortcutImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIShortcutImageView"


# instance fields
.field mContext:Landroid/content/Context;

.field private ratio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/common/feed/ui/card/UIImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/common/feed/ui/card/UIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/video/common/feed/ui/card/UIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getFillPaint()Landroid/graphics/Paint;
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/biz/videoplus/R$color;->default_image_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;->setRatio()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_0

    if-eq v3, v6, :cond_0

    iget v7, p0, Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;->ratio:F

    cmpl-float v7, v7, v5

    if-eqz v7, :cond_0

    int-to-float p2, v0

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;->ratio:F

    mul-float p2, p2, v0

    add-float/2addr p2, v4

    float-to-int p2, p2

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    :cond_0
    if-eq v1, v6, :cond_1

    if-ne v3, v6, :cond_1

    iget p1, p0, Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;->ratio:F

    cmpl-float p1, p1, v5

    if-eqz p1, :cond_1

    int-to-float p1, v2

    iget v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;->ratio:F

    div-float/2addr p1, v0

    add-float/2addr p1, v4

    float-to-int p1, p1

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u65e0\u6cd5\u8bbe\u5b9a\u5bbd\u9ad8\u6bd4"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setRatio()V
    .locals 2

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenHeightPixels()I

    move-result v0

    invoke-static {}, Lcom/miui/video/common/library/utils/DeviceUtils;->getInstance()Lcom/miui/video/common/library/utils/DeviceUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/common/library/utils/DeviceUtils;->getScreenWidthPixels()I

    move-result v1

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/video/biz/videoplus/app/widget/UIShortcutImageView;->ratio:F

    return-void
.end method
