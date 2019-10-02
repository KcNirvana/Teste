.class public Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;
.super Landroid/widget/SeekBar;
.source "FontSizeSelectSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;
    }
.end annotation


# instance fields
.field private final SELECTED_COLOR:Ljava/lang/String;

.field private final UNSELECTED_COLOR:Ljava/lang/String;

.field private circleRadius:I

.field private fontNumber:I

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDividerStandard:I

.field private mFontSize:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGraduationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;

.field private mSelectedNum:I

.field onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#ff0091dc"

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->SELECTED_COLOR:Ljava/lang/String;

    const-string p1, "#8e8e8e"

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->UNSELECTED_COLOR:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mSelectedNum:I

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mSelectedNum:I

    return p0
.end method

.method private calculateProgress()V
    .locals 4

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->fontNumber:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mDividerStandard:I

    sub-int/2addr v2, v3

    if-gez v2, :cond_0

    invoke-static {}, Lcom/miui/video/base/common/data/SettingsSPManager;->getInstance()Lcom/miui/video/base/common/data/SettingsSPManager;

    move-result-object v2

    const-string v3, "subtitle_font_size"

    invoke-virtual {v2, v3, v1}, Lcom/miui/video/base/common/data/SettingsSPManager;->saveInt(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->setCurrentSize(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawDotLeft(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->circleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->circleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawDotMiddle(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->circleRadius:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->circleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawDotRight(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->circleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->circleRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/player/service/R$dimen;->dp_8:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->circleRadius:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    const-string v1, "#8e8e8e"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$dimen;->dp_4:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private isLayoutRtl()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mCanvas:Landroid/graphics/Canvas;

    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mSelectedNum:I

    if-nez p1, :cond_0

    const-string p1, "#ff0091dc"

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->drawDotLeft(Ljava/lang/String;)V

    const-string p1, "#8e8e8e"

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->drawDotMiddle(Ljava/lang/String;)V

    const-string p1, "#8e8e8e"

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->drawDotRight(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mSelectedNum:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "#8e8e8e"

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->drawDotLeft(Ljava/lang/String;)V

    const-string p1, "#ff0091dc"

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->drawDotMiddle(Ljava/lang/String;)V

    const-string p1, "#8e8e8e"

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->drawDotRight(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mSelectedNum:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const-string p1, "#8e8e8e"

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->drawDotLeft(Ljava/lang/String;)V

    const-string p1, "#8e8e8e"

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->drawDotMiddle(Ljava/lang/String;)V

    const-string p1, "#ff0091dc"

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->drawDotRight(Ljava/lang/String;)V
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

    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->calculateProgress()V

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

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mSelectedNum:I

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;->onSubtitleFontSizeChanged(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;->onSubtitleFontSizeChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFontChangeListener(Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mListener:Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar$ISubtitleFontChangedListener;

    return-void
.end method

.method public setFontSize(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mFontSize:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->fontNumber:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getMax()I

    move-result p1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->fontNumber:I

    add-int/lit8 v0, v0, 0x1

    div-int/2addr p1, v0

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mDividerStandard:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getMax()I

    move-result p1

    iget v0, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->fontNumber:I

    add-int/lit8 v0, v0, -0x1

    div-int/2addr p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->fontNumber:I

    if-ge v1, v2, :cond_2

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ne v1, p1, :cond_1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mGraduationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->getMax()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/settings/subtitle/FontSizeSelectSeekBar;->mGraduationList:Ljava/util/ArrayList;

    mul-int v3, v1, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
