.class public Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;
.super Landroid/widget/SeekBar;
.source "DuoKanSeekbar.java"


# instance fields
.field private mDuokanListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->getPaddingRight()I

    move-result v2

    sub-int v3, v0, v1

    sub-int/2addr v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    const/4 v4, 0x0

    if-ge p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    sub-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v3

    div-float/2addr p1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    add-float/2addr v4, p1

    float-to-int p1, v4

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->mDuokanListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->mDuokanListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iput-object p1, p0, Lcom/miui/video/player/service/ui/seekbar/DuoKanSeekbar;->mDuokanListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    new-array v2, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const v8, 0x102000d

    if-eq v6, v8, :cond_0

    const v8, 0x102000f

    if-ne v6, v8, :cond_1

    :cond_0
    instance-of v6, v7, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v6, :cond_1

    new-instance v5, Lcom/miui/video/player/service/ui/seekbar/LevelNinePathDrawable;

    check-cast v7, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v5, v7}, Lcom/miui/video/player/service/ui/seekbar/LevelNinePathDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable;)V

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v5

    move-object v5, v7

    :goto_1
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    :goto_2
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
