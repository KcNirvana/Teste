.class public Lcom/miui/video/player/service/play/ViewGestureHandler;
.super Ljava/lang/Object;
.source "ViewGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ViewGestureHandler"

.field private static X_TOLERANCE:F

.field private static Y_TOLERANCE:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayInformationFetcher:Lcom/miui/video/player/service/play/DisplayInformationFetcher;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDownLeftRegion:Z

.field private mDownRightRegion:Z

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

.field private mIsScrolled:Z

.field private mMoved:Z

.field private mMovedCenter:Z

.field private mMovedLeft:Z

.field private mMovedRight:Z

.field private mTouchStartY:F

.field private mX:F

.field private mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mTouchStartY:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mX:F

    iput v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMoved:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedLeft:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedRight:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedCenter:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownRightRegion:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownLeftRegion:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mIsScrolled:Z

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/video/player/service/play/ViewGestureHandler$1;

    invoke-direct {v2, p0}, Lcom/miui/video/player/service/play/ViewGestureHandler$1;-><init>(Lcom/miui/video/player/service/play/ViewGestureHandler;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/miui/video/player/service/play/ViewGestureHandler;->init()V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/video/player/service/play/ViewGestureHandler;)F
    .locals 0

    iget p0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mTouchStartY:F

    return p0
.end method

.method static synthetic access$002(Lcom/miui/video/player/service/play/ViewGestureHandler;F)F
    .locals 0

    iput p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mTouchStartY:F

    return p1
.end method

.method static synthetic access$100(Lcom/miui/video/player/service/play/ViewGestureHandler;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/play/ViewGestureHandler;->touchStart(FF)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/video/player/service/play/ViewGestureHandler;)Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/miui/video/player/service/play/ViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMoved:Z

    return p1
.end method

.method static synthetic access$402(Lcom/miui/video/player/service/play/ViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownLeftRegion:Z

    return p1
.end method

.method static synthetic access$502(Lcom/miui/video/player/service/play/ViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownRightRegion:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/video/player/service/play/ViewGestureHandler;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/play/ViewGestureHandler;->touchUp(FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/video/player/service/play/ViewGestureHandler;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/video/player/service/play/ViewGestureHandler;->touchMove(FF)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/video/player/service/play/ViewGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mIsScrolled:Z

    return p1
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/player/service/play/DisplayInformationFetcher;->getInstance(Landroid/content/Context;)Lcom/miui/video/player/service/play/DisplayInformationFetcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDisplayInformationFetcher:Lcom/miui/video/player/service/play/DisplayInformationFetcher;

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDisplayInformationFetcher:Lcom/miui/video/player/service/play/DisplayInformationFetcher;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/DisplayInformationFetcher;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float v0, v0, v1

    sput v0, Lcom/miui/video/player/service/play/ViewGestureHandler;->Y_TOLERANCE:F

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    sput v0, Lcom/miui/video/player/service/play/ViewGestureHandler;->X_TOLERANCE:F

    return-void
.end method

.method private touchMove(FF)V
    .locals 6

    iget v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mX:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mY:F

    sub-float v1, p2, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/miui/video/player/service/play/ViewGestureHandler;->Y_TOLERANCE:F

    cmpl-float v4, v3, v4

    const/4 v5, 0x1

    if-lez v4, :cond_4

    cmpl-float v4, v3, v2

    if-gtz v4, :cond_0

    iget-boolean v4, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedLeft:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedRight:Z

    if-eqz v4, :cond_4

    :cond_0
    iget-boolean v4, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedCenter:Z

    if-nez v4, :cond_4

    iget-boolean v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownLeftRegion:Z

    if-eqz v2, :cond_2

    iput-boolean v5, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedLeft:Z

    iget-object v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0, v1}, Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;->onTouchMove(IFF)V

    :cond_1
    iput-boolean v5, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMoved:Z

    iput p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mX:F

    iput p2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mY:F

    :cond_2
    iget-boolean v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownRightRegion:Z

    if-eqz v2, :cond_7

    iput-boolean v5, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedRight:Z

    iget-object v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    invoke-interface {v2, v5, v0, v1}, Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;->onTouchMove(IFF)V

    :cond_3
    iput-boolean v5, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMoved:Z

    iput p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mX:F

    iput p2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mY:F

    goto :goto_0

    :cond_4
    sget v4, Lcom/miui/video/player/service/play/ViewGestureHandler;->X_TOLERANCE:F

    cmpl-float v4, v2, v4

    if-lez v4, :cond_7

    cmpl-float v2, v2, v3

    if-gez v2, :cond_5

    iget-boolean v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedCenter:Z

    if-eqz v2, :cond_7

    :cond_5
    iget-boolean v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedLeft:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedRight:Z

    if-nez v2, :cond_7

    iput-boolean v5, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedCenter:Z

    iget-object v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0, v1}, Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;->onTouchMove(IFF)V

    :cond_6
    iput-boolean v5, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMoved:Z

    iput p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mX:F

    iput p2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mY:F

    :cond_7
    :goto_0
    return-void
.end method

.method private touchStart(FF)V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDisplayInformationFetcher:Lcom/miui/video/player/service/play/DisplayInformationFetcher;

    invoke-virtual {v0}, Lcom/miui/video/player/service/play/DisplayInformationFetcher;->getScreenWidth()I

    move-result v0

    iput p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mX:F

    iput p2, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mY:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedLeft:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedRight:Z

    iput-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedCenter:Z

    iget p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mX:F

    div-int/lit8 p2, v0, 0x2

    int-to-float v1, p2

    cmpg-float p1, p1, v1

    const/4 v1, 0x1

    if-gtz p1, :cond_0

    iput-boolean v1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownLeftRegion:Z

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mX:F

    sub-int/2addr v0, p2

    int-to-float p2, v0

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_1

    iput-boolean v1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownRightRegion:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private touchUp(FF)V
    .locals 1

    iget-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMoved:Z

    const/4 p2, 0x2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    invoke-interface {p1, p2}, Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;->onTap(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedLeft:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    invoke-interface {p1, v0}, Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;->onTouchUp(I)V

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedRight:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;->onTouchUp(I)V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMovedCenter:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    invoke-interface {p1, p2}, Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;->onTouchUp(I)V

    :cond_3
    :goto_0
    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMoved:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownLeftRegion:Z

    iput-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mDownRightRegion:Z

    return-void
.end method


# virtual methods
.method public isMoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mMoved:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mIsScrolled:Z

    if-eqz v3, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/miui/video/player/service/play/ViewGestureHandler;->touchUp(FF)V

    iput-boolean v1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mIsScrolled:Z

    const-string v0, "ViewGestureHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent: ev = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2
.end method

.method public setGestureListener(Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/play/ViewGestureHandler;->mGestureListener:Lcom/miui/video/player/service/play/ViewGestureHandler$OnControlEventListener;

    return-void
.end method
