.class public Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;
.super Landroid/widget/ImageView;
.source "FBBorderImg.java"


# instance fields
.field private a:Lcom/alipay/android/app/birdnest/gifimage/a;

.field private b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    new-instance v0, Lcom/alipay/android/app/birdnest/gifimage/a;

    invoke-direct {v0}, Lcom/alipay/android/app/birdnest/gifimage/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    new-instance v0, Lcom/alipay/android/app/birdnest/gifimage/a;

    invoke-direct {v0}, Lcom/alipay/android/app/birdnest/gifimage/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    new-instance v0, Lcom/alipay/android/app/birdnest/gifimage/a;

    invoke-direct {v0}, Lcom/alipay/android/app/birdnest/gifimage/a;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    return-void
.end method

.method private a()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    invoke-virtual {v0}, Lcom/alipay/android/app/birdnest/gifimage/a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/birdnest/gifimage/a;->b(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/birdnest/gifimage/a;->a(Landroid/graphics/Canvas;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a(IIII)V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public resetWheelHelper(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "com.alipay.android.app/alipay_msp_loading_blue.gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.alipay.android.app/alipay_msp_loading.gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    if-nez v0, :cond_2

    const/4 v3, 0x4

    const/4 v5, -0x1

    const-string/jumbo v0, "com.alipay.android.app/alipay_msp_loading_blue.gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "#108ee9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    const/16 v3, 0xa

    :cond_1
    new-instance v0, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    iput-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a()V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->a(I)V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b(II)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->f()V

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->b()V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->invalidate()V

    :cond_3
    :goto_0
    return v0

    :cond_4
    invoke-direct {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v1}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->d()V

    iget-object v1, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->b:Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;

    invoke-virtual {v1}, Lcom/alipay/android/app/birdnest/gifimage/ProgressWheelHelper;->e()V

    invoke-virtual {p0}, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->invalidate()V

    goto :goto_0
.end method

.method public setBorder(II)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/android/app/birdnest/gifimage/a;->a(II)V

    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/birdnest/gifimage/FBBorderImg;->a:Lcom/alipay/android/app/birdnest/gifimage/a;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/birdnest/gifimage/a;->a(I)V

    return-void
.end method
