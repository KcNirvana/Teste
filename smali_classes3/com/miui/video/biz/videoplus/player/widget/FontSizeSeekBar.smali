.class public Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;
.super Landroid/support/v7/widget/AppCompatSeekBar;
.source "FontSizeSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar$ISubtitleFontChangedListener;
    }
.end annotation


# instance fields
.field private final SELECTED_CIRCLE_RADIUS:I

.field private final SELECTED_COLOR:I

.field private final UNSELECTED_CIRCLE_RADIUS:I

.field private final UNSELECTED_COLOR:I

.field private fontNumber:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDividerStandard:I

.field private mGraduationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar$ISubtitleFontChangedListener;

.field private mSelectedNum:I

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mSelectedNum:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$color;->color_218BFF:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->SELECTED_COLOR:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$color;->color_DEE0E2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->UNSELECTED_COLOR:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_8:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->SELECTED_CIRCLE_RADIUS:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/miui/video/biz/videoplus/R$dimen;->dp_3:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->UNSELECTED_CIRCLE_RADIUS:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->init()V

    return-void
.end method

.method private calculateProgress()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->fontNumber:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mDividerStandard:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->setCurrentSize(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawDotLeft(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->paint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->SELECTED_COLOR:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->UNSELECTED_COLOR:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->SELECTED_CIRCLE_RADIUS:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->UNSELECTED_CIRCLE_RADIUS:I

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float p1, p1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDotMiddle(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->paint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->SELECTED_COLOR:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->UNSELECTED_COLOR:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->SELECTED_CIRCLE_RADIUS:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->UNSELECTED_CIRCLE_RADIUS:I

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, p1, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float p1, p1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDotRight(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->paint:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->SELECTED_COLOR:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->UNSELECTED_COLOR:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->SELECTED_CIRCLE_RADIUS:I

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->UNSELECTED_CIRCLE_RADIUS:I

    :goto_1
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float p1, p1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->UNSELECTED_COLOR:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/miui/video/biz/videoplus/player/PlayerConstant;->SUBTITLE_FONT_SIZE:[Ljava/lang/Integer;

    array-length v0, v0

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->fontNumber:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getMax()I

    move-result v0

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->fontNumber:I

    add-int/2addr v2, v1

    div-int/2addr v0, v2

    iput v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mDividerStandard:I

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getMax()I

    move-result v0

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->fontNumber:I

    sub-int/2addr v2, v1

    div-int/2addr v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->fontNumber:I

    if-ge v2, v3, :cond_2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ne v2, v0, :cond_1

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->getMax()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mGraduationList:Ljava/util/ArrayList;

    mul-int v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mCanvas:Landroid/graphics/Canvas;

    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mSelectedNum:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->drawDotLeft(Z)V

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->drawDotMiddle(Z)V

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->drawDotRight(Z)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mSelectedNum:I

    if-ne p1, v0, :cond_1

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->drawDotLeft(Z)V

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->drawDotMiddle(Z)V

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->drawDotRight(Z)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mSelectedNum:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->drawDotLeft(Z)V

    invoke-direct {p0, v1}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->drawDotMiddle(Z)V

    invoke-direct {p0, v0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->drawDotRight(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->calculateProgress()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentSize(I)V
    .locals 1

    iput p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mSelectedNum:I

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mListener:Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar$ISubtitleFontChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mListener:Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar$ISubtitleFontChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar$ISubtitleFontChangedListener;->onSubtitleFontSizeChanged(I)V

    :cond_0
    return-void
.end method

.method public setFontChangeListener(Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar$ISubtitleFontChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar;->mListener:Lcom/miui/video/biz/videoplus/player/widget/FontSizeSeekBar$ISubtitleFontChangedListener;

    return-void
.end method
