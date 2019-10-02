.class public Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;
.super Landroid/widget/TextView;
.source "MagicTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MagicTextView"


# instance fields
.field private canvasStore:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private foregroundDrawable:Landroid/graphics/drawable/Drawable;

.field private frozen:Z

.field private innerShadows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;",
            ">;"
        }
    .end annotation
.end field

.field private lockedCompoundPadding:[I

.field private mDstOutMode:Landroid/graphics/Xfermode;

.field private mInnerFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/MaskFilter;",
            ">;"
        }
    .end annotation
.end field

.field private mSrcAtopMode:Landroid/graphics/Xfermode;

.field private outerShadows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;",
            ">;"
        }
    .end annotation
.end field

.field private strokeColor:Ljava/lang/Integer;

.field private strokeJoin:Landroid/graphics/Paint$Join;

.field private strokeMiter:F

.field private strokeWidth:F

.field private tempBitmap:Landroid/graphics/Bitmap;

.field private tempCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    invoke-virtual {p0, p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    invoke-virtual {p0, p2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private generateTempCanvas()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const-string v0, "%dx%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Canvas;

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public addInnerShadow(FFFI)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x38d1b717    # 1.0E-4f

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->innerShadows:Ljava/util/List;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;-><init>(FFFI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->mInnerFilters:Ljava/util/List;

    new-instance p3, Landroid/graphics/BlurMaskFilter;

    sget-object p4, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {p3, p1, p4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOuterShadow(FFFI)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const p1, 0x38d1b717    # 1.0E-4f

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->outerShadows:Ljava/util/List;

    new-instance v1, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;-><init>(FFFI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearInnerShadows()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->innerShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->mInnerFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearOuterShadows()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->outerShadows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public freeze()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->lockedCompoundPadding:[I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getCompoundPaddingStart()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->lockedCompoundPadding:[I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getCompoundPaddingEnd()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->lockedCompoundPadding:[I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getCompoundPaddingTop()I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->lockedCompoundPadding:[I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getCompoundPaddingBottom()I

    move-result v1

    const/4 v3, 0x3

    aput v1, v0, v3

    iput-boolean v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    return-void
.end method

.method public getCompoundPaddingBottom()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getCompoundPaddingEnd()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingEnd()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getCompoundPaddingStart()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingStart()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 2

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->lockedCompoundPadding:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    :goto_0
    return v0
.end method

.method public getForeground()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getCurrentTextColor()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public init(Landroid/util/AttributeSet;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->outerShadows:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->innerShadows:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->mInnerFilters:Ljava/util/List;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->canvasStore:Ljava/util/WeakHashMap;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->mSrcAtopMode:Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->mDstOutMode:Landroid/graphics/Xfermode;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->lockedCompoundPadding:[I

    const-string v0, "MagicTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attrs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->invalidate(IIII)V

    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/TextView;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->freeze()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getCurrentTextColor()I

    move-result v2

    const-string v3, "MagicTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "text: size(px): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getTextSize()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", alpha: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", red: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", green: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", blue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->outerShadows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->outerShadows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;

    const-string v6, "MagicTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "outerShadow: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v5, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;->r:F

    iget v7, v5, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;->dx:F

    iget v8, v5, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;->dy:F

    iget v5, v5, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;->color:I

    invoke-virtual {p0, v6, v7, v8, v5}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setShadowLayer(FFFI)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v5, v5, v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setShadowLayer(FFFI)V

    invoke-virtual {p0, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v6, v6, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_1

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->generateTempCanvas()V

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v6}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->mSrcAtopMode:Landroid/graphics/Xfermode;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v6, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeColor:Ljava/lang/Integer;

    if-eqz v6, :cond_2

    const-string v6, "MagicTextView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "stroke: width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeWidth:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", alpha: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", red: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", green: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", blue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeColor:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v7, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeJoin:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget v7, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeMiter:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeMiter(F)V

    iget-object v7, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeColor:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setTextColor(I)V

    iget v7, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeWidth:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setTextColor(I)V

    :cond_2
    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->innerShadows:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-lez v6, :cond_3

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->generateTempCanvas()V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v8, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->innerShadows:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;

    const-string v11, "MagicTextView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "innerShadow: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v11, v10, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;->color:I

    invoke-virtual {p0, v11}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setTextColor(I)V

    iget-object v11, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v11}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    const/high16 v11, -0x1000000

    invoke-virtual {p0, v11}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setTextColor(I)V

    iget-object v11, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->mDstOutMode:Landroid/graphics/Xfermode;

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v11, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->mInnerFilters:Ljava/util/List;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/MaskFilter;

    invoke-virtual {v6, v11}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    add-int/2addr v9, v7

    iget-object v11, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    iget-object v11, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    iget v12, v10, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;->dx:F

    iget v10, v10, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView$Shadow;->dy:F

    invoke-virtual {v11, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v10, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-super {p0, v10}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v10, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v10}, Landroid/graphics/Canvas;->restore()V

    iget-object v10, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v10, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v10, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->tempCanvas:Landroid/graphics/Canvas;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v10, v4, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    invoke-virtual {p0, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setTextColor(I)V

    invoke-virtual {p0, v5, v5, v5, v4}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    aget-object p1, v1, v4

    aget-object v3, v1, v7

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {p0, p1, v3, v4, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_4
    invoke-virtual {p0, v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->unfreeze()V

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public postInvalidate(IIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->postInvalidate(IIII)V

    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setForegroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->foregroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setStroke(FI)V
    .locals 3

    const-string v0, "MagicTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStroke: width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " color "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->setStroke(FILandroid/graphics/Paint$Join;F)V

    return-void
.end method

.method public setStroke(FILandroid/graphics/Paint$Join;F)V
    .locals 3

    const-string v0, "MagicTextView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStroke: width "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " color "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " join "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " miter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeWidth:F

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeColor:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeJoin:Landroid/graphics/Paint$Join;

    iput p4, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->strokeMiter:F

    return-void
.end method

.method public unfreeze()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/view/MagicTextView;->frozen:Z

    return-void
.end method
