.class Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;
.super Ljava/lang/Object;
.source "SubtitleView.java"

# interfaces
.implements Lcom/miui/video/biz/videoplus/player/mediaplayer/OnAddTimedTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->addAndSelectExtraLocalSubtitle(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    iput-object p2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddTimedText(Z)V
    .locals 4

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$500(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$500(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/video/biz/videoplus/player/mediaplayer/IMediaPlayer;->getTrackInfo()[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$602(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;)[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$600(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$600(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v2}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$600(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)[Ltv/danmaku/ijk/media/player/misc/ITrackInfo;

    move-result-object v2

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ltv/danmaku/ijk/media/player/misc/ITrackInfo;->getTrackType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v1, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    new-instance v2, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    invoke-direct {v2}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;-><init>()V

    invoke-static {v0, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$702(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$700(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    move-result-object v0

    invoke-static {}, Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;->getInstance()Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->val$path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/video/biz/videoplus/player/subtitle/LanguageDetector;->detectLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setLanguageAndType(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$700(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$700(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setPosInTrack(I)V

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$700(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;->setTimeoffset(I)V

    iget-object p1, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView$6;->this$0:Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;

    invoke-static {v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->access$700(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;)Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleView;->selectSubtitleTrack(Lcom/miui/video/biz/videoplus/player/subtitle/SubtitleTrack;)V

    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_local_add_success:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/miui/video/common/library/utils/ToastUtils;->getInstance()Lcom/miui/video/common/library/utils/ToastUtils;

    move-result-object p1

    sget v0, Lcom/miui/video/biz/videoplus/R$string;->plus_player_subtitle_local_add_fail:I

    invoke-virtual {p1, v0}, Lcom/miui/video/common/library/utils/ToastUtils;->showToast(I)Lcom/miui/video/common/library/utils/ToastUtils;

    :goto_1
    return-void
.end method
