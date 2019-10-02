.class Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;
.super Ljava/lang/Object;
.source "GalleryPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getMetaData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;


# direct methods
.method constructor <init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$800(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play slide fps --- uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$800(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    new-instance v1, Lorg/videolan/libvlc/MediaMetadataRetriever;

    invoke-direct {v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;-><init>()V

    invoke-static {v0, v1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$902(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;Lorg/videolan/libvlc/MediaMetadataRetriever;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    :cond_1
    sget-object v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play slide real path --- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    iget-object v3, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v3}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1000(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v4}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$800(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->getRealFilePathFromContentUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1100(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$800(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/miui/video/framework/utils/FormatUtils;->parseInt(Ljava/lang/String;I)I

    move-result v1

    :cond_2
    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    const/16 v2, 0x6e

    const/4 v4, 0x1

    if-lt v1, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mSupportSlide:Z

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-result-object v0

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-result-object v2

    const/16 v5, 0x9

    invoke-virtual {v2, v5}, Lorg/videolan/libvlc/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/miui/video/framework/utils/FormatUtils;->parseFloat(Ljava/lang/String;F)F

    move-result v2

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float/2addr v2, v5

    const/high16 v5, 0x41100000    # 9.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_4

    const/high16 v5, 0x41300000    # 11.0f

    cmpg-float v5, v2, v5

    if-gtz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    iget-object v6, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "960"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v5}, Lcom/miui/video/player/service/utils/AiMusicUtils;->isAiSoExit(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v5}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1300(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z

    move-result v5

    if-nez v5, :cond_5

    const/4 v3, 0x1

    :cond_5
    invoke-static {v6, v3}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1202(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;Z)Z

    sget-object v3, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "play slide fps ---"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and capFps - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " and duration -"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " and isAImusic --"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1200(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    iget-boolean v2, v2, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mSupportSlide:Z

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->setSupportSlide(Z)V

    invoke-static {}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->getInstance()Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1200(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/miui/video/player/service/localvideoplayer/utils/LocalSlideStatistic;->setAiMusic(Z)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1400(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)I

    move-result v0

    iget-object v2, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v2}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$1500(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)I

    move-result v2

    new-instance v3, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;

    invoke-direct {v3, p0, v0, v2, v1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$1;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;III)V

    invoke-static {v3}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    iget-object v1, p0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;->this$0:Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;

    invoke-static {v1}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->access$900(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;)Lorg/videolan/libvlc/MediaMetadataRetriever;

    move-result-object v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lorg/videolan/libvlc/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->mLastBm:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play slide fps --- get metadata fail uri"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/video/framework/log/LogUtils;->d(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$2;

    invoke-direct {v0, p0}, Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8$2;-><init>(Lcom/miui/video/player/service/localvideoplayer/GalleryPlayerActivity$8;)V

    invoke-static {v0}, Lcom/miui/video/framework/task/AsyncTaskUtils;->runOnUIHandler(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
