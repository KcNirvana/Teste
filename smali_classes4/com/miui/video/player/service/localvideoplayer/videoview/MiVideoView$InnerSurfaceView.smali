.class Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;
.super Landroid/view/SurfaceView;
.source "MiVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerSurfaceView"
.end annotation


# instance fields
.field private mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;


# direct methods
.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {p0, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-direct {p0, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;

    invoke-direct {p1, p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;)V

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const-string v2, "MiVideoView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMeasure  widthMeasureSpec size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x78

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v3}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoHeight()I

    move-result v3

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v5}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoSarNum()I

    move-result v5

    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-virtual {v6}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->getVideoSarDen()I

    move-result v6

    iget-object v7, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v7}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2100(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p1, "MiVideoView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "videoWidth videoHeight  size: "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " sar: "

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "x"

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    int-to-float p1, v0

    int-to-float p2, v1

    div-float v7, p1, p2

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    int-to-float v3, v5

    mul-float v2, v2, v3

    int-to-float v3, v6

    div-float/2addr v2, v3

    :cond_1
    cmpl-float v3, v2, v7

    if-lez v3, :cond_2

    div-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :cond_2
    mul-float p2, p2, v2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    const-string p1, "MiVideoView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setting size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2200(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "MiVideoView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mUseAdjustSize size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2300(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2400(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2300(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)I

    move-result v0

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2400(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)I

    move-result v1

    :cond_3
    const-string p1, "MiVideoView"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMeasuredDimension size: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->setMeasuredDimension(II)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2500(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceView;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 p2, 0x51

    invoke-direct {p1, v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object p2, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p2}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2500(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView$InnerSurfaceView;->this$0:Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;

    invoke-static {p1}, Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;->access$2500(Lcom/miui/video/player/service/localvideoplayer/videoview/MiVideoView;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->invalidate()V

    goto :goto_2

    :cond_4
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    :cond_5
    :goto_2
    return-void
.end method
