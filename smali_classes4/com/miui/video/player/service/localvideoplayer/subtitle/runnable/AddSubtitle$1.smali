.class Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;
.super Ljava/lang/Object;
.source "AddSubtitle.java"

# interfaces
.implements Lcom/miui/video/player/service/localvideoplayer/player/OnAddTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddTimedText(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->access$000(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->access$100(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/video/player/service/localvideoplayer/player/ILocalMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->access$200(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;Ljava/lang/String;[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddSubtitle failed "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->access$400(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/player/service/localvideoplayer/player/VideoPlayTrackManager;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/miui/video/player/service/R$string;->lv_subtitle_add_subtitle_failed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(Ljava/lang/String;)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_0
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->access$500(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle$1;->this$0:Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;->access$500(Lcom/miui/video/player/service/localvideoplayer/subtitle/runnable/AddSubtitle;)Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/video/player/service/localvideoplayer/subtitle/interfaces/ILoadSubtitleFinishedListener;->onCallBack(Z)V

    :cond_1
    return-void
.end method
