.class public Lcom/flybird/FBBorderText;
.super Lcom/alipay/birdnest/view/TextViewWrapper;
.source "FBBorderText.java"

# interfaces
.implements Lcom/flybird/IBorderable;


# static fields
.field public static final TAG:Ljava/lang/String; = "FBBorderText"


# instance fields
.field private DEFAULT_METRICS:Landroid/util/DisplayMetrics;

.field private mAutoFitFlag:Z

.field private mBorderHelper:Lcom/alipay/birdnest/a/a;

.field private mContext:Landroid/content/Context;

.field private mForceFocus:Z

.field private mPaint:Landroid/text/TextPaint;

.field private originalSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/birdnest/view/TextViewWrapper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    iput-boolean v0, p0, Lcom/flybird/FBBorderText;->mForceFocus:Z

    iput-boolean v0, p0, Lcom/flybird/FBBorderText;->mAutoFitFlag:Z

    iput-object v1, p0, Lcom/flybird/FBBorderText;->mPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/flybird/FBBorderText;->originalSize:F

    iput-object v1, p0, Lcom/flybird/FBBorderText;->DEFAULT_METRICS:Landroid/util/DisplayMetrics;

    new-instance v0, Lcom/alipay/birdnest/a/a;

    invoke-direct {v0}, Lcom/alipay/birdnest/a/a;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderText;->mPaint:Landroid/text/TextPaint;

    iput-object p1, p0, Lcom/flybird/FBBorderText;->mContext:Landroid/content/Context;

    return-void
.end method

.method private autoFit()V
    .locals 2

    invoke-virtual {p0}, Lcom/flybird/FBBorderText;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/flybird/FBBorderText;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/flybird/FBBorderText;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/flybird/FBBorderText;->autoFitCal(I)V

    goto :goto_0
.end method

.method private autoFitCal(I)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/flybird/FBBorderText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/flybird/FBBorderText;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/flybird/FBBorderText;->originalSize:F

    iget-object v3, p0, Lcom/flybird/FBBorderText;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    int-to-float v0, p1

    iget-object v2, p0, Lcom/flybird/FBBorderText;->mPaint:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v1, v8, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v2, p0, Lcom/flybird/FBBorderText;->mPaint:Landroid/text/TextPaint;

    int-to-float v3, p1

    const/4 v4, 0x0

    iget v0, p0, Lcom/flybird/FBBorderText;->originalSize:F

    iget-object v5, p0, Lcom/flybird/FBBorderText;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/flybird/FBTools;->getDp(Landroid/content/Context;)F

    move-result v5

    mul-float/2addr v5, v0

    const/high16 v6, 0x3f000000    # 0.5f

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/flybird/FBBorderText;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v7

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/flybird/FBBorderText;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFFFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {p0, v8, v0}, Lcom/flybird/FBBorderText;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFFFLandroid/util/DisplayMetrics;)F
    .locals 10

    add-float v1, p4, p5

    const/high16 v2, 0x40000000    # 2.0f

    div-float v6, v1, v2

    const/4 v1, 0x0

    move-object/from16 v0, p7

    invoke-static {v1, v6, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    sub-float v2, p5, p4

    cmpg-float v2, v2, p6

    if-gez v2, :cond_0

    :goto_0
    return p4

    :cond_0
    cmpl-float v2, v1, p3

    if-lez v2, :cond_1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/flybird/FBBorderText;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFFFLandroid/util/DisplayMetrics;)F

    move-result p4

    goto :goto_0

    :cond_1
    cmpg-float v1, v1, p3

    if-gez v1, :cond_2

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/flybird/FBBorderText;->getAutofitTextSize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FFFFLandroid/util/DisplayMetrics;)F

    move-result p4

    goto :goto_0

    :cond_2
    move p4, v6

    goto :goto_0
.end method

.method private getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    iget-object v0, p0, Lcom/flybird/FBBorderText;->DEFAULT_METRICS:Landroid/util/DisplayMetrics;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderText;->DEFAULT_METRICS:Landroid/util/DisplayMetrics;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/flybird/FBBorderText;->DEFAULT_METRICS:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget-object v0, p0, Lcom/flybird/FBBorderText;->DEFAULT_METRICS:Landroid/util/DisplayMetrics;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0}, Lcom/alipay/birdnest/a/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/birdnest/view/TextViewWrapper;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/a/a;->b(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBBorderText;->mForceFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/alipay/birdnest/view/TextViewWrapper;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/a/a;->a(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/birdnest/view/TextViewWrapper;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/flybird/FBBorderText;->mForceFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/birdnest/view/TextViewWrapper;->onFocusChanged(ZILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    const-string/jumbo v0, "FBBorderText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", oldw is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mAutoFitFlag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flybird/FBBorderText;->mAutoFitFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/birdnest/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/flybird/FBBorderText;->mAutoFitFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flybird/FBBorderText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-direct {p0}, Lcom/flybird/FBBorderText;->autoFit()V

    :cond_0
    return-void
.end method

.method public setAutoFit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBBorderText;->mAutoFitFlag:Z

    return-void
.end method

.method public setBorder(II)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/birdnest/a/a;->a(II)V

    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    iget-object v0, p0, Lcom/flybird/FBBorderText;->mBorderHelper:Lcom/alipay/birdnest/a/a;

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/a/a;->a(I)V

    return-void
.end method

.method public setBorderRadiusArray([F)V
    .locals 0

    return-void
.end method

.method public setForceFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/flybird/FBBorderText;->mForceFocus:Z

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/birdnest/view/TextViewWrapper;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    iget-boolean v0, p0, Lcom/flybird/FBBorderText;->mAutoFitFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flybird/FBBorderText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-direct {p0}, Lcom/flybird/FBBorderText;->autoFit()V

    :cond_0
    return-void
.end method

.method public setTextSize(IF)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/alipay/birdnest/view/TextViewWrapper;->setTextSize(IF)V

    iget v0, p0, Lcom/flybird/FBBorderText;->originalSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iput p2, p0, Lcom/flybird/FBBorderText;->originalSize:F

    :cond_0
    return-void
.end method
