.class Lcom/miui/video/biz/ugc/MomentFragment$1;
.super Ljava/lang/Object;
.source "MomentFragment.java"

# interfaces
.implements Lcom/miui/video/biz/ugc/player/UGCVideoPlayer$OnStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/video/biz/ugc/MomentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/biz/ugc/MomentFragment;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/ugc/MomentFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$500(Lcom/miui/video/biz/ugc/MomentFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$200(Lcom/miui/video/biz/ugc/MomentFragment;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object p1

    const-string v0, "small_video_continue_back"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->resume(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object p1

    const-string v0, "small_video_pause_back"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->pause(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBufferingEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$200(Lcom/miui/video/biz/ugc/MomentFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    const-string v1, "small_video_pause_back"

    invoke-virtual {v0, v1}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->pause(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCallStateChange(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$600(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/widget/RefreshLayout;

    move-result-object p1

    new-instance v0, Lcom/miui/video/biz/ugc/MomentFragment$1$2;

    invoke-direct {v0, p0}, Lcom/miui/video/biz/ugc/MomentFragment$1$2;-><init>(Lcom/miui/video/biz/ugc/MomentFragment$1;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/video/biz/ugc/widget/RefreshLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object p1

    const-string v0, "small_video_pause_back"

    invoke-virtual {p1, v0}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->pause(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCardShowTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 2

    const-string v0, "show"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v1, v0, p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$100(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    return-void
.end method

.method public onCompleteTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 2

    const-string v0, "play.complete"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v1, v0, p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$100(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    return-void
.end method

.method public onLikeChange(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 4

    iget-boolean v0, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->isLike:Z

    if-eqz v0, :cond_0

    const-string v0, "like"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    const-string v2, "favorite_click_do"

    iget-object v3, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/video/biz/ugc/MomentFragment;->access$000(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "dislike"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    const-string v2, "favorite_click_cancel"

    iget-object v3, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/miui/video/biz/ugc/MomentFragment;->access$000(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v1, v0, p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$100(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    return-void
.end method

.method public onProgress(J)V
    .locals 1

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$700(Lcom/miui/video/biz/ugc/MomentFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public onShare(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 5

    iget-object v0, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/share?poster="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&video="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->media_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster_width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->poster_height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "&avatar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->uploader_poster:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&publisher="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->uploader_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/miui/video/service/share/ShareBuilder;

    invoke-direct {v2}, Lcom/miui/video/service/share/ShareBuilder;-><init>()V

    new-instance v3, Lcom/miui/video/service/share/data/ShareInfo$Builder;

    invoke-direct {v3}, Lcom/miui/video/service/share/data/ShareInfo$Builder;-><init>()V

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->type(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->id(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/miui/video/biz/ugc/data/UGCEntity;->uploader_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->title(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->bitmap(Landroid/graphics/Bitmap;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->subTitle(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->imageUrl(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->link(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    const-string v1, "ugc_detail_page"

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->from(Ljava/lang/String;)Lcom/miui/video/service/share/data/ShareInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/service/share/data/ShareInfo$Builder;->build()Lcom/miui/video/service/share/data/ShareInfo;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/video/service/share/ShareBuilder;->shareInfo(Lcom/miui/video/service/share/data/ShareInfo;)Lcom/miui/video/service/share/ShareBuilder;

    move-result-object v0

    new-instance v1, Lcom/miui/video/biz/ugc/MomentFragment$1$1;

    invoke-direct {v1, p0}, Lcom/miui/video/biz/ugc/MomentFragment$1$1;-><init>(Lcom/miui/video/biz/ugc/MomentFragment$1;)V

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/ShareBuilder;->shareListener(Lcom/miui/video/service/share/ShareListener;)Lcom/miui/video/service/share/ShareBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-virtual {v1}, Lcom/miui/video/biz/ugc/MomentFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/video/service/share/ShareBuilder;->share(Landroid/support/v4/app/FragmentActivity;)V

    const-string v0, "share"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v1, v0, p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$100(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    return-void
.end method

.method public onStart()V
    .locals 6

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$200(Lcom/miui/video/biz/ugc/MomentFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$400(Lcom/miui/video/biz/ugc/MomentFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0}, Lcom/miui/video/biz/ugc/MomentFragment;->access$300(Lcom/miui/video/biz/ugc/MomentFragment;)Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$400(Lcom/miui/video/biz/ugc/MomentFragment;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/miui/video/biz/ugc/player/UGCVideoPlayer;->seekTo(J)V

    iget-object v0, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v0, v2, v3}, Lcom/miui/video/biz/ugc/MomentFragment;->access$402(Lcom/miui/video/biz/ugc/MomentFragment;J)J

    :cond_0
    return-void
.end method

.method public onStartTrack(Lcom/miui/video/biz/ugc/data/UGCEntity;)V
    .locals 2

    const-string v0, "play.start_succ"

    iget-object v1, p0, Lcom/miui/video/biz/ugc/MomentFragment$1;->this$0:Lcom/miui/video/biz/ugc/MomentFragment;

    invoke-static {v1, v0, p1}, Lcom/miui/video/biz/ugc/MomentFragment;->access$100(Lcom/miui/video/biz/ugc/MomentFragment;Ljava/lang/String;Lcom/miui/video/biz/ugc/data/UGCEntity;)V

    return-void
.end method
