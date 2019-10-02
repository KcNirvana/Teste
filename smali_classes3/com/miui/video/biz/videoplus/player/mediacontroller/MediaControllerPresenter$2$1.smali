.class Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2$1;
.super Ljava/lang/Object;
.source "MediaControllerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;


# direct methods
.method constructor <init>(Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2$1;->this$1:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2$1;->this$1:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;

    iget-object v0, v0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;->val$finalEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/video/framework/utils/FileUtils;->deleteFile(Ljava/lang/String;)Z

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getMediaWritter()Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2$1;->this$1:Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;

    iget-object v1, v1, Lcom/miui/video/biz/videoplus/player/mediacontroller/MediaControllerPresenter$2;->val$finalEntity:Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;

    invoke-interface {v0, v1}, Lcom/miui/video/biz/videoplus/db/core/loader/operation/IMediaWritter;->delete(Ljava/lang/Object;)V

    invoke-static {}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getInstance()Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/video/biz/videoplus/db/core/loader/LocalMediaManager;->getSyncMediaService()Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;

    move-result-object v0

    sget-object v1, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;->DELETE:Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService;->notifyMediaChange(Lcom/miui/video/biz/videoplus/db/core/loader/SyncMediaService$Type;Lcom/miui/video/biz/videoplus/db/core/data/LocalMediaEntity;)V

    return-void
.end method
