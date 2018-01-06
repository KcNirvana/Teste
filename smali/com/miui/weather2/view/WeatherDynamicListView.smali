.class public Lcom/miui/weather2/view/WeatherDynamicListView;
.super Landroid/widget/ListView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/weather2/view/WeatherDynamicListView$b;,
        Lcom/miui/weather2/view/WeatherDynamicListView$a;
    }
.end annotation


# static fields
.field private static final EDGE_OFFSET:I = 0x32

.field private static final FULL_ALPHA:I = 0xff

.field private static final SMOOTH_SCROLL_AMOUNT_AT_EDGE:I = 0x5

.field private static final sBoundEvaluator:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_ID:I

.field private final INVALID_POINTER_ID:I

.field private mAboveItemId:J

.field private mActivePointerId:I

.field private mBelowItemId:J

.field private mCellIsMobile:Z

.field private mDownY:I

.field private mDuration:J

.field private mEdgeOffset:I

.field private mFixedItemViewNum:I

.field private mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

.field private mHoverCellCurrentBounds:Landroid/graphics/Rect;

.field private mHoverCellOriginalBounds:Landroid/graphics/Rect;

.field private mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mIsMobileScrolling:Z

.field private mIsWaitingForScrollFinish:Z

.field private mItemIdTopMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLargeSmoothScrollAmount:I

.field private mLastEventY:I

.field private mLastShadowBounds:Landroid/graphics/Rect;

.field private mLastStateBitmap:Landroid/graphics/Bitmap;

.field private mMobileItemId:J

.field private mOnItemRemoveListener:Lcom/miui/weather2/view/WeatherDynamicListView$a;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mRearrangeListener:Lcom/miui/weather2/view/WeatherDynamicListView$b;

.field private mScaleAnimator:Landroid/animation/ObjectAnimator;

.field private mScaleFactor:F

.field private mScrollListRunnable:Ljava/lang/Runnable;

.field private mScrollState:I

.field private mShadowBounds:Landroid/graphics/Rect;

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowHeight:I

.field private mSmallSmoothScrollAmount:I

.field private mSmoothScrollAmountAtEdge:I

.field private mTotalOffset:I

.field private mTouchEndAnimator:Landroid/animation/ObjectAnimator;

.field private mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/weather2/view/ae;

    invoke-direct {v0}, Lcom/miui/weather2/view/ae;-><init>()V

    sput-object v0, Lcom/miui/weather2/view/WeatherDynamicListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->INVALID_ID:I

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->INVALID_POINTER_ID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleFactor:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastEventY:I

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDownY:I

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTotalOffset:I

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsMobileScrolling:Z

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmoothScrollAmountAtEdge:I

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mEdgeOffset:I

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mAboveItemId:J

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mBelowItemId:J

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsWaitingForScrollFinish:Z

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mFixedItemViewNum:I

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollState:I

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mItemIdTopMap:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/miui/weather2/view/ak;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/ak;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/miui/weather2/view/al;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/al;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/weather2/view/am;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/am;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/WeatherDynamicListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->INVALID_ID:I

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->INVALID_POINTER_ID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleFactor:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastEventY:I

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDownY:I

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTotalOffset:I

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsMobileScrolling:Z

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmoothScrollAmountAtEdge:I

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mEdgeOffset:I

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mAboveItemId:J

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mBelowItemId:J

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsWaitingForScrollFinish:Z

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mFixedItemViewNum:I

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollState:I

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mItemIdTopMap:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/miui/weather2/view/ak;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/ak;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/miui/weather2/view/al;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/al;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/weather2/view/am;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/am;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/WeatherDynamicListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->INVALID_ID:I

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->INVALID_POINTER_ID:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleFactor:F

    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastEventY:I

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDownY:I

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTotalOffset:I

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsMobileScrolling:Z

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmoothScrollAmountAtEdge:I

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mEdgeOffset:I

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mAboveItemId:J

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mBelowItemId:J

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iput v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mActivePointerId:I

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsWaitingForScrollFinish:Z

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mFixedItemViewNum:I

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollState:I

    new-instance v0, Lmiui/util/ArrayMap;

    invoke-direct {v0}, Lmiui/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mItemIdTopMap:Ljava/util/Map;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/miui/weather2/view/ak;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/ak;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    new-instance v0, Lcom/miui/weather2/view/al;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/al;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/miui/weather2/view/am;

    invoke-direct {v0, p0}, Lcom/miui/weather2/view/am;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/WeatherDynamicListView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/weather2/view/WeatherDynamicListView;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/miui/weather2/view/WeatherDynamicListView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    return-wide p1
