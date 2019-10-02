.class Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;
.super Ljava/lang/Object;
.source "GalleryMusicAdapter.java"

# interfaces
.implements Lcom/miui/video/base/common/task/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;


# direct methods
.method constructor <init>(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskBegin(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string p2, "GalleryMusicAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskBegin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTaskError(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1

    const-string p2, "GalleryMusicAdapter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskError "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->access$300(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    iget-object p2, p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->val$musicId:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    iget-object p2, p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->val$musicId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->access$400(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onTaskFinished(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    const-string p2, "GalleryMusicAdapter"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTaskFinished "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    invoke-static {p1}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->access$300(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    iget-object p2, p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->val$musicId:Ljava/lang/String;

    const/4 p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    iget-object p1, p1, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->this$0:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;

    iget-object p2, p0, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4$1;->this$1:Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;

    iget-object p2, p2, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter$4;->val$musicId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;->access$400(Lcom/miui/video/galleryplus/galleryvideo/adapter/GalleryMusicAdapter;Ljava/lang/String;)V

    return-void
.end method

.method public onTaskProgress(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 2

    const-string p3, "GalleryMusicAdapter"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTaskProgress\uff1a process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
