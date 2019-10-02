.class Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;
.super Ljava/lang/Object;
.source "PlayerContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationZoomRunnable"
.end annotation


# instance fields
.field private mFocusX:F

.field private mFocusY:F

.field private mStartTime:J

.field private mZoomEnd:F

.field private mZoomStart:F

.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;


# direct methods
.method private constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mZoomStart:F

    iput p3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mZoomEnd:F

    iput p4, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mFocusX:F

    iput p5, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mFocusY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;FFFFLcom/miui/video/biz/videoplus/player/widget/PlayerContentView$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;-><init>(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;FFFF)V

    return-void
.end method

.method private interpolate()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    const/high16 v2, 0x43480000    # 200.0f

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->access$2900(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-direct {p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->interpolate()F

    move-result v0

    iget v1, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mZoomStart:F

    iget v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mZoomEnd:F

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mZoomStart:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->access$1400(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->access$2800(Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;)Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;

    move-result-object v2

    iget v3, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mFocusX:F

    iget v4, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->mFocusY:F

    invoke-interface {v2, v1, v3, v4}, Lcom/miui/video/biz/videoplus/player/widget/PlayerGestureDetector$OnPlayerGestureListener;->onScale(FFF)V

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView$AnimationZoomRunnable;->this$0:Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;

    invoke-virtual {v0, p0}, Lcom/miui/video/biz/videoplus/player/widget/PlayerContentView;->postOnAnimation(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