.end method

.method static synthetic access$1000(Lcom/miui/weather2/view/WeatherDynamicListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    return v0
.end method

.method static synthetic access$102(Lcom/miui/weather2/view/WeatherDynamicListView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mAboveItemId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/miui/weather2/view/WeatherDynamicListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->handleMobileCellScroll()V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/weather2/view/WeatherDynamicListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsWaitingForScrollFinish:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/weather2/view/WeatherDynamicListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->touchEventsEnded()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/weather2/view/WeatherDynamicListView;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/WeatherDynamicListView;->updateNeighborViewsForID(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/weather2/view/WeatherDynamicListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->handleCellSwitch()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/weather2/view/WeatherDynamicListView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/miui/weather2/view/WeatherDynamicListView;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTotalOffset:I

    return v0
.end method

.method static synthetic access$1802(Lcom/miui/weather2/view/WeatherDynamicListView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTotalOffset:I

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/weather2/view/WeatherDynamicListView;)J
    .locals 2

    iget-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miui/weather2/view/WeatherDynamicListView;J)J
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mBelowItemId:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/miui/weather2/view/WeatherDynamicListView;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/weather2/view/WeatherDynamicListView;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/weather2/view/WeatherDynamicListView;->animateRemoval(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/weather2/view/WeatherDynamicListView;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mItemIdTopMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$402(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method static synthetic access$500(Lcom/miui/weather2/view/WeatherDynamicListView;)Lcom/miui/weather2/view/WeatherDynamicListView$b;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mRearrangeListener:Lcom/miui/weather2/view/WeatherDynamicListView$b;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/weather2/view/WeatherDynamicListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsMobileScrolling:Z

    return v0
.end method

.method static synthetic access$700(Lcom/miui/weather2/view/WeatherDynamicListView;)I
    .locals 1

    iget v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmoothScrollAmountAtEdge:I

    return v0
.end method

.method static synthetic access$800(Lcom/miui/weather2/view/WeatherDynamicListView;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/weather2/view/WeatherDynamicListView;I)I
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollState:I

    return p1
.end method

.method private animateRemoval(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getFirstVisiblePosition()I

    move-result v3

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mItemIdTopMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationX(F)V

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int v5, v3, v1

    invoke-virtual {v0, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v6

    iget-object v5, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mItemIdTopMap:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mOnItemRemoveListener:Lcom/miui/weather2/view/WeatherDynamicListView$a;

    invoke-interface {v1, p1}, Lcom/miui/weather2/view/WeatherDynamicListView$a;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/miui/weather2/view/ah;

    invoke-direct {v2, p0, v0, p2}, Lcom/miui/weather2/view/ah;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/widget/BaseAdapter;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-direct {v4, v3, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v5
.end method

.method private getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method private getViewForPosition(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getFirstVisiblePosition()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getViewsForPosition(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private handleCellSwitch()V
    .locals 12

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastEventY:I

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDownY:I

    sub-int v6, v0, v1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTotalOffset:I

    add-int/2addr v0, v1

    add-int v4, v0, v6

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    iget-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mBelowItemId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    iget-wide v8, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    invoke-virtual {p0, v8, v9}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v8

    iget-wide v10, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mAboveItemId:J

    invoke-virtual {p0, v10, v11}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    if-eqz v0, :cond_3

    add-int v7, v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v7, v9, :cond_3

    move v7, v2

    :goto_0
    if-eqz v1, :cond_4

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v4, v5, :cond_4

    :goto_1
    if-nez v7, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    if-eqz v7, :cond_5

    iget-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mBelowItemId:J

    :goto_2
    if-eqz v7, :cond_1

    move-object v1, v0

    :cond_1
    invoke-virtual {p0, v8}, Lcom/miui/weather2/view/WeatherDynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v2

    iget v7, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mFixedItemViewNum:I

    if-ge v2, v7, :cond_6

    :cond_2
    :goto_3
    return-void

    :cond_3
    move v7, v3

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    iget-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mAboveItemId:J

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mRearrangeListener:Lcom/miui/weather2/view/WeatherDynamicListView$b;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mRearrangeListener:Lcom/miui/weather2/view/WeatherDynamicListView$b;

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v7

    invoke-interface {v2, v0, v7}, Lcom/miui/weather2/view/WeatherDynamicListView$b;->a(II)V

    :cond_7
    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastEventY:I

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDownY:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v8, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->updateNeighborViewsForID(J)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v1, Lcom/miui/weather2/view/ap;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/weather2/view/ap;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/view/ViewTreeObserver;JII)V

    invoke-virtual {v3, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_3
.end method

.method private handleMobileCellScroll()V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->handleMobileCellScroll(Landroid/graphics/Rect;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsMobileScrolling:Z

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mInternalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmallSmoothScrollAmount:I

    const/high16 v2, 0x3fc00000    # 1.5f

    iget v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmallSmoothScrollAmount:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLargeSmoothScrollAmount:I

    const/high16 v2, 0x42480000    # 50.0f

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mEdgeOffset:I

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowHeight:I

    return-void
.end method

.method private makeScalingAnimation()V
    .locals 7

    const/4 v6, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleFactor:F

    mul-float/2addr v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleFactor:F

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v5

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v5

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const-string v1, "HoverCellBounds"

    sget-object v2, Lcom/miui/weather2/view/WeatherDynamicListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p0, v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    const-string v0, "ro.sys.ft_whole_anim"

    invoke-static {v0, v6}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/weather2/view/an;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/an;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/weather2/view/ao;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/ao;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private touchEventsCancelled()V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    iget-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mAboveItemId:J

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    iput-wide v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mBelowItemId:J

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->invalidate()V

    :cond_0
    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsMobileScrolling:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mActivePointerId:I

    return-void
.end method

.method private touchEventsEnded()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    invoke-virtual {p0, v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsWaitingForScrollFinish:Z

    if-eqz v1, :cond_3

    :cond_0
    iput-boolean v6, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    iput-boolean v6, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsWaitingForScrollFinish:Z

    iput-boolean v6, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsMobileScrolling:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mActivePointerId:I

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollState:I

    if-eqz v1, :cond_1

    iput-boolean v7, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsWaitingForScrollFinish:Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    const-string v0, "HoverCellBounds"

    sget-object v1, Lcom/miui/weather2/view/WeatherDynamicListView;->sBoundEvaluator:Landroid/animation/TypeEvaluator;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    aput-object v3, v2, v6

    invoke-static {p0, v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    const-string v0, "ro.sys.ft_whole_anim"

    invoke-static {v0, v7}, Lmiui/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    :goto_1
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/miui/weather2/view/aq;

    invoke-direct {v1, p0}, Lcom/miui/weather2/view/aq;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->touchEventsCancelled()V

    goto :goto_0
.end method

.method private updateNeighborViewsForID(J)V
    .locals 5

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/view/WeatherDynamicListView;->getPositionForId(J)I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mAboveItemId:J

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mBelowItemId:J

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getHoverCellBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getLastStateAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getPositionForId(J)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForId(J)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method public getViewForId(J)Landroid/view/View;
    .locals 7

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    add-int v4, v3, v1

    invoke-virtual {v0, v4}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public handleMobileCellScroll(Landroid/graphics/Rect;)Z
    .locals 12

    const-wide/16 v10, 0xa

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->computeVerticalScrollOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->computeVerticalScrollExtent()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->computeVerticalScrollRange()I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mEdgeOffset:I

    mul-int/lit8 v7, v7, 0x2

    if-gt v5, v7, :cond_1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmallSmoothScrollAmount:I

    neg-int v1, v1

    iput v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmoothScrollAmountAtEdge:I

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mEdgeOffset:I

    if-gt v5, v1, :cond_0

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLargeSmoothScrollAmount:I

    neg-int v1, v1

    iput v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmoothScrollAmountAtEdge:I

    :cond_0
    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v10, v11}, Lcom/miui/weather2/view/WeatherDynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return v0

    :cond_1
    add-int v7, v5, v6

    iget v8, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mEdgeOffset:I

    mul-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    if-lt v7, v8, :cond_3

    add-int/2addr v1, v3

    if-ge v1, v4, :cond_3

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmallSmoothScrollAmount:I

    iput v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmoothScrollAmountAtEdge:I

    add-int v1, v5, v6

    iget v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mEdgeOffset:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLargeSmoothScrollAmount:I

    iput v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mSmoothScrollAmountAtEdge:I

    :cond_2
    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v10, v11}, Lcom/miui/weather2/view/WeatherDynamicListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScrollListRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDownY:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mActivePointerId:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mActivePointerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastEventY:I

    iget v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastEventY:I

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDownY:I

    sub-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    :cond_1
    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTotalOffset:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getFirstVisiblePosition()I

    move-result v0

    iget v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mFixedItemViewNum:I

    add-int/lit8 v3, v3, -0x1

    if-lt v3, v0, :cond_4

    iget v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mFixedItemViewNum:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v2

    :goto_2
    if-ge v1, v0, :cond_2

    :goto_3
    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellOriginalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->setHoverCellBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->handleCellSwitch()V

    iput-boolean v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mIsMobileScrolling:Z

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->handleMobileCellScroll()V

    move v0, v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getHeight()I

    move-result v0

    iget-object v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v0, v3

    if-le v1, v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCellCurrentBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_3

    :pswitch_3
    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->touchEventsEnded()V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->touchEventsCancelled()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iget v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mActivePointerId:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->touchEventsEnded()V

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public removeItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->removeItems(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public removeItems(Ljava/util/List;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/miui/weather2/view/WeatherDynamicListView;->getPositionForId(J)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastStateBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/weather2/view/WeatherDynamicListView;->mOnItemRemoveListener:Lcom/miui/weather2/view/WeatherDynamicListView$a;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/miui/weather2/view/WeatherDynamicListView$a;->a(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string v2, "LastStateAlpha"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v3, Lcom/miui/weather2/view/ar;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/miui/weather2/view/ar;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewsForPosition(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewsForPosition(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/weather2/view/WeatherDynamicListView;->setEnabled(Z)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v12

    const/4 v2, 0x0

    move v4, v2

    :goto_3
    if-ge v4, v12, :cond_5

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-interface {v8, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    neg-int v3, v3

    :goto_4
    sget-object v13, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    int-to-float v3, v3

    aput v3, v14, v15

    invoke-static {v2, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v13, Lcom/miui/weather2/view/af;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v2}, Lcom/miui/weather2/view/af;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;Landroid/view/View;)V

    invoke-virtual {v3, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    invoke-virtual {v3, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    const-wide/16 v16, 0x3

    div-long v14, v14, v16

    int-to-long v0, v4

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_4

    :cond_5
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v12, :cond_6

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_5

    :cond_6
    new-instance v2, Lcom/miui/weather2/view/ag;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5, v6}, Lcom/miui/weather2/view/ag;-><init>(Lcom/miui/weather2/view/WeatherDynamicListView;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_2

    :cond_7
    move v2, v3

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setDuration(J)V
    .locals 1

    iput-wide p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mDuration:J

    return-void
.end method

.method public setFixedItemViewNum(I)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mFixedItemViewNum:I

    return-void
.end method

.method public setHoverCellBounds(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mLastShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLastStateAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->invalidate()V

    return-void
.end method

.method public setOnItemRemoveListener(Lcom/miui/weather2/view/WeatherDynamicListView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mOnItemRemoveListener:Lcom/miui/weather2/view/WeatherDynamicListView$a;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setRearrangeListener(Lcom/miui/weather2/view/WeatherDynamicListView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mRearrangeListener:Lcom/miui/weather2/view/WeatherDynamicListView$b;

    return-void
.end method

.method public setScaleFactor(F)V
    .locals 0

    iput p1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mScaleFactor:F

    return-void
.end method

.method public startDragging(I)V
    .locals 4

    iget v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mFixedItemViewNum:I

    if-ge p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    iget-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTouchEndAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mTotalOffset:I

    invoke-direct {p0, p1}, Lcom/miui/weather2/view/WeatherDynamicListView;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    invoke-direct {p0, v0}, Lcom/miui/weather2/view/WeatherDynamicListView;->getAndAddHoverView(Landroid/view/View;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mHoverCell:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0}, Lcom/miui/weather2/view/WeatherDynamicListView;->makeScalingAnimation()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mCellIsMobile:Z

    iget-wide v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mMobileItemId:J

    invoke-direct {p0, v0, v1}, Lcom/miui/weather2/view/WeatherDynamicListView;->updateNeighborViewsForID(J)V

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mRearrangeListener:Lcom/miui/weather2/view/WeatherDynamicListView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/weather2/view/WeatherDynamicListView;->mRearrangeListener:Lcom/miui/weather2/view/WeatherDynamicListView$b;

    invoke-interface {v0}, Lcom/miui/weather2/view/WeatherDynamicListView$b;->a()V

    goto :goto_0
.end method
