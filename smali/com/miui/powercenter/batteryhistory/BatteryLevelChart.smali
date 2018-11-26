.class public Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;
.super Landroid/view/View;
.source ""


# instance fields
.field final aIf:Landroid/graphics/Path;

.field final aIg:Landroid/graphics/Path;

.field final aIh:Landroid/graphics/Path;

.field aIi:J

.field aIj:J

.field aIk:Ljava/util/List;

.field aIl:I

.field aIm:I

.field aIn:I

.field aIo:I

.field aIp:I

.field final aIq:Landroid/text/TextPaint;

.field aIr:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIg:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIh:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIf:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIk:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public aUb(Ljava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIp:I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/d;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/d;->aTD()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIj:J

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/batteryhistory/d;

    invoke-virtual {v0}, Lcom/miui/powercenter/batteryhistory/d;->aTD()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIi:J

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIi:J

    iget-wide v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIj:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIj:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIi:J

    :cond_1
    return-void
.end method

.method aUc(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIn:I

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIm:I

    :goto_1
    sub-int v9, v7, v0

    new-instance v5, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/text/TextPaint;-><init>(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setColor(I)V

    int-to-float v1, v6

    int-to-float v2, v8

    int-to-float v3, v9

    int-to-float v4, v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v1, v6

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIl:I

    int-to-float v2, v0

    int-to-float v3, v9

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIl:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIl:I

    sub-int/2addr v0, v8

    div-int/lit8 v3, v0, 0x5

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/4 v0, 0x5

    if-ge v1, v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIm:I

    sub-int v0, v7, v0

    :goto_3
    mul-int v4, v3, v1

    add-int/2addr v4, v8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v5

    iget-object v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    sget-object v11, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget v10, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIm:I

    iget v11, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIo:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    mul-int/lit8 v10, v1, 0x14

    rsub-int/lit8 v10, v10, 0x64

    invoke-static {v10}, Lcom/miui/powercenter/a/k;->bcl(I)Ljava/lang/String;

    move-result-object v10

    int-to-float v0, v0

    iget v11, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIo:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v4

    int-to-float v11, v11

    iget-object v12, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    invoke-virtual {p1, v10, v0, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-nez v1, :cond_3

    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIm:I

    move v6, v0

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    int-to-float v0, v6

    int-to-float v5, v4

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v9

    int-to-float v4, v4

    invoke-virtual {v2, v0, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4

    :cond_4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08011c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIg:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIr:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIg:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIh:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIr:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIh:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_6
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIf:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIr:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIf:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    return-void

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x40400000    # 3.0f
    .end array-data
.end method

.method aUd(IIILandroid/graphics/Path;)V
    .locals 2

    if-eqz p4, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    if-le p3, p1, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ge p3, p1, :cond_0

    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p4, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method aUe()V
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getHeight()I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIr:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIr:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIo:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIo:I

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIo:I

    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIo:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIn:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIo:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIm:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIg:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIh:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIf:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIj:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIi:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIj:J

    sub-long v10, v4, v10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIn:I

    sub-int v12, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIn:I

    add-int/2addr v2, v12

    move-object/from16 v0, p0

    iput v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIl:I

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIk:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v6, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/powercenter/batteryhistory/d;

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTE()Z

    move-result v14

    if-eqz v14, :cond_6

    iget-byte v14, v2, Lcom/miui/powercenter/batteryhistory/d;->aHa:B

    invoke-virtual/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTD()J

    move-result-wide v16

    sub-long v16, v16, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIm:I

    sub-int v2, v7, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    div-long v16, v16, v10

    move-wide/from16 v0, v16

    long-to-int v2, v0

    sub-int v2, v7, v2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIm:I

    sub-int/2addr v2, v6

    :goto_1
    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIn:I

    add-int/2addr v6, v12

    add-int/lit8 v15, v14, 0x0

    add-int/lit8 v16, v12, -0x1

    mul-int v15, v15, v16

    div-int/lit8 v15, v15, 0x64

    sub-int/2addr v6, v15

    if-eq v5, v2, :cond_a

    if-eq v4, v6, :cond_a

    const/16 v4, 0xe

    if-gt v14, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIf:Landroid/graphics/Path;

    :goto_2
    if-eq v4, v3, :cond_5

    if-eqz v3, :cond_1

    int-to-float v5, v2

    int-to-float v14, v6

    invoke-virtual {v3, v5, v14}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    int-to-float v3, v2

    int-to-float v5, v6

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v3, v4

    :goto_3
    move v4, v2

    move v5, v2

    move-object v2, v3

    move v3, v6

    :goto_4
    move v6, v5

    move v5, v4

    move v4, v3

    move-object v3, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTD()J

    move-result-wide v16

    sub-long v16, v16, v8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIm:I

    sub-int v2, v7, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    div-long v16, v16, v10

    move-wide/from16 v0, v16

    long-to-int v2, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIm:I

    add-int/2addr v2, v6

    goto :goto_1

    :cond_3
    const/16 v4, 0x1d

    if-gt v14, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIh:Landroid/graphics/Path;

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIg:Landroid/graphics/Path;

    goto :goto_2

    :cond_5
    int-to-float v5, v2

    int-to-float v14, v6

    invoke-virtual {v4, v5, v14}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Lcom/miui/powercenter/batteryhistory/d;->aTF()Z

    move-result v2

    if-nez v2, :cond_9

    add-int/lit8 v2, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aUd(IIILandroid/graphics/Path;)V

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5, v3}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aUd(IIILandroid/graphics/Path;)V

    return-void

    :cond_8
    move v2, v7

    goto :goto_5

    :cond_9
    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    goto :goto_4

    :cond_a
    move-object/from16 v20, v3

    move v3, v4

    move v4, v5

    move v5, v2

    move-object/from16 v2, v20

    goto :goto_4
.end method

.method public isLayoutRtl()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->isLayoutRtl()Z

    move-result v0

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aUe()V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aIq:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryLevelChart;->aUc(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    return-void
.end method
