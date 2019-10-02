.class Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;
.super Ljava/lang/Object;
.source "GalleryMusicAdapter.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->getMusicDownloadUrl(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

.field final synthetic val$musicId:Ljava/lang/String;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    iput-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->val$musicId:Ljava/lang/String;

    iput p3, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 0

    const-string p1, "GalleryMusicAdapter"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 9

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->getData()Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->getData()Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;

    move-result-object p2

    invoke-virtual {p2}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean;->getData()Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/video/galleryplus/galleryvideo/bean/GalleryMusicDownloadBean$DataBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryMusicUtil;->getMusicDownloadPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcom/miui/video/base/common/entity/FileEntity;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->val$musicId:Ljava/lang/String;

    invoke-static {p2}, Lcom/miui/video/galleryplus/galleryvideo/utils/GalleryMusicUtil;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/video/base/common/entity/FileEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/miui/video/base/common/task/TaskUtils;->getInstance()Lcom/miui/video/base/common/task/TaskUtils;

    move-result-object v3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "download_action_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->val$position:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;

    invoke-direct {v6, p0}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;-><init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;)V

    const/4 v7, 0x0

    new-instance v8, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicDownloadToDo;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-direct {v8, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$MusicDownloadToDo;-><init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;)V

    move-object v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/miui/video/base/common/task/TaskUtils;->runDownloadFile(Ljava/lang/String;Lcom/miui/video/base/common/entity/FileEntity;Lcom/miui/video/base/common/task/ITaskListener;Ljava/lang/Object;Lcom/miui/video/base/common/impl/ITaskToDo;)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
