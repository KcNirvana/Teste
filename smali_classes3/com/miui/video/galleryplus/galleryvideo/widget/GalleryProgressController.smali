.class public Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;
.super Landroid/widget/FrameLayout;
.source "GalleryProgressController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyViewHolder;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;,
        Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;
    }
.end annotation


# static fields
.field private static final CURSOR_LINE_BG_COLOR:I = -0x1

.field private static final CURSOR_LINE_RADIUS:I = 0x9

.field private static final CURSOR_LINE_STROKE_COLOR:I = 0x42000000

.field private static final CURSOR_LINE_STROKE_WIDTH:I = 0x1

.field private static final CURSOR_LINE_TOUCH_RANGE:I = 0x3c

.field private static final CURSOR_LINE_WIDTH:I = 0x12

.field public static final CURSOR_TYPE_LINE:I = 0x0

.field public static final CURSOR_TYPE_RANGE:I = 0x1

.field private static final FRAME_CORNER_RADIUS:I = 0x3

.field private static final MAX_CURSOR_PERCENT:I = 0x64

.field private static final POSITION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final RANGE_MASK_COLOR:I = -0x40000001


# instance fields
.field private mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;

.field private mBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCornerPath:Landroid/graphics/Path;

.field private mCursorLeftPercent:F

.field private mCursorRange:F

.field private mCursorRangeDrawable:Landroid/graphics/drawable/Drawable;

.field private mCursorType:I

.field private mFrameCount:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDraggingCursor:Z

.field private mLastMeasureWidth:I

.field private mLastMotionX:I

.field private mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "position"

    invoke-direct {v0, v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->POSITION:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mBitmapList:Ljava/util/List;

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCornerPath:Landroid/graphics/Path;

    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mLastMotionX:I

    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->initView()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mBitmapList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;)I
    .locals 0

    iget p0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mFrameCount:I

    return p0
.end method

.method private computeCursorPercent(I)F
    .locals 2

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    const/high16 v1, 0x42c80000    # 100.0f

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x12

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    mul-float p1, p1, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1
.end method

.method private getCursorHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method private getCursorLeft()I
    .locals 3

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    const/high16 v1, 0x42c80000    # 100.0f

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    mul-float v0, v0, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getCursorTop()I
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, -0x3

    return v0
.end method

.method private getCursorWidth()I
    .locals 2

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    if-nez v0, :cond_0

    const/16 v0, 0x12

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorRange:F

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40c00000    # 6.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initView()V
    .locals 4

    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/miui/video/galleryplus/R$color;->gallery_8k_frame_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v1, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;-><init>(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$1;)V

    iput-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->addView(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/video/galleryplus/R$drawable;->gallery_edit_progress_cursor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorRangeDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private isTouchInRangeOfCursor(I)Z
    .locals 4

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x3c

    if-gt p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorWidth()I

    move-result v3

    add-int/2addr v0, v3

    if-gt p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private notifyProgressChangeEnd()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;->onProgressChangeEnd()V

    :cond_0
    return-void
.end method

.method private notifyProgressChangeStart()V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

    invoke-interface {v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;->onProgressChangeStart()V

    :cond_0
    return-void
.end method

.method private notifyProgressChanged()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    invoke-interface {v0, v1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;->onProgressChanged(F)V

    :cond_0
    return-void
.end method

.method private updateCursorDrawable()V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public varargs createPositionAnimator([F)Landroid/animation/Animator;
    .locals 1

    sget-object v0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->POSITION:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v4, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    const/4 v3, 0x0

    const/high16 v6, 0x41400000    # 12.0f

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCornerPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    const v1, -0x40000001    # -1.9999999f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingLeft()I

    move-result v0

    int-to-float v2, v0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorWidth()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x6

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorTop()I

    move-result v0

    int-to-float v3, v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v4, v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorTop()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v5, v0

    const/high16 v6, 0x41100000    # 9.0f

    const/high16 v7, 0x41100000    # 9.0f

    iget-object v8, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorTop()I

    move-result v0

    int-to-float v3, v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v4, v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorTop()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v5, v0

    iget-object v8, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorRangeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public getCursorPosition()F
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    return v0
.end method

.method public getLeftLength()F
    .locals 2

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mLastMeasureWidth:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLength()F
    .locals 1

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mLastMeasureWidth:I

    int-to-float v0, v0

    return v0
.end method

.method public getSlowLength()F
    .locals 3

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getLeftLength()F

    move-result v0

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorRange:F

    iget v2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mLastMeasureWidth:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mLastMeasureWidth:I

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mLastMeasureWidth:I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->notifyDataSetChanged()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->updateCursorDrawable()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mIsDraggingCursor:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mLastMotionX:I

    sub-int p1, v0, p1

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->getCursorLeft()I

    move-result v2

    add-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->computeCursorPercent(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->setCursorPosition(F)V

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->notifyProgressChanged()V

    :cond_0
    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mLastMotionX:I

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mIsDraggingCursor:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mIsDraggingCursor:Z

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->notifyProgressChangeEnd()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->isTouchInRangeOfCursor(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mIsDraggingCursor:Z

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mLastMotionX:I

    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->notifyProgressChangeStart()V

    :cond_1
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBitmapList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mBitmapList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mFrameCount:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mFrameCount:I

    :goto_0
    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mAdapter:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$MyAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setCursorPosition(F)V
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    if-nez v1, :cond_0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorRange:F

    sub-float v1, v0, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorRange:F

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->invalidate()V

    return-void
.end method

.method public setCursorType(IF)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    iput p2, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorRange:F

    iget p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    const/high16 v0, 0x42c80000    # 100.0f

    sub-float/2addr v0, p2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    iput v0, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorLeftPercent:F

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorType:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mCursorRange:F

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->updateCursorDrawable()V

    invoke-virtual {p0}, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->invalidate()V

    return-void
.end method

.method public setOnProgressChangedListener(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController;->mListener:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryProgressController$OnProgressChangedListener;

    return-void
.end method
