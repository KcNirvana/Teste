.class Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;
.super Ljava/lang/Object;
.source "GalleryMusicFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->saveOld960Video(Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

.field final synthetic val$dialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->val$dialog:Lcom/miui/video/galleryplus/galleryvideo/widget/GalleryVideoSaveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryPathUtils;->getSuperSlowSavePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1700(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/videolan/libvlc/MIPlayerTranscoder;->stopTranscoder()V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1202(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Lorg/videolan/libvlc/MIPlayerTranscoder;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    :cond_0
    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    new-instance v2, Lorg/videolan/libvlc/MIPlayerTranscoder;

    sget-object v3, Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;->TYPE_MATCH_MUSIC:Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;

    invoke-direct {v2, v3}, Lorg/videolan/libvlc/MIPlayerTranscoder;-><init>(Lorg/videolan/libvlc/MIPlayerTranscoder$TrancoderType;)V

    invoke-static {v1, v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1202(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;Lorg/videolan/libvlc/MIPlayerTranscoder;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    move-result-object v1

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;

    invoke-direct {v2, p0, v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnCompletionListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onCompletionListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    move-result-object v1

    new-instance v2, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$2;

    invoke-direct {v2, p0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6$2;-><init>(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;)V

    invoke-virtual {v1, v2}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setOnErrorListener(Lorg/videolan/libvlc/MIPlayerTranscoder$onErrorListener;)V

    iget-object v1, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v1}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v2}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$500(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryMusicState;->getVideoInfo()Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/video/galleryplus/galleryvideo/gallery/GalleryVideoInfo;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v3}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v4}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    move-result-object v4

    invoke-virtual {v4, v3, v1, v2, v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->setInputOutput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment$6;->this$0:Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;

    invoke-static {v0}, Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;->access$1200(Lcom/miui/video/galleryplus/galleryvideo/fragment/GalleryMusicFragment;)Lorg/videolan/libvlc/MIPlayerTranscoder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/videolan/libvlc/MIPlayerTranscoder;->transcoderVideo()I

    return-void
.end method
