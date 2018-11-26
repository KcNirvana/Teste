.class public Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;
.super Landroid/view/View;
.source ""


# instance fields
.field aHA:I

.field aHB:Landroid/graphics/Path;

.field aHC:I

.field aHD:Landroid/graphics/Path;

.field aHE:Z

.field aHF:Ljava/util/List;

.field aHG:I

.field aHH:Lcom/miui/powercenter/batteryhistory/k;

.field aHI:I

.field aHJ:I

.field aHK:Landroid/graphics/Path;

.field aHL:Landroid/text/TextPaint;

.field aHM:I

.field aHN:Landroid/graphics/Path;

.field aHy:I

.field aHz:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/miui/powercenter/batteryhistory/k;

    invoke-direct {v0}, Lcom/miui/powercenter/batteryhistory/k;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHH:Lcom/miui/powercenter/batteryhistory/k;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHz:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHK:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHD:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHN:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHB:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHF:Ljava/util/List;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHH:Lcom/miui/powercenter/batteryhistory/k;

    const/4 v1, 0x7

    new-array v1, v1, [I

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08011d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v4

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x2

    aput v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080120

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x3

    aput v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x4

    aput v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x5

    aput v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080123

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const/4 v3, 0x6

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/miui/powercenter/batteryhistory/k;->aTX([I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiOnly()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHE:Z

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aTH()V

    return-void
.end method

.method private aTJ(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHy:I

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    add-int/2addr v1, v3

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public aTG(Ljava/util/List;Ljava/util/concurrent/Executor;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Lcom/miui/powercenter/batteryhistory/f;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHF:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/f;-><init>(Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;Ljava/util/List;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p2, v1}, Lcom/miui/powercenter/batteryhistory/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method aTH()V
    .locals 3

    const/4 v2, 0x1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    if-gtz v1, :cond_0

    iput v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0901eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    add-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHI:I

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHI:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHC:I

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHC:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHM:I

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHM:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHA:I

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHA:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHJ:I

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHJ:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHy:I

    return-void
.end method

.method aTI(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->isLayoutRtl()Z

    move-result v5

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getWidth()I

    move-result v2

    if-eqz v5, :cond_6

    :goto_0
    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHI:I

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHH:Lcom/miui/powercenter/batteryhistory/k;

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/miui/powercenter/batteryhistory/k;->aTY(Landroid/graphics/Canvas;IIIZ)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070469

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v2

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHI:I

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHD:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080119

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHD:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070466

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v2

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHC:I

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHN:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08011a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHN:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070467

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v2

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHM:I

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHB:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f08011b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHB:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070468

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v2

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHA:I

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHK:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080118

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHK:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070465

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v2

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHJ:I

    iget v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHz:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f080117

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHz:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070464

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    int-to-float v1, v2

    iget v2, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHy:I

    iget v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHG:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public isLayoutRtl()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->getLayoutDirection()I

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

    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->isLayoutRtl()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHL:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aTI(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aTJ(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/BatteryHardwareBar;->aHH:Lcom/miui/powercenter/batteryhistory/k;

    invoke-virtual {v0, p1}, Lcom/miui/powercenter/batteryhistory/k;->init(I)V

    return-void
.end method
