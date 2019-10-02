.class Lcom/miui/video/player/service/presenter/VideoViewPresenter$2;
.super Ljava/lang/Object;
.source "VideoViewPresenter.java"

# interfaces
.implements Lcom/miui/video/player/service/media/IMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/presenter/VideoViewPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$2;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/miui/video/player/service/media/IMediaPlayer;II)Z
    .locals 0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$2;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$100(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$2;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    iget-object p1, p1, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->mPresenterManager:Lcom/miui/video/player/service/localvideoplayer/PresenterManager;

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/PresenterManager;->getSettingPresenter()Lcom/miui/video/player/service/presenter/SettingPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/presenter/SettingPresenter;->getPlaySpeed()F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget p2, Lcom/miui/video/player/service/R$string;->switch_ratio_pause:I

    invoke-virtual {p1, p2}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$2;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$102(Lcom/miui/video/player/service/presenter/VideoViewPresenter;Z)Z

    goto :goto_0

    :sswitch_1
    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$2;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/player/service/presenter/VideoViewPresenter$2;->this$0:Lcom/miui/video/player/service/presenter/VideoViewPresenter;

    invoke-static {p1}, Lcom/miui/video/player/service/presenter/VideoViewPresenter;->access$000(Lcom/miui/video/player/service/presenter/VideoViewPresenter;)Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/player/service/localvideoplayer/controller/LocalMediaController;->updatePlayingState()V

    :cond_0
    :goto_0
    :sswitch_2
    const/4 p1, 0x0

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2bd -> :sswitch_2
        0x2be -> :sswitch_2
        0x186a1 -> :sswitch_1
        0x186a2 -> :sswitch_0
    .end sparse-switch
.end method
