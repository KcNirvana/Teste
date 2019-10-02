.class public Lcom/miui/video/player/service/controller/VideoSlideSeekBar;
.super Landroid/view/View;
.source "VideoSlideSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;
    }
.end annotation


# static fields
.field public static final SLIDE_MAX:I = 0x1

.field public static final SLIDE_MAX_DEFAULT:F = 0.8f

.field public static final SLIDE_MIDLE:I = 0x2

.field public static final SLIDE_MIN:I = 0x0

.field public static final SLIDE_MIN_DEFAULT:F = 0.2f


# instance fields
.field private bigRange:F

.field private bigValue:I

.field private hasInit:Z

.field private highTime:I

.field private isLowerMoving:Z

.field private isMidleDown:Z

.field private isUpperMoving:Z

.field private lineEnd:I

.field private lineLength:I

.field private linePaint:Landroid/graphics/Paint;

.field private lineStart:I

.field private lineWidth:I

.field private lineY:I

.field private lowTime:I

.field private onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

.field private oriLineHeight:I

.field private oriLinePaint:Landroid/graphics/Paint;

.field private oriLineWidth:I

.field private paddingBottom:I

.field private paddingLeft:I

.field private paddingRight:I

.field private paddingTop:I

.field private slideBigX:I

.field private slideLowX:I

.field private smallRange:F

.field private smallValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineWidth:I

    const/16 p1, 0x190

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineLength:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42820000    # 65.0f

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingLeft:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingRight:I

    const/16 p1, 0x14

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingTop:I

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingBottom:I

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingLeft:I

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineLength:I

    iget p2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingLeft:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineEnd:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->bigValue:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallValue:I

    iput-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->hasInit:Z

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->init()V

    return-void
.end method

.method private completeRange()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    iget-boolean v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isUpperMoving:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isLowerMoving:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-interface {v0, v1}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;->completeRange(I)V

    :cond_2
    return-void
.end method

.method private computeRange(F)F
    .locals 2

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->bigValue:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallValue:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineLength:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallValue:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1
.end method

