.class Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$2;
.super Ljava/lang/Object;
.source "LandscapeController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$2;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$2;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->updateSeekingValue(I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$2;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->startSeeking()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController$2;->this$0:Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;->access$100(Lcom/miui/video/biz/videoplus/player/mediacontroller/LandscapeController;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerContract$IPresenter;->stopSeeking()V

    return-void
.end method
