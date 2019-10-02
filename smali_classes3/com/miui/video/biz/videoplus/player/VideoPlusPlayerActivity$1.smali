.class Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$1;
.super Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;
.source "VideoPlusPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$1;->this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-direct {p0}, Lcom/miui/video/player/service/utils/media/MediaEventReceiver$MediaEventCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public checkResult(Z)V
    .locals 3

    const-string v0, "VideoPlusPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " checkResult :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$1;->this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$000(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity$1;->this$0:Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;->access$000(Lcom/miui/video/biz/videoplus/player/VideoPlusPlayerActivity;)Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter;->togglePlayState()V

    :cond_0
    return-void
.end method

.method protected mediaStateChange(Z)V
    .locals 3

    const-string v0, "VideoPlusPlayerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mediaStateChange :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