.method private computeSlideIndex()V
    .locals 4

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getDuration()I

    move-result v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lowTime:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->highTime:I

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lowTime:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->highTime:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineLength:I

    int-to-float v3, v3

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineLength:I

    int-to-float v1, v1

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineLength:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineLength:I

    int-to-float v2, v2

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    :goto_1
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slide test--- computeSlideIndex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  and --"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDuration()I
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    invoke-interface {v0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getMyMeasureHeight(I)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingBottom:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingBottom:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingTop:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    return p1
.end method

.method private getMyMeasureWidth(I)I
    .locals 2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingLeft:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingLeft:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingRight:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingLeft:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingRight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineLength:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineLength:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineEnd:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingLeft:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->hasInit:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineEnd:I

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->computeSlideIndex()V

    :goto_1
    return p1
.end method

.method private init()V
    .locals 1

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineEnd:I

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallRange:F

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->bigValue:I

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->bigRange:F

    const/16 v0, 0x23

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineHeight:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    return-void
.end method

.method private updateRange(Z)V
    .locals 4

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->computeRange(F)F

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallRange:F

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->computeRange(F)F

    move-result v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->bigRange:F

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getDuration()I

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallRange:F

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lowTime:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->bigRange:F

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getDuration()I

    move-result v2

    int-to-float v2, v2

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->highTime:I

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    if-ne v0, v2, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    const/4 v0, 0x2

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallRange:F

    div-float/2addr v2, v1

    iget v3, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->bigRange:F

    div-float/2addr v3, v1

    invoke-interface {p1, v0, v2, v3}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;->onRange(IFF)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/common/library/utils/DeviceUtils;->isLayoutLTR(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallRange:F

    div-float/2addr v2, v1

    iget v3, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->bigRange:F

    div-float/2addr v3, v1

    invoke-interface {v0, p1, v2, v3}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;->onRange(IFF)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    xor-int/lit8 p1, p1, 0x1

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->bigRange:F

    sub-float v2, v1, v2

    div-float/2addr v2, v1

    iget v3, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->smallRange:F

    sub-float v3, v1, v3

    div-float/2addr v3, v1

    invoke-interface {v0, p1, v2, v3}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;->onRange(IFF)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->paddingTop:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x40400000    # 3.0f

    sget-object v2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    new-instance v1, Landroid/graphics/PathDashPathEffect;

    const v2, 0x42253333    # 41.3f

    sget-object v4, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    iget-object v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineWidth:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget-boolean v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isLowerMoving:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float v2, v2

    iget v6, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float v2, v2

    iget v6, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float v2, v2

    iget v6, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->moveTo(FF)V

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float v2, v2

    iget v6, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_0
    iget-object v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/PathDashPathEffect;

    const/high16 v2, 0x41700000    # 15.0f

    sget-object v6, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    invoke-direct {v1, v0, v2, v3, v6}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineEnd:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLinePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLinePaint:Landroid/graphics/Paint;

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isLowerMoving:Z

    const/16 v1, 0x1e

    const/16 v2, 0x14

    if-eqz v0, :cond_3

    const/16 v1, 0x14

    const/16 v2, 0x1e

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isUpperMoving:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x14

    :goto_1
    const-string v0, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x zhi ----- computeSlideIndex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  and --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float v4, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float v6, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    sub-int/2addr v0, v2

    int-to-float v7, v0

    iget-object v8, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float v5, v0

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget-object v7, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLinePaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getMyMeasureWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->getMyMeasureHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isLowerMoving:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_1

    float-to-int p1, v0

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->postInvalidate()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_2

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineStart:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p1, v1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->postInvalidate()V

    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->updateRange(Z)V

    goto/16 :goto_6

    :cond_3
    iget-boolean p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isUpperMoving:Z

    if-eqz p1, :cond_10

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_5

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineEnd:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_5

    float-to-int p1, v0

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    iget v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineEnd:I

    if-le p1, v0, :cond_4

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineEnd:I

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    :cond_4
    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->postInvalidate()V

    goto :goto_1

    :cond_5
    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_6

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineEnd:I

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->oriLineWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_6

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->postInvalidate()V

    :cond_6
    :goto_1
    invoke-direct {p0, v3}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->updateRange(Z)V

    goto/16 :goto_6

    :pswitch_1
    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->completeRange()V

    iput-boolean v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isUpperMoving:Z

    iput-boolean v2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isLowerMoving:Z

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->postInvalidate()V

    goto/16 :goto_6

    :pswitch_2
    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lineY:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_7

    const/4 p1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    :goto_2
    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v4, 0x42480000    # 50.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :goto_3
    iget v5, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float v5, v5

    sub-float v5, v0, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpg-float v4, v5, v4

    if-gez v4, :cond_9

    const/4 v2, 0x1

    :cond_9
    const-string v4, "test"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slide test --- +rightY--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    if-eqz v1, :cond_d

    if-eqz v2, :cond_d

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_a

    iput-boolean v3, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isLowerMoving:Z

    goto :goto_5

    :cond_a
    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-gtz p1, :cond_c

    iget p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideLowX:I

    int-to-float p1, p1

    sub-float p1, v0, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->slideBigX:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    goto :goto_4

    :cond_b
    iput-boolean v3, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isLowerMoving:Z

    goto :goto_5

    :cond_c
    :goto_4
    iput-boolean v3, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isUpperMoving:Z

    goto :goto_5

    :cond_d
    if-eqz p1, :cond_e

    if-eqz v1, :cond_e

    iput-boolean v3, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isLowerMoving:Z

    goto :goto_5

    :cond_e
    if-eqz p1, :cond_f

    if-eqz v2, :cond_f

    iput-boolean v3, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->isUpperMoving:Z

    :cond_f
    :goto_5
    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->postInvalidate()V

    :cond_10
    :goto_6
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->computeSlideIndex()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setInitValue(II)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->hasInit:Z

    if-gt p1, p2, :cond_0

    iput p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->lowTime:I

    iput p2, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->highTime:I

    invoke-virtual {p0}, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->invalidate()V

    :cond_0
    return-void
.end method

.method public setOnRangeListener(Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/controller/VideoSlideSeekBar;->onRangeListener:Lcom/miui/video/player/service/controller/VideoSlideSeekBar$OnRangeListener;

    return-void
.end method
